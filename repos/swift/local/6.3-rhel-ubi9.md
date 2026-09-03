# `swift:6.3.3-rhel-ubi9`

## Docker Metadata

- Image ID: `sha256:4beeb809fca54a376b88851185a29d4da6be572395e3c10c4fe2f4aa413d8dee`
- Created: `2026-09-01T00:13:49.47409074Z`
- Virtual Size: ~ 4.01 Gb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Command: `["/bin/bash"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `container=oci`
  - `SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F`
  - `SWIFT_PLATFORM=ubi9`
  - `SWIFT_BRANCH=swift-6.3.3-release`
  - `SWIFT_VERSION=swift-6.3.3-RELEASE`
  - `SWIFT_WEBROOT=https://download.swift.org`
- Labels:
  - `architecture=x86_64`
  - `build-date=2026-08-31T15:56:45Z`
  - `com.redhat.component=ubi9-container`
  - `com.redhat.license_terms=https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI`
  - `cpe=cpe:/a:redhat:enterprise_linux:9::appstream`
  - `description=Docker Container for the Swift programming language`
  - `distribution-scope=public`
  - `io.buildah.version=1.44.0`
  - `io.k8s.description=The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly.`
  - `io.k8s.display-name=Red Hat Universal Base Image 9`
  - `io.openshift.expose-services=`
  - `io.openshift.tags=base rhel9`
  - `maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>`
  - `name=ubi9/ubi`
  - `org.opencontainers.image.created=2026-08-31T15:56:45Z`
  - `org.opencontainers.image.revision=a843a58318bb7558aeae89306d0e3d2d3d21dfa1`
  - `release=1788191706`
  - `summary=Provides the latest release of Red Hat Universal Base Image 9.`
  - `url=https://catalog.redhat.com/en/search?searchType=containers`
  - `vcs-ref=a843a58318bb7558aeae89306d0e3d2d3d21dfa1`
  - `vcs-type=git`
  - `vendor=Red Hat, Inc.`
  - `version=9.8`

## `rpm` (`.rpm`-based packages)

### `rpm` package: `acl-2.4.0-1.el9_8.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url acl-2.4.0-1.el9_8
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/a/acl-2.4.0-1.el9_8.src.rpm
```

### `rpm` package: `alternatives-1.24-2.el9.x86_64`

Licenses (from `rpm --query`): GPL-2.0-only

Source:

```console
$ dnf --quiet download --source --url alternatives-1.24-2.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/c/chkconfig-1.24-2.el9.src.rpm
```

### `rpm` package: `attr-2.6.0-1.el9_8.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url attr-2.6.0-1.el9_8
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/a/attr-2.6.0-1.el9_8.src.rpm
```

### `rpm` package: `audit-libs-3.1.5-8.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url audit-libs-3.1.5-8.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/a/audit-3.1.5-8.el9.src.rpm
```

### `rpm` package: `basesystem-11-13.el9.noarch`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url basesystem-11-13.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/b/basesystem-11-13.el9.src.rpm
```

### `rpm` package: `bash-5.1.8-9.el9.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url bash-5.1.8-9.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/b/bash-5.1.8-9.el9.src.rpm
```

### `rpm` package: `binutils-2.35.2-72.el9.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url binutils-2.35.2-72.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/b/binutils-2.35.2-72.el9.src.rpm
```

### `rpm` package: `binutils-gold-2.35.2-72.el9.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url binutils-gold-2.35.2-72.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/b/binutils-2.35.2-72.el9.src.rpm
```

### `rpm` package: `bzip2-libs-1.0.8-11.el9.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url bzip2-libs-1.0.8-11.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/b/bzip2-1.0.8-11.el9.src.rpm
```

### `rpm` package: `ca-certificates-2025.2.80_v9.0.305-91.el9.noarch`

Licenses (from `rpm --query`): MIT AND GPL-2.0-or-later

Source:

```console
$ dnf --quiet download --source --url ca-certificates-2025.2.80_v9.0.305-91.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/c/ca-certificates-2025.2.80_v9.0.305-91.el9.src.rpm
```

### `rpm` package: `cmake-filesystem-3.31.8-3.el9.x86_64`

Licenses (from `rpm --query`): BSD-3-Clause AND MIT-open-group AND Zlib AND Apache-2.0

Source:

```console
$ dnf --quiet download --source --url cmake-filesystem-3.31.8-3.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/c/cmake-3.31.8-3.el9.src.rpm
```

### `rpm` package: `coreutils-single-8.32-41.el9_8.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url coreutils-single-8.32-41.el9_8
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/c/coreutils-8.32-41.el9_8.src.rpm
```

### `rpm` package: `cpp-11.5.0-14.el9.x86_64`

Licenses (from `rpm --query`): GPLv3+ and GPLv3+ with exceptions and GPLv2+ with exceptions and LGPLv2+ and BSD

Source:

```console
$ dnf --quiet download --source --url cpp-11.5.0-14.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/g/gcc-11.5.0-14.el9.src.rpm
```

### `rpm` package: `cracklib-2.9.6-28.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url cracklib-2.9.6-28.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/c/cracklib-2.9.6-28.el9.src.rpm
```

### `rpm` package: `cracklib-dicts-2.9.6-28.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url cracklib-dicts-2.9.6-28.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/c/cracklib-2.9.6-28.el9.src.rpm
```

### `rpm` package: `crypto-policies-20260224-1.gitea0f072.el9_8.noarch`

Licenses (from `rpm --query`): LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url crypto-policies-20260224-1.gitea0f072.el9_8.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/c/crypto-policies-20260224-1.gitea0f072.el9_8.src.rpm
```

### `rpm` package: `crypto-policies-scripts-20260224-1.gitea0f072.el9_8.noarch`

Licenses (from `rpm --query`): LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url crypto-policies-scripts-20260224-1.gitea0f072.el9_8.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/c/crypto-policies-20260224-1.gitea0f072.el9_8.src.rpm
```

### `rpm` package: `curl-minimal-7.76.1-40.el9_8.5.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url curl-minimal-7.76.1-40.el9_8.5
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/c/curl-7.76.1-40.el9_8.5.src.rpm
```

### `rpm` package: `cyrus-sasl-lib-2.1.27-22.el9.x86_64`

Licenses (from `rpm --query`): BSD with advertising

Source:

```console
$ dnf --quiet download --source --url cyrus-sasl-lib-2.1.27-22.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/c/cyrus-sasl-2.1.27-22.el9.src.rpm
```

### `rpm` package: `dbus-1.12.20-8.el9.x86_64`

Licenses (from `rpm --query`): (GPLv2+ or AFL) and GPLv2+

Source:

```console
$ dnf --quiet download --source --url dbus-1.12.20-8.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/d/dbus-1.12.20-8.el9.src.rpm
```

### `rpm` package: `dbus-broker-28-7.el9.x86_64`

Licenses (from `rpm --query`): ASL 2.0

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `dbus-common-1.12.20-8.el9.noarch`

Licenses (from `rpm --query`): (GPLv2+ or AFL) and GPLv2+

Source:

```console
$ dnf --quiet download --source --url dbus-common-1.12.20-8.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/d/dbus-1.12.20-8.el9.src.rpm
```

### `rpm` package: `dbus-libs-1.12.20-8.el9.x86_64`

Licenses (from `rpm --query`): (GPLv2+ or AFL) and GPLv2+

Source:

```console
$ dnf --quiet download --source --url dbus-libs-1.12.20-8.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/d/dbus-1.12.20-8.el9.src.rpm
```

### `rpm` package: `dejavu-sans-fonts-2.37-18.el9.noarch`

Licenses (from `rpm --query`): Bitstream Vera and Public Domain

Source:

```console
$ dnf --quiet download --source --url dejavu-sans-fonts-2.37-18.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/d/dejavu-fonts-2.37-18.el9.src.rpm
```

### `rpm` package: `dmidecode-3.6-2.el9.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url dmidecode-3.6-2.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/d/dmidecode-3.6-2.el9.src.rpm
```

### `rpm` package: `dnf-4.14.0-34.el9_8.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url dnf-4.14.0-34.el9_8.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/d/dnf-4.14.0-34.el9_8.src.rpm
```

### `rpm` package: `dnf-data-4.14.0-34.el9_8.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url dnf-data-4.14.0-34.el9_8.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/d/dnf-4.14.0-34.el9_8.src.rpm
```

### `rpm` package: `elfutils-debuginfod-client-0.194-1.el9.x86_64`

Licenses (from `rpm --query`): GPL-3.0-or-later AND (GPL-2.0-or-later OR LGPL-3.0-or-later)

Source:

```console
$ dnf --quiet download --source --url elfutils-debuginfod-client-0.194-1.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/e/elfutils-0.194-1.el9.src.rpm
```

### `rpm` package: `elfutils-default-yama-scope-0.194-1.el9.noarch`

Licenses (from `rpm --query`): GPL-2.0-or-later OR LGPL-3.0-or-later

Source:

```console
$ dnf --quiet download --source --url elfutils-default-yama-scope-0.194-1.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/e/elfutils-0.194-1.el9.src.rpm
```

### `rpm` package: `elfutils-libelf-0.194-1.el9.x86_64`

Licenses (from `rpm --query`): GPL-2.0-or-later OR LGPL-3.0-or-later

Source:

```console
$ dnf --quiet download --source --url elfutils-libelf-0.194-1.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/e/elfutils-0.194-1.el9.src.rpm
```

### `rpm` package: `elfutils-libs-0.194-1.el9.x86_64`

Licenses (from `rpm --query`): GPL-2.0-or-later OR LGPL-3.0-or-later

Source:

```console
$ dnf --quiet download --source --url elfutils-libs-0.194-1.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/e/elfutils-0.194-1.el9.src.rpm
```

### `rpm` package: `expat-2.5.0-6.el9_8.1.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url expat-2.5.0-6.el9_8.1
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/e/expat-2.5.0-6.el9_8.1.src.rpm
```

### `rpm` package: `file-libs-5.39-17.el9.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url file-libs-5.39-17.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/f/file-5.39-17.el9.src.rpm
```

### `rpm` package: `filesystem-3.16-5.el9.x86_64`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url filesystem-3.16-5.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/f/filesystem-3.16-5.el9.src.rpm
```

