# `neo4j:5.26.28-enterprise-ubi10`

## Docker Metadata

- Image ID: `sha256:478cc33a6266d3363de4bbe16283a48369c3c9e82233477ac79d8a4ab140a33d`
- Created: `2026-07-29T18:30:18.431010557Z`
- Virtual Size: ~ 880.13 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["tini","-g","--","/startup/docker-entrypoint.sh"]`
- Command: `["neo4j"]`
- Environment:
  - `PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `container=oci`
  - `NEO4J_SHA256=3434b34d02fa4e281d669a11eb4141e5a3b20f79360f1a2f093f28e9b526281b`
  - `NEO4J_TARBALL=neo4j-enterprise-5.26.28-unix.tar.gz`
  - `NEO4J_EDITION=enterprise`
  - `NEO4J_HOME=/var/lib/neo4j`
  - `LANG=C.UTF-8`
- Labels:
  - `architecture=x86_64`
  - `build-date=2026-07-28T05:13:50Z`
  - `com.redhat.component=ubi10-minimal-container`
  - `com.redhat.license_terms=https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI`
  - `cpe=cpe:/o:redhat:enterprise_linux:10.2`
  - `description=The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly.`
  - `distribution-scope=public`
  - `io.buildah.version=1.44.0`
  - `io.k8s.description=The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly.`
  - `io.k8s.display-name=Red Hat Universal Base Image 10 Minimal`
  - `io.openshift.expose-services=`
  - `io.openshift.tags=minimal rhel10`
  - `maintainer=Red Hat, Inc.`
  - `name=ubi10/ubi-minimal`
  - `org.opencontainers.image.created=2026-07-28T05:13:50Z`
  - `org.opencontainers.image.revision=f473c706206356d94dd0dd94948a1be8c065fc47`
  - `release=1785215492`
  - `summary=Provides the latest release of the minimal Red Hat Universal Base Image 10.`
  - `url=https://catalog.redhat.com/en/search?searchType=containers`
  - `vcs-ref=f473c706206356d94dd0dd94948a1be8c065fc47`
  - `vcs-type=git`
  - `vendor=Red Hat, Inc.`
  - `version=10.2`

## `rpm` (`.rpm`-based packages)

### `rpm` package: `alternatives-1.30-2.0.1.el10.x86_64`

Licenses (from `rpm --query`): GPL-2.0-only

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `attr-2.5.2-5.el10.x86_64`

Licenses (from `rpm --query`): GPL-2.0-or-later

Source:

```console
$ dnf --quiet download --source --url attr-2.5.2-5.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/a/attr-2.5.2-5.el10.src.rpm
```

### `rpm` package: `audit-libs-4.0.3-5.0.1.el10.x86_64`

Licenses (from `rpm --query`): LGPL-2.0-or-later

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `authselect-1.5.2-1.el10.x86_64`

Licenses (from `rpm --query`): GPL-3.0-or-later

Source:

```console
$ dnf --quiet download --source --url authselect-1.5.2-1.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/a/authselect-1.5.2-1.el10.src.rpm
```

### `rpm` package: `authselect-libs-1.5.2-1.el10.x86_64`

Licenses (from `rpm --query`): GPL-3.0-or-later

Source:

```console
$ dnf --quiet download --source --url authselect-libs-1.5.2-1.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/a/authselect-1.5.2-1.el10.src.rpm
```

### `rpm` package: `basesystem-11-22.0.1.el10.noarch`

Licenses (from `rpm --query`): LicenseRef-Fedora-Public-Domain

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `bash-5.2.26-6.el10.x86_64`

Licenses (from `rpm --query`): GPL-3.0-or-later

Source:

```console
$ dnf --quiet download --source --url bash-5.2.26-6.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/b/bash-5.2.26-6.el10.src.rpm
```

### `rpm` package: `bzip2-libs-1.0.8-25.el10.x86_64`

Licenses (from `rpm --query`): BSD-4-Clause

Source:

```console
$ dnf --quiet download --source --url bzip2-libs-1.0.8-25.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/b/bzip2-1.0.8-25.el10.src.rpm
```

### `rpm` package: `ca-certificates-2025.2.80_v9.0.305-102.el10_1.noarch`

Licenses (from `rpm --query`): MIT AND GPL-2.0-or-later

Source:

```console
$ dnf --quiet download --source --url ca-certificates-2025.2.80_v9.0.305-102.el10_1.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/c/ca-certificates-2025.2.80_v9.0.305-102.el10_1.src.rpm
```

### `rpm` package: `chkconfig-1.30-2.0.1.el10.x86_64`

Licenses (from `rpm --query`): GPL-2.0-only

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `coreutils-9.5-8.0.1.el10_2.x86_64`

Licenses (from `rpm --query`): GPL-3.0-or-later AND GFDL-1.3-no-invariants-or-later AND LGPL-2.1-or-later AND LGPL-3.0-or-later

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `coreutils-common-9.5-8.0.1.el10_2.x86_64`

Licenses (from `rpm --query`): GPL-3.0-or-later AND GFDL-1.3-no-invariants-or-later AND LGPL-2.1-or-later AND LGPL-3.0-or-later

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `cracklib-2.9.11-8.el10.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url cracklib-2.9.11-8.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/c/cracklib-2.9.11-8.el10.src.rpm
```

### `rpm` package: `cracklib-dicts-2.9.11-8.el10.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url cracklib-dicts-2.9.11-8.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/c/cracklib-2.9.11-8.el10.src.rpm
```

### `rpm` package: `crypto-policies-20260216-1.git0e54016.el10.noarch`

Licenses (from `rpm --query`): LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url crypto-policies-20260216-1.git0e54016.el10.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/c/crypto-policies-20260216-1.git0e54016.el10.src.rpm
```

### `rpm` package: `curl-8.12.1-4.el10.x86_64`

Licenses (from `rpm --query`): curl

Source:

```console
$ dnf --quiet download --source --url curl-8.12.1-4.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/c/curl-8.12.1-4.el10.src.rpm
```

### `rpm` package: `cyrus-sasl-lib-2.1.28-30.el10_2.x86_64`

Licenses (from `rpm --query`): BSD-Attribution-HPND-disclaimer

Source:

```console
$ dnf --quiet download --source --url cyrus-sasl-lib-2.1.28-30.el10_2
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/c/cyrus-sasl-2.1.28-30.el10_2.src.rpm
```

### `rpm` package: `dbus-1.14.10-5.el10.x86_64`

Licenses (from `rpm --query`): (AFL-2.1 OR GPL-2.0-or-later) AND GPL-2.0-or-later

Source:

```console
$ dnf --quiet download --source --url dbus-1.14.10-5.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/d/dbus-1.14.10-5.el10.src.rpm
```

### `rpm` package: `dbus-broker-36-4.el10.x86_64`

Licenses (from `rpm --query`): Apache-2.0 AND LGPL-2.0-or-later AND LGPL-2.1-or-later AND (Apache-2.0 OR LGPL-2.1-or-later)

Source:

```console
$ dnf --quiet download --source --url dbus-broker-36-4.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/d/dbus-broker-36-4.el10.src.rpm
```

### `rpm` package: `dbus-common-1.14.10-5.el10.noarch`

Licenses (from `rpm --query`): (AFL-2.1 OR GPL-2.0-or-later) AND GPL-2.0-or-later

Source:

```console
$ dnf --quiet download --source --url dbus-common-1.14.10-5.el10.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/d/dbus-1.14.10-5.el10.src.rpm
```

### `rpm` package: `dbus-libs-1.14.10-5.el10.x86_64`

Licenses (from `rpm --query`): (AFL-2.1 OR GPL-2.0-or-later) AND GPL-2.0-or-later

Source:

```console
$ dnf --quiet download --source --url dbus-libs-1.14.10-5.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/d/dbus-1.14.10-5.el10.src.rpm
```

### `rpm` package: `diffutils-3.10-8.el10.x86_64`

Licenses (from `rpm --query`): GPL-3.0-or-later

Source:

```console
$ dnf --quiet download --source --url diffutils-3.10-8.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/d/diffutils-3.10-8.el10.src.rpm
```

### `rpm` package: `dnf-4.20.0-22.0.1.el10_2.noarch`

Licenses (from `rpm --query`): GPL-2.0-or-later AND GPL-1.0-only

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `dnf-data-4.20.0-22.0.1.el10_2.noarch`

Licenses (from `rpm --query`): GPL-2.0-or-later AND GPL-1.0-only

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `dnf-plugins-core-4.7.0-10.0.1.el10.noarch`

Licenses (from `rpm --query`): GPL-2.0-or-later

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `elfutils-default-yama-scope-0.194-2.el10_2.noarch`

Licenses (from `rpm --query`): GPL-2.0-or-later OR LGPL-3.0-or-later

Source:

```console
$ dnf --quiet download --source --url elfutils-default-yama-scope-0.194-2.el10_2.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/e/elfutils-0.194-2.el10_2.src.rpm
```

### `rpm` package: `elfutils-libelf-0.194-2.el10_2.x86_64`

Licenses (from `rpm --query`): GPL-2.0-or-later OR LGPL-3.0-or-later

Source:

```console
$ dnf --quiet download --source --url elfutils-libelf-0.194-2.el10_2
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/e/elfutils-0.194-2.el10_2.src.rpm
```

### `rpm` package: `elfutils-libs-0.194-2.el10_2.x86_64`

Licenses (from `rpm --query`): GPL-2.0-or-later OR LGPL-3.0-or-later

Source:

```console
$ dnf --quiet download --source --url elfutils-libs-0.194-2.el10_2
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/e/elfutils-0.194-2.el10_2.src.rpm
```

### `rpm` package: `expat-2.7.3-1.el10_2.1.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url expat-2.7.3-1.el10_2.1
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/e/expat-2.7.3-1.el10_2.1.src.rpm
```

### `rpm` package: `file-libs-5.45-9.el10.x86_64`

Licenses (from `rpm --query`): BSD-2-Clause-Darwin AND BSD-2-Clause

Source:

```console
$ dnf --quiet download --source --url file-libs-5.45-9.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/f/file-5.45-9.el10.src.rpm
```

### `rpm` package: `filesystem-3.18-17.el10.x86_64`

Licenses (from `rpm --query`): LicenseRef-Fedora-Public-Domain

Source:

```console
$ dnf --quiet download --source --url filesystem-3.18-17.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/f/filesystem-3.18-17.el10.src.rpm
```

### `rpm` package: `findutils-4.10.0-5.el10.x86_64`

Licenses (from `rpm --query`): GPL-3.0-or-later

Source:

```console
$ dnf --quiet download --source --url findutils-4.10.0-5.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/f/findutils-4.10.0-5.el10.src.rpm
```

### `rpm` package: `gawk-5.3.0-6.el10.x86_64`

Licenses (from `rpm --query`): GPL-3.0-or-later AND GPL-2.0-or-later AND LGPL-2.1-or-later AND BSD-3-Clause

Source:

```console
$ dnf --quiet download --source --url gawk-5.3.0-6.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/g/gawk-5.3.0-6.el10.src.rpm
```

### `rpm` package: `gdbm-1.23-12.el10_0.x86_64`

Licenses (from `rpm --query`): GPL-3.0-or-later

Source:

```console
$ dnf --quiet download --source --url gdbm-1.23-12.el10_0
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/g/gdbm-1.23-12.el10_0.src.rpm
```

### `rpm` package: `gdbm-libs-1.23-12.el10_0.x86_64`

Licenses (from `rpm --query`): GPL-3.0-or-later

Source:

```console
$ dnf --quiet download --source --url gdbm-libs-1.23-12.el10_0
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/g/gdbm-1.23-12.el10_0.src.rpm
```

### `rpm` package: `glib2-2.80.4-12.el10_2.14.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url glib2-2.80.4-12.el10_2.14
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/g/glib2-2.80.4-12.el10_2.14.src.rpm
```

### `rpm` package: `glibc-2.39-126.0.1.el10_2.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later AND SunPro AND LGPL-2.1-or-later WITH GCC-exception-2.0 AND BSD-3-Clause AND GPL-2.0-or-later AND LGPL-2.1-or-later WITH GNU-compiler-exception AND GPL-2.0-only AND ISC AND LicenseRef-Fedora-Public-Domain AND HPND AND CMU-Mach AND LGPL-2.1-only AND LGPL-2.0-or-later AND Unicode-DFS-2015 AND GFDL-1.1-or-later AND GPL-1.0-or-later AND FSFUL AND MIT AND Inner-Net-2.0 AND X11 AND GPL-2.0-or-later WITH GCC-exception-2.0 AND GFDL-1.3-only AND GFDL-1.1-only AND GPL-3.0-or-later AND GPL-3.0-or-later WITH Autoconf-exception-generic-3.0 AND GPL-3.0-or-later WITH Texinfo-exception

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `glibc-common-2.39-126.0.1.el10_2.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later AND SunPro AND LGPL-2.1-or-later WITH GCC-exception-2.0 AND BSD-3-Clause AND GPL-2.0-or-later AND LGPL-2.1-or-later WITH GNU-compiler-exception AND GPL-2.0-only AND ISC AND LicenseRef-Fedora-Public-Domain AND HPND AND CMU-Mach AND LGPL-2.1-only AND LGPL-2.0-or-later AND Unicode-DFS-2015 AND GFDL-1.1-or-later AND GPL-1.0-or-later AND FSFUL AND MIT AND Inner-Net-2.0 AND X11 AND GPL-2.0-or-later WITH GCC-exception-2.0 AND GFDL-1.3-only AND GFDL-1.1-only AND GPL-3.0-or-later AND GPL-3.0-or-later WITH Autoconf-exception-generic-3.0 AND GPL-3.0-or-later WITH Texinfo-exception

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `glibc-langpack-en-2.39-126.0.1.el10_2.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later AND SunPro AND LGPL-2.1-or-later WITH GCC-exception-2.0 AND BSD-3-Clause AND GPL-2.0-or-later AND LGPL-2.1-or-later WITH GNU-compiler-exception AND GPL-2.0-only AND ISC AND LicenseRef-Fedora-Public-Domain AND HPND AND CMU-Mach AND LGPL-2.1-only AND LGPL-2.0-or-later AND Unicode-DFS-2015 AND GFDL-1.1-or-later AND GPL-1.0-or-later AND FSFUL AND MIT AND Inner-Net-2.0 AND X11 AND GPL-2.0-or-later WITH GCC-exception-2.0 AND GFDL-1.3-only AND GFDL-1.1-only AND GPL-3.0-or-later AND GPL-3.0-or-later WITH Autoconf-exception-generic-3.0 AND GPL-3.0-or-later WITH Texinfo-exception

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `gmp-6.2.1-12.el10.x86_64`

