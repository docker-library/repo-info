# `rockylinux:9.9.20261112-minimal`

## Docker Metadata

- Image ID: `sha256:a231fd86b69b55bc7a1c0d9b37b5ebdd17fc9a092e9bed6c9e0b4687331a5323`
- Created: `2026-11-13T00:31:57.318616668Z`
- Virtual Size: ~ 121.97 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Command: `["/bin/bash"]`
- Environment:
  - `container=oci`
- Labels:
  - `io.buildah.version=1.43.4`
  - `license=BSD-3-Clause`
  - `name=rockylinux`
  - `org.opencontainers.image.authors=Rocky Enterprise Software Foundation <infrastructure@rockylinux.org>`
  - `org.opencontainers.image.licenses=BSD-3-Clause`
  - `org.opencontainers.image.source=https://git.resf.org/sig_core/rocky-kiwi-descriptions/src/branch/r9`
  - `org.opencontainers.image.title=rockylinux`
  - `org.opencontainers.image.vendor=Rocky Enterprise Software Foundation`
  - `org.opencontainers.image.version=9-minimal`
  - `summary=Rocky Linux Minimal image`
  - `vendor=Rocky Enterprise Software Foundation`
  - `version=9-minimal`

## `rpm` (`.rpm`-based packages)

### `rpm` package: `alternatives-1.24-2.el9.x86_64`

Licenses (from `rpm --query`): GPL-2.0-only

Source:

```console
$ dnf --quiet download --source --url alternatives-1.24-2.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/c/chkconfig-1.24-2.el9.src.rpm
```

### `rpm` package: `audit-libs-3.1.5-9.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url audit-libs-3.1.5-9.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/a/audit-3.1.5-9.el9.src.rpm
```

### `rpm` package: `basesystem-11-13.el9.0.1.noarch`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url basesystem-11-13.el9.0.1.noarch
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/b/basesystem-11-13.el9.0.1.src.rpm
```

### `rpm` package: `bash-5.1.8-9.el9.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url bash-5.1.8-9.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/b/bash-5.1.8-9.el9.src.rpm
```

### `rpm` package: `bzip2-libs-1.0.8-11.el9.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url bzip2-libs-1.0.8-11.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/b/bzip2-1.0.8-11.el9.src.rpm
```

### `rpm` package: `ca-certificates-2026.2.92_v9.0.319-90.3.el9_8.noarch`

Licenses (from `rpm --query`): MIT AND GPL-2.0-or-later

Source:

```console
$ dnf --quiet download --source --url ca-certificates-2026.2.92_v9.0.319-90.3.el9_8.noarch
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/c/ca-certificates-2026.2.92_v9.0.319-90.3.el9_8.src.rpm
```

### `rpm` package: `coreutils-single-8.32-43.el9.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url coreutils-single-8.32-43.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/c/coreutils-8.32-43.el9.src.rpm
```

### `rpm` package: `cracklib-2.9.6-28.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url cracklib-2.9.6-28.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/c/cracklib-2.9.6-28.el9.src.rpm
```

### `rpm` package: `cracklib-dicts-2.9.6-28.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url cracklib-dicts-2.9.6-28.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/c/cracklib-2.9.6-28.el9.src.rpm
```

### `rpm` package: `crypto-policies-20260714-1.git65b74f7.el9.noarch`

Licenses (from `rpm --query`): LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url crypto-policies-20260714-1.git65b74f7.el9.noarch
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/c/crypto-policies-20260714-1.git65b74f7.el9.src.rpm
```