### `rpm` package: `findutils-4.8.0-7.el9.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url findutils-4.8.0-7.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/f/findutils-4.8.0-7.el9.src.rpm
```

### `rpm` package: `fonts-filesystem-2.0.5-7.el9.1.noarch`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url fonts-filesystem-2.0.5-7.el9.1.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/f/fonts-rpm-macros-2.0.5-7.el9.1.src.rpm
```

### `rpm` package: `gawk-5.1.0-6.el9.x86_64`

Licenses (from `rpm --query`): GPLv3+ and GPLv2+ and LGPLv2+ and BSD

Source:

```console
$ dnf --quiet download --source --url gawk-5.1.0-6.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/g/gawk-5.1.0-6.el9.src.rpm
```

### `rpm` package: `gcc-11.5.0-14.el9.x86_64`

Licenses (from `rpm --query`): GPLv3+ and GPLv3+ with exceptions and GPLv2+ with exceptions and LGPLv2+ and BSD

Source:

```console
$ dnf --quiet download --source --url gcc-11.5.0-14.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/g/gcc-11.5.0-14.el9.src.rpm
```

### `rpm` package: `gcc-c++-11.5.0-14.el9.x86_64`

Licenses (from `rpm --query`): GPLv3+ and GPLv3+ with exceptions and GPLv2+ with exceptions and LGPLv2+ and BSD

Source:

```console
$ dnf --quiet download --source --url gcc-c++-11.5.0-14.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/g/gcc-11.5.0-14.el9.src.rpm
```

### `rpm` package: `gdb-gdbserver-16.3-3.el9.x86_64`

Licenses (from `rpm --query`): GPL-3.0-or-later AND BSD-3-Clause AND FSFAP AND LGPL-2.1-or-later AND GPL-2.0-or-later AND LGPL-2.0-or-later AND LicenseRef-Fedora-Public-Domain AND GFDL-1.3-or-later AND LGPL-2.0-or-later WITH GCC-exception-2.0 AND GPL-3.0-or-later WITH GCC-exception-3.1 AND GPL-2.0-or-later WITH GNU-compiler-exception AND MIT

Source:

```console
$ dnf --quiet download --source --url gdb-gdbserver-16.3-3.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/g/gdb-16.3-3.el9.src.rpm
```

### `rpm` package: `gdbm-libs-1.23-1.el9.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url gdbm-libs-1.23-1.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/g/gdbm-1.23-1.el9.src.rpm
```

### `rpm` package: `git-2.52.0-1.el9.x86_64`

Licenses (from `rpm --query`): GPLv2

Source:

```console
$ dnf --quiet download --source --url git-2.52.0-1.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/g/git-2.52.0-1.el9.src.rpm
```

### `rpm` package: `git-core-2.52.0-1.el9.x86_64`

Licenses (from `rpm --query`): GPLv2

Source:

```console
$ dnf --quiet download --source --url git-core-2.52.0-1.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/g/git-2.52.0-1.el9.src.rpm
```

### `rpm` package: `git-core-doc-2.52.0-1.el9.noarch`

Licenses (from `rpm --query`): GPLv2

Source:

```console
$ dnf --quiet download --source --url git-core-doc-2.52.0-1.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/g/git-2.52.0-1.el9.src.rpm
```

### `rpm` package: `glib2-2.68.4-19.el9_8.9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url glib2-2.68.4-19.el9_8.9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/g/glib2-2.68.4-19.el9_8.9.src.rpm
```

### `rpm` package: `glibc-2.34-275.el9_8.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later AND SunPro AND LGPL-2.1-or-later WITH GCC-exception-2.0 AND BSD-3-Clause AND GPL-2.0-or-later AND LGPL-2.1-or-later WITH GNU-compiler-exception AND GPL-2.0-only AND ISC AND LicenseRef-Fedora-Public-Domain AND HPND AND CMU-Mach AND LGPL-2.0-or-later AND Unicode-3.0 AND GFDL-1.1-or-later AND GPL-1.0-or-later AND FSFUL AND MIT AND Inner-Net-2.0 AND X11 AND GPL-2.0-or-later WITH GCC-exception-2.0 AND GFDL-1.3-only AND GFDL-1.1-only AND GPL-3.0-or-later AND GPL-3.0-or-later WITH Autoconf-exception-generic-3.0 AND GPL-3.0-or-later WITH Texinfo-exception

Source:

```console
$ dnf --quiet download --source --url glibc-2.34-275.el9_8
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/g/glibc-2.34-275.el9_8.src.rpm
```

### `rpm` package: `glibc-common-2.34-275.el9_8.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later AND SunPro AND LGPL-2.1-or-later WITH GCC-exception-2.0 AND BSD-3-Clause AND GPL-2.0-or-later AND LGPL-2.1-or-later WITH GNU-compiler-exception AND GPL-2.0-only AND ISC AND LicenseRef-Fedora-Public-Domain AND HPND AND CMU-Mach AND LGPL-2.0-or-later AND Unicode-3.0 AND GFDL-1.1-or-later AND GPL-1.0-or-later AND FSFUL AND MIT AND Inner-Net-2.0 AND X11 AND GPL-2.0-or-later WITH GCC-exception-2.0 AND GFDL-1.3-only AND GFDL-1.1-only AND GPL-3.0-or-later AND GPL-3.0-or-later WITH Autoconf-exception-generic-3.0 AND GPL-3.0-or-later WITH Texinfo-exception

Source:

```console
$ dnf --quiet download --source --url glibc-common-2.34-275.el9_8
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/g/glibc-2.34-275.el9_8.src.rpm
```

### `rpm` package: `glibc-devel-2.34-275.el9_8.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later AND SunPro AND LGPL-2.1-or-later WITH GCC-exception-2.0 AND BSD-3-Clause AND GPL-2.0-or-later AND LGPL-2.1-or-later WITH GNU-compiler-exception AND GPL-2.0-only AND ISC AND LicenseRef-Fedora-Public-Domain AND HPND AND CMU-Mach AND LGPL-2.0-or-later AND Unicode-3.0 AND GFDL-1.1-or-later AND GPL-1.0-or-later AND FSFUL AND MIT AND Inner-Net-2.0 AND X11 AND GPL-2.0-or-later WITH GCC-exception-2.0 AND GFDL-1.3-only AND GFDL-1.1-only AND GPL-3.0-or-later AND GPL-3.0-or-later WITH Autoconf-exception-generic-3.0 AND GPL-3.0-or-later WITH Texinfo-exception

Source:

```console
$ dnf --quiet download --source --url glibc-devel-2.34-275.el9_8
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/g/glibc-2.34-275.el9_8.src.rpm
```

### `rpm` package: `glibc-headers-2.34-275.el9_8.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later AND SunPro AND LGPL-2.1-or-later WITH GCC-exception-2.0 AND BSD-3-Clause AND GPL-2.0-or-later AND LGPL-2.1-or-later WITH GNU-compiler-exception AND GPL-2.0-only AND ISC AND LicenseRef-Fedora-Public-Domain AND HPND AND CMU-Mach AND LGPL-2.0-or-later AND Unicode-3.0 AND GFDL-1.1-or-later AND GPL-1.0-or-later AND FSFUL AND MIT AND Inner-Net-2.0 AND X11 AND GPL-2.0-or-later WITH GCC-exception-2.0 AND GFDL-1.3-only AND GFDL-1.1-only AND GPL-3.0-or-later AND GPL-3.0-or-later WITH Autoconf-exception-generic-3.0 AND GPL-3.0-or-later WITH Texinfo-exception

Source:

```console
$ dnf --quiet download --source --url glibc-headers-2.34-275.el9_8
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/g/glibc-2.34-275.el9_8.src.rpm
```

### `rpm` package: `glibc-minimal-langpack-2.34-275.el9_8.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later AND SunPro AND LGPL-2.1-or-later WITH GCC-exception-2.0 AND BSD-3-Clause AND GPL-2.0-or-later AND LGPL-2.1-or-later WITH GNU-compiler-exception AND GPL-2.0-only AND ISC AND LicenseRef-Fedora-Public-Domain AND HPND AND CMU-Mach AND LGPL-2.0-or-later AND Unicode-3.0 AND GFDL-1.1-or-later AND GPL-1.0-or-later AND FSFUL AND MIT AND Inner-Net-2.0 AND X11 AND GPL-2.0-or-later WITH GCC-exception-2.0 AND GFDL-1.3-only AND GFDL-1.1-only AND GPL-3.0-or-later AND GPL-3.0-or-later WITH Autoconf-exception-generic-3.0 AND GPL-3.0-or-later WITH Texinfo-exception

Source:

```console
$ dnf --quiet download --source --url glibc-minimal-langpack-2.34-275.el9_8
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/g/glibc-2.34-275.el9_8.src.rpm
```

### `rpm` package: `gmp-6.2.0-13.el9.x86_64`

Licenses (from `rpm --query`): LGPLv3+ or GPLv2+

Source:

```console
$ dnf --quiet download --source --url gmp-6.2.0-13.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/g/gmp-6.2.0-13.el9.src.rpm
```