Licenses (from `rpm --query`): (LGPL-3.0-or-later OR GPL-2.0-or-later OR (LGPL-3.0-or-later AND GPL-2.0-or-later)) AND GFDL-1.3-invariants-or-later

Source:

```console
$ dnf --quiet download --source --url gmp-6.2.1-12.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/g/gmp-6.2.1-12.el10.src.rpm
```

### `rpm` package: `gnutls-3.8.10-4.el10_2.x86_64`

Licenses (from `rpm --query`): GPL-3.0-or-later AND LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url gnutls-3.8.10-4.el10_2
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/g/gnutls-3.8.10-4.el10_2.src.rpm
```

### `rpm` package: `gpg-pubkey-8b4efbe6-61e77439`

Licenses (from `rpm --query`): pubkey

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `gpg-pubkey-8d8b756f-61e772ef`

Licenses (from `rpm --query`): pubkey

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `grep-3.11-10.el10.x86_64`

Licenses (from `rpm --query`): GPL-3.0-or-later AND LGPL-3.0-or-later AND LGPL-2.1-or-later AND GPL-2.0-or-later AND LGPL-2.0-or-later AND GFDL-1.3-no-invariants-or-later

Source:

```console
$ dnf --quiet download --source --url grep-3.11-10.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/g/grep-3.11-10.el10.src.rpm
```

### `rpm` package: `gzip-1.13-3.el10.x86_64`

Licenses (from `rpm --query`): GPL-3.0-or-later AND GFDL-1.3-only

Source:

```console
$ dnf --quiet download --source --url gzip-1.13-3.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/g/gzip-1.13-3.el10.src.rpm
```

### `rpm` package: `ima-evm-utils-1.6.2-4.el10.x86_64`

Licenses (from `rpm --query`): GPLv2

Source:

```console
$ dnf --quiet download --source --url ima-evm-utils-1.6.2-4.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/i/ima-evm-utils-1.6.2-4.el10.src.rpm
```

### `rpm` package: `initscripts-10.26-2.0.1.el10.x86_64`

Licenses (from `rpm --query`): GPL-2.0-only

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `initscripts-rename-device-10.26-2.0.1.el10.x86_64`

Licenses (from `rpm --query`): GPL-2.0-only

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `initscripts-service-10.26-2.0.1.el10.noarch`

Licenses (from `rpm --query`): GPL-2.0-only

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `json-c-0.18-3.el10.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url json-c-0.18-3.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/j/json-c-0.18-3.el10.src.rpm
```

### `rpm` package: `keyutils-1.6.3-5.el10.x86_64`

Licenses (from `rpm --query`): GPL-2.0-or-later AND LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url keyutils-1.6.3-5.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/k/keyutils-1.6.3-5.el10.src.rpm
```

### `rpm` package: `keyutils-libs-1.6.3-5.el10.x86_64`

Licenses (from `rpm --query`): GPL-2.0-or-later AND LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url keyutils-libs-1.6.3-5.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/k/keyutils-1.6.3-5.el10.src.rpm
```

### `rpm` package: `krb5-libs-1.21.3-10.0.1.el10_2.x86_64`

Licenses (from `rpm --query`): Brian-Gladman-2-Clause AND BSD-2-Clause AND (BSD-2-Clause OR GPL-2.0-or-later) AND BSD-2-Clause-first-lines AND BSD-3-Clause AND BSD-4-Clause AND CMU-Mach-nodoc AND FSFULLRWD AND HPND AND HPND-export2-US AND HPND-export-US AND HPND-export-US-acknowledgement AND HPND-export-US-modify AND ISC AND MIT AND MIT-CMU AND OLDAP-2.8 AND OpenVision

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `libacl-2.4.0-1.el10_2.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url libacl-2.4.0-1.el10_2
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/a/acl-2.4.0-1.el10_2.src.rpm
```

### `rpm` package: `libarchive-3.7.7-8.el10_1.x86_64`

Licenses (from `rpm --query`): BSD-2-Clause AND FSFULLR AND GPL-2.0-or-later WITH Libtool-exception AND BSD-3-Clause AND FSFUL

Source:

```console
$ dnf --quiet download --source --url libarchive-3.7.7-8.el10_1
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libarchive-3.7.7-8.el10_1.src.rpm
```

### `rpm` package: `libattr-2.5.2-5.el10.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url libattr-2.5.2-5.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/a/attr-2.5.2-5.el10.src.rpm
```

### `rpm` package: `libblkid-2.40.2-18.0.1.el10.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `libbrotli-1.1.0-7.el10_1.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libbrotli-1.1.0-7.el10_1
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/b/brotli-1.1.0-7.el10_1.src.rpm
```

