# `percona:psmdb-4.2.21`

## Docker Metadata

- Image ID: `sha256:bd418dd34c04114eab5806f50e093a3fa0d071576f6ee6ebe5266343ef28a001`
- Created: `2023-01-18T04:20:20.634219547Z`
- Virtual Size: ~ 445.79 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/entrypoint.sh"]`
- Command: `["mongod"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PSMDB_VERSION=4.2.21-21`
  - `OS_VER=el8`
  - `FULL_PERCONA_VERSION=4.2.21-21.el8`
  - `K8S_TOOLS_VERSION=0.5.0`
  - `GOSU_VERSION=1.11`
- Labels:
  - `org.opencontainers.image.authors=info@percona.com`

## `rpm` (`.rpm`-based packages)

### `rpm` package: `acl-2.2.53-1.el8.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url acl-2.2.53-1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/acl-2.2.53-1.el8.src.rpm
```

### `rpm` package: `audit-libs-3.0.7-4.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url audit-libs-3.0.7-4.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/audit-3.0.7-4.el8.src.rpm
```

### `rpm` package: `basesystem-11-5.el8.noarch`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url basesystem-11-5.el8.noarch
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/basesystem-11-5.el8.src.rpm
```

### `rpm` package: `bash-4.4.20-4.el8_6.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url bash-4.4.20-4.el8_6
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/bash-4.4.20-4.el8_6.src.rpm
```

### `rpm` package: `bind-export-libs-9.11.36-5.el8_7.2.x86_64`

Licenses (from `rpm --query`): MPLv2.0

Source:

```console
$ dnf --quiet download --source --url bind-export-libs-9.11.36-5.el8_7.2
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/bind-9.11.36-5.el8_7.2.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/bind-9.11.36-5.el8_7.2.src.rpm
```

### `rpm` package: `brotli-1.0.6-3.el8.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url brotli-1.0.6-3.el8
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/brotli-1.0.6-3.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/brotli-1.0.6-3.el8.src.rpm
```

### `rpm` package: `bzip2-libs-1.0.6-26.el8.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url bzip2-libs-1.0.6-26.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/bzip2-1.0.6-26.el8.src.rpm
```

### `rpm` package: `ca-certificates-2022.2.54-80.2.el8_6.noarch`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url ca-certificates-2022.2.54-80.2.el8_6.noarch
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/ca-certificates-2022.2.54-80.2.el8_6.src.rpm
```

### `rpm` package: `chkconfig-1.19.1-1.0.1.el8.x86_64`

Licenses (from `rpm --query`): GPLv2

Source:

```console
$ dnf --quiet download --source --url chkconfig-1.19.1-1.0.1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/chkconfig-1.19.1-1.0.1.el8.src.rpm
```

### `rpm` package: `coreutils-8.30-13.0.1.el8.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url coreutils-8.30-13.0.1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/coreutils-8.30-13.0.1.el8.src.rpm
```

### `rpm` package: `coreutils-common-8.30-13.0.1.el8.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url coreutils-common-8.30-13.0.1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/coreutils-8.30-13.0.1.el8.src.rpm
```

### `rpm` package: `cracklib-2.9.6-15.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url cracklib-2.9.6-15.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/cracklib-2.9.6-15.el8.src.rpm
```

### `rpm` package: `cracklib-dicts-2.9.6-15.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url cracklib-dicts-2.9.6-15.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/cracklib-2.9.6-15.el8.src.rpm
```

### `rpm` package: `crypto-policies-20211116-1.gitae470d6.el8.noarch`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url crypto-policies-20211116-1.gitae470d6.el8.noarch
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/crypto-policies-20211116-1.gitae470d6.el8.src.rpm
```

### `rpm` package: `cryptsetup-libs-2.3.7-2.el8.x86_64`

Licenses (from `rpm --query`): GPLv2+ and LGPLv2+

Source:

```console
$ dnf --quiet download --source --url cryptsetup-libs-2.3.7-2.el8
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/cryptsetup-2.3.7-2.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/cryptsetup-2.3.7-2.el8.src.rpm
```

### `rpm` package: `curl-7.61.1-25.el8_7.1.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url curl-7.61.1-25.el8_7.1
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/curl-7.61.1-25.el8_7.1.src.rpm
```

### `rpm` package: `cyrus-sasl-lib-2.1.27-6.el8_5.x86_64`

Licenses (from `rpm --query`): BSD with advertising

Source:

```console
$ dnf --quiet download --source --url cyrus-sasl-lib-2.1.27-6.el8_5
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/cyrus-sasl-2.1.27-6.el8_5.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/cyrus-sasl-2.1.27-6.el8_5.src.rpm
```

### `rpm` package: `cyrus-sasl-plain-2.1.27-6.el8_5.x86_64`

Licenses (from `rpm --query`): BSD with advertising

Source:

```console
$ dnf --quiet download --source --url cyrus-sasl-plain-2.1.27-6.el8_5
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/cyrus-sasl-2.1.27-6.el8_5.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/cyrus-sasl-2.1.27-6.el8_5.src.rpm
```

### `rpm` package: `dbus-1.12.8-23.0.1.el8_7.1.x86_64`

Licenses (from `rpm --query`): (GPLv2+ or AFL) and GPLv2+

Source:

```console
$ dnf --quiet download --source --url dbus-1.12.8-23.0.1.el8_7.1
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/dbus-1.12.8-23.0.1.el8_7.1.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/dbus-1.12.8-23.0.1.el8_7.1.src.rpm
```

### `rpm` package: `dbus-common-1.12.8-23.0.1.el8_7.1.noarch`

Licenses (from `rpm --query`): (GPLv2+ or AFL) and GPLv2+

Source:

```console
$ dnf --quiet download --source --url dbus-common-1.12.8-23.0.1.el8_7.1.noarch
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/dbus-1.12.8-23.0.1.el8_7.1.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/dbus-1.12.8-23.0.1.el8_7.1.src.rpm
```

### `rpm` package: `dbus-daemon-1.12.8-23.0.1.el8_7.1.x86_64`

Licenses (from `rpm --query`): (GPLv2+ or AFL) and GPLv2+

Source:

```console
$ dnf --quiet download --source --url dbus-daemon-1.12.8-23.0.1.el8_7.1
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/dbus-1.12.8-23.0.1.el8_7.1.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/dbus-1.12.8-23.0.1.el8_7.1.src.rpm
```

### `rpm` package: `dbus-glib-0.110-2.el8.x86_64`

Licenses (from `rpm --query`): AFL and GPLv2+

Source:

```console
$ dnf --quiet download --source --url dbus-glib-0.110-2.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/dbus-glib-0.110-2.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/dbus-glib-0.110-2.el8.src.rpm
```

### `rpm` package: `dbus-libs-1.12.8-23.0.1.el8_7.1.x86_64`

Licenses (from `rpm --query`): (GPLv2+ or AFL) and GPLv2+

Source:

```console
$ dnf --quiet download --source --url dbus-libs-1.12.8-23.0.1.el8_7.1
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/dbus-1.12.8-23.0.1.el8_7.1.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/dbus-1.12.8-23.0.1.el8_7.1.src.rpm
```

### `rpm` package: `dbus-tools-1.12.8-23.0.1.el8_7.1.x86_64`

Licenses (from `rpm --query`): (GPLv2+ or AFL) and GPLv2+

Source:

```console
$ dnf --quiet download --source --url dbus-tools-1.12.8-23.0.1.el8_7.1
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/dbus-1.12.8-23.0.1.el8_7.1.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/dbus-1.12.8-23.0.1.el8_7.1.src.rpm
```

### `rpm` package: `device-mapper-1.02.181-6.el8.x86_64`

Licenses (from `rpm --query`): GPLv2

Source:

```console
$ dnf --quiet download --source --url device-mapper-1.02.181-6.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/lvm2-2.03.14-6.el8.src.rpm
```

### `rpm` package: `device-mapper-libs-1.02.181-6.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2