### `rpm` package: `curl-7.76.1-43.el9.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url curl-7.76.1-43.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/c/curl-7.76.1-43.el9.src.rpm
```

### `rpm` package: `cyrus-sasl-lib-2.1.27-22.el9_7.x86_64`

Licenses (from `rpm --query`): BSD with advertising

Source:

```console
$ dnf --quiet download --source --url cyrus-sasl-lib-2.1.27-22.el9_7
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/c/cyrus-sasl-2.1.27-22.el9_7.src.rpm
```

### `rpm` package: `dejavu-sans-fonts-2.37-18.el9.noarch`

Licenses (from `rpm --query`): Bitstream Vera and Public Domain

Source:

```console
$ dnf --quiet download --source --url dejavu-sans-fonts-2.37-18.el9.noarch
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/d/dejavu-fonts-2.37-18.el9.src.rpm
```

### `rpm` package: `dnf-data-4.14.0-37.el9.rocky.0.1.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url dnf-data-4.14.0-37.el9.rocky.0.1.noarch
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/d/dnf-4.14.0-37.el9.rocky.0.1.src.rpm
```

### `rpm` package: `file-libs-5.39-19.el9.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url file-libs-5.39-19.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/f/file-5.39-19.el9.src.rpm
```

### `rpm` package: `filesystem-3.16-5.el9.x86_64`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url filesystem-3.16-5.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/f/filesystem-3.16-5.el9.src.rpm
```

### `rpm` package: `findutils-4.8.0-7.el9.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url findutils-4.8.0-7.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/f/findutils-4.8.0-7.el9.src.rpm
```

### `rpm` package: `fonts-filesystem-2.0.5-7.el9.1.noarch`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url fonts-filesystem-2.0.5-7.el9.1.noarch
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/f/fonts-rpm-macros-2.0.5-7.el9.1.src.rpm
```

### `rpm` package: `gawk-5.1.0-7.el9.x86_64`

Licenses (from `rpm --query`): GPLv3+ and GPLv2+ and LGPLv2+ and BSD

Source:

```console
$ dnf --quiet download --source --url gawk-5.1.0-7.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/g/gawk-5.1.0-7.el9.src.rpm
```

### `rpm` package: `gdbm-libs-1.23-1.el9.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url gdbm-libs-1.23-1.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/g/gdbm-1.23-1.el9.src.rpm
```

### `rpm` package: `glib2-2.68.4-29.el9_9.1.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url glib2-2.68.4-29.el9_9.1
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/g/glib2-2.68.4-29.el9_9.1.src.rpm
```

### `rpm` package: `glibc-2.34-290.el9_9.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later AND SunPro AND LGPL-2.1-or-later WITH GCC-exception-2.0 AND BSD-3-Clause AND GPL-2.0-or-later AND LGPL-2.1-or-later WITH GNU-compiler-exception AND GPL-2.0-only AND ISC AND LicenseRef-Fedora-Public-Domain AND HPND AND CMU-Mach AND LGPL-2.0-or-later AND Unicode-3.0 AND GFDL-1.1-or-later AND GPL-1.0-or-later AND FSFUL AND MIT AND Inner-Net-2.0 AND X11 AND GPL-2.0-or-later WITH GCC-exception-2.0 AND GFDL-1.3-only AND GFDL-1.1-only AND GPL-3.0-or-later AND GPL-3.0-or-later WITH Autoconf-exception-generic-3.0 AND GPL-3.0-or-later WITH Texinfo-exception

Source:

```console
$ dnf --quiet download --source --url glibc-2.34-290.el9_9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/g/glibc-2.34-290.el9_9.src.rpm
```

### `rpm` package: `glibc-common-2.34-290.el9_9.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later AND SunPro AND LGPL-2.1-or-later WITH GCC-exception-2.0 AND BSD-3-Clause AND GPL-2.0-or-later AND LGPL-2.1-or-later WITH GNU-compiler-exception AND GPL-2.0-only AND ISC AND LicenseRef-Fedora-Public-Domain AND HPND AND CMU-Mach AND LGPL-2.0-or-later AND Unicode-3.0 AND GFDL-1.1-or-later AND GPL-1.0-or-later AND FSFUL AND MIT AND Inner-Net-2.0 AND X11 AND GPL-2.0-or-later WITH GCC-exception-2.0 AND GFDL-1.3-only AND GFDL-1.1-only AND GPL-3.0-or-later AND GPL-3.0-or-later WITH Autoconf-exception-generic-3.0 AND GPL-3.0-or-later WITH Texinfo-exception

Source:

```console
$ dnf --quiet download --source --url glibc-common-2.34-290.el9_9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/g/glibc-2.34-290.el9_9.src.rpm
```

### `rpm` package: `glibc-minimal-langpack-2.34-290.el9_9.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later AND SunPro AND LGPL-2.1-or-later WITH GCC-exception-2.0 AND BSD-3-Clause AND GPL-2.0-or-later AND LGPL-2.1-or-later WITH GNU-compiler-exception AND GPL-2.0-only AND ISC AND LicenseRef-Fedora-Public-Domain AND HPND AND CMU-Mach AND LGPL-2.0-or-later AND Unicode-3.0 AND GFDL-1.1-or-later AND GPL-1.0-or-later AND FSFUL AND MIT AND Inner-Net-2.0 AND X11 AND GPL-2.0-or-later WITH GCC-exception-2.0 AND GFDL-1.3-only AND GFDL-1.1-only AND GPL-3.0-or-later AND GPL-3.0-or-later WITH Autoconf-exception-generic-3.0 AND GPL-3.0-or-later WITH Texinfo-exception

Source:

```console
$ dnf --quiet download --source --url glibc-minimal-langpack-2.34-290.el9_9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/g/glibc-2.34-290.el9_9.src.rpm
```

### `rpm` package: `gmp-6.2.0-13.el9.x86_64`

Licenses (from `rpm --query`): LGPLv3+ or GPLv2+

Source:

```console
$ dnf --quiet download --source --url gmp-6.2.0-13.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/g/gmp-6.2.0-13.el9.src.rpm
```

### `rpm` package: `gnupg2-2.3.3-5.el9_7.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url gnupg2-2.3.3-5.el9_7
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/g/gnupg2-2.3.3-5.el9_7.src.rpm
```

### `rpm` package: `gnutls-3.8.10-9.el9_8.x86_64`

Licenses (from `rpm --query`): GPLv3+ and LGPLv2+

Source:

```console
$ dnf --quiet download --source --url gnutls-3.8.10-9.el9_8
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/g/gnutls-3.8.10-9.el9_8.src.rpm
```

### `rpm` package: `gobject-introspection-1.68.0-11.el9.x86_64`

Licenses (from `rpm --query`): GPLv2+ and LGPLv2+ and MIT

Source:

```console
$ dnf --quiet download --source --url gobject-introspection-1.68.0-11.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/g/gobject-introspection-1.68.0-11.el9.src.rpm
```

### `rpm` package: `gpg-pubkey-350d275d-6279464b`

Licenses (from `rpm --query`): pubkey

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `gpgme-1.15.1-6.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and GPLv3+

Source:

```console
$ dnf --quiet download --source --url gpgme-1.15.1-6.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/g/gpgme-1.15.1-6.el9.src.rpm
```

### `rpm` package: `grep-3.6-5.el9.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url grep-3.6-5.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/g/grep-3.6-5.el9.src.rpm
```

### `rpm` package: `gzip-1.12-2.el9_8.x86_64`

Licenses (from `rpm --query`): GPLv3+ and GFDL

Source:

```console
$ dnf --quiet download --source --url gzip-1.12-2.el9_8
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/g/gzip-1.12-2.el9_8.src.rpm
```

### `rpm` package: `json-c-0.14-11.el9.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url json-c-0.14-11.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/j/json-c-0.14-11.el9.src.rpm
```

### `rpm` package: `keyutils-libs-1.6.3-1.el9.x86_64`

Licenses (from `rpm --query`): GPLv2+ and LGPLv2+

Source:

```console
$ dnf --quiet download --source --url keyutils-libs-1.6.3-1.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/k/keyutils-1.6.3-1.el9.src.rpm
```

### `rpm` package: `krb5-libs-1.21.1-10.el9_9.2.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url krb5-libs-1.21.1-10.el9_9.2
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/k/krb5-1.21.1-10.el9_9.2.src.rpm
```

### `rpm` package: `langpacks-core-en-3.0-16.el9.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url langpacks-core-en-3.0-16.el9.noarch
http://mirrors.rit.edu/rocky/9.9/AppStream/source/tree/Packages/l/langpacks-3.0-16.el9.src.rpm
```

### `rpm` package: `langpacks-core-font-en-3.0-16.el9.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url langpacks-core-font-en-3.0-16.el9.noarch
http://mirrors.rit.edu/rocky/9.9/AppStream/source/tree/Packages/l/langpacks-3.0-16.el9.src.rpm
```

### `rpm` package: `libacl-2.4.0-2.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libacl-2.4.0-2.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/a/acl-2.4.0-2.el9.src.rpm
```

### `rpm` package: `libarchive-3.5.3-11.el9_8.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url libarchive-3.5.3-11.el9_8
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libarchive-3.5.3-11.el9_8.src.rpm
```

### `rpm` package: `libassuan-2.5.5-3.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and GPLv3+