### `rpm` package: `libcap-2.69-7.el10_2.1.x86_64`

Licenses (from `rpm --query`): BSD-3-Clause OR GPL-2.0-only

Source:

```console
$ dnf --quiet download --source --url libcap-2.69-7.el10_2.1
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libcap-2.69-7.el10_2.1.src.rpm
```

### `rpm` package: `libcap-ng-0.8.4-6.el10.x86_64`

Licenses (from `rpm --query`): LGPL-2.0-or-later

Source:

```console
$ dnf --quiet download --source --url libcap-ng-0.8.4-6.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libcap-ng-0.8.4-6.el10.src.rpm
```

### `rpm` package: `libcbor-0.11.0-3.el10.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libcbor-0.11.0-3.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libcbor-0.11.0-3.el10.src.rpm
```

### `rpm` package: `libcom_err-1.47.1-5.el10.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libcom_err-1.47.1-5.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/e/e2fsprogs-1.47.1-5.el10.src.rpm
```

### `rpm` package: `libcomps-0.1.21-3.el10.x86_64`

Licenses (from `rpm --query`): GPL-2.0-or-later

Source:

```console
$ dnf --quiet download --source --url libcomps-0.1.21-3.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libcomps-0.1.21-3.el10.src.rpm
```

### `rpm` package: `libcurl-8.12.1-4.el10.x86_64`

Licenses (from `rpm --query`): curl

Source:

```console
$ dnf --quiet download --source --url libcurl-8.12.1-4.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/c/curl-8.12.1-4.el10.src.rpm
```

### `rpm` package: `libdnf-0.73.1-15.0.1.el10_2.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `libeconf-0.6.2-4.el10.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libeconf-0.6.2-4.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libeconf-0.6.2-4.el10.src.rpm
```

### `rpm` package: `libedit-3.1-52.20230828cvs.el10.x86_64`

Licenses (from `rpm --query`): BSD-3-Clause AND BSD-2-Clause AND ISC

Source:

```console
$ dnf --quiet download --source --url libedit-3.1-52.20230828cvs.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libedit-3.1-52.20230828cvs.el10.src.rpm
```

### `rpm` package: `libestr-0.1.11-11.el10.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url libestr-0.1.11-11.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/appstream/source/SRPMS/Packages/l/libestr-0.1.11-11.el10.src.rpm
```

### `rpm` package: `libevent-2.1.12-16.el10.x86_64`

Licenses (from `rpm --query`): BSD-3-Clause AND ISC AND LicenseRef-Fedora-Public-Domain

Source:

```console
$ dnf --quiet download --source --url libevent-2.1.12-16.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libevent-2.1.12-16.el10.src.rpm
```

### `rpm` package: `libfastjson-1.2304.0-6.el10.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libfastjson-1.2304.0-6.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/appstream/source/SRPMS/Packages/l/libfastjson-1.2304.0-6.el10.src.rpm
```

### `rpm` package: `libfdisk-2.40.2-18.0.1.el10.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `libffi-3.4.4-10.el10.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libffi-3.4.4-10.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libffi-3.4.4-10.el10.src.rpm
```

### `rpm` package: `libfido2-1.14.0-7.el10.x86_64`

Licenses (from `rpm --query`): BSD-2-Clause

Source:

```console
$ dnf --quiet download --source --url libfido2-1.14.0-7.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libfido2-1.14.0-7.el10.src.rpm
```

### `rpm` package: `libgcc-14.3.1-4.4.0.1.el10.x86_64`

Licenses (from `rpm --query`): GPL-3.0-or-later AND LGPL-3.0-or-later AND (GPL-3.0-or-later WITH GCC-exception-3.1) AND (GPL-3.0-or-later WITH Texinfo-exception) AND (LGPL-2.1-or-later WITH GCC-exception-2.0) AND (GPL-2.0-or-later WITH GCC-exception-2.0) AND (GPL-2.0-or-later WITH GNU-compiler-exception) AND BSL-1.0 AND GFDL-1.3-or-later AND Linux-man-pages-copyleft-2-para AND SunPro AND BSD-1-Clause AND BSD-2-Clause AND BSD-2-Clause-Views AND BSD-3-Clause AND BSD-4-Clause AND BSD-Source-Code AND Zlib AND MIT AND Apache-2.0 AND (Apache-2.0 WITH LLVM-Exception) AND ZPL-2.1 AND ISC AND LicenseRef-Fedora-Public-Domain AND HP-1986 AND curl AND Martin-Birgmeier AND HPND-Markus-Kuhn AND dtoa AND SMLNJ AND AMD-newlib AND OAR AND HPND-merchantability-variant AND HPND-Intel

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `libgomp-14.3.1-4.4.0.1.el10.x86_64`

Licenses (from `rpm --query`): GPL-3.0-or-later AND LGPL-3.0-or-later AND (GPL-3.0-or-later WITH GCC-exception-3.1) AND (GPL-3.0-or-later WITH Texinfo-exception) AND (LGPL-2.1-or-later WITH GCC-exception-2.0) AND (GPL-2.0-or-later WITH GCC-exception-2.0) AND (GPL-2.0-or-later WITH GNU-compiler-exception) AND BSL-1.0 AND GFDL-1.3-or-later AND Linux-man-pages-copyleft-2-para AND SunPro AND BSD-1-Clause AND BSD-2-Clause AND BSD-2-Clause-Views AND BSD-3-Clause AND BSD-4-Clause AND BSD-Source-Code AND Zlib AND MIT AND Apache-2.0 AND (Apache-2.0 WITH LLVM-Exception) AND ZPL-2.1 AND ISC AND LicenseRef-Fedora-Public-Domain AND HP-1986 AND curl AND Martin-Birgmeier AND HPND-Markus-Kuhn AND dtoa AND SMLNJ AND AMD-newlib AND OAR AND HPND-merchantability-variant AND HPND-Intel

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `libidn2-2.3.7-3.el10.x86_64`