### `rpm` package: `gnupg2-2.3.3-5.el9_7.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url gnupg2-2.3.3-5.el9_7
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/g/gnupg2-2.3.3-5.el9_7.src.rpm
```

### `rpm` package: `gnutls-3.8.10-8.el9_8.x86_64`

Licenses (from `rpm --query`): GPLv3+ and LGPLv2+

Source:

```console
$ dnf --quiet download --source --url gnutls-3.8.10-8.el9_8
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/g/gnutls-3.8.10-8.el9_8.src.rpm
```

### `rpm` package: `gobject-introspection-1.68.0-11.el9.x86_64`

Licenses (from `rpm --query`): GPLv2+ and LGPLv2+ and MIT

Source:

```console
$ dnf --quiet download --source --url gobject-introspection-1.68.0-11.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/g/gobject-introspection-1.68.0-11.el9.src.rpm
```

### `rpm` package: `gpg-pubkey-5a6340b3-6229229e`

Licenses (from `rpm --query`): pubkey

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `gpg-pubkey-fd431d51-4ae0493b`

Licenses (from `rpm --query`): pubkey

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `gpgme-1.15.1-6.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and GPLv3+

Source:

```console
$ dnf --quiet download --source --url gpgme-1.15.1-6.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/g/gpgme-1.15.1-6.el9.src.rpm
```

### `rpm` package: `grep-3.6-5.el9.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url grep-3.6-5.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/g/grep-3.6-5.el9.src.rpm
```

### `rpm` package: `groff-base-1.22.4-10.el9.x86_64`

Licenses (from `rpm --query`): GPLv3+ and GFDL and BSD and MIT

Source:

```console
$ dnf --quiet download --source --url groff-base-1.22.4-10.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/g/groff-1.22.4-10.el9.src.rpm
```

### `rpm` package: `gzip-1.12-1.el9.x86_64`

Licenses (from `rpm --query`): GPLv3+ and GFDL

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `ima-evm-utils-1.6.2-2.el9.x86_64`

Licenses (from `rpm --query`): GPLv2

Source:

```console
$ dnf --quiet download --source --url ima-evm-utils-1.6.2-2.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/i/ima-evm-utils-1.6.2-2.el9.src.rpm
```

### `rpm` package: `iproute-6.17.0-2.el9.x86_64`

Licenses (from `rpm --query`): GPL-2.0-or-later AND NIST-PD

Source:

```console
$ dnf --quiet download --source --url iproute-6.17.0-2.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/i/iproute-6.17.0-2.el9.src.rpm
```

### `rpm` package: `json-c-0.14-11.el9.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url json-c-0.14-11.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/j/json-c-0.14-11.el9.src.rpm
```

### `rpm` package: `json-glib-1.6.6-1.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url json-glib-1.6.6-1.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/j/json-glib-1.6.6-1.el9.src.rpm
```

### `rpm` package: `kernel-headers-5.14.0-687.42.1.el9_8.x86_64`

Licenses (from `rpm --query`): ((GPL-2.0-only WITH Linux-syscall-note) OR BSD-2-Clause) AND ((GPL-2.0-only WITH Linux-syscall-note) OR BSD-3-Clause) AND ((GPL-2.0-only WITH Linux-syscall-note) OR CDDL-1.0) AND ((GPL-2.0-only WITH Linux-syscall-note) OR Linux-OpenIB) AND ((GPL-2.0-only WITH Linux-syscall-note) OR MIT) AND ((GPL-2.0-or-later WITH Linux-syscall-note) OR BSD-3-Clause) AND ((GPL-2.0-or-later WITH Linux-syscall-note) OR MIT) AND Apache-2.0 AND BSD-2-Clause AND BSD-3-Clause AND BSD-3-Clause-Clear AND GFDL-1.1-no-invariants-or-later AND GPL-1.0-or-later AND (GPL-1.0-or-later OR BSD-3-Clause) AND (GPL-1.0-or-later WITH Linux-syscall-note) AND GPL-2.0-only AND (GPL-2.0-only OR Apache-2.0) AND (GPL-2.0-only OR BSD-2-Clause) AND (GPL-2.0-only OR BSD-3-Clause) AND (GPL-2.0-only OR CDDL-1.0) AND (GPL-2.0-only OR GFDL-1.1-no-invariants-or-later) AND (GPL-2.0-only OR GFDL-1.2-no-invariants-only) AND (GPL-2.0-only WITH Linux-syscall-note) AND GPL-2.0-or-later AND (GPL-2.0-or-later OR BSD-2-Clause) AND (GPL-2.0-or-later OR BSD-3-Clause) AND (GPL-2.0-or-later OR CC-BY-4.0) AND (GPL-2.0-or-later WITH GCC-exception-2.0) AND (GPL-2.0-or-later WITH Linux-syscall-note) AND ISC AND LGPL-2.0-or-later AND (LGPL-2.0-or-later OR BSD-2-Clause) AND (LGPL-2.0-or-later WITH Linux-syscall-note) AND LGPL-2.1-only AND (LGPL-2.1-only OR BSD-2-Clause) AND (LGPL-2.1-only WITH Linux-syscall-note) AND LGPL-2.1-or-later AND (LGPL-2.1-or-later WITH Linux-syscall-note) AND (Linux-OpenIB OR GPL-2.0-only) AND (Linux-OpenIB OR GPL-2.0-only OR BSD-2-Clause) AND Linux-man-pages-copyleft AND MIT AND (MIT OR GPL-2.0-only) AND (MIT OR GPL-2.0-or-later) AND (MIT OR LGPL-2.1-only) AND (MPL-1.1 OR GPL-2.0-only) AND (X11 OR GPL-2.0-only) AND (X11 OR GPL-2.0-or-later) AND Zlib AND (copyleft-next-0.3.1 OR GPL-2.0-or-later)

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `keyutils-1.6.3-1.el9.x86_64`

Licenses (from `rpm --query`): GPLv2+ and LGPLv2+

Source:

```console
$ dnf --quiet download --source --url keyutils-1.6.3-1.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/k/keyutils-1.6.3-1.el9.src.rpm
```

### `rpm` package: `keyutils-libs-1.6.3-1.el9.x86_64`

Licenses (from `rpm --query`): GPLv2+ and LGPLv2+

Source:

```console
$ dnf --quiet download --source --url keyutils-libs-1.6.3-1.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/k/keyutils-1.6.3-1.el9.src.rpm
```

### `rpm` package: `kmod-libs-28-11.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url kmod-libs-28-11.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/k/kmod-28-11.el9.src.rpm
```

### `rpm` package: `krb5-libs-1.21.1-10.el9_8.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url krb5-libs-1.21.1-10.el9_8
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/k/krb5-1.21.1-10.el9_8.src.rpm
```

### `rpm` package: `langpacks-core-en-3.0-16.el9.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url langpacks-core-en-3.0-16.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/l/langpacks-3.0-16.el9.src.rpm
```

### `rpm` package: `langpacks-core-font-en-3.0-16.el9.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url langpacks-core-font-en-3.0-16.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/l/langpacks-3.0-16.el9.src.rpm
```

### `rpm` package: `langpacks-en-3.0-16.el9.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url langpacks-en-3.0-16.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/l/langpacks-3.0-16.el9.src.rpm
```

### `rpm` package: `less-590-6.el9.x86_64`

Licenses (from `rpm --query`): GPLv3+ or BSD

Source:

```console
$ dnf --quiet download --source --url less-590-6.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/less-590-6.el9.src.rpm
```

### `rpm` package: `libacl-2.4.0-1.el9_8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libacl-2.4.0-1.el9_8
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/a/acl-2.4.0-1.el9_8.src.rpm
```

### `rpm` package: `libarchive-3.5.3-11.el9_8.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url libarchive-3.5.3-11.el9_8
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libarchive-3.5.3-11.el9_8.src.rpm
```

### `rpm` package: `libassuan-2.5.5-3.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and GPLv3+

Source:

```console
$ dnf --quiet download --source --url libassuan-2.5.5-3.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libassuan-2.5.5-3.el9.src.rpm
```

### `rpm` package: `libattr-2.6.0-1.el9_8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libattr-2.6.0-1.el9_8
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/a/attr-2.6.0-1.el9_8.src.rpm
```

### `rpm` package: `libblkid-2.37.4-25.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libblkid-2.37.4-25.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/u/util-linux-2.37.4-25.el9.src.rpm
```

### `rpm` package: `libbpf-1.5.0-3.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2 or BSD

Source:

```console
$ dnf --quiet download --source --url libbpf-1.5.0-3.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libbpf-1.5.0-3.el9.src.rpm
```

### `rpm` package: `libcap-2.48-10.el9_8.1.x86_64`

Licenses (from `rpm --query`): BSD or GPLv2

Source:

```console
$ dnf --quiet download --source --url libcap-2.48-10.el9_8.1
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libcap-2.48-10.el9_8.1.src.rpm
```

