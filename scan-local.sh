#!/bin/bash
set -e

trap 'echo >&2 Ctrl+C captured, exiting; exit 1' SIGINT

image="$1"; shift

docker build --pull -t repo-info:local-apk -q -f Dockerfile.local-apk . > /dev/null
docker build --pull -t repo-info:local-dpkg -q -f Dockerfile.local-dpkg . > /dev/null
docker build --pull -t repo-info:local-rpm -q -f Dockerfile.local-rpm . > /dev/null

name="repo-info-local-$$-$RANDOM"
trap "docker rm -vf '$name-data' > /dev/null || :" EXIT

docker create \
	--name "$name-data" \
	-v /etc \
	-v /lib/apk \
	-v /usr/lib/rpm \
	-v /usr/share/apk \
	-v /usr/share/doc \
	-v /usr/share/keyrings \
	-v /var/lib \
	"$image" \
	bogus > /dev/null

echo '# `'"$image"'`'

docker inspect -f 'json' "$image" | jq --raw-output '
	.[] # docker inspect returns a list of inspections
	| [
		"",
		"## Docker Metadata",
		"",
		"- Image ID: `\( .Id // .ID )`",
		"- Created: `\( .Created )`",
		"- Virtual Size: \(
			def twoDecimals:
				. * 100 | round / 100
			;
			.VirtualSize // .Size
			| tonumber
			| 1000 as $oneKb
			| (1000 * $oneKb) as $oneMb
			| (1000 * $oneMb) as $oneGb
			| if . >= $oneGb then
				"~ \( . / $oneGb | twoDecimals ) Gb"
			elif . >= $oneMb then
				"~ \( . / $oneMb | twoDecimals ) Mb"
			elif . >= $oneKb then
				"~ \( . / $oneKb | twoDecimals ) Kb"
			else
				"\(.) bytes"
			end
		)  ",
		"  (total size of all layers on-disk)",
		"- Arch: `\( .Os )`/`\( .Architecture )`",
		if .Config.Entrypoint then
			"- Entrypoint: `\( .Config.Entrypoint )`"
		else empty end,
		if .Config.Cmd then
			"- Command: `\( .Config.Cmd )`"
		else empty end,
		"- Environment:",
		( .Config.Env.[] | "  - `\( . )`" ),
		if .Config.Labels then
			"- Labels:",
			( .Config.Labels | to_entries[] | "  - `\( .key )=\( .value )`" )
		else empty end,
		empty
	] | join("\n")
'

docker run --rm --volumes-from "$name-data" -v /etc/ssl repo-info:local-apk || :
docker run --rm --volumes-from "$name-data" -v /etc/ssl repo-info:local-dpkg || :
docker run --rm --volumes-from "$name-data" -v /etc/ssl repo-info:local-rpm || :