Licenses (from `rpm --query`): (GPL-2.0-or-later OR LGPL-3.0-or-later) AND GPL-3.0-or-later

Source:

```console
$ dnf --quiet download --source --url libidn2-2.3.7-3.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libidn2-2.3.7-3.el10.src.rpm
```

### `rpm` package: `libmodulemd-2.15.0-12.el10.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libmodulemd-2.15.0-12.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libmodulemd-2.15.0-12.el10.src.rpm
```

### `rpm` package: `libmount-2.40.2-18.0.1.el10.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `libnghttp2-1.68.0-3.el10_2.1.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libnghttp2-1.68.0-3.el10_2.1
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/n/nghttp2-1.68.0-3.el10_2.1.src.rpm
```

### `rpm` package: `libpsl-0.21.5-6.el10.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libpsl-0.21.5-6.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libpsl-0.21.5-6.el10.src.rpm
```

### `rpm` package: `libpwquality-1.4.5-12.el10.x86_64`

Licenses (from `rpm --query`): BSD-3-Clause OR GPL-2.0-or-later

Source:

```console
$ dnf --quiet download --source --url libpwquality-1.4.5-12.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libpwquality-1.4.5-12.el10.src.rpm
```

### `rpm` package: `librepo-1.19.0-1.el10.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url librepo-1.19.0-1.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/librepo-1.19.0-1.el10.src.rpm
```

### `rpm` package: `libseccomp-2.5.6-1.el10.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-only

Source:

```console
$ dnf --quiet download --source --url libseccomp-2.5.6-1.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libseccomp-2.5.6-1.el10.src.rpm
```

### `rpm` package: `libselinux-3.10-1.el10.x86_64`

Licenses (from `rpm --query`): LicenseRef-Fedora-Public-Domain

Source:

```console
$ dnf --quiet download --source --url libselinux-3.10-1.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libselinux-3.10-1.el10.src.rpm
```

### `rpm` package: `libselinux-utils-3.10-1.el10.x86_64`

Licenses (from `rpm --query`): LicenseRef-Fedora-Public-Domain

Source:

```console
$ dnf --quiet download --source --url libselinux-utils-3.10-1.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libselinux-3.10-1.el10.src.rpm
```

### `rpm` package: `libsemanage-3.10-1.el10.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url libsemanage-3.10-1.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libsemanage-3.10-1.el10.src.rpm
```

### `rpm` package: `libsepol-3.10-1.el10.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url libsepol-3.10-1.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libsepol-3.10-1.el10.src.rpm
```

### `rpm` package: `libsmartcols-2.40.2-18.0.1.el10.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `libsolv-0.7.33-5.el10_2.x86_64`

Licenses (from `rpm --query`): BSD-3-Clause

Source:

```console
$ dnf --quiet download --source --url libsolv-0.7.33-5.el10_2
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libsolv-0.7.33-5.el10_2.src.rpm
```

### `rpm` package: `libssh-0.12.0-2.el10.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url libssh-0.12.0-2.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libssh-0.12.0-2.el10.src.rpm
```

### `rpm` package: `libssh-config-0.12.0-2.el10.noarch`

Licenses (from `rpm --query`): LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url libssh-config-0.12.0-2.el10.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libssh-0.12.0-2.el10.src.rpm
```

### `rpm` package: `libstdc++-14.3.1-4.4.0.1.el10.x86_64`

Licenses (from `rpm --query`): GPL-3.0-or-later AND LGPL-3.0-or-later AND (GPL-3.0-or-later WITH GCC-exception-3.1) AND (GPL-3.0-or-later WITH Texinfo-exception) AND (LGPL-2.1-or-later WITH GCC-exception-2.0) AND (GPL-2.0-or-later WITH GCC-exception-2.0) AND (GPL-2.0-or-later WITH GNU-compiler-exception) AND BSL-1.0 AND GFDL-1.3-or-later AND Linux-man-pages-copyleft-2-para AND SunPro AND BSD-1-Clause AND BSD-2-Clause AND BSD-2-Clause-Views AND BSD-3-Clause AND BSD-4-Clause AND BSD-Source-Code AND Zlib AND MIT AND Apache-2.0 AND (Apache-2.0 WITH LLVM-Exception) AND ZPL-2.1 AND ISC AND LicenseRef-Fedora-Public-Domain AND HP-1986 AND curl AND Martin-Birgmeier AND HPND-Markus-Kuhn AND dtoa AND SMLNJ AND AMD-newlib AND OAR AND HPND-merchantability-variant AND HPND-Intel

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `libtasn1-4.20.0-5.el10_2.x86_64`

Licenses (from `rpm --query`): GPL-3.0-or-later AND LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url libtasn1-4.20.0-5.el10_2
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libtasn1-4.20.0-5.el10_2.src.rpm
```

### `rpm` package: `libunistring-1.1-10.el10.x86_64`

Licenses (from `rpm --query`): GPL-2.0-or-later OR LGPL-3.0-or-later

Source:

```console
$ dnf --quiet download --source --url libunistring-1.1-10.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libunistring-1.1-10.el10.src.rpm
```

### `rpm` package: `libutempter-1.2.1-15.el10.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later AND LGPL-2.1-only AND BSD-2-Clause

Source:

```console
$ dnf --quiet download --source --url libutempter-1.2.1-15.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libutempter-1.2.1-15.el10.src.rpm
```

### `rpm` package: `libuuid-2.40.2-18.0.1.el10.x86_64`

Licenses (from `rpm --query`): BSD-3-Clause

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `libverto-0.3.2-10.el10.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libverto-0.3.2-10.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libverto-0.3.2-10.el10.src.rpm
```

### `rpm` package: `libxcrypt-4.4.36-10.el10.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later AND BSD-3-Clause AND BSD-2-Clause AND BSD-2-Clause-FreeBSD AND 0BSD AND CC0-1.0 AND LicenseRef-Fedora-Public-Domain