### `rpm` package: `libcap-ng-0.8.2-7.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libcap-ng-0.8.2-7.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libcap-ng-0.8.2-7.el9.src.rpm
```

### `rpm` package: `libcbor-0.7.0-5.el9.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libcbor-0.7.0-5.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libcbor-0.7.0-5.el9.src.rpm
```

### `rpm` package: `libcom_err-1.46.5-8.el9.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libcom_err-1.46.5-8.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/e/e2fsprogs-1.46.5-8.el9.src.rpm
```

### `rpm` package: `libcomps-0.1.18-1.el9.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url libcomps-0.1.18-1.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libcomps-0.1.18-1.el9.src.rpm
```

### `rpm` package: `libcurl-devel-7.76.1-40.el9_8.5.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libcurl-devel-7.76.1-40.el9_8.5
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/c/curl-7.76.1-40.el9_8.5.src.rpm
```

### `rpm` package: `libcurl-minimal-7.76.1-40.el9_8.5.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libcurl-minimal-7.76.1-40.el9_8.5
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/c/curl-7.76.1-40.el9_8.5.src.rpm
```

### `rpm` package: `libdb-5.3.28-57.el9_6.x86_64`

Licenses (from `rpm --query`): BSD and LGPLv2 and Sleepycat and MIT

Source:

```console
$ dnf --quiet download --source --url libdb-5.3.28-57.el9_6
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libdb-5.3.28-57.el9_6.src.rpm
```

### `rpm` package: `libdnf-0.69.0-18.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libdnf-0.69.0-18.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libdnf-0.69.0-18.el9.src.rpm
```

### `rpm` package: `libdnf-plugin-subscription-manager-1.29.50-1.el9.x86_64`

Licenses (from `rpm --query`): GPL-2.0-only AND GPL-2.0-or-later AND LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url libdnf-plugin-subscription-manager-1.29.50-1.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/s/subscription-manager-1.29.50-1.el9.src.rpm
```

### `rpm` package: `libeconf-0.4.1-7.el9_8.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libeconf-0.4.1-7.el9_8
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libeconf-0.4.1-7.el9_8.src.rpm
```

### `rpm` package: `libedit-3.1-39.20210216cvs.el9.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url libedit-3.1-39.20210216cvs.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libedit-3.1-39.20210216cvs.el9.src.rpm
```

### `rpm` package: `libedit-devel-3.1-39.20210216cvs.el9.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url libedit-devel-3.1-39.20210216cvs.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libedit-3.1-39.20210216cvs.el9.src.rpm
```

### `rpm` package: `libevent-2.1.12-8.el9_4.x86_64`

Licenses (from `rpm --query`): BSD and ISC

Source:

```console
$ dnf --quiet download --source --url libevent-2.1.12-8.el9_4
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libevent-2.1.12-8.el9_4.src.rpm
```

### `rpm` package: `libfdisk-2.37.4-25.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libfdisk-2.37.4-25.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/u/util-linux-2.37.4-25.el9.src.rpm
```

### `rpm` package: `libffi-3.4.2-8.el9.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libffi-3.4.2-8.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libffi-3.4.2-8.el9.src.rpm
```

### `rpm` package: `libfido2-1.13.0-2.el9.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url libfido2-1.13.0-2.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libfido2-1.13.0-2.el9.src.rpm
```

### `rpm` package: `libgcc-11.5.0-14.el9.x86_64`

Licenses (from `rpm --query`): GPLv3+ and GPLv3+ with exceptions and GPLv2+ with exceptions and LGPLv2+ and BSD

Source:

```console
$ dnf --quiet download --source --url libgcc-11.5.0-14.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/g/gcc-11.5.0-14.el9.src.rpm
```

### `rpm` package: `libgcrypt-1.10.0-13.el9_8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libgcrypt-1.10.0-13.el9_8
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libgcrypt-1.10.0-13.el9_8.src.rpm
```

### `rpm` package: `libgomp-11.5.0-14.el9.x86_64`

Licenses (from `rpm --query`): GPLv3+ and GPLv3+ with exceptions and GPLv2+ with exceptions and LGPLv2+ and BSD

Source:

```console
$ dnf --quiet download --source --url libgomp-11.5.0-14.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/g/gcc-11.5.0-14.el9.src.rpm
```

### `rpm` package: `libgpg-error-1.42-5.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libgpg-error-1.42-5.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libgpg-error-1.42-5.el9.src.rpm
```

### `rpm` package: `libidn2-2.3.0-7.el9.x86_64`

Licenses (from `rpm --query`): (GPLv2+ or LGPLv3+) and GPLv3+

Source:

```console
$ dnf --quiet download --source --url libidn2-2.3.0-7.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libidn2-2.3.0-7.el9.src.rpm
```

### `rpm` package: `libksba-1.5.1-7.el9.x86_64`

Licenses (from `rpm --query`): (LGPLv3+ or GPLv2+) and GPLv3+

Source:

```console
$ dnf --quiet download --source --url libksba-1.5.1-7.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libksba-1.5.1-7.el9.src.rpm
```

### `rpm` package: `libmnl-1.0.4-16.el9_4.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libmnl-1.0.4-16.el9_4
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libmnl-1.0.4-16.el9_4.src.rpm
```

### `rpm` package: `libmodulemd-2.13.0-2.el9.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libmodulemd-2.13.0-2.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libmodulemd-2.13.0-2.el9.src.rpm
```

### `rpm` package: `libmount-2.37.4-25.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libmount-2.37.4-25.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/u/util-linux-2.37.4-25.el9.src.rpm
```

### `rpm` package: `libmpc-1.2.1-4.el9.x86_64`

Licenses (from `rpm --query`): LGPLv3+

Source:

```console
$ dnf --quiet download --source --url libmpc-1.2.1-4.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/l/libmpc-1.2.1-4.el9.src.rpm
```

### `rpm` package: `libnghttp2-1.43.0-6.el9_8.2.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libnghttp2-1.43.0-6.el9_8.2
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/n/nghttp2-1.43.0-6.el9_8.2.src.rpm
```

### `rpm` package: `libpkgconf-1.7.3-10.el9.x86_64`

Licenses (from `rpm --query`): ISC

Source:

```console
$ dnf --quiet download --source --url libpkgconf-1.7.3-10.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/pkgconf-1.7.3-10.el9.src.rpm
```

### `rpm` package: `libpwquality-1.4.4-8.el9.x86_64`

Licenses (from `rpm --query`): BSD or GPLv2+

Source:

```console
$ dnf --quiet download --source --url libpwquality-1.4.4-8.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libpwquality-1.4.4-8.el9.src.rpm
```

### `rpm` package: `librepo-1.19.0-1.el9.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url librepo-1.19.0-1.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/librepo-1.19.0-1.el9.src.rpm
```

### `rpm` package: `libreport-filesystem-2.15.2-6.el9.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url libreport-filesystem-2.15.2-6.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libreport-2.15.2-6.el9.src.rpm
```

### `rpm` package: `librhsm-0.0.3-9.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url librhsm-0.0.3-9.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/librhsm-0.0.3-9.el9.src.rpm
```

### `rpm` package: `libseccomp-2.5.2-2.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2

Source:

```console
$ dnf --quiet download --source --url libseccomp-2.5.2-2.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libseccomp-2.5.2-2.el9.src.rpm
```

### `rpm` package: `libselinux-3.6-3.el9.x86_64`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url libselinux-3.6-3.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libselinux-3.6-3.el9.src.rpm
```

### `rpm` package: `libsemanage-3.6-5.el9_6.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libsemanage-3.6-5.el9_6
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libsemanage-3.6-5.el9_6.src.rpm
```

### `rpm` package: `libsepol-3.6-3.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libsepol-3.6-3.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libsepol-3.6-3.el9.src.rpm
```

### `rpm` package: `libsigsegv-2.13-4.el9.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url libsigsegv-2.13-4.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libsigsegv-2.13-4.el9.src.rpm
```

### `rpm` package: `libsmartcols-2.37.4-25.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libsmartcols-2.37.4-25.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/u/util-linux-2.37.4-25.el9.src.rpm
```

### `rpm` package: `libsolv-0.7.24-6.el9_8.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url libsolv-0.7.24-6.el9_8
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libsolv-0.7.24-6.el9_8.src.rpm
```

### `rpm` package: `libstdc++-11.5.0-14.el9.x86_64`

Licenses (from `rpm --query`): GPLv3+ and GPLv3+ with exceptions and GPLv2+ with exceptions and LGPLv2+ and BSD

Source:

```console
$ dnf --quiet download --source --url libstdc++-11.5.0-14.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/g/gcc-11.5.0-14.el9.src.rpm
```

### `rpm` package: `libstdc++-devel-11.5.0-14.el9.x86_64`

Licenses (from `rpm --query`): GPLv3+ and GPLv3+ with exceptions and GPLv2+ with exceptions and LGPLv2+ and BSD

Source:

```console
$ dnf --quiet download --source --url libstdc++-devel-11.5.0-14.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/g/gcc-11.5.0-14.el9.src.rpm
```

### `rpm` package: `libtasn1-4.16.0-10.el9_8.x86_64`

Licenses (from `rpm --query`): GPLv3+ and LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libtasn1-4.16.0-10.el9_8
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libtasn1-4.16.0-10.el9_8.src.rpm
```

### `rpm` package: `libtool-ltdl-2.4.6-46.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libtool-ltdl-2.4.6-46.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/l/libtool-2.4.6-46.el9.src.rpm
```

### `rpm` package: `libunistring-0.9.10-15.el9.x86_64`

Licenses (from `rpm --query`): GPLv2+ or LGPLv3+

Source:

```console
$ dnf --quiet download --source --url libunistring-0.9.10-15.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libunistring-0.9.10-15.el9.src.rpm
```

### `rpm` package: `libuser-0.63-17.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libuser-0.63-17.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libuser-0.63-17.el9.src.rpm
```

### `rpm` package: `libutempter-1.2.1-6.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libutempter-1.2.1-6.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libutempter-1.2.1-6.el9.src.rpm
```

### `rpm` package: `libuuid-2.37.4-25.el9.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url libuuid-2.37.4-25.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/u/util-linux-2.37.4-25.el9.src.rpm
```

### `rpm` package: `libuuid-devel-2.37.4-25.el9.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url libuuid-devel-2.37.4-25.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/u/util-linux-2.37.4-25.el9.src.rpm
```

### `rpm` package: `libverto-0.3.2-3.el9.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libverto-0.3.2-3.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libverto-0.3.2-3.el9.src.rpm
```

### `rpm` package: `libxcrypt-4.4.18-3.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and BSD and Public Domain