Source:

```console
$ dnf --quiet download --source --url device-mapper-libs-1.02.181-6.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/lvm2-2.03.14-6.el8.src.rpm
```

### `rpm` package: `dhcp-client-4.3.6-48.el8_7.1.x86_64`

Licenses (from `rpm --query`): ISC

Source:

```console
$ dnf --quiet download --source --url dhcp-client-4.3.6-48.el8_7.1
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/dhcp-4.3.6-48.el8_7.1.src.rpm
```

### `rpm` package: `dhcp-common-4.3.6-48.el8_7.1.noarch`

Licenses (from `rpm --query`): ISC

Source:

```console
$ dnf --quiet download --source --url dhcp-common-4.3.6-48.el8_7.1.noarch
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/dhcp-4.3.6-48.el8_7.1.src.rpm
```

### `rpm` package: `dhcp-libs-4.3.6-48.el8_7.1.x86_64`

Licenses (from `rpm --query`): ISC

Source:

```console
$ dnf --quiet download --source --url dhcp-libs-4.3.6-48.el8_7.1
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/dhcp-4.3.6-48.el8_7.1.src.rpm
```

### `rpm` package: `diffutils-3.6-6.el8.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url diffutils-3.6-6.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/diffutils-3.6-6.el8.src.rpm
```

### `rpm` package: `dnf-4.7.0-11.0.1.el8.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url dnf-4.7.0-11.0.1.el8.noarch
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/dnf-4.7.0-11.0.1.el8.src.rpm
```

### `rpm` package: `dnf-data-4.7.0-11.0.1.el8.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url dnf-data-4.7.0-11.0.1.el8.noarch
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/dnf-4.7.0-11.0.1.el8.src.rpm
```

### `rpm` package: `dnf-plugins-core-4.0.21-14.1.0.1.el8.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url dnf-plugins-core-4.0.21-14.1.0.1.el8.noarch
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/dnf-plugins-core-4.0.21-14.1.0.1.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/dnf-plugins-core-4.0.21-14.1.0.1.el8.src.rpm
```

### `rpm` package: `elfutils-default-yama-scope-0.187-4.el8.noarch`

Licenses (from `rpm --query`): GPLv2+ or LGPLv3+

Source:

```console
$ dnf --quiet download --source --url elfutils-default-yama-scope-0.187-4.el8.noarch
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/elfutils-0.187-4.el8.src.rpm
```

### `rpm` package: `elfutils-libelf-0.187-4.el8.x86_64`

Licenses (from `rpm --query`): GPLv2+ or LGPLv3+

Source:

```console
$ dnf --quiet download --source --url elfutils-libelf-0.187-4.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/elfutils-0.187-4.el8.src.rpm
```

### `rpm` package: `elfutils-libs-0.187-4.el8.x86_64`

Licenses (from `rpm --query`): GPLv2+ or LGPLv3+

Source:

```console
$ dnf --quiet download --source --url elfutils-libs-0.187-4.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/elfutils-0.187-4.el8.src.rpm
```

### `rpm` package: `expat-2.2.5-10.0.1.el8_7.1.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url expat-2.2.5-10.0.1.el8_7.1
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/expat-2.2.5-10.0.1.el8_7.1.src.rpm
```

### `rpm` package: `file-libs-5.33-21.el8.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url file-libs-5.33-21.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/file-5.33-21.el8.src.rpm
```

### `rpm` package: `filesystem-3.8-6.el8.x86_64`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url filesystem-3.8-6.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/filesystem-3.8-6.el8.src.rpm
```

### `rpm` package: `findutils-4.6.0-20.el8.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url findutils-4.6.0-20.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/findutils-4.6.0-20.el8.src.rpm
```

### `rpm` package: `gawk-4.2.1-4.el8.x86_64`

Licenses (from `rpm --query`): GPLv3+ and GPLv2+ and LGPLv2+ and BSD

Source:

```console
$ dnf --quiet download --source --url gawk-4.2.1-4.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/gawk-4.2.1-4.el8.src.rpm
```

### `rpm` package: `gdbm-1.18-2.el8.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url gdbm-1.18-2.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/gdbm-1.18-2.el8.src.rpm
```

### `rpm` package: `gdbm-libs-1.18-2.el8.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url gdbm-libs-1.18-2.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/gdbm-1.18-2.el8.src.rpm
```

### `rpm` package: `glib2-2.56.4-159.0.1.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url glib2-2.56.4-159.0.1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/glib2-2.56.4-159.0.1.el8.src.rpm
```

### `rpm` package: `glibc-2.28-211.0.1.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and LGPLv2+ with exceptions and GPLv2+ and GPLv2+ with exceptions and BSD and Inner-Net and ISC and Public Domain and GFDL