Source:

```console
$ dnf --quiet download --source --url libxcrypt-4.4.36-10.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libxcrypt-4.4.36-10.el10.src.rpm
```

### `rpm` package: `libxml2-2.12.5-10.el10_2.2.x86_64`

Licenses (from `rpm --query`): MIT AND ISC-Veillard AND W3C

Source:

```console
$ dnf --quiet download --source --url libxml2-2.12.5-10.el10_2.2
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libxml2-2.12.5-10.el10_2.2.src.rpm
```

### `rpm` package: `libyaml-0.2.5-16.el10.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libyaml-0.2.5-16.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libyaml-0.2.5-16.el10.src.rpm
```

### `rpm` package: `libzstd-1.5.5-9.el10.x86_64`

Licenses (from `rpm --query`): BSD-3-Clause AND GPL-2.0-only

Source:

```console
$ dnf --quiet download --source --url libzstd-1.5.5-9.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/z/zstd-1.5.5-9.el10.src.rpm
```

### `rpm` package: `lua-libs-5.4.6-7.el10.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url lua-libs-5.4.6-7.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/lua-5.4.6-7.el10.src.rpm
```

### `rpm` package: `lz4-libs-1.9.4-8.el10.x86_64`

Licenses (from `rpm --query`): GPL-2.0-or-later AND BSD-2-Clause

Source:

```console
$ dnf --quiet download --source --url lz4-libs-1.9.4-8.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/lz4-1.9.4-8.el10.src.rpm
```

### `rpm` package: `mpdecimal-2.5.1-12.el10.x86_64`

Licenses (from `rpm --query`): BSD-2-Clause

Source:

```console
$ dnf --quiet download --source --url mpdecimal-2.5.1-12.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/m/mpdecimal-2.5.1-12.el10.src.rpm
```

### `rpm` package: `mpfr-4.2.1-8.el10.x86_64`

Licenses (from `rpm --query`): LGPL-3.0-or-later

Source:

```console
$ dnf --quiet download --source --url mpfr-4.2.1-8.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/m/mpfr-4.2.1-8.el10.src.rpm
```

### `rpm` package: `ncurses-base-6.4-15.20240127.el10_1.noarch`

Licenses (from `rpm --query`): MIT-open-group

Source:

```console
$ dnf --quiet download --source --url ncurses-base-6.4-15.20240127.el10_1.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/n/ncurses-6.4-15.20240127.el10_1.src.rpm
```

### `rpm` package: `ncurses-libs-6.4-15.20240127.el10_1.x86_64`

Licenses (from `rpm --query`): MIT-open-group

Source:

```console
$ dnf --quiet download --source --url ncurses-libs-6.4-15.20240127.el10_1
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/n/ncurses-6.4-15.20240127.el10_1.src.rpm
```

### `rpm` package: `openldap-2.6.10-1.el10.x86_64`

Licenses (from `rpm --query`): OLDAP-2.8

Source:

```console
$ dnf --quiet download --source --url openldap-2.6.10-1.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/o/openldap-2.6.10-1.el10.src.rpm
```

### `rpm` package: `openssh-9.9p1-23.0.1.el10_2.x86_64`

Licenses (from `rpm --query`): BSD-3-Clause AND BSD-2-Clause AND ISC AND SSH-OpenSSH AND ssh-keyscan AND sprintf AND LicenseRef-Fedora-Public-Domain AND X11-distribute-modifications-variant

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `openssh-clients-9.9p1-23.0.1.el10_2.x86_64`

Licenses (from `rpm --query`): BSD-3-Clause AND BSD-2-Clause AND ISC AND SSH-OpenSSH AND ssh-keyscan AND sprintf AND LicenseRef-Fedora-Public-Domain AND X11-distribute-modifications-variant

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `openssh-server-9.9p1-23.0.1.el10_2.x86_64`

Licenses (from `rpm --query`): BSD-3-Clause AND BSD-2-Clause AND ISC AND SSH-OpenSSH AND ssh-keyscan AND sprintf AND LicenseRef-Fedora-Public-Domain AND X11-distribute-modifications-variant

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `openssl-fips-provider-3.0.7-8.0.1.el10.x86_64`

Licenses (from `rpm --query`): ASL 2.0

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `openssl-fips-provider-so-3.0.7-8.0.1.el10.x86_64`

Licenses (from `rpm --query`): ASL 2.0

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `openssl-libs-3.5.5-6.0.1.el10_2.x86_64`

Licenses (from `rpm --query`): Apache-2.0

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `oraclelinux-release-10.2-1.0.6.el10.x86_64`

Licenses (from `rpm --query`): GPL

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `oraclelinux-release-el10-1.0-19.el10.x86_64`

Licenses (from `rpm --query`): GPLv2

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `p11-kit-0.26.2-1.el10.x86_64`

Licenses (from `rpm --query`): BSD-3-Clause

Source:

```console
$ dnf --quiet download --source --url p11-kit-0.26.2-1.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/p/p11-kit-0.26.2-1.el10.src.rpm
```

### `rpm` package: `p11-kit-trust-0.26.2-1.el10.x86_64`

Licenses (from `rpm --query`): BSD-3-Clause

Source:

```console
$ dnf --quiet download --source --url p11-kit-trust-0.26.2-1.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/p/p11-kit-0.26.2-1.el10.src.rpm
```

### `rpm` package: `pam-1.6.1-9.el10.x86_64`

Licenses (from `rpm --query`): BSD-3-Clause AND GPL-2.0-or-later

Source:

```console
$ dnf --quiet download --source --url pam-1.6.1-9.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/p/pam-1.6.1-9.el10.src.rpm
```

### `rpm` package: `pam-libs-1.6.1-9.el10.x86_64`

Licenses (from `rpm --query`): BSD-3-Clause AND GPL-2.0-or-later

Source:

```console
$ dnf --quiet download --source --url pam-libs-1.6.1-9.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/p/pam-1.6.1-9.el10.src.rpm
```

### `rpm` package: `pcre2-10.44-1.0.1.el10.3.x86_64`

Licenses (from `rpm --query`): BSD-3-Clause AND FSFULLR AND X11 AND GPL-2.0-or-later AND FSFAP AND FSFUL AND GPL-3.0-or-later

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `pcre2-syntax-10.44-1.0.1.el10.3.noarch`

Licenses (from `rpm --query`): BSD-3-Clause AND FSFULLR AND X11 AND GPL-2.0-or-later AND FSFAP AND FSFUL AND GPL-3.0-or-later

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `policycoreutils-3.10-1.el10.x86_64`

Licenses (from `rpm --query`): GPL-2.0-or-later

Source:

```console
$ dnf --quiet download --source --url policycoreutils-3.10-1.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/p/policycoreutils-3.10-1.el10.src.rpm
```

### `rpm` package: `popt-1.19-8.el10.x86_64`

Licenses (from `rpm --query`): MIT AND LicenseRef-Fedora-Public-Domain

Source:

```console
$ dnf --quiet download --source --url popt-1.19-8.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/p/popt-1.19-8.el10.src.rpm
```

### `rpm` package: `procps-ng-4.0.4-11.el10.x86_64`

Licenses (from `rpm --query`): GPL-2.0-or-later AND LGPL-2.0-or-later AND LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url procps-ng-4.0.4-11.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/p/procps-ng-4.0.4-11.el10.src.rpm
```