Source:

```console
$ dnf --quiet download --source --url libxcrypt-4.4.18-3.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libxcrypt-4.4.18-3.el9.src.rpm
```

### `rpm` package: `libxcrypt-compat-4.4.18-3.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and BSD and Public Domain

Source:

```console
$ dnf --quiet download --source --url libxcrypt-compat-4.4.18-3.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libxcrypt-4.4.18-3.el9.src.rpm
```

### `rpm` package: `libxcrypt-devel-4.4.18-3.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and BSD and Public Domain

Source:

```console
$ dnf --quiet download --source --url libxcrypt-devel-4.4.18-3.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libxcrypt-4.4.18-3.el9.src.rpm
```

### `rpm` package: `libxml2-2.9.13-14.el9_8.4.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libxml2-2.9.13-14.el9_8.4
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libxml2-2.9.13-14.el9_8.4.src.rpm
```

### `rpm` package: `libxml2-devel-2.9.13-14.el9_8.4.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libxml2-devel-2.9.13-14.el9_8.4
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libxml2-2.9.13-14.el9_8.4.src.rpm
```

### `rpm` package: `libyaml-0.2.5-7.el9.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libyaml-0.2.5-7.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libyaml-0.2.5-7.el9.src.rpm
```

### `rpm` package: `libzstd-1.5.5-1.el9.x86_64`

Licenses (from `rpm --query`): BSD and GPLv2

Source:

```console
$ dnf --quiet download --source --url libzstd-1.5.5-1.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/z/zstd-1.5.5-1.el9.src.rpm
```

### `rpm` package: `lua-libs-5.4.4-4.el9.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url lua-libs-5.4.4-4.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/lua-5.4.4-4.el9.src.rpm
```

### `rpm` package: `lz4-libs-1.9.3-5.el9.x86_64`

Licenses (from `rpm --query`): GPLv2+ and BSD

Source:

```console
$ dnf --quiet download --source --url lz4-libs-1.9.3-5.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/lz4-1.9.3-5.el9.src.rpm
```

### `rpm` package: `make-4.3-8.el9.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url make-4.3-8.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/m/make-4.3-8.el9.src.rpm
```

### `rpm` package: `mpfr-4.1.0-10.el9.x86_64`

Licenses (from `rpm --query`): LGPLv3+

Source:

```console
$ dnf --quiet download --source --url mpfr-4.1.0-10.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/m/mpfr-4.1.0-10.el9.src.rpm
```

### `rpm` package: `ncurses-6.2-12.20210508.el9.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url ncurses-6.2-12.20210508.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/n/ncurses-6.2-12.20210508.el9.src.rpm
```

### `rpm` package: `ncurses-base-6.2-12.20210508.el9.noarch`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url ncurses-base-6.2-12.20210508.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/n/ncurses-6.2-12.20210508.el9.src.rpm
```

### `rpm` package: `ncurses-c++-libs-6.2-12.20210508.el9.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url ncurses-c++-libs-6.2-12.20210508.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/n/ncurses-6.2-12.20210508.el9.src.rpm
```

### `rpm` package: `ncurses-devel-6.2-12.20210508.el9.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url ncurses-devel-6.2-12.20210508.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/n/ncurses-6.2-12.20210508.el9.src.rpm
```

### `rpm` package: `ncurses-libs-6.2-12.20210508.el9.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url ncurses-libs-6.2-12.20210508.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/n/ncurses-6.2-12.20210508.el9.src.rpm
```

### `rpm` package: `nettle-3.10.1-1.el9.x86_64`

Licenses (from `rpm --query`): LGPLv3+ or GPLv2+

Source:

```console
$ dnf --quiet download --source --url nettle-3.10.1-1.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/n/nettle-3.10.1-1.el9.src.rpm
```

### `rpm` package: `npth-1.6-8.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url npth-1.6-8.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/n/npth-1.6-8.el9.src.rpm
```

### `rpm` package: `openldap-2.6.8-4.el9.x86_64`

Licenses (from `rpm --query`): OLDAP-2.8

Source:

```console
$ dnf --quiet download --source --url openldap-2.6.8-4.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/o/openldap-2.6.8-4.el9.src.rpm
```

### `rpm` package: `openssh-9.9p1-9.el9_8.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url openssh-9.9p1-9.el9_8
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/o/openssh-9.9p1-9.el9_8.src.rpm
```

### `rpm` package: `openssh-clients-9.9p1-9.el9_8.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url openssh-clients-9.9p1-9.el9_8
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/o/openssh-9.9p1-9.el9_8.src.rpm
```

### `rpm` package: `openssl-3.5.5-6.el9_8.x86_64`

Licenses (from `rpm --query`): Apache-2.0

Source:

```console
$ dnf --quiet download --source --url openssl-3.5.5-6.el9_8
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/o/openssl-3.5.5-6.el9_8.src.rpm
```

### `rpm` package: `openssl-fips-provider-3.0.7-11.el9_8.x86_64`

Licenses (from `rpm --query`): ASL 2.0

Source:

```console
$ dnf --quiet download --source --url openssl-fips-provider-3.0.7-11.el9_8
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/o/openssl-fips-provider-3.0.7-11.el9_8.src.rpm
```

### `rpm` package: `openssl-fips-provider-so-3.0.7-11.el9_8.x86_64`

Licenses (from `rpm --query`): ASL 2.0

Source:

```console
$ dnf --quiet download --source --url openssl-fips-provider-so-3.0.7-11.el9_8
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/o/openssl-fips-provider-3.0.7-11.el9_8.src.rpm
```

### `rpm` package: `openssl-libs-3.5.5-6.el9_8.x86_64`

Licenses (from `rpm --query`): Apache-2.0

Source:

```console
$ dnf --quiet download --source --url openssl-libs-3.5.5-6.el9_8
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/o/openssl-3.5.5-6.el9_8.src.rpm
```

### `rpm` package: `p11-kit-0.26.4-1.el9_8.x86_64`

Licenses (from `rpm --query`): BSD-3-Clause

Source:

```console
$ dnf --quiet download --source --url p11-kit-0.26.4-1.el9_8
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/p11-kit-0.26.4-1.el9_8.src.rpm
```

### `rpm` package: `p11-kit-trust-0.26.4-1.el9_8.x86_64`

Licenses (from `rpm --query`): BSD-3-Clause

Source:

```console
$ dnf --quiet download --source --url p11-kit-trust-0.26.4-1.el9_8
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/p11-kit-0.26.4-1.el9_8.src.rpm
```

### `rpm` package: `pam-1.5.1-28.el9.x86_64`

Licenses (from `rpm --query`): BSD and GPLv2+

Source:

```console
$ dnf --quiet download --source --url pam-1.5.1-28.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/pam-1.5.1-28.el9.src.rpm
```

### `rpm` package: `passwd-0.80-12.el9.x86_64`

Licenses (from `rpm --query`): BSD or GPL+

Source:

```console
$ dnf --quiet download --source --url passwd-0.80-12.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/passwd-0.80-12.el9.src.rpm
```

### `rpm` package: `pcre-8.44-4.el9.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url pcre-8.44-4.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/pcre-8.44-4.el9.src.rpm
```

### `rpm` package: `pcre2-10.40-6.el9.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url pcre2-10.40-6.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/pcre2-10.40-6.el9.src.rpm
```

### `rpm` package: `pcre2-syntax-10.40-6.el9.noarch`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url pcre2-syntax-10.40-6.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/pcre2-10.40-6.el9.src.rpm
```

### `rpm` package: `perl-AutoLoader-5.74-481.1.el9_6.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-AutoLoader-5.74-481.1.el9_6.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-5.32.1-481.1.el9_6.src.rpm
```

### `rpm` package: `perl-B-1.80-481.1.el9_6.x86_64`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-B-1.80-481.1.el9_6
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-5.32.1-481.1.el9_6.src.rpm
```

### `rpm` package: `perl-Carp-1.50-460.el9.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-Carp-1.50-460.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-Carp-1.50-460.el9.src.rpm
```

### `rpm` package: `perl-Class-Struct-0.66-481.1.el9_6.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-Class-Struct-0.66-481.1.el9_6.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-5.32.1-481.1.el9_6.src.rpm
```

### `rpm` package: `perl-Data-Dumper-2.174-462.el9.x86_64`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-Data-Dumper-2.174-462.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-Data-Dumper-2.174-462.el9.src.rpm
```

### `rpm` package: `perl-Digest-1.19-4.el9.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-Digest-1.19-4.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-Digest-1.19-4.el9.src.rpm
```

### `rpm` package: `perl-Digest-MD5-2.58-4.el9.x86_64`

Licenses (from `rpm --query`): (GPL+ or Artistic) and RSA

Source:

```console
$ dnf --quiet download --source --url perl-Digest-MD5-2.58-4.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-Digest-MD5-2.58-4.el9.src.rpm
```

### `rpm` package: `perl-DynaLoader-1.47-481.1.el9_6.x86_64`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-DynaLoader-1.47-481.1.el9_6
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-5.32.1-481.1.el9_6.src.rpm
```

### `rpm` package: `perl-Encode-3.08-462.el9.x86_64`

Licenses (from `rpm --query`): (GPL+ or Artistic) and Artistic 2.0 and UCD

Source:

```console
$ dnf --quiet download --source --url perl-Encode-3.08-462.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-Encode-3.08-462.el9.src.rpm
```