Source:

```console
$ dnf --quiet download --source --url glibc-2.28-211.0.1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/glibc-2.28-211.0.1.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/glibc-2.28-211.0.1.el8.src.rpm
```

### `rpm` package: `glibc-common-2.28-211.0.1.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and LGPLv2+ with exceptions and GPLv2+ and GPLv2+ with exceptions and BSD and Inner-Net and ISC and Public Domain and GFDL

Source:

```console
$ dnf --quiet download --source --url glibc-common-2.28-211.0.1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/glibc-2.28-211.0.1.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/glibc-2.28-211.0.1.el8.src.rpm
```

### `rpm` package: `glibc-langpack-en-2.28-211.0.1.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and LGPLv2+ with exceptions and GPLv2+ and GPLv2+ with exceptions and BSD and Inner-Net and ISC and Public Domain and GFDL

Source:

```console
$ dnf --quiet download --source --url glibc-langpack-en-2.28-211.0.1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/glibc-2.28-211.0.1.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/glibc-2.28-211.0.1.el8.src.rpm
```

### `rpm` package: `gmp-6.1.2-10.el8.x86_64`

Licenses (from `rpm --query`): LGPLv3+ or GPLv2+

Source:

```console
$ dnf --quiet download --source --url gmp-6.1.2-10.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/gmp-6.1.2-10.el8.src.rpm
```

### `rpm` package: `gnupg2-2.2.20-3.el8_6.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url gnupg2-2.2.20-3.el8_6
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/gnupg2-2.2.20-3.el8_6.src.rpm
```

### `rpm` package: `gnutls-3.6.16-5.el8_6.x86_64`

Licenses (from `rpm --query`): GPLv3+ and LGPLv2+

Source:

```console
$ dnf --quiet download --source --url gnutls-3.6.16-5.el8_6
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/gnutls-3.6.16-5.el8_6.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/gnutls-3.6.16-5.el8_6.src.rpm
```

### `rpm` package: `gpg-pubkey-2f86d6a1-5cf7cefb`

Licenses (from `rpm --query`): pubkey

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `gpg-pubkey-8483c65d-5ccc5b19`

Licenses (from `rpm --query`): pubkey

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `gpg-pubkey-8507efa5-5b02c2fb`

Licenses (from `rpm --query`): pubkey

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `gpg-pubkey-ad986da3-5cabf60d`

Licenses (from `rpm --query`): pubkey

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `gpg-pubkey-cd2efd2a-4b26dda1`

Licenses (from `rpm --query`): pubkey

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `gpgme-1.13.1-11.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and GPLv3+

Source:

```console
$ dnf --quiet download --source --url gpgme-1.13.1-11.el8
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/gpgme-1.13.1-11.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/gpgme-1.13.1-11.el8.src.rpm
```

### `rpm` package: `grep-3.1-6.el8.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url grep-3.1-6.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/grep-3.1-6.el8.src.rpm
```

### `rpm` package: `gzip-1.9-13.el8_5.x86_64`

Licenses (from `rpm --query`): GPLv3+ and GFDL

Source:

```console
$ dnf --quiet download --source --url gzip-1.9-13.el8_5
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/gzip-1.9-13.el8_5.src.rpm
```

### `rpm` package: `ima-evm-utils-1.3.2-12.el8.x86_64`

Licenses (from `rpm --query`): GPLv2

Source:

```console
$ dnf --quiet download --source --url ima-evm-utils-1.3.2-12.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/ima-evm-utils-1.3.2-12.el8.src.rpm
```

### `rpm` package: `info-6.5-7.el8.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url info-6.5-7.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/texinfo-6.5-7.el8.src.rpm
```

### `rpm` package: `initscripts-10.00.18-1.el8.x86_64`

Licenses (from `rpm --query`): GPLv2

Source:

```console
$ dnf --quiet download --source --url initscripts-10.00.18-1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/initscripts-10.00.18-1.el8.src.rpm
```

### `rpm` package: `ipcalc-0.2.4-4.el8.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url ipcalc-0.2.4-4.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/ipcalc-0.2.4-4.el8.src.rpm
```

### `rpm` package: `iproute-5.18.0-1.el8.x86_64`

Licenses (from `rpm --query`): GPLv2+ and Public Domain

Source:

```console
$ dnf --quiet download --source --url iproute-5.18.0-1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/iproute-5.18.0-1.el8.src.rpm
```

### `rpm` package: `iputils-20180629-10.el8.x86_64`

Licenses (from `rpm --query`): BSD and GPLv2+

Source:

```console
$ dnf --quiet download --source --url iputils-20180629-10.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/iputils-20180629-10.el8.src.rpm
```

### `rpm` package: `jq-1.6-3.el8.x86_64`

Licenses (from `rpm --query`): MIT and ASL 2.0 and CC-BY and GPLv3

Source:

```console
$ dnf --quiet download --source --url jq-1.6-3.el8
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/jq-1.6-3.el8.src.rpm
```

### `rpm` package: `json-c-0.13.1-3.el8.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url json-c-0.13.1-3.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/json-c-0.13.1-3.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/json-c-0.13.1-3.el8.src.rpm
```

### `rpm` package: `keyutils-libs-1.5.10-9.el8.x86_64`

Licenses (from `rpm --query`): GPLv2+ and LGPLv2+

Source:

```console
$ dnf --quiet download --source --url keyutils-libs-1.5.10-9.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/keyutils-1.5.10-9.el8.src.rpm
```

### `rpm` package: `kmod-libs-25-19.0.2.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url kmod-libs-25-19.0.2.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/kmod-25-19.0.2.el8.src.rpm
```

### `rpm` package: `krb5-libs-1.18.2-22.0.1.el8_7.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url krb5-libs-1.18.2-22.0.1.el8_7
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/krb5-1.18.2-22.0.1.el8_7.src.rpm
```

### `rpm` package: `libacl-2.2.53-1.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libacl-2.2.53-1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/acl-2.2.53-1.el8.src.rpm
```

### `rpm` package: `libarchive-3.3.3-4.el8.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url libarchive-3.3.3-4.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libarchive-3.3.3-4.el8.src.rpm
```

### `rpm` package: `libassuan-2.5.1-3.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and GPLv3+