### `rpm` package: `publicsuffix-list-dafsa-20240107-5.el10.noarch`

Licenses (from `rpm --query`): MPL-2.0

Source:

```console
$ dnf --quiet download --source --url publicsuffix-list-dafsa-20240107-5.el10.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/p/publicsuffix-list-20240107-5.el10.src.rpm
```

### `rpm` package: `python3-3.12.13-2.0.1.el10_2.1.x86_64`

Licenses (from `rpm --query`): Python-2.0.1

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `python3-dateutil-2.9.0.post0-1.el10_0.noarch`

Licenses (from `rpm --query`): (Apache-2.0 AND BSD-3-Clause) OR BSD-3-Clause

Source:

```console
$ dnf --quiet download --source --url python3-dateutil-2.9.0.post0-1.el10_0.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/p/python-dateutil-2.9.0.post0-1.el10_0.src.rpm
```

### `rpm` package: `python3-dbus-1.3.2-8.el10.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url python3-dbus-1.3.2-8.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/d/dbus-python-1.3.2-8.el10.src.rpm
```

### `rpm` package: `python3-dnf-4.20.0-22.0.1.el10_2.noarch`

Licenses (from `rpm --query`): GPL-2.0-or-later AND GPL-1.0-only

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `python3-dnf-plugins-core-4.7.0-10.0.1.el10.noarch`

Licenses (from `rpm --query`): GPL-2.0-or-later

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `python3-hawkey-0.73.1-15.0.1.el10_2.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `python3-libcomps-0.1.21-3.el10.x86_64`

Licenses (from `rpm --query`): GPL-2.0-or-later

Source:

```console
$ dnf --quiet download --source --url python3-libcomps-0.1.21-3.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/l/libcomps-0.1.21-3.el10.src.rpm
```

### `rpm` package: `python3-libdnf-0.73.1-15.0.1.el10_2.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `python3-libs-3.12.13-2.0.1.el10_2.1.x86_64`

Licenses (from `rpm --query`): Python-2.0.1 AND CC0-1.0

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `python3-pip-wheel-23.3.2-11.el10_2.noarch`

Licenses (from `rpm --query`): MIT AND Python-2.0.1 AND Apache-2.0 AND BSD-2-Clause AND BSD-3-Clause AND ISC AND LGPL-2.1-only AND MPL-2.0 AND (Apache-2.0 OR BSD-2-Clause)

Source:

```console
$ dnf --quiet download --source --url python3-pip-wheel-23.3.2-11.el10_2.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/p/python-pip-23.3.2-11.el10_2.src.rpm
```

### `rpm` package: `python3-rpm-4.19.1.1-23.el10.x86_64`

Licenses (from `rpm --query`): GPL-2.0-or-later

Source:

```console
$ dnf --quiet download --source --url python3-rpm-4.19.1.1-23.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/r/rpm-4.19.1.1-23.el10.src.rpm
```

### `rpm` package: `python3-six-1.16.0-16.el10.noarch`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url python3-six-1.16.0-16.el10.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/p/python-six-1.16.0-16.el10.src.rpm
```

### `rpm` package: `python3-systemd-235-11.el10.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url python3-systemd-235-11.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/p/python-systemd-235-11.el10.src.rpm
```

### `rpm` package: `readline-8.2-11.el10.x86_64`

Licenses (from `rpm --query`): GPL-3.0-or-later AND GPL-2.0-or-later AND GFDL-1.3-no-invariants-or-later

Source:

```console
$ dnf --quiet download --source --url readline-8.2-11.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/r/readline-8.2-11.el10.src.rpm
```

### `rpm` package: `redhat-release-10.2-16.0.1.el10.x86_64`

Licenses (from `rpm --query`): GPL-2.0-or-later

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `rootfiles-8.1-54.el10.noarch`

Licenses (from `rpm --query`): LicenseRef-Not-Copyrightable

Source:

```console
$ dnf --quiet download --source --url rootfiles-8.1-54.el10.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/r/rootfiles-8.1-54.el10.src.rpm
```

### `rpm` package: `rpm-4.19.1.1-23.el10.x86_64`

Licenses (from `rpm --query`): GPL-2.0-or-later

Source:

```console
$ dnf --quiet download --source --url rpm-4.19.1.1-23.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/r/rpm-4.19.1.1-23.el10.src.rpm
```

### `rpm` package: `rpm-build-libs-4.19.1.1-23.el10.x86_64`

Licenses (from `rpm --query`): GPL-2.0-or-later

Source:

```console
$ dnf --quiet download --source --url rpm-build-libs-4.19.1.1-23.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/r/rpm-4.19.1.1-23.el10.src.rpm
```

### `rpm` package: `rpm-libs-4.19.1.1-23.el10.x86_64`

Licenses (from `rpm --query`): GPL-2.0-or-later OR LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url rpm-libs-4.19.1.1-23.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/r/rpm-4.19.1.1-23.el10.src.rpm
```

### `rpm` package: `rpm-sequoia-1.10.1.1-2.el10.x86_64`