### `rpm` package: `perl-Errno-1.30-481.1.el9_6.x86_64`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-Errno-1.30-481.1.el9_6
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-5.32.1-481.1.el9_6.src.rpm
```

### `rpm` package: `perl-Error-0.17029-7.el9.noarch`

Licenses (from `rpm --query`): (GPL+ or Artistic) and MIT

Source:

```console
$ dnf --quiet download --source --url perl-Error-0.17029-7.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-Error-0.17029-7.el9.src.rpm
```

### `rpm` package: `perl-Exporter-5.74-461.el9.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-Exporter-5.74-461.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-Exporter-5.74-461.el9.src.rpm
```

### `rpm` package: `perl-Fcntl-1.13-481.1.el9_6.x86_64`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-Fcntl-1.13-481.1.el9_6
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-5.32.1-481.1.el9_6.src.rpm
```

### `rpm` package: `perl-File-Basename-2.85-481.1.el9_6.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-File-Basename-2.85-481.1.el9_6.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-5.32.1-481.1.el9_6.src.rpm
```

### `rpm` package: `perl-File-Path-2.18-4.el9.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-File-Path-2.18-4.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-File-Path-2.18-4.el9.src.rpm
```

### `rpm` package: `perl-File-Temp-0.231.100-4.el9.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-File-Temp-0.231.100-4.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-File-Temp-0.231.100-4.el9.src.rpm
```

### `rpm` package: `perl-File-stat-1.09-481.1.el9_6.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-File-stat-1.09-481.1.el9_6.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-5.32.1-481.1.el9_6.src.rpm
```

### `rpm` package: `perl-FileHandle-2.03-481.1.el9_6.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-FileHandle-2.03-481.1.el9_6.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-5.32.1-481.1.el9_6.src.rpm
```

### `rpm` package: `perl-Getopt-Long-2.52-4.el9.noarch`

Licenses (from `rpm --query`): GPLv2+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-Getopt-Long-2.52-4.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-Getopt-Long-2.52-4.el9.src.rpm
```

### `rpm` package: `perl-Getopt-Std-1.12-481.1.el9_6.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-Getopt-Std-1.12-481.1.el9_6.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-5.32.1-481.1.el9_6.src.rpm
```

### `rpm` package: `perl-Git-2.52.0-1.el9.noarch`

Licenses (from `rpm --query`): GPLv2

Source:

```console
$ dnf --quiet download --source --url perl-Git-2.52.0-1.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/g/git-2.52.0-1.el9.src.rpm
```

### `rpm` package: `perl-HTTP-Tiny-0.076-462.el9.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-HTTP-Tiny-0.076-462.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-HTTP-Tiny-0.076-462.el9.src.rpm
```

### `rpm` package: `perl-IO-1.43-481.1.el9_6.x86_64`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-IO-1.43-481.1.el9_6
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-5.32.1-481.1.el9_6.src.rpm
```

### `rpm` package: `perl-IO-Socket-IP-0.41-5.el9.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-IO-Socket-IP-0.41-5.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-IO-Socket-IP-0.41-5.el9.src.rpm
```

### `rpm` package: `perl-IO-Socket-SSL-2.073-2.el9.noarch`

Licenses (from `rpm --query`): (GPL+ or Artistic) and MPLv2.0

Source:

```console
$ dnf --quiet download --source --url perl-IO-Socket-SSL-2.073-2.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-IO-Socket-SSL-2.073-2.el9.src.rpm
```

### `rpm` package: `perl-IPC-Open3-1.21-481.1.el9_6.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-IPC-Open3-1.21-481.1.el9_6.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-5.32.1-481.1.el9_6.src.rpm
```

### `rpm` package: `perl-MIME-Base64-3.16-4.el9.x86_64`

Licenses (from `rpm --query`): (GPL+ or Artistic) and MIT

Source:

```console
$ dnf --quiet download --source --url perl-MIME-Base64-3.16-4.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-MIME-Base64-3.16-4.el9.src.rpm
```

### `rpm` package: `perl-Mozilla-CA-20200520-6.el9.noarch`

Licenses (from `rpm --query`): MPLv2.0

Source:

```console
$ dnf --quiet download --source --url perl-Mozilla-CA-20200520-6.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-Mozilla-CA-20200520-6.el9.src.rpm
```

### `rpm` package: `perl-NDBM_File-1.15-481.1.el9_6.x86_64`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-NDBM_File-1.15-481.1.el9_6
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-5.32.1-481.1.el9_6.src.rpm
```

### `rpm` package: `perl-Net-SSLeay-1.94-3.el9.x86_64`

Licenses (from `rpm --query`): Artistic-2.0

Source:

```console
$ dnf --quiet download --source --url perl-Net-SSLeay-1.94-3.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-Net-SSLeay-1.94-3.el9.src.rpm
```

### `rpm` package: `perl-POSIX-1.94-481.1.el9_6.x86_64`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-POSIX-1.94-481.1.el9_6
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-5.32.1-481.1.el9_6.src.rpm
```

### `rpm` package: `perl-PathTools-3.78-461.el9.x86_64`

Licenses (from `rpm --query`): (GPL+ or Artistic) and BSD

Source:

```console
$ dnf --quiet download --source --url perl-PathTools-3.78-461.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-PathTools-3.78-461.el9.src.rpm
```

### `rpm` package: `perl-Pod-Escapes-1.07-460.el9.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-Pod-Escapes-1.07-460.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-Pod-Escapes-1.07-460.el9.src.rpm
```

### `rpm` package: `perl-Pod-Perldoc-3.28.01-461.el9.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-Pod-Perldoc-3.28.01-461.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-Pod-Perldoc-3.28.01-461.el9.src.rpm
```

### `rpm` package: `perl-Pod-Simple-3.42-4.el9.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-Pod-Simple-3.42-4.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-Pod-Simple-3.42-4.el9.src.rpm
```

### `rpm` package: `perl-Pod-Usage-2.01-4.el9.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-Pod-Usage-2.01-4.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-Pod-Usage-2.01-4.el9.src.rpm
```

### `rpm` package: `perl-Scalar-List-Utils-1.56-462.el9.x86_64`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-Scalar-List-Utils-1.56-462.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-Scalar-List-Utils-1.56-462.el9.src.rpm
```

### `rpm` package: `perl-SelectSaver-1.02-481.1.el9_6.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-SelectSaver-1.02-481.1.el9_6.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-5.32.1-481.1.el9_6.src.rpm
```

### `rpm` package: `perl-Socket-2.031-4.el9.x86_64`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-Socket-2.031-4.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-Socket-2.031-4.el9.src.rpm
```

### `rpm` package: `perl-Storable-3.21-460.el9.x86_64`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-Storable-3.21-460.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-Storable-3.21-460.el9.src.rpm
```

### `rpm` package: `perl-Symbol-1.08-481.1.el9_6.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-Symbol-1.08-481.1.el9_6.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-5.32.1-481.1.el9_6.src.rpm
```

### `rpm` package: `perl-Term-ANSIColor-5.01-461.el9.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-Term-ANSIColor-5.01-461.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-Term-ANSIColor-5.01-461.el9.src.rpm
```

### `rpm` package: `perl-Term-Cap-1.17-460.el9.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-Term-Cap-1.17-460.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-Term-Cap-1.17-460.el9.src.rpm
```

### `rpm` package: `perl-TermReadKey-2.38-11.el9.x86_64`

Licenses (from `rpm --query`): (Copyright only) and (Artistic or GPL+)

Source:

```console
$ dnf --quiet download --source --url perl-TermReadKey-2.38-11.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-TermReadKey-2.38-11.el9.src.rpm
```

### `rpm` package: `perl-Text-ParseWords-3.30-460.el9.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-Text-ParseWords-3.30-460.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-Text-ParseWords-3.30-460.el9.src.rpm
```

### `rpm` package: `perl-Text-Tabs+Wrap-2013.0523-460.el9.noarch`

Licenses (from `rpm --query`): TTWL

Source:

```console
$ dnf --quiet download --source --url perl-Text-Tabs+Wrap-2013.0523-460.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-Text-Tabs+Wrap-2013.0523-460.el9.src.rpm
```

### `rpm` package: `perl-Time-Local-1.300-7.el9.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-Time-Local-1.300-7.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-Time-Local-1.300-7.el9.src.rpm
```

### `rpm` package: `perl-URI-5.09-3.el9.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-URI-5.09-3.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-URI-5.09-3.el9.src.rpm
```

### `rpm` package: `perl-base-2.27-481.1.el9_6.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-base-2.27-481.1.el9_6.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-5.32.1-481.1.el9_6.src.rpm
```

### `rpm` package: `perl-constant-1.33-461.el9.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-constant-1.33-461.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-constant-1.33-461.el9.src.rpm
```

### `rpm` package: `perl-if-0.60.800-481.1.el9_6.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-if-0.60.800-481.1.el9_6.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-5.32.1-481.1.el9_6.src.rpm
```

### `rpm` package: `perl-interpreter-5.32.1-481.1.el9_6.x86_64`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-interpreter-5.32.1-481.1.el9_6
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-5.32.1-481.1.el9_6.src.rpm
```

### `rpm` package: `perl-lib-0.65-481.1.el9_6.x86_64`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-lib-0.65-481.1.el9_6
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-5.32.1-481.1.el9_6.src.rpm
```

### `rpm` package: `perl-libnet-3.13-4.el9.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-libnet-3.13-4.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-libnet-3.13-4.el9.src.rpm
```

### `rpm` package: `perl-libs-5.32.1-481.1.el9_6.x86_64`

Licenses (from `rpm --query`): (GPL+ or Artistic) and BSD and HSRL and MIT and UCD and Public domain

Source:

```console
$ dnf --quiet download --source --url perl-libs-5.32.1-481.1.el9_6
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-5.32.1-481.1.el9_6.src.rpm
```

### `rpm` package: `perl-mro-1.23-481.1.el9_6.x86_64`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-mro-1.23-481.1.el9_6
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-5.32.1-481.1.el9_6.src.rpm
```