Source:

```console
$ dnf --quiet download --source --url libassuan-2.5.1-3.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libassuan-2.5.1-3.el8.src.rpm
```

### `rpm` package: `libattr-2.4.48-3.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libattr-2.4.48-3.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/attr-2.4.48-3.el8.src.rpm
```

### `rpm` package: `libblkid-2.32.1-39.el8_7.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libblkid-2.32.1-39.el8_7
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/util-linux-2.32.1-39.el8_7.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/util-linux-2.32.1-39.el8_7.src.rpm
```

### `rpm` package: `libbpf-0.5.0-1.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2 or BSD

Source:

```console
$ dnf --quiet download --source --url libbpf-0.5.0-1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libbpf-0.5.0-1.el8.src.rpm
```

### `rpm` package: `libcap-2.48-4.el8.x86_64`

Licenses (from `rpm --query`): BSD or GPLv2

Source:

```console
$ dnf --quiet download --source --url libcap-2.48-4.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libcap-2.48-4.el8.src.rpm
```

### `rpm` package: `libcap-ng-0.7.11-1.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libcap-ng-0.7.11-1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libcap-ng-0.7.11-1.el8.src.rpm
```

### `rpm` package: `libcom_err-1.45.6-5.el8.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libcom_err-1.45.6-5.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/e2fsprogs-1.45.6-5.el8.src.rpm
```

### `rpm` package: `libcomps-0.1.18-1.el8.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url libcomps-0.1.18-1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libcomps-0.1.18-1.el8.src.rpm
```

### `rpm` package: `libcurl-7.61.1-25.el8_7.1.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libcurl-7.61.1-25.el8_7.1
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/curl-7.61.1-25.el8_7.1.src.rpm
```

### `rpm` package: `libdb-5.3.28-42.el8_4.x86_64`

Licenses (from `rpm --query`): BSD and LGPLv2 and Sleepycat

Source:

```console
$ dnf --quiet download --source --url libdb-5.3.28-42.el8_4
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/libdb-5.3.28-42.el8_4.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libdb-5.3.28-42.el8_4.src.rpm
```

### `rpm` package: `libdb-utils-5.3.28-42.el8_4.x86_64`

Licenses (from `rpm --query`): BSD and LGPLv2 and Sleepycat

Source:

```console
$ dnf --quiet download --source --url libdb-utils-5.3.28-42.el8_4
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/libdb-5.3.28-42.el8_4.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libdb-5.3.28-42.el8_4.src.rpm
```

### `rpm` package: `libdnf-0.63.0-11.1.0.1.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libdnf-0.63.0-11.1.0.1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libdnf-0.63.0-11.1.0.1.el8.src.rpm
```

### `rpm` package: `libedit-3.1-23.20170329cvs.el8.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url libedit-3.1-23.20170329cvs.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libedit-3.1-23.20170329cvs.el8.src.rpm
```

### `rpm` package: `libestr-0.1.10-3.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libestr-0.1.10-3.el8
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/libestr-0.1.10-3.el8.src.rpm
```

### `rpm` package: `libfastjson-0.99.9-1.el8.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libfastjson-0.99.9-1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/libfastjson-0.99.9-1.el8.src.rpm
```

### `rpm` package: `libfdisk-2.32.1-39.el8_7.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libfdisk-2.32.1-39.el8_7
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/util-linux-2.32.1-39.el8_7.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/util-linux-2.32.1-39.el8_7.src.rpm
```

### `rpm` package: `libffi-3.1-23.el8.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libffi-3.1-23.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libffi-3.1-23.el8.src.rpm
```

### `rpm` package: `libgcc-8.5.0-16.0.1.el8_7.x86_64`

Licenses (from `rpm --query`): GPLv3+ and GPLv3+ with exceptions and GPLv2+ with exceptions and LGPLv2+ and BSD

Source:

```console
$ dnf --quiet download --source --url libgcc-8.5.0-16.0.1.el8_7
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/gcc-8.5.0-16.0.1.el8_7.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/gcc-8.5.0-16.0.1.el8_7.src.rpm
```

### `rpm` package: `libgcrypt-1.8.5-7.el8_6.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libgcrypt-1.8.5-7.el8_6
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libgcrypt-1.8.5-7.el8_6.src.rpm
```

### `rpm` package: `libgpg-error-1.31-1.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libgpg-error-1.31-1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libgpg-error-1.31-1.el8.src.rpm
```

### `rpm` package: `libidn2-2.2.0-1.el8.x86_64`

Licenses (from `rpm --query`): (GPLv2+ or LGPLv3+) and GPLv3+

Source:

```console
$ dnf --quiet download --source --url libidn2-2.2.0-1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/libidn2-2.2.0-1.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libidn2-2.2.0-1.el8.src.rpm
```

### `rpm` package: `libksba-1.3.5-8.el8_6.x86_64`

Licenses (from `rpm --query`): (LGPLv3+ or GPLv2+) and GPLv3+

Source:

```console
$ dnf --quiet download --source --url libksba-1.3.5-8.el8_6
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libksba-1.3.5-8.el8_6.src.rpm
```

### `rpm` package: `libmnl-1.0.4-6.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libmnl-1.0.4-6.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libmnl-1.0.4-6.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/libmnl-1.0.4-6.el8.src.rpm
```

### `rpm` package: `libmodulemd-2.13.0-1.el8.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libmodulemd-2.13.0-1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/libmodulemd-2.13.0-1.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libmodulemd-2.13.0-1.el8.src.rpm
```

### `rpm` package: `libmount-2.32.1-39.el8_7.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libmount-2.32.1-39.el8_7
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/util-linux-2.32.1-39.el8_7.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/util-linux-2.32.1-39.el8_7.src.rpm
```

### `rpm` package: `libnghttp2-1.33.0-3.el8_2.1.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libnghttp2-1.33.0-3.el8_2.1
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/nghttp2-1.33.0-3.el8_2.1.src.rpm
```

### `rpm` package: `libnsl2-1.2.0-2.20180605git4a062cf.el8.x86_64`

Licenses (from `rpm --query`): BSD and LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libnsl2-1.2.0-2.20180605git4a062cf.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libnsl2-1.2.0-2.20180605git4a062cf.el8.src.rpm
```

