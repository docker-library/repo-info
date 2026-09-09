#!/usr/bin/env bash
set -Eeuo pipefail

trap 'echo >&2 Ctrl+C captured, exiting; exit 1' SIGINT

# going for "bashbrew: command not found"
bashbrew --help > /dev/null

repos=( "$@" )
if [ ${#repos[@]} -eq 0 ]; then
	IFS=$'\n'
	repos=( $(bashbrew list --all --repos) )
	unset IFS
fi
repos=( "${repos[@]%/}" )

args=()
if [ -n "${DOCKERHUB_PUBLIC_PROXY:-}" ]; then
	# extract the hostname from the proxy url
	proxyHost="${DOCKERHUB_PUBLIC_PROXY#*://}" # protocol
	proxyHost="${proxyHost%%/*}" # path
	proxyHost="${proxyHost%:[0-9]*}" # port
	# autoscaling jenkins workers can't resolve the proxy host within a container because it is in /etc/hosts
	# so this pre-resolves it and adds it to the container run
	ips=( $(getent ahostsv4 "$proxyHost" | cut -d' ' -f1 | sort -u) )
	args=( "${ips[@]/#/--add-host=$proxyHost:}" )
fi

docker build --pull -t repo-info:remote -q -f Dockerfile.remote . > /dev/null
trap 'docker rm -f repo-info-remote > /dev/null' EXIT
docker run -e DOCKERHUB_PUBLIC_PROXY "${args[@]}" -d --name repo-info-remote repo-info:remote daemon > /dev/null

trap 'err="$?"; echo >&2 "ERROR: exit code $err"; ( set -x && docker logs repo-info-remote ); exit "$err"' ERR

export repoInfoDaemon='http://localhost:3000' # since we're using "docker exec", we can just hit localhost
export curl='docker exec -i repo-info-remote curl -fsSL'

tries=10
while [ "$($curl --max-time 2 "$repoInfoDaemon" -o /dev/null &> /dev/null || echo "$?")" = '7' ]; do
	(( --tries )) || :
	if [ "$tries" -eq 0 ]; then
		echo >&2 "error: repo-info:remote daemon did not start up in a reasonable amount of time"
		exit 1
	fi
	sleep 1
done

# use "xargs" for parallelism
export generator="$0" tab=$'\t' quot="'"
xargs <<<"${repos[*]}" -n 1 -P "${PARALLELISM:-8}" bash -Eeuo pipefail -c '
	for repo; do
		rm -rf "repos/$repo/remote"
		mkdir -p "repos/$repo/remote"
		./generate-readme.sh "$repo" > "repos/$repo/README.md"

		tags=( $(bashbrew list "$repo" 2>/dev/null | sort -u) )

		rm -f "repos/$repo/tag-details.md"
		{
			echo "<!-- THIS FILE IS GENERATED VIA $quot$generator$quot -->"
			echo
			echo "# Tags of \`$repo\`"
			echo
			# add a simple ToC
			for tag in "${tags[@]}"; do
				# GitHub heading anchors are strange
				href="${tag//./}"
				href="${href//:/}"
				href="#${href,,}"
				echo "-$tab[\`$tag\`]($href)"
			done
			if [ "${#tags[@]}" -eq 0 ]; then
				echo "-$tab**No supported tags**"
			fi
			# fetch each markdown
			for tag in "${tags[@]}"; do
				echo >&2 "processing: $tag"
				echo
				{
					$curl "$repoInfoDaemon/markdown/$tag" | tee "repos/$repo/remote/${tag#*:}.md"; \
				} || exit 255
				# > If any invocation of the command exits with a status of 255, xargs will stop immediately without reading any further input.
			done
		} > "repos/$repo/tag-details.md"
	done
' --