Source:

```console
$ dnf --quiet download --source --url libassuan-2.5.5-3.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libassuan-2.5.5-3.el9.src.rpm
```

### `rpm` package: `libattr-2.6.0-2.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libattr-2.6.0-2.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/a/attr-2.6.0-2.el9.src.rpm
```

### `rpm` package: `libblkid-2.37.4-28.el9_9.1.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libblkid-2.37.4-28.el9_9.1
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/u/util-linux-2.37.4-28.el9_9.1.src.rpm
```

### `rpm` package: `libbrotli-1.0.9-10.el9_8.1.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libbrotli-1.0.9-10.el9_8.1
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/b/brotli-1.0.9-10.el9_8.1.src.rpm
```

### `rpm` package: `libcap-2.48-10.el9_7.1.x86_64`

Licenses (from `rpm --query`): BSD or GPLv2

Source:

```console
$ dnf --quiet download --source --url libcap-2.48-10.el9_7.1
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libcap-2.48-10.el9_7.1.src.rpm
```

### `rpm` package: `libcap-ng-0.8.2-7.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libcap-ng-0.8.2-7.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libcap-ng-0.8.2-7.el9.src.rpm
```

### `rpm` package: `libcom_err-1.46.5-8.el9.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libcom_err-1.46.5-8.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/e/e2fsprogs-1.46.5-8.el9.src.rpm
```

### `rpm` package: `libcurl-7.76.1-43.el9.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libcurl-7.76.1-43.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/c/curl-7.76.1-43.el9.src.rpm
```

### `rpm` package: `libdb-5.3.28-57.el9_6.x86_64`

Licenses (from `rpm --query`): BSD and LGPLv2 and Sleepycat and MIT

Source:

```console
$ dnf --quiet download --source --url libdb-5.3.28-57.el9_6
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libdb-5.3.28-57.el9_6.src.rpm
```

### `rpm` package: `libdnf-0.69.0-20.el9.rocky.0.1.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libdnf-0.69.0-20.el9.rocky.0.1
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libdnf-0.69.0-20.el9.rocky.0.1.src.rpm
```

### `rpm` package: `libeconf-0.4.1-7.el9_8.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libeconf-0.4.1-7.el9_8
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libeconf-0.4.1-7.el9_8.src.rpm
```

### `rpm` package: `libevent-2.1.13-1.el9_8.x86_64`

Licenses (from `rpm --query`): BSD and ISC

Source:

```console
$ dnf --quiet download --source --url libevent-2.1.13-1.el9_8
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libevent-2.1.13-1.el9_8.src.rpm
```

### `rpm` package: `libfdisk-2.37.4-28.el9_9.1.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libfdisk-2.37.4-28.el9_9.1
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/u/util-linux-2.37.4-28.el9_9.1.src.rpm
```

### `rpm` package: `libffi-3.4.2-8.el9.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libffi-3.4.2-8.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libffi-3.4.2-8.el9.src.rpm
```

### `rpm` package: `libgcc-11.5.0-17.el9_9.x86_64`

Licenses (from `rpm --query`): GPLv3+ and GPLv3+ with exceptions and GPLv2+ with exceptions and LGPLv2+ and BSD

Source:

```console
$ dnf --quiet download --source --url libgcc-11.5.0-17.el9_9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/g/gcc-11.5.0-17.el9_9.src.rpm
```

### `rpm` package: `libgcrypt-1.10.0-13.el9_8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libgcrypt-1.10.0-13.el9_8
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libgcrypt-1.10.0-13.el9_8.src.rpm
```

### `rpm` package: `libgpg-error-1.42-5.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libgpg-error-1.42-5.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libgpg-error-1.42-5.el9.src.rpm
```

### `rpm` package: `libidn2-2.3.0-7.el9.x86_64`

Licenses (from `rpm --query`): (GPLv2+ or LGPLv3+) and GPLv3+

Source:

```console
$ dnf --quiet download --source --url libidn2-2.3.0-7.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libidn2-2.3.0-7.el9.src.rpm
```

### `rpm` package: `libksba-1.5.1-7.el9.x86_64`

Licenses (from `rpm --query`): (LGPLv3+ or GPLv2+) and GPLv3+

Source:

```console
$ dnf --quiet download --source --url libksba-1.5.1-7.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libksba-1.5.1-7.el9.src.rpm
```

### `rpm` package: `libmodulemd-2.13.0-2.el9.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libmodulemd-2.13.0-2.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libmodulemd-2.13.0-2.el9.src.rpm
```

### `rpm` package: `libmount-2.37.4-28.el9_9.1.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libmount-2.37.4-28.el9_9.1
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/u/util-linux-2.37.4-28.el9_9.1.src.rpm
```

### `rpm` package: `libnghttp2-1.43.0-8.el9.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libnghttp2-1.43.0-8.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/n/nghttp2-1.43.0-8.el9.src.rpm
```

### `rpm` package: `libpeas-1.30.0-4.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libpeas-1.30.0-4.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libpeas-1.30.0-4.el9.src.rpm
```

### `rpm` package: `libpsl-0.21.1-5.el9.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libpsl-0.21.1-5.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libpsl-0.21.1-5.el9.src.rpm
```

### `rpm` package: `libpwquality-1.4.4-8.el9.x86_64`

Licenses (from `rpm --query`): BSD or GPLv2+

Source:

```console
$ dnf --quiet download --source --url libpwquality-1.4.4-8.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libpwquality-1.4.4-8.el9.src.rpm
```

### `rpm` package: `librepo-1.19.0-1.el9.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url librepo-1.19.0-1.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/librepo-1.19.0-1.el9.src.rpm
```

### `rpm` package: `libreport-filesystem-2.15.2-6.el9.rocky.0.2.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url libreport-filesystem-2.15.2-6.el9.rocky.0.2.noarch
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libreport-2.15.2-6.el9.rocky.0.2.src.rpm
```

### `rpm` package: `libselinux-3.6-4.el9.x86_64`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url libselinux-3.6-4.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libselinux-3.6-4.el9.src.rpm
```