### `rpm` package: `perl-overload-1.31-481.1.el9_6.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-overload-1.31-481.1.el9_6.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-5.32.1-481.1.el9_6.src.rpm
```

### `rpm` package: `perl-overloading-0.02-481.1.el9_6.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-overloading-0.02-481.1.el9_6.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-5.32.1-481.1.el9_6.src.rpm
```

### `rpm` package: `perl-parent-0.238-460.el9.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-parent-0.238-460.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-parent-0.238-460.el9.src.rpm
```

### `rpm` package: `perl-podlators-4.14-460.el9.noarch`

Licenses (from `rpm --query`): (GPL+ or Artistic) and FSFAP

Source:

```console
$ dnf --quiet download --source --url perl-podlators-4.14-460.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-podlators-4.14-460.el9.src.rpm
```

### `rpm` package: `perl-subs-1.03-481.1.el9_6.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-subs-1.03-481.1.el9_6.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-5.32.1-481.1.el9_6.src.rpm
```

### `rpm` package: `perl-vars-1.05-481.1.el9_6.noarch`

Licenses (from `rpm --query`): GPL+ or Artistic

Source:

```console
$ dnf --quiet download --source --url perl-vars-1.05-481.1.el9_6.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/appstream/source/SRPMS/Packages/p/perl-5.32.1-481.1.el9_6.src.rpm
```

### `rpm` package: `pkgconf-1.7.3-10.el9.x86_64`

Licenses (from `rpm --query`): ISC

Source:

```console
$ dnf --quiet download --source --url pkgconf-1.7.3-10.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/pkgconf-1.7.3-10.el9.src.rpm
```

### `rpm` package: `pkgconf-m4-1.7.3-10.el9.noarch`

Licenses (from `rpm --query`): GPLv2+ with exceptions

Source:

```console
$ dnf --quiet download --source --url pkgconf-m4-1.7.3-10.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/pkgconf-1.7.3-10.el9.src.rpm
```

### `rpm` package: `pkgconf-pkg-config-1.7.3-10.el9.x86_64`

Licenses (from `rpm --query`): ISC

Source:

```console
$ dnf --quiet download --source --url pkgconf-pkg-config-1.7.3-10.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/pkgconf-1.7.3-10.el9.src.rpm
```

### `rpm` package: `popt-1.18-8.el9.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url popt-1.18-8.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/popt-1.18-8.el9.src.rpm
```

### `rpm` package: `psmisc-23.4-3.el9.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url psmisc-23.4-3.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/psmisc-23.4-3.el9.src.rpm
```

### `rpm` package: `python3-3.9.25-7.el9_8.3.x86_64`

Licenses (from `rpm --query`): Python

Source:

```console
$ dnf --quiet download --source --url python3-3.9.25-7.el9_8.3
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/python3.9-3.9.25-7.el9_8.3.src.rpm
```

### `rpm` package: `python3-chardet-4.0.0-5.el9.noarch`

Licenses (from `rpm --query`): LGPLv2

Source:

```console
$ dnf --quiet download --source --url python3-chardet-4.0.0-5.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/python-chardet-4.0.0-5.el9.src.rpm
```

### `rpm` package: `python3-cloud-what-1.29.50-1.el9.x86_64`

Licenses (from `rpm --query`): GPL-2.0-only AND GPL-2.0-or-later AND LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url python3-cloud-what-1.29.50-1.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/s/subscription-manager-1.29.50-1.el9.src.rpm
```

### `rpm` package: `python3-dateutil-2.9.0.post0-1.el9_7.noarch`

Licenses (from `rpm --query`): (Apache-2.0 AND BSD-3-Clause) OR BSD-3-Clause

Source:

```console
$ dnf --quiet download --source --url python3-dateutil-2.9.0.post0-1.el9_7.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/python-dateutil-2.9.0.post0-1.el9_7.src.rpm
```

### `rpm` package: `python3-dbus-1.2.18-2.el9.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url python3-dbus-1.2.18-2.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/d/dbus-python-1.2.18-2.el9.src.rpm
```

### `rpm` package: `python3-decorator-4.4.2-6.el9.noarch`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url python3-decorator-4.4.2-6.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/python-decorator-4.4.2-6.el9.src.rpm
```

### `rpm` package: `python3-devel-3.9.25-7.el9_8.3.x86_64`

Licenses (from `rpm --query`): Python

Source:

```console
$ dnf --quiet download --source --url python3-devel-3.9.25-7.el9_8.3
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/python3.9-3.9.25-7.el9_8.3.src.rpm
```

### `rpm` package: `python3-dnf-4.14.0-34.el9_8.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url python3-dnf-4.14.0-34.el9_8.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/d/dnf-4.14.0-34.el9_8.src.rpm
```

### `rpm` package: `python3-dnf-plugins-core-4.3.0-26.el9.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url python3-dnf-plugins-core-4.3.0-26.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/d/dnf-plugins-core-4.3.0-26.el9.src.rpm
```

### `rpm` package: `python3-gobject-base-3.40.1-6.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and MIT

Source:

```console
$ dnf --quiet download --source --url python3-gobject-base-3.40.1-6.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/pygobject3-3.40.1-6.el9.src.rpm
```

### `rpm` package: `python3-gobject-base-noarch-3.40.1-6.el9.noarch`

Licenses (from `rpm --query`): LGPLv2+ and MIT

Source:

```console
$ dnf --quiet download --source --url python3-gobject-base-noarch-3.40.1-6.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/pygobject3-3.40.1-6.el9.src.rpm
```

### `rpm` package: `python3-gpg-1.15.1-6.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and GPLv3+

Source:

```console
$ dnf --quiet download --source --url python3-gpg-1.15.1-6.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/g/gpgme-1.15.1-6.el9.src.rpm
```

### `rpm` package: `python3-hawkey-0.69.0-18.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url python3-hawkey-0.69.0-18.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libdnf-0.69.0-18.el9.src.rpm
```

### `rpm` package: `python3-idna-2.10-8.el9_8.noarch`

Licenses (from `rpm --query`): BSD and Python and Unicode

Source:

```console
$ dnf --quiet download --source --url python3-idna-2.10-8.el9_8.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/python-idna-2.10-8.el9_8.src.rpm
```

### `rpm` package: `python3-iniparse-0.4-45.el9.noarch`

Licenses (from `rpm --query`): MIT and Python

Source:

```console
$ dnf --quiet download --source --url python3-iniparse-0.4-45.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/python-iniparse-0.4-45.el9.src.rpm
```

### `rpm` package: `python3-inotify-0.9.6-25.el9.noarch`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url python3-inotify-0.9.6-25.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/python-inotify-0.9.6-25.el9.src.rpm
```

### `rpm` package: `python3-libcomps-0.1.18-1.el9.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url python3-libcomps-0.1.18-1.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libcomps-0.1.18-1.el9.src.rpm
```

### `rpm` package: `python3-libdnf-0.69.0-18.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url python3-libdnf-0.69.0-18.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/libdnf-0.69.0-18.el9.src.rpm
```

### `rpm` package: `python3-librepo-1.19.0-1.el9.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url python3-librepo-1.19.0-1.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/l/librepo-1.19.0-1.el9.src.rpm
```

### `rpm` package: `python3-libs-3.9.25-7.el9_8.3.x86_64`

Licenses (from `rpm --query`): Python

Source:

```console
$ dnf --quiet download --source --url python3-libs-3.9.25-7.el9_8.3
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/python3.9-3.9.25-7.el9_8.3.src.rpm
```

### `rpm` package: `python3-pip-21.3.1-2.el9_8.noarch`

Licenses (from `rpm --query`): MIT and Python and ASL 2.0 and BSD and ISC and LGPLv2 and MPLv2.0 and (ASL 2.0 or BSD)

Source:

```console
$ dnf --quiet download --source --url python3-pip-21.3.1-2.el9_8.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/python-pip-21.3.1-2.el9_8.src.rpm
```

### `rpm` package: `python3-pip-wheel-21.3.1-2.el9_8.noarch`

Licenses (from `rpm --query`): MIT and Python and ASL 2.0 and BSD and ISC and LGPLv2 and MPLv2.0 and (ASL 2.0 or BSD)

Source:

```console
$ dnf --quiet download --source --url python3-pip-wheel-21.3.1-2.el9_8.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/python-pip-21.3.1-2.el9_8.src.rpm
```

### `rpm` package: `python3-pysocks-1.7.1-12.el9.noarch`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url python3-pysocks-1.7.1-12.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/python-pysocks-1.7.1-12.el9.src.rpm
```

### `rpm` package: `python3-requests-2.25.1-10.el9_6.noarch`

Licenses (from `rpm --query`): ASL 2.0

Source:

```console
$ dnf --quiet download --source --url python3-requests-2.25.1-10.el9_6.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/python-requests-2.25.1-10.el9_6.src.rpm
```

### `rpm` package: `python3-rpm-4.16.1.3-40.el9.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url python3-rpm-4.16.1.3-40.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/r/rpm-4.16.1.3-40.el9.src.rpm
```

### `rpm` package: `python3-setuptools-53.0.0-15.el9.noarch`

Licenses (from `rpm --query`): MIT and (BSD or ASL 2.0)

Source:

```console
$ dnf --quiet download --source --url python3-setuptools-53.0.0-15.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/python-setuptools-53.0.0-15.el9.src.rpm
```

### `rpm` package: `python3-setuptools-wheel-53.0.0-15.el9.noarch`

Licenses (from `rpm --query`): MIT and (BSD or ASL 2.0)

Source:

```console
$ dnf --quiet download --source --url python3-setuptools-wheel-53.0.0-15.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/python-setuptools-53.0.0-15.el9.src.rpm
```

### `rpm` package: `python3-six-1.15.0-9.el9.noarch`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url python3-six-1.15.0-9.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/python-six-1.15.0-9.el9.src.rpm
```

