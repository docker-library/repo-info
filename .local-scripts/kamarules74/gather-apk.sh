#!/usr/bin/env bash
set -Eeuo pipefail

_apk() {
	apk --no-network "$@" 2>/dev/null
}

IFS=$'\n'
packages=( $(_apk info | sort) )
unset IFS

if [ "${#packages[@]}" -eq 0 ]; then
	# not Alpine-based?
	exit 1
fi

echo
echo '## `apk` (`.apk`-based packages)'

# prints "$2$1$3$1...$N"
join() {
	local sep="$1"; shift
	local out; printf -v out "${sep//%/%%}%s" "$@"
	echo "${out#$sep}"
}

for pkg in "${packages[@]}"; do
	if [ "${pkg#.}" != "$pkg" ]; then
		# if package name starts with a period, it's a pretty strong indicator that it's likely a user-created virtual and thus safely ignored for the purposes of this report
		continue
	fi

	echo
	echo '### `apk` package: `'"$pkg"'`'

	# TODO parse this output better somehow (can't find a way to get `apk info` to spit out just the value without the `xyz-VERSION license:` header)
	echo
	echo '```console'
	_apk info \
		--description \
		--license \
		--size \
		--webpage \
		"$pkg"
	echo '```'
done