### `rpm` package: `libsemanage-3.6-5.el9_6.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libsemanage-3.6-5.el9_6
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libsemanage-3.6-5.el9_6.src.rpm
```

### `rpm` package: `libsepol-3.6-3.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libsepol-3.6-3.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libsepol-3.6-3.el9.src.rpm
```

### `rpm` package: `libsigsegv-2.13-4.el9.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url libsigsegv-2.13-4.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libsigsegv-2.13-4.el9.src.rpm
```

### `rpm` package: `libsmartcols-2.37.4-28.el9_9.1.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libsmartcols-2.37.4-28.el9_9.1
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/u/util-linux-2.37.4-28.el9_9.1.src.rpm
```

### `rpm` package: `libsolv-0.7.24-6.el9_8.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url libsolv-0.7.24-6.el9_8
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libsolv-0.7.24-6.el9_8.src.rpm
```

### `rpm` package: `libssh-0.10.4-19.el9_8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libssh-0.10.4-19.el9_8
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libssh-0.10.4-19.el9_8.src.rpm
```

### `rpm` package: `libssh-config-0.10.4-19.el9_8.noarch`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libssh-config-0.10.4-19.el9_8.noarch
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libssh-0.10.4-19.el9_8.src.rpm
```

### `rpm` package: `libstdc++-11.5.0-17.el9_9.x86_64`