### `rpm` package: `libpsl-0.20.2-6.el8.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libpsl-0.20.2-6.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libpsl-0.20.2-6.el8.src.rpm
```

### `rpm` package: `libpwquality-1.4.4-5.el8.x86_64`

Licenses (from `rpm --query`): BSD or GPLv2+

Source:

```console
$ dnf --quiet download --source --url libpwquality-1.4.4-5.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libpwquality-1.4.4-5.el8.src.rpm
```

### `rpm` package: `librepo-1.14.2-3.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url librepo-1.14.2-3.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/librepo-1.14.2-3.el8.src.rpm
```

### `rpm` package: `libreport-filesystem-2.9.5-15.0.3.el8.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url libreport-filesystem-2.9.5-15.0.3.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libreport-2.9.5-15.0.3.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/libreport-2.9.5-15.0.3.el8.src.rpm
```

### `rpm` package: `libseccomp-2.5.2-1.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2

Source:

```console
$ dnf --quiet download --source --url libseccomp-2.5.2-1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/libseccomp-2.5.2-1.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libseccomp-2.5.2-1.el8.src.rpm
```

### `rpm` package: `libselinux-2.9-6.el8.x86_64`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url libselinux-2.9-6.el8
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/libselinux-2.9-6.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libselinux-2.9-6.el8.src.rpm
```

### `rpm` package: `libselinux-utils-2.9-6.el8.x86_64`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url libselinux-utils-2.9-6.el8
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/libselinux-2.9-6.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libselinux-2.9-6.el8.src.rpm
```

### `rpm` package: `libsemanage-2.9-9.el8_6.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libsemanage-2.9-9.el8_6
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libsemanage-2.9-9.el8_6.src.rpm
```

### `rpm` package: `libsepol-2.9-3.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libsepol-2.9-3.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libsepol-2.9-3.el8.src.rpm
```

### `rpm` package: `libsigsegv-2.11-5.el8.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url libsigsegv-2.11-5.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libsigsegv-2.11-5.el8.src.rpm
```

### `rpm` package: `libsmartcols-2.32.1-39.el8_7.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libsmartcols-2.32.1-39.el8_7
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/util-linux-2.32.1-39.el8_7.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/util-linux-2.32.1-39.el8_7.src.rpm
```

### `rpm` package: `libsolv-0.7.20-4.el8_7.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url libsolv-0.7.20-4.el8_7
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libsolv-0.7.20-4.el8_7.src.rpm
```

### `rpm` package: `libssh-0.9.6-3.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libssh-0.9.6-3.el8
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/libssh-0.9.6-3.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libssh-0.9.6-3.el8.src.rpm
```

### `rpm` package: `libssh-config-0.9.6-3.el8.noarch`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libssh-config-0.9.6-3.el8.noarch
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/libssh-0.9.6-3.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libssh-0.9.6-3.el8.src.rpm
```

### `rpm` package: `libstdc++-8.5.0-16.0.1.el8_7.x86_64`

Licenses (from `rpm --query`): GPLv3+ and GPLv3+ with exceptions and GPLv2+ with exceptions and LGPLv2+ and BSD

Source:

```console
$ dnf --quiet download --source --url libstdc++-8.5.0-16.0.1.el8_7
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/gcc-8.5.0-16.0.1.el8_7.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/gcc-8.5.0-16.0.1.el8_7.src.rpm
```

### `rpm` package: `libtasn1-4.13-4.el8_7.x86_64`

Licenses (from `rpm --query`): GPLv3+ and LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libtasn1-4.13-4.el8_7
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/libtasn1-4.13-4.el8_7.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libtasn1-4.13-4.el8_7.src.rpm
```

### `rpm` package: `libtirpc-1.1.4-8.el8.x86_64`

Licenses (from `rpm --query`): SISSL and BSD

Source:

```console
$ dnf --quiet download --source --url libtirpc-1.1.4-8.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libtirpc-1.1.4-8.el8.src.rpm
```

### `rpm` package: `libunistring-0.9.9-3.el8.x86_64`

Licenses (from `rpm --query`): GPLv2+ or LGPLv3+

Source:

```console
$ dnf --quiet download --source --url libunistring-0.9.9-3.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libunistring-0.9.9-3.el8.src.rpm
```

### `rpm` package: `libusbx-1.0.23-4.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libusbx-1.0.23-4.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libusbx-1.0.23-4.el8.src.rpm
```

### `rpm` package: `libuser-0.62-24.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libuser-0.62-24.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libuser-0.62-24.el8.src.rpm
```

### `rpm` package: `libutempter-1.1.6-14.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libutempter-1.1.6-14.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libutempter-1.1.6-14.el8.src.rpm
```

### `rpm` package: `libuuid-2.32.1-39.el8_7.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url libuuid-2.32.1-39.el8_7
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/util-linux-2.32.1-39.el8_7.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/util-linux-2.32.1-39.el8_7.src.rpm
```

### `rpm` package: `libverto-0.3.2-2.el8.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libverto-0.3.2-2.el8
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/libverto-0.3.2-2.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libverto-0.3.2-2.el8.src.rpm
```

### `rpm` package: `libxcrypt-4.1.1-6.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and BSD and Public Domain

Source:

```console
$ dnf --quiet download --source --url libxcrypt-4.1.1-6.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libxcrypt-4.1.1-6.el8.src.rpm
```

### `rpm` package: `libxml2-2.9.7-15.el8_7.1.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libxml2-2.9.7-15.el8_7.1
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libxml2-2.9.7-15.el8_7.1.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/libxml2-2.9.7-15.el8_7.1.src.rpm
```

### `rpm` package: `libyaml-0.1.7-5.el8.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libyaml-0.1.7-5.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libyaml-0.1.7-5.el8.src.rpm
```

### `rpm` package: `libzstd-1.4.4-1.0.1.el8.x86_64`

Licenses (from `rpm --query`): BSD and GPLv2

Source:

```console
$ dnf --quiet download --source --url libzstd-1.4.4-1.0.1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/zstd-1.4.4-1.0.1.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/zstd-1.4.4-1.0.1.el8.src.rpm
```

### `rpm` package: `logrotate-3.14.0-4.el8.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url logrotate-3.14.0-4.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/logrotate-3.14.0-4.el8.src.rpm
```

### `rpm` package: `lua-libs-5.3.4-12.el8.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url lua-libs-5.3.4-12.el8
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/lua-5.3.4-12.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/lua-5.3.4-12.el8.src.rpm
```

### `rpm` package: `lz4-libs-1.8.3-3.el8_4.x86_64`

Licenses (from `rpm --query`): GPLv2+ and BSD

Source:

```console
$ dnf --quiet download --source --url lz4-libs-1.8.3-3.el8_4
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/lz4-1.8.3-3.el8_4.src.rpm
```

### `rpm` package: `mpfr-3.1.6-1.el8.x86_64`

Licenses (from `rpm --query`): LGPLv3+ and GPLv3+ and GFDL

Source:

```console
$ dnf --quiet download --source --url mpfr-3.1.6-1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/mpfr-3.1.6-1.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/mpfr-3.1.6-1.el8.src.rpm
```

### `rpm` package: `ncurses-6.1-9.20180224.el8.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url ncurses-6.1-9.20180224.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/ncurses-6.1-9.20180224.el8.src.rpm
```

### `rpm` package: `ncurses-base-6.1-9.20180224.el8.noarch`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url ncurses-base-6.1-9.20180224.el8.noarch
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/ncurses-6.1-9.20180224.el8.src.rpm
```

### `rpm` package: `ncurses-libs-6.1-9.20180224.el8.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url ncurses-libs-6.1-9.20180224.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/ncurses-6.1-9.20180224.el8.src.rpm
```

### `rpm` package: `nettle-3.4.1-7.el8.x86_64`

Licenses (from `rpm --query`): LGPLv3+ or GPLv2+

Source:

```console
$ dnf --quiet download --source --url nettle-3.4.1-7.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/nettle-3.4.1-7.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/nettle-3.4.1-7.el8.src.rpm
```

### `rpm` package: `npth-1.5-4.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url npth-1.5-4.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/npth-1.5-4.el8.src.rpm
```

### `rpm` package: `oniguruma-6.8.2-2.el8.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url oniguruma-6.8.2-2.el8
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/oniguruma-6.8.2-2.el8.src.rpm
```

### `rpm` package: `openldap-2.4.46-18.el8.x86_64`

Licenses (from `rpm --query`): OpenLDAP

Source:

```console
$ dnf --quiet download --source --url openldap-2.4.46-18.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/openldap-2.4.46-18.el8.src.rpm
```

### `rpm` package: `openssh-8.0p1-16.el8.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url openssh-8.0p1-16.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/openssh-8.0p1-16.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/openssh-8.0p1-16.el8.src.rpm
```

### `rpm` package: `openssh-clients-8.0p1-16.el8.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url openssh-clients-8.0p1-16.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/openssh-8.0p1-16.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/openssh-8.0p1-16.el8.src.rpm
```

### `rpm` package: `openssh-server-8.0p1-16.el8.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url openssh-server-8.0p1-16.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/openssh-8.0p1-16.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/openssh-8.0p1-16.el8.src.rpm
```

### `rpm` package: `openssl-libs-1.1.1k-7.el8_6.x86_64`

Licenses (from `rpm --query`): OpenSSL and ASL 2.0

Source:

```console
$ dnf --quiet download --source --url openssl-libs-1.1.1k-7.el8_6
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/openssl-1.1.1k-7.el8_6.src.rpm
```

### `rpm` package: `oraclelinux-release-8.7-1.0.6.el8.x86_64`

Licenses (from `rpm --query`): GPL

Source:

```console
$ dnf --quiet download --source --url oraclelinux-release-8.7-1.0.6.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/oraclelinux-release-8.7-1.0.6.el8.src.rpm
```

### `rpm` package: `oraclelinux-release-el8-1.0-28.el8.x86_64`

Licenses (from `rpm --query`): GPLv2

Source:

```console
$ dnf --quiet download --source --url oraclelinux-release-el8-1.0-28.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/oraclelinux-release-el8-1.0-28.el8.src.rpm
```

### `rpm` package: `p11-kit-0.23.22-1.el8.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url p11-kit-0.23.22-1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/p11-kit-0.23.22-1.el8.src.rpm
```

### `rpm` package: `p11-kit-trust-0.23.22-1.el8.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url p11-kit-trust-0.23.22-1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/p11-kit-0.23.22-1.el8.src.rpm
```

### `rpm` package: `pam-1.3.1-22.el8.x86_64`

Licenses (from `rpm --query`): BSD and GPLv2+

Source:

```console
$ dnf --quiet download --source --url pam-1.3.1-22.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/pam-1.3.1-22.el8.src.rpm
```

### `rpm` package: `passwd-0.80-4.el8.x86_64`

Licenses (from `rpm --query`): BSD or GPL+

Source:

```console
$ dnf --quiet download --source --url passwd-0.80-4.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/passwd-0.80-4.el8.src.rpm
```

### `rpm` package: `pcre-8.42-6.el8.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url pcre-8.42-6.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/pcre-8.42-6.el8.src.rpm
```

### `rpm` package: `pcre2-10.32-3.el8_6.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url pcre2-10.32-3.el8_6
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/pcre2-10.32-3.el8_6.src.rpm
```

### `rpm` package: `percona-release-1.0-27.noarch`

Licenses (from `rpm --query`): GPL-3.0+

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `percona-server-mongodb-mongos-4.2.21-21.el8.x86_64`

Licenses (from `rpm --query`): SSPL

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `percona-server-mongodb-server-4.2.21-21.el8.x86_64`

Licenses (from `rpm --query`): SSPL

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `percona-server-mongodb-shell-4.2.21-21.el8.x86_64`

Licenses (from `rpm --query`): SSPL

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `platform-python-3.6.8-48.0.1.el8_7.x86_64`

Licenses (from `rpm --query`): Python

Source:

```console
$ dnf --quiet download --source --url platform-python-3.6.8-48.0.1.el8_7
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/python3-3.6.8-48.0.1.el8_7.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/python3-3.6.8-48.0.1.el8_7.src.rpm
```

### `rpm` package: `platform-python-setuptools-39.2.0-6.el8.noarch`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url platform-python-setuptools-39.2.0-6.el8.noarch
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/python-setuptools-39.2.0-6.el8.src.rpm
```