Licenses (from `rpm --query`): LGPL-2.0-or-later AND Apache-2.0 AND BSL-1.0 AND MIT AND Unicode-DFS-2016 AND (Apache-2.0 OR MIT) AND (MIT OR Apache-2.0 OR Zlib) AND (Unlicense OR MIT)

Source:

```console
$ dnf --quiet download --source --url rpm-sequoia-1.10.1.1-2.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/r/rust-rpm-sequoia-1.10.1.1-2.el10.src.rpm
```

### `rpm` package: `rpm-sign-libs-4.19.1.1-23.el10.x86_64`

Licenses (from `rpm --query`): GPL-2.0-or-later

Source:

```console
$ dnf --quiet download --source --url rpm-sign-libs-4.19.1.1-23.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/r/rpm-4.19.1.1-23.el10.src.rpm
```

### `rpm` package: `rsyslog-8.2510.0-5.el10.x86_64`

Licenses (from `rpm --query`): GPL-3.0-or-later AND Apache-2.0

Source:

```console
$ dnf --quiet download --source --url rsyslog-8.2510.0-5.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/appstream/source/SRPMS/Packages/r/rsyslog-8.2510.0-5.el10.src.rpm
```

### `rpm` package: `sed-4.9-5.el10.x86_64`

Licenses (from `rpm --query`): GPL-3.0-or-later

Source:

```console
$ dnf --quiet download --source --url sed-4.9-5.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/s/sed-4.9-5.el10.src.rpm
```

### `rpm` package: `setup-2.14.5-7.el10.noarch`

Licenses (from `rpm --query`): LicenseRef-Fedora-Public-Domain

Source:

```console
$ dnf --quiet download --source --url setup-2.14.5-7.el10.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/s/setup-2.14.5-7.el10.src.rpm
```

### `rpm` package: `shadow-utils-4.15.0-11.el10.x86_64`

Licenses (from `rpm --query`): BSD-3-Clause AND GPL-2.0-or-later

Source:

```console
$ dnf --quiet download --source --url shadow-utils-4.15.0-11.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/s/shadow-utils-4.15.0-11.el10.src.rpm
```

### `rpm` package: `sqlite-libs-3.46.1-5.el10_1.x86_64`

Licenses (from `rpm --query`): blessing

Source:

```console
$ dnf --quiet download --source --url sqlite-libs-3.46.1-5.el10_1
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/s/sqlite-3.46.1-5.el10_1.src.rpm
```

### `rpm` package: `systemd-257-23.0.1.el10_2.2.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later AND MIT AND GPL-2.0-or-later

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `systemd-libs-257-23.0.1.el10_2.2.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later AND MIT

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `systemd-pam-257-23.0.1.el10_2.2.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later AND MIT AND GPL-2.0-or-later

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `tar-1.35-11.el10.x86_64`

Licenses (from `rpm --query`): GPL-3.0-or-later

Source:

```console
$ dnf --quiet download --source --url tar-1.35-11.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/t/tar-1.35-11.el10.src.rpm
```

### `rpm` package: `tpm2-tss-4.1.3-6.el10.x86_64`

Licenses (from `rpm --query`): BSD-2-Clause

Source:

```console
$ dnf --quiet download --source --url tpm2-tss-4.1.3-6.el10
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/t/tpm2-tss-4.1.3-6.el10.src.rpm
```

### `rpm` package: `tzdata-2026b-1.el10.noarch`

Licenses (from `rpm --query`): LicenseRef-Fedora-Public-Domain AND (GPL-2.0-only WITH ClassPath-exception-2.0)

Source:

```console
$ dnf --quiet download --source --url tzdata-2026b-1.el10.noarch
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/t/tzdata-2026b-1.el10.src.rpm
```

### `rpm` package: `util-linux-2.40.2-18.0.1.el10.x86_64`

Licenses (from `rpm --query`): GPL-1.0-or-later AND GPL-2.0-only AND GPL-2.0-or-later AND GPL-3.0-or-later AND LGPL-2.1-or-later AND EUPL-1.2 AND BSD-2-Clause AND BSD-3-Clause AND BSD-4-Clause-UC AND LicenseRef-Fedora-Public-Domain

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `util-linux-core-2.40.2-18.0.1.el10.x86_64`

Licenses (from `rpm --query`): GPL-2.0-only AND GPL-2.0-or-later AND BSD-2-Clause AND BSD-3-Clause AND BSD-4-Clause-UC AND LicenseRef-Fedora-Public-Domain

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `vim-data-9.1.083-9.0.1.el10_2.7.noarch`

Licenses (from `rpm --query`): Vim AND LGPL-2.1-or-later AND MIT AND GPL-1.0-only AND (GPL-2.0-only OR Vim) AND Apache-2.0 AND BSD-2-Clause AND BSD-3-Clause AND GPL-2.0-or-later AND GPL-3.0-or-later AND OPUBL-1.0

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `vim-minimal-9.1.083-9.0.1.el10_2.7.x86_64`

Licenses (from `rpm --query`): Vim AND LGPL-2.1-or-later AND MIT AND GPL-1.0-only AND (GPL-2.0-only OR Vim) AND Apache-2.0 AND BSD-2-Clause AND BSD-3-Clause AND GPL-2.0-or-later AND GPL-3.0-or-later AND OPUBL-1.0

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `xz-libs-5.6.2-4.el10_0.x86_64`

Licenses (from `rpm --query`): 0BSD

Source:

```console
$ dnf --quiet download --source --url xz-libs-5.6.2-4.el10_0
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/x/xz-5.6.2-4.el10_0.src.rpm
```

### `rpm` package: `yum-4.20.0-22.0.1.el10_2.noarch`

Licenses (from `rpm --query`): GPL-2.0-or-later AND GPL-1.0-only

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `yum-utils-4.7.0-10.0.1.el10.noarch`

Licenses (from `rpm --query`): GPL-2.0-or-later

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `zlib-ng-compat-2.2.3-3.el10_1.x86_64`

Licenses (from `rpm --query`): Zlib

Source:

```console
$ dnf --quiet download --source --url zlib-ng-compat-2.2.3-3.el10_1
https://cdn-ubi.redhat.com/content/public/ubi/dist/ubi10/10/x86_64/baseos/source/SRPMS/Packages/z/zlib-ng-2.2.3-3.el10_1.src.rpm
```