Licenses (from `rpm --query`): GPLv3+ and GPLv3+ with exceptions and GPLv2+ with exceptions and LGPLv2+ and BSD

Source:

```console
$ dnf --quiet download --source --url libstdc++-11.5.0-17.el9_9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/g/gcc-11.5.0-17.el9_9.src.rpm
```

### `rpm` package: `libtasn1-4.16.0-10.el9_8.x86_64`

Licenses (from `rpm --query`): GPLv3+ and LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libtasn1-4.16.0-10.el9_8
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libtasn1-4.16.0-10.el9_8.src.rpm
```

### `rpm` package: `libtool-ltdl-2.4.6-46.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libtool-ltdl-2.4.6-46.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libtool-2.4.6-46.el9.src.rpm
```

### `rpm` package: `libunistring-0.9.10-15.el9.x86_64`

Licenses (from `rpm --query`): GPLv2+ or LGPLv3+

Source:

```console
$ dnf --quiet download --source --url libunistring-0.9.10-15.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libunistring-0.9.10-15.el9.src.rpm
```

### `rpm` package: `libutempter-1.2.1-6.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libutempter-1.2.1-6.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libutempter-1.2.1-6.el9.src.rpm
```

### `rpm` package: `libuuid-2.37.4-28.el9_9.1.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url libuuid-2.37.4-28.el9_9.1
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/u/util-linux-2.37.4-28.el9_9.1.src.rpm
```

### `rpm` package: `libverto-0.3.2-3.el9.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libverto-0.3.2-3.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libverto-0.3.2-3.el9.src.rpm
```

### `rpm` package: `libxcrypt-4.4.18-3.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and BSD and Public Domain

Source:

```console
$ dnf --quiet download --source --url libxcrypt-4.4.18-3.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libxcrypt-4.4.18-3.el9.src.rpm
```

### `rpm` package: `libxml2-2.9.13-18.el9_9.1.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libxml2-2.9.13-18.el9_9.1
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libxml2-2.9.13-18.el9_9.1.src.rpm
```

### `rpm` package: `libyaml-0.2.5-7.el9.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libyaml-0.2.5-7.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/libyaml-0.2.5-7.el9.src.rpm
```

### `rpm` package: `libzstd-1.5.5-1.el9.x86_64`

Licenses (from `rpm --query`): BSD and GPLv2

Source:

```console
$ dnf --quiet download --source --url libzstd-1.5.5-1.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/z/zstd-1.5.5-1.el9.src.rpm
```

### `rpm` package: `lua-libs-5.4.4-4.el9.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url lua-libs-5.4.4-4.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/lua-5.4.4-4.el9.src.rpm
```

### `rpm` package: `lz4-libs-1.9.3-5.el9.x86_64`

Licenses (from `rpm --query`): GPLv2+ and BSD

Source:

```console
$ dnf --quiet download --source --url lz4-libs-1.9.3-5.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/l/lz4-1.9.3-5.el9.src.rpm
```

### `rpm` package: `microdnf-3.9.1-3.el9.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url microdnf-3.9.1-3.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/m/microdnf-3.9.1-3.el9.src.rpm
```

### `rpm` package: `mpfr-4.1.0-10.el9.x86_64`

Licenses (from `rpm --query`): LGPLv3+

Source:

```console
$ dnf --quiet download --source --url mpfr-4.1.0-10.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/m/mpfr-4.1.0-10.el9.src.rpm
```

### `rpm` package: `ncurses-base-6.2-12.20210508.el9.noarch`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url ncurses-base-6.2-12.20210508.el9.noarch
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/n/ncurses-6.2-12.20210508.el9.src.rpm
```