### `rpm` package: `policycoreutils-2.9-20.0.1.el8.x86_64`

Licenses (from `rpm --query`): GPLv2

Source:

```console
$ dnf --quiet download --source --url policycoreutils-2.9-20.0.1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/policycoreutils-2.9-20.0.1.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/policycoreutils-2.9-20.0.1.el8.src.rpm
```

### `rpm` package: `popt-1.18-1.el8.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url popt-1.18-1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/popt-1.18-1.el8.src.rpm
```

### `rpm` package: `procps-ng-3.3.15-9.0.1.el8.x86_64`

Licenses (from `rpm --query`): GPL+ and GPLv2 and GPLv2+ and GPLv3+ and LGPLv2+

Source:

```console
$ dnf --quiet download --source --url procps-ng-3.3.15-9.0.1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/procps-ng-3.3.15-9.0.1.el8.src.rpm
```

### `rpm` package: `psmisc-23.1-5.el8.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url psmisc-23.1-5.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/psmisc-23.1-5.el8.src.rpm
```

### `rpm` package: `publicsuffix-list-dafsa-20180723-1.el8.noarch`

Licenses (from `rpm --query`): MPLv2.0

Source:

```console
$ dnf --quiet download --source --url publicsuffix-list-dafsa-20180723-1.el8.noarch
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/publicsuffix-list-20180723-1.el8.src.rpm
```

### `rpm` package: `python3-dateutil-2.6.1-6.el8.noarch`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url python3-dateutil-2.6.1-6.el8.noarch
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/python-dateutil-2.6.1-6.el8.src.rpm
```

### `rpm` package: `python3-dbus-1.2.4-15.el8.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url python3-dbus-1.2.4-15.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/dbus-python-1.2.4-15.el8.src.rpm
```

### `rpm` package: `python3-dnf-4.7.0-11.0.1.el8.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url python3-dnf-4.7.0-11.0.1.el8.noarch
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/dnf-4.7.0-11.0.1.el8.src.rpm
```

### `rpm` package: `python3-dnf-plugins-core-4.0.21-14.1.0.1.el8.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url python3-dnf-plugins-core-4.0.21-14.1.0.1.el8.noarch
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/dnf-plugins-core-4.0.21-14.1.0.1.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/dnf-plugins-core-4.0.21-14.1.0.1.el8.src.rpm
```

### `rpm` package: `python3-gpg-1.13.1-11.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and GPLv3+

Source:

```console
$ dnf --quiet download --source --url python3-gpg-1.13.1-11.el8
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/gpgme-1.13.1-11.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/gpgme-1.13.1-11.el8.src.rpm
```

### `rpm` package: `python3-hawkey-0.63.0-11.1.0.1.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url python3-hawkey-0.63.0-11.1.0.1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libdnf-0.63.0-11.1.0.1.el8.src.rpm
```

### `rpm` package: `python3-libcomps-0.1.18-1.el8.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url python3-libcomps-0.1.18-1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libcomps-0.1.18-1.el8.src.rpm
```

### `rpm` package: `python3-libdnf-0.63.0-11.1.0.1.el8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url python3-libdnf-0.63.0-11.1.0.1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/libdnf-0.63.0-11.1.0.1.el8.src.rpm
```

### `rpm` package: `python3-libs-3.6.8-48.0.1.el8_7.x86_64`

Licenses (from `rpm --query`): Python

Source:

```console
$ dnf --quiet download --source --url python3-libs-3.6.8-48.0.1.el8_7
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/python3-3.6.8-48.0.1.el8_7.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/python3-3.6.8-48.0.1.el8_7.src.rpm
```

### `rpm` package: `python3-pip-wheel-9.0.3-22.el8.noarch`

Licenses (from `rpm --query`): MIT and Python and ASL 2.0 and BSD and ISC and LGPLv2 and MPLv2.0 and (ASL 2.0 or BSD)

Source:

```console
$ dnf --quiet download --source --url python3-pip-wheel-9.0.3-22.el8.noarch
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/python-pip-9.0.3-22.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/python-pip-9.0.3-22.el8.src.rpm
```

### `rpm` package: `python3-rpm-4.14.3-24.el8_7.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url python3-rpm-4.14.3-24.el8_7
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/rpm-4.14.3-24.el8_7.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/rpm-4.14.3-24.el8_7.src.rpm
```

### `rpm` package: `python3-setuptools-wheel-39.2.0-6.el8.noarch`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url python3-setuptools-wheel-39.2.0-6.el8.noarch
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/python-setuptools-39.2.0-6.el8.src.rpm
```

