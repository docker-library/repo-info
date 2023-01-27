#!/usr/bin/env bash
set -Eeuo pipefail

# try rebuilding RPM's database before querying it, just in case (helps with RPM version mismatches)
rpm --rebuilddb &> /dev/null || :

IFS=$'\n'
packages=( $(rpm -qa 2>/dev/null | sort) )
unset IFS

if [ "${#packages[@]}" -eq 0 ]; then
	# not RedHat-based?
	exit 1
fi

# if "/etc/yum.conf" doesn't exist, let's create it (just in case); yumdownloader had issues with this, but "dnf download" probably does not?
[ -f /etc/yum.conf ] || touch /etc/yum.conf
# (Fedora 29, for example, keeps all YUM config over in /etc/yum.repos.d)

# RPM/YUM/DNF are weird about architectures...  if all packages are from a single arch, let's replace "$basearch" with that explicitly in all the configuration files
IFS=$'\n'
arches=( $(rpm -qa --queryformat '%{ARCH}\n' 2>/dev/null | sort -u | grep -vE '^noarch|[(]none[)]$') )
unset IFS
if [ "${#arches[@]}" -eq 1 ]; then
	basearch="${arches[0]}"
	find /etc/yum.conf /etc/yum.repos.d -type f -exec sed -i 's!\$basearch!'"$basearch"'!g' '{}' +
fi
# (this makes things like ClefOS actually able to give back source URLs from dnf download!)

echo
echo '## `rpm` (`.rpm`-based packages)'

# prints "$2$1$3$1...$N"
join() {
	local sep="$1"; shift
	local out; printf -v out "${sep//%/%%}%s" "$@"
	echo "${out#$sep}"
}

dnfDownloadExtraArgs=()
# ClefOS has a "source" repo, but for some reason "dnf download" isn't smart enough to auto-enable it like it does other source repos?
if dnf repolist disabled 2>/dev/null | grep -qE '^source[[:space:]]+'; then
	dnfDownloadExtraArgs+=( --enablerepo=source )
fi

for pkg in "${packages[@]}"; do
	echo
	echo '### `rpm` package: `'"$pkg"'`'

	# https://rpm.org/user_doc/query_format.html

	if license="$(rpm --query --queryformat '%{LICENSE}\n' "$pkg" 2>/dev/null)" && [ -n "$license" ] && [ "$license" != '(none)' ]; then
		echo
		echo "Licenses (from \`rpm --query\`): $license"
	else
		echo
		echo '**WARNING:** unable to detect licenses (`rpm --query` failed or returned no results)!'
	fi

	# the default queryformat includes ARCH which then doesn't work because dnf has a huge affinity for using uname for platform detection....... (https://www.redhat.com/archives/rpm-list/2002-June/msg00082.html !!!!!)
	case "$pkg" in
		*.noarch) dnfPkg="$pkg" ;;
		*) dnfPkg="$(rpm --query --queryformat '%{NAME}-%{VERSION}-%{RELEASE}\n' "$pkg" 2>/dev/null)" ;;
	esac

	dnfDownloadArgs=( dnf --quiet download --source --url "${dnfDownloadExtraArgs[@]}" "$dnfPkg" )
	if dnfDownload="$("${dnfDownloadArgs[@]}" 2>/dev/null)" && [ -n "$dnfDownload" ]; then
		echo
		echo 'Source:'
		echo
		echo '```console'
		echo '$' "${dnfDownloadArgs[@]}"
		echo "$dnfDownload"
		echo '```'
	else
		echo
		echo '**WARNING:** unable to find source (`dnf download` failed or returned no results)!'
	fi
done