### `rpm` package: `python3-subscription-manager-rhsm-1.29.50-1.el9.x86_64`

Licenses (from `rpm --query`): GPL-2.0-only AND GPL-2.0-or-later AND LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url python3-subscription-manager-rhsm-1.29.50-1.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/s/subscription-manager-1.29.50-1.el9.src.rpm
```

### `rpm` package: `python3-systemd-234-19.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url python3-systemd-234-19.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/python-systemd-234-19.el9.src.rpm
```

### `rpm` package: `python3-urllib3-1.26.5-8.el9_8.noarch`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url python3-urllib3-1.26.5-8.el9_8.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/p/python-urllib3-1.26.5-8.el9_8.src.rpm
```

### `rpm` package: `readline-8.1-4.el9.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url readline-8.1-4.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/r/readline-8.1-4.el9.src.rpm
```

### `rpm` package: `redhat-release-9.8-1.0.el9.x86_64`

Licenses (from `rpm --query`): GPLv2

Source:

```console
$ dnf --quiet download --source --url redhat-release-9.8-1.0.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/r/redhat-release-9.8-1.0.el9.src.rpm
```

### `rpm` package: `rootfiles-8.1-35.el9.noarch`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url rootfiles-8.1-35.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/r/rootfiles-8.1-35.el9.src.rpm
```

### `rpm` package: `rpm-4.16.1.3-40.el9.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url rpm-4.16.1.3-40.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/r/rpm-4.16.1.3-40.el9.src.rpm
```

### `rpm` package: `rpm-build-libs-4.16.1.3-40.el9.x86_64`

Licenses (from `rpm --query`): GPLv2+ and LGPLv2+ with exceptions

Source:

```console
$ dnf --quiet download --source --url rpm-build-libs-4.16.1.3-40.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/r/rpm-4.16.1.3-40.el9.src.rpm
```

### `rpm` package: `rpm-libs-4.16.1.3-40.el9.x86_64`

Licenses (from `rpm --query`): GPLv2+ and LGPLv2+ with exceptions

Source:

```console
$ dnf --quiet download --source --url rpm-libs-4.16.1.3-40.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/r/rpm-4.16.1.3-40.el9.src.rpm
```

### `rpm` package: `rpm-sign-libs-4.16.1.3-40.el9.x86_64`

Licenses (from `rpm --query`): GPLv2+ and LGPLv2+ with exceptions

Source:

```console
$ dnf --quiet download --source --url rpm-sign-libs-4.16.1.3-40.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/r/rpm-4.16.1.3-40.el9.src.rpm
```

### `rpm` package: `rsync-3.2.5-7.el9_8.2.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url rsync-3.2.5-7.el9_8.2
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/r/rsync-3.2.5-7.el9_8.2.src.rpm
```

### `rpm` package: `sed-4.8-10.el9.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url sed-4.8-10.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/s/sed-4.8-10.el9.src.rpm
```

### `rpm` package: `setup-2.13.7-10.el9.noarch`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url setup-2.13.7-10.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/s/setup-2.13.7-10.el9.src.rpm
```

### `rpm` package: `shadow-utils-4.9-16.el9.x86_64`

Licenses (from `rpm --query`): BSD and GPLv2+

Source:

```console
$ dnf --quiet download --source --url shadow-utils-4.9-16.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/s/shadow-utils-4.9-16.el9.src.rpm
```

### `rpm` package: `sqlite-3.34.1-11.el9_8.x86_64`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url sqlite-3.34.1-11.el9_8
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/s/sqlite-3.34.1-11.el9_8.src.rpm
```

### `rpm` package: `sqlite-devel-3.34.1-11.el9_8.x86_64`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url sqlite-devel-3.34.1-11.el9_8
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/s/sqlite-3.34.1-11.el9_8.src.rpm
```

### `rpm` package: `sqlite-libs-3.34.1-11.el9_8.x86_64`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url sqlite-libs-3.34.1-11.el9_8
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/s/sqlite-3.34.1-11.el9_8.src.rpm
```

### `rpm` package: `subscription-manager-1.29.50-1.el9.x86_64`

Licenses (from `rpm --query`): GPL-2.0-only AND GPL-2.0-or-later AND LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url subscription-manager-1.29.50-1.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/s/subscription-manager-1.29.50-1.el9.src.rpm
```

### `rpm` package: `subscription-manager-rhsm-certificates-20220623-1.el9.noarch`

Licenses (from `rpm --query`): GPLv2

Source:

```console
$ dnf --quiet download --source --url subscription-manager-rhsm-certificates-20220623-1.el9.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/s/subscription-manager-rhsm-certificates-20220623-1.el9.src.rpm
```

### `rpm` package: `systemd-252-67.el9_8.4.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and MIT and GPLv2+

Source:

```console
$ dnf --quiet download --source --url systemd-252-67.el9_8.4
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/s/systemd-252-67.el9_8.4.src.rpm
```

### `rpm` package: `systemd-libs-252-67.el9_8.4.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and MIT

Source:

```console
$ dnf --quiet download --source --url systemd-libs-252-67.el9_8.4
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/s/systemd-252-67.el9_8.4.src.rpm
```

### `rpm` package: `systemd-pam-252-67.el9_8.4.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and MIT and GPLv2+

Source:

```console
$ dnf --quiet download --source --url systemd-pam-252-67.el9_8.4
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/s/systemd-252-67.el9_8.4.src.rpm
```

### `rpm` package: `systemd-rpm-macros-252-67.el9_8.4.noarch`

Licenses (from `rpm --query`): LGPLv2+ and MIT and GPLv2+

Source:

```console
$ dnf --quiet download --source --url systemd-rpm-macros-252-67.el9_8.4.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/s/systemd-252-67.el9_8.4.src.rpm
```

### `rpm` package: `tar-1.34-11.el9.x86_64`

Licenses (from `rpm --query`): GPLv3+

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `tpm2-tss-3.2.3-1.el9.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url tpm2-tss-3.2.3-1.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/t/tpm2-tss-3.2.3-1.el9.src.rpm
```

### `rpm` package: `tzdata-2026c-1.el9_8.noarch`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url tzdata-2026c-1.el9_8.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/t/tzdata-2026c-1.el9_8.src.rpm
```

### `rpm` package: `unzip-6.0-60.el9.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url unzip-6.0-60.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/u/unzip-6.0-60.el9.src.rpm
```

### `rpm` package: `usermode-1.114-7.el9.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url usermode-1.114-7.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/u/usermode-1.114-7.el9.src.rpm
```

### `rpm` package: `util-linux-2.37.4-25.el9.x86_64`

Licenses (from `rpm --query`): GPLv2 and GPLv2+ and LGPLv2+ and BSD with advertising and Public Domain

Source:

```console
$ dnf --quiet download --source --url util-linux-2.37.4-25.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/u/util-linux-2.37.4-25.el9.src.rpm
```

### `rpm` package: `util-linux-core-2.37.4-25.el9.x86_64`

Licenses (from `rpm --query`): GPLv2 and GPLv2+ and LGPLv2+ and BSD with advertising and Public Domain

Source:

```console
$ dnf --quiet download --source --url util-linux-core-2.37.4-25.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/u/util-linux-2.37.4-25.el9.src.rpm
```

### `rpm` package: `vim-minimal-8.2.2637-26.el9_8.13.x86_64`

Licenses (from `rpm --query`): Vim and MIT

Source:

```console
$ dnf --quiet download --source --url vim-minimal-8.2.2637-26.el9_8.13
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/v/vim-8.2.2637-26.el9_8.13.src.rpm
```

### `rpm` package: `virt-what-1.27-2.el9.x86_64`

Licenses (from `rpm --query`): GPL-2.0-or-later

Source:

```console
$ dnf --quiet download --source --url virt-what-1.27-2.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/v/virt-what-1.27-2.el9.src.rpm
```

### `rpm` package: `which-2.21-30.el9_6.x86_64`

Licenses (from `rpm --query`): GPLv3

Source:

```console
$ dnf --quiet download --source --url which-2.21-30.el9_6
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/w/which-2.21-30.el9_6.src.rpm
```

### `rpm` package: `xz-devel-5.2.5-8.el9_0.x86_64`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url xz-devel-5.2.5-8.el9_0
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/x/xz-5.2.5-8.el9_0.src.rpm
```

### `rpm` package: `xz-libs-5.2.5-8.el9_0.x86_64`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url xz-libs-5.2.5-8.el9_0
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/x/xz-5.2.5-8.el9_0.src.rpm
```

### `rpm` package: `yum-4.14.0-34.el9_8.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url yum-4.14.0-34.el9_8.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/d/dnf-4.14.0-34.el9_8.src.rpm
```

### `rpm` package: `zip-3.0-35.el9.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url zip-3.0-35.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/z/zip-3.0-35.el9.src.rpm
```

### `rpm` package: `zlib-1.2.11-40.el9.x86_64`

Licenses (from `rpm --query`): zlib and Boost

Source:

```console
$ dnf --quiet download --source --url zlib-1.2.11-40.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/z/zlib-1.2.11-40.el9.src.rpm
```

### `rpm` package: `zlib-devel-1.2.11-40.el9.x86_64`

Licenses (from `rpm --query`): zlib and Boost

Source:

```console
$ dnf --quiet download --source --url zlib-devel-1.2.11-40.el9
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/baseos/source/SRPMS/Packages/z/zlib-1.2.11-40.el9.src.rpm
```