### `rpm` package: `python3-six-1.11.0-8.el8.noarch`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url python3-six-1.11.0-8.el8.noarch
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/python-six-1.11.0-8.el8.src.rpm
```

### `rpm` package: `readline-7.0-10.el8.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url readline-7.0-10.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/readline-7.0-10.el8.src.rpm
```

### `rpm` package: `redhat-release-8.7-0.3.0.1.el8.x86_64`

Licenses (from `rpm --query`): GPLv2

Source:

```console
$ dnf --quiet download --source --url redhat-release-8.7-0.3.0.1.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/redhat-release-8.7-0.3.0.1.el8.src.rpm
```

### `rpm` package: `rootfiles-8.1-22.el8.noarch`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url rootfiles-8.1-22.el8.noarch
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/rootfiles-8.1-22.el8.src.rpm
```

### `rpm` package: `rpm-4.14.3-24.el8_7.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url rpm-4.14.3-24.el8_7
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/rpm-4.14.3-24.el8_7.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/rpm-4.14.3-24.el8_7.src.rpm
```

### `rpm` package: `rpm-build-libs-4.14.3-24.el8_7.x86_64`

Licenses (from `rpm --query`): GPLv2+ and LGPLv2+ with exceptions

Source:

```console
$ dnf --quiet download --source --url rpm-build-libs-4.14.3-24.el8_7
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/rpm-4.14.3-24.el8_7.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/rpm-4.14.3-24.el8_7.src.rpm
```

### `rpm` package: `rpm-libs-4.14.3-24.el8_7.x86_64`

Licenses (from `rpm --query`): GPLv2+ and LGPLv2+ with exceptions

Source:

```console
$ dnf --quiet download --source --url rpm-libs-4.14.3-24.el8_7
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/rpm-4.14.3-24.el8_7.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/rpm-4.14.3-24.el8_7.src.rpm
```

### `rpm` package: `rsyslog-8.2102.0-10.el8.x86_64`

Licenses (from `rpm --query`): (GPLv3+ and ASL 2.0)

Source:

```console
$ dnf --quiet download --source --url rsyslog-8.2102.0-10.el8
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/rsyslog-8.2102.0-10.el8.src.rpm
```

### `rpm` package: `sed-4.5-5.el8.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url sed-4.5-5.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/sed-4.5-5.el8.src.rpm
```

### `rpm` package: `setup-2.12.2-7.el8.noarch`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url setup-2.12.2-7.el8.noarch
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/setup-2.12.2-7.el8.src.rpm
```

### `rpm` package: `shadow-utils-4.6-17.el8.x86_64`

Licenses (from `rpm --query`): BSD and GPLv2+

Source:

```console
$ dnf --quiet download --source --url shadow-utils-4.6-17.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/shadow-utils-4.6-17.el8.src.rpm
```

### `rpm` package: `sqlite-libs-3.26.0-17.el8_7.x86_64`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url sqlite-libs-3.26.0-17.el8_7
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/sqlite-3.26.0-17.el8_7.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/sqlite-3.26.0-17.el8_7.src.rpm
```

### `rpm` package: `systemd-239-68.0.2.el8_7.2.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and MIT and GPLv2+

Source:

```console
$ dnf --quiet download --source --url systemd-239-68.0.2.el8_7.2
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/systemd-239-68.0.2.el8_7.2.src.rpm
```

### `rpm` package: `systemd-libs-239-68.0.2.el8_7.2.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and MIT

Source:

```console
$ dnf --quiet download --source --url systemd-libs-239-68.0.2.el8_7.2
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/systemd-239-68.0.2.el8_7.2.src.rpm
```

### `rpm` package: `systemd-pam-239-68.0.2.el8_7.2.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and MIT and GPLv2+

Source:

```console
$ dnf --quiet download --source --url systemd-pam-239-68.0.2.el8_7.2
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/systemd-239-68.0.2.el8_7.2.src.rpm
```

### `rpm` package: `tar-1.30-6.el8.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url tar-1.30-6.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/tar-1.30-6.el8.src.rpm
```

### `rpm` package: `tpm2-tss-2.3.2-4.el8.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url tpm2-tss-2.3.2-4.el8
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/tpm2-tss-2.3.2-4.el8.src.rpm
```

### `rpm` package: `tzdata-2022g-1.el8.noarch`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url tzdata-2022g-1.el8.noarch
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/tzdata-2022g-1.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/tzdata-2022g-1.el8.src.rpm
```

### `rpm` package: `util-linux-2.32.1-39.el8_7.x86_64`

Licenses (from `rpm --query`): GPLv2 and GPLv2+ and LGPLv2+ and BSD with advertising and Public Domain

Source:

```console
$ dnf --quiet download --source --url util-linux-2.32.1-39.el8_7
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/util-linux-2.32.1-39.el8_7.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/util-linux-2.32.1-39.el8_7.src.rpm
```

### `rpm` package: `vim-minimal-8.0.1763-19.0.1.el8_6.4.x86_64`

Licenses (from `rpm --query`): Vim and MIT

Source:

```console
$ dnf --quiet download --source --url vim-minimal-8.0.1763-19.0.1.el8_6.4
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/vim-8.0.1763-19.0.1.el8_6.4.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/vim-8.0.1763-19.0.1.el8_6.4.src.rpm
```

### `rpm` package: `xz-libs-5.2.4-4.el8_6.x86_64`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url xz-libs-5.2.4-4.el8_6
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/xz-5.2.4-4.el8_6.src.rpm
```

### `rpm` package: `yum-4.7.0-11.0.1.el8.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url yum-4.7.0-11.0.1.el8.noarch
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/dnf-4.7.0-11.0.1.el8.src.rpm
```

### `rpm` package: `yum-utils-4.0.21-14.1.0.1.el8.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url yum-utils-4.0.21-14.1.0.1.el8.noarch
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/dnf-plugins-core-4.0.21-14.1.0.1.el8.src.rpm
https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackageSource/dnf-plugins-core-4.0.21-14.1.0.1.el8.src.rpm
```

### `rpm` package: `zlib-1.2.11-21.el8_7.x86_64`

Licenses (from `rpm --query`): zlib and Boost

Source:

```console
$ dnf --quiet download --source --url zlib-1.2.11-21.el8_7
https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/x86_64/getPackageSource/zlib-1.2.11-21.el8_7.src.rpm
```