### `rpm` package: `ncurses-libs-6.2-12.20210508.el9.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url ncurses-libs-6.2-12.20210508.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/n/ncurses-6.2-12.20210508.el9.src.rpm
```

### `rpm` package: `nettle-3.10.1-1.el9.x86_64`

Licenses (from `rpm --query`): LGPLv3+ or GPLv2+

Source:

```console
$ dnf --quiet download --source --url nettle-3.10.1-1.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/n/nettle-3.10.1-1.el9.src.rpm
```

### `rpm` package: `npth-1.6-8.el9.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url npth-1.6-8.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/n/npth-1.6-8.el9.src.rpm
```

### `rpm` package: `openldap-2.6.13-1.el9.x86_64`

Licenses (from `rpm --query`): OLDAP-2.8

Source:

```console
$ dnf --quiet download --source --url openldap-2.6.13-1.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/o/openldap-2.6.13-1.el9.src.rpm
```

### `rpm` package: `openssl-3.5.9-1.el9_9.x86_64`

Licenses (from `rpm --query`): Apache-2.0

Source:

```console
$ dnf --quiet download --source --url openssl-3.5.9-1.el9_9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/o/openssl-3.5.9-1.el9_9.src.rpm
```

### `rpm` package: `openssl-fips-provider-3.5.9-1.el9_9.x86_64`

Licenses (from `rpm --query`): Apache-2.0

Source:

```console
$ dnf --quiet download --source --url openssl-fips-provider-3.5.9-1.el9_9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/o/openssl-3.5.9-1.el9_9.src.rpm
```

### `rpm` package: `openssl-libs-3.5.9-1.el9_9.x86_64`

Licenses (from `rpm --query`): Apache-2.0

Source:

```console
$ dnf --quiet download --source --url openssl-libs-3.5.9-1.el9_9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/o/openssl-3.5.9-1.el9_9.src.rpm
```

### `rpm` package: `p11-kit-0.26.4-1.el9_8.x86_64`

Licenses (from `rpm --query`): BSD-3-Clause

Source:

```console
$ dnf --quiet download --source --url p11-kit-0.26.4-1.el9_8
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/p/p11-kit-0.26.4-1.el9_8.src.rpm
```

### `rpm` package: `p11-kit-trust-0.26.4-1.el9_8.x86_64`

Licenses (from `rpm --query`): BSD-3-Clause

Source:

```console
$ dnf --quiet download --source --url p11-kit-trust-0.26.4-1.el9_8
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/p/p11-kit-0.26.4-1.el9_8.src.rpm
```

### `rpm` package: `pam-1.5.1-29.el9.x86_64`

Licenses (from `rpm --query`): BSD and GPLv2+

Source:

```console
$ dnf --quiet download --source --url pam-1.5.1-29.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/p/pam-1.5.1-29.el9.src.rpm
```

### `rpm` package: `pcre-8.44-4.el9.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url pcre-8.44-4.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/p/pcre-8.44-4.el9.src.rpm
```

### `rpm` package: `pcre2-10.40-7.el9_8.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url pcre2-10.40-7.el9_8
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/p/pcre2-10.40-7.el9_8.src.rpm
```

### `rpm` package: `pcre2-syntax-10.40-7.el9_8.noarch`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url pcre2-syntax-10.40-7.el9_8.noarch
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/p/pcre2-10.40-7.el9_8.src.rpm
```

### `rpm` package: `popt-1.18-8.el9.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url popt-1.18-8.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/p/popt-1.18-8.el9.src.rpm
```

### `rpm` package: `publicsuffix-list-dafsa-20210518-3.el9.noarch`

Licenses (from `rpm --query`): MPLv2.0

Source:

```console
$ dnf --quiet download --source --url publicsuffix-list-dafsa-20210518-3.el9.noarch
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/p/publicsuffix-list-20210518-3.el9.src.rpm
```

### `rpm` package: `readline-8.1-4.el9.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url readline-8.1-4.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/r/readline-8.1-4.el9.src.rpm
```

### `rpm` package: `rocky-gpg-keys-9.9-1.0.el9.noarch`

Licenses (from `rpm --query`): BSD-3-Clause

Source:

```console
$ dnf --quiet download --source --url rocky-gpg-keys-9.9-1.0.el9.noarch
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/r/rocky-release-9.9-1.0.el9.src.rpm
```

### `rpm` package: `rocky-release-9.9-1.0.el9.noarch`

Licenses (from `rpm --query`): BSD-3-Clause

Source:

```console
$ dnf --quiet download --source --url rocky-release-9.9-1.0.el9.noarch
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/r/rocky-release-9.9-1.0.el9.src.rpm
```

### `rpm` package: `rocky-repos-9.9-1.0.el9.noarch`

Licenses (from `rpm --query`): BSD-3-Clause

Source:

```console
$ dnf --quiet download --source --url rocky-repos-9.9-1.0.el9.noarch
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/r/rocky-release-9.9-1.0.el9.src.rpm
```

### `rpm` package: `rpm-4.16.1.3-43.el9_9.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url rpm-4.16.1.3-43.el9_9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/r/rpm-4.16.1.3-43.el9_9.src.rpm
```

### `rpm` package: `rpm-libs-4.16.1.3-43.el9_9.x86_64`

Licenses (from `rpm --query`): GPLv2+ and LGPLv2+ with exceptions

Source:

```console
$ dnf --quiet download --source --url rpm-libs-4.16.1.3-43.el9_9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/r/rpm-4.16.1.3-43.el9_9.src.rpm
```

### `rpm` package: `sed-4.8-10.el9_8.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url sed-4.8-10.el9_8
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/s/sed-4.8-10.el9_8.src.rpm
```

### `rpm` package: `setup-2.13.7-10.el9.noarch`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url setup-2.13.7-10.el9.noarch
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/s/setup-2.13.7-10.el9.src.rpm
```

### `rpm` package: `shadow-utils-4.9-17.el9.x86_64`

Licenses (from `rpm --query`): BSD and GPLv2+

Source:

```console
$ dnf --quiet download --source --url shadow-utils-4.9-17.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/s/shadow-utils-4.9-17.el9.src.rpm
```

### `rpm` package: `sqlite-libs-3.34.1-11.el9_8.x86_64`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url sqlite-libs-3.34.1-11.el9_8
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/s/sqlite-3.34.1-11.el9_8.src.rpm
```

### `rpm` package: `systemd-libs-252-79.el9_9.rocky.0.1.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and MIT

Source:

```console
$ dnf --quiet download --source --url systemd-libs-252-79.el9_9.rocky.0.1
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/s/systemd-252-79.el9_9.rocky.0.1.src.rpm
```

### `rpm` package: `tzdata-2026f-1.el9_8.noarch`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url tzdata-2026f-1.el9_8.noarch
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/t/tzdata-2026f-1.el9_8.src.rpm
```

### `rpm` package: `util-linux-2.37.4-28.el9_9.1.x86_64`

Licenses (from `rpm --query`): GPLv2 and GPLv2+ and LGPLv2+ and BSD with advertising and Public Domain

Source:

```console
$ dnf --quiet download --source --url util-linux-2.37.4-28.el9_9.1
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/u/util-linux-2.37.4-28.el9_9.1.src.rpm
```

### `rpm` package: `util-linux-core-2.37.4-28.el9_9.1.x86_64`

Licenses (from `rpm --query`): GPLv2 and GPLv2+ and LGPLv2+ and BSD with advertising and Public Domain

Source:

```console
$ dnf --quiet download --source --url util-linux-core-2.37.4-28.el9_9.1
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/u/util-linux-2.37.4-28.el9_9.1.src.rpm
```

### `rpm` package: `xz-libs-5.2.5-8.el9_8.1.x86_64`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url xz-libs-5.2.5-8.el9_8.1
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/x/xz-5.2.5-8.el9_8.1.src.rpm
```

### `rpm` package: `zlib-1.2.11-40.el9.x86_64`

Licenses (from `rpm --query`): zlib and Boost

Source:

```console
$ dnf --quiet download --source --url zlib-1.2.11-40.el9
https://us.mirrors.cicku.me/rocky/9.9/BaseOS/source/tree/Packages/z/zlib-1.2.11-40.el9.src.rpm
```
