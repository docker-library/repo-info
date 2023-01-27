# `influxdb:2.4-alpine`

## Docker Metadata

- Image ID: `sha256:163f83b4e78480834ba7ca1a67f22aecbbe4eda0b5f826e185334d4d00ad13ef`
- Created: `2022-10-06T22:42:24.10992107Z`
- Virtual Size: ~ 346.77 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/entrypoint.sh"]`
- Command: `["influxd"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `INFLUXDB_VERSION=2.4.0`
  - `INFLUX_CLI_VERSION=2.4.0`
  - `INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs`
  - `INFLUXD_INIT_PORT=9999`
  - `INFLUXD_INIT_PING_ATTEMPTS=600`
  - `DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default`

## `apk` (`.apk`-based packages)

### `apk` package: `alpine-baselayout`

```console
alpine-baselayout-3.2.0-r16 description:
Alpine base dir structure and init scripts

alpine-baselayout-3.2.0-r16 webpage:
https://git.alpinelinux.org/cgit/aports/tree/main/alpine-baselayout

alpine-baselayout-3.2.0-r16 installed size:
404 KiB

alpine-baselayout-3.2.0-r16 license:
GPL-2.0-only

```

### `apk` package: `alpine-keys`

```console
alpine-keys-2.4-r0 description:
Public keys for Alpine Linux packages

alpine-keys-2.4-r0 webpage:
https://alpinelinux.org

alpine-keys-2.4-r0 installed size:
156 KiB

alpine-keys-2.4-r0 license:
MIT

```

### `apk` package: `apk-tools`

```console
apk-tools-2.12.7-r0 description:
Alpine Package Keeper - package manager for alpine

apk-tools-2.12.7-r0 webpage:
https://gitlab.alpinelinux.org/alpine/apk-tools

apk-tools-2.12.7-r0 installed size:
304 KiB

apk-tools-2.12.7-r0 license:
GPL-2.0-only

```

### `apk` package: `bash`

```console
bash-5.1.16-r0 description:
The GNU Bourne Again shell

bash-5.1.16-r0 webpage:
https://www.gnu.org/software/bash/bash.html

bash-5.1.16-r0 installed size:
1296 KiB

bash-5.1.16-r0 license:
GPL-3.0-or-later

```

### `apk` package: `busybox`

```console
busybox-1.33.1-r8 description:
Size optimized toolbox of many common UNIX utilities

busybox-1.33.1-r8 webpage:
https://busybox.net/

busybox-1.33.1-r8 installed size:
928 KiB

busybox-1.33.1-r8 license:
GPL-2.0-only

```

### `apk` package: `ca-certificates`

```console
ca-certificates-20220614-r0 description:
Common CA certificates PEM files from Mozilla

ca-certificates-20220614-r0 webpage:
https://www.mozilla.org/en-US/about/governance/policies/security-group/certs/

ca-certificates-20220614-r0 installed size:
684 KiB

ca-certificates-20220614-r0 license:
MPL-2.0 AND MIT

```

### `apk` package: `ca-certificates-bundle`

```console
ca-certificates-bundle-20220614-r0 description:
Pre generated bundle of Mozilla certificates

ca-certificates-bundle-20220614-r0 webpage:
https://www.mozilla.org/en-US/about/governance/policies/security-group/certs/

ca-certificates-bundle-20220614-r0 installed size:
228 KiB

ca-certificates-bundle-20220614-r0 license:
MPL-2.0 AND MIT

```

### `apk` package: `gdbm`

```console
gdbm-1.19-r0 description:
GNU dbm is a set of database routines that use extensible hashing

gdbm-1.19-r0 webpage:
https://www.gnu.org/software/gdbm/

gdbm-1.19-r0 installed size:
224 KiB

gdbm-1.19-r0 license:
GPL-3.0-or-later

```

### `apk` package: `glib`

```console
glib-2.68.3-r0 description:
Common C routines used by Gtk+ and other libs

glib-2.68.3-r0 webpage:
https://developer.gnome.org/glib/

glib-2.68.3-r0 installed size:
3352 KiB

glib-2.68.3-r0 license:
LGPL-2.1-or-later

```

### `apk` package: `gmp`

```console
gmp-6.2.1-r1 description:
free library for arbitrary precision arithmetic

gmp-6.2.1-r1 webpage:
https://gmplib.org/

gmp-6.2.1-r1 installed size:
420 KiB

gmp-6.2.1-r1 license:
LGPL-3.0-or-later OR GPL-2.0-or-later

```

### `apk` package: `gnupg`

```console
gnupg-2.2.31-r1 description:
GNU Privacy Guard 2 - a PGP replacement tool

gnupg-2.2.31-r1 webpage:
https://www.gnupg.org/

gnupg-2.2.31-r1 installed size:
4496 KiB

gnupg-2.2.31-r1 license:
GPL-3.0-or-later

```

### `apk` package: `gnutls`

```console
gnutls-3.7.1-r1 description:
TLS protocol implementation

gnutls-3.7.1-r1 webpage:
https://www.gnutls.org/

gnutls-3.7.1-r1 installed size:
1848 KiB

gnutls-3.7.1-r1 license:
LGPL-2.1-or-later

```

### `apk` package: `libassuan`

```console
libassuan-2.5.5-r0 description:
IPC library used by some GnuPG related software

libassuan-2.5.5-r0 webpage:
https://www.gnupg.org/software/libassuan/index.html

libassuan-2.5.5-r0 installed size:
88 KiB

libassuan-2.5.5-r0 license:
LGPL-2.1-or-later

```

### `apk` package: `libblkid`

```console
libblkid-2.37.4-r0 description:
Block device identification library from util-linux

libblkid-2.37.4-r0 webpage:
https://git.kernel.org/cgit/utils/util-linux/util-linux.git

libblkid-2.37.4-r0 installed size:
300 KiB

libblkid-2.37.4-r0 license:
GPL-3.0-or-later AND GPL-2.0-or-later AND GPL-2.0-only AND

```

### `apk` package: `libbz2`

```console
libbz2-1.0.8-r1 description:
Shared library for bz2

libbz2-1.0.8-r1 webpage:
http://sources.redhat.com/bzip2

libbz2-1.0.8-r1 installed size:
72 KiB

libbz2-1.0.8-r1 license:
bzip2-1.0.6

```

### `apk` package: `libc-utils`

```console
libc-utils-0.7.2-r3 description:
Meta package to pull in correct libc

libc-utils-0.7.2-r3 webpage:
https://alpinelinux.org

libc-utils-0.7.2-r3 installed size:
4096 B

libc-utils-0.7.2-r3 license:
BSD-2-Clause AND BSD-3-Clause

```

### `apk` package: `libcap`

```console
libcap-2.50-r0 description:
POSIX 1003.1e capabilities

libcap-2.50-r0 webpage:
https://sites.google.com/site/fullycapable/

libcap-2.50-r0 installed size:
168 KiB

libcap-2.50-r0 license:
BSD-3-Clause OR GPL-2.0-only

```

### `apk` package: `libcrypto1.1`

```console
libcrypto1.1-1.1.1q-r0 description:
Crypto library from openssl

libcrypto1.1-1.1.1q-r0 webpage:
https://www.openssl.org/

libcrypto1.1-1.1.1q-r0 installed size:
2704 KiB

libcrypto1.1-1.1.1q-r0 license:
OpenSSL

```

### `apk` package: `libffi`

```console
libffi-3.3-r2 description:
A portable, high level programming interface to various calling conventions.

libffi-3.3-r2 webpage:
https://sourceware.org/libffi

libffi-3.3-r2 installed size:
52 KiB

libffi-3.3-r2 license:
MIT

```

### `apk` package: `libgcrypt`

```console
libgcrypt-1.9.4-r0 description:
General purpose crypto library based on the code used in GnuPG

libgcrypt-1.9.4-r0 webpage:
https://www.gnupg.org/

libgcrypt-1.9.4-r0 installed size:
1220 KiB

libgcrypt-1.9.4-r0 license:
LGPL-2.1-or-later

```

### `apk` package: `libgpg-error`

```console
libgpg-error-1.42-r0 description:
Support library for libgcrypt

libgpg-error-1.42-r0 webpage:
https://www.gnupg.org/

libgpg-error-1.42-r0 installed size:
212 KiB

libgpg-error-1.42-r0 license:
GPL-2.0-or-later LGPL-2.1-or-later

```

### `apk` package: `libintl`

```console
libintl-0.21-r0 description:
GNU gettext runtime library

libintl-0.21-r0 webpage:
https://www.gnu.org/software/gettext/gettext.html

libintl-0.21-r0 installed size:
56 KiB

libintl-0.21-r0 license:
LGPL-2.1-or-later

```

### `apk` package: `libksba`

```console
libksba-1.5.1-r0 description:
Libksba is a CMS and X.509 access library

libksba-1.5.1-r0 webpage:
https://www.gnupg.org/software/libksba/index.html

libksba-1.5.1-r0 installed size:
224 KiB

libksba-1.5.1-r0 license:
GPL-2.0-or-later or GPL-3.0-or-later

```

### `apk` package: `libldap`

```console
libldap-2.4.58-r0 description:
OpenLDAP libraries

libldap-2.4.58-r0 webpage:
https://www.openldap.org/

libldap-2.4.58-r0 installed size:
616 KiB

libldap-2.4.58-r0 license:
OLDAP-2.8

```

### `apk` package: `libmount`

```console
libmount-2.37.4-r0 description:
Block device identification library from util-linux

libmount-2.37.4-r0 webpage:
https://git.kernel.org/cgit/utils/util-linux/util-linux.git

libmount-2.37.4-r0 installed size:
336 KiB

libmount-2.37.4-r0 license:
GPL-3.0-or-later AND GPL-2.0-or-later AND GPL-2.0-only AND

```

### `apk` package: `libretls`

```console
libretls-3.3.3p1-r3 description:
port of libtls from libressl to openssl

libretls-3.3.3p1-r3 webpage:
https://git.causal.agency/libretls/

libretls-3.3.3p1-r3 installed size:
84 KiB

libretls-3.3.3p1-r3 license:
ISC AND (BSD-3-Clause OR MIT)

```

### `apk` package: `libsasl`

```console
libsasl-2.1.28-r0 description:
Cyrus Simple Authentication and Security Layer (SASL) library

libsasl-2.1.28-r0 webpage:
https://www.cyrusimap.org/sasl/

libsasl-2.1.28-r0 installed size:
192 KiB

libsasl-2.1.28-r0 license:
custom

```

### `apk` package: `libsecret`

```console
libsecret-0.20.4-r1 description:
Library for storing and retrieving passwords and other secrets

libsecret-0.20.4-r1 webpage:
https://wiki.gnome.org/Projects/Libsecret

libsecret-0.20.4-r1 installed size:
432 KiB

libsecret-0.20.4-r1 license:
LGPL-2.0-or-later

```

### `apk` package: `libssl1.1`

```console
libssl1.1-1.1.1q-r0 description:
SSL shared libraries

libssl1.1-1.1.1q-r0 webpage:
https://www.openssl.org/

libssl1.1-1.1.1q-r0 installed size:
528 KiB

libssl1.1-1.1.1q-r0 license:
OpenSSL

```

### `apk` package: `libtasn1`

```console
libtasn1-4.17.0-r0 description:
The ASN.1 library used in GNUTLS

libtasn1-4.17.0-r0 webpage:
https://www.gnu.org/software/gnutls/

libtasn1-4.17.0-r0 installed size:
88 KiB

libtasn1-4.17.0-r0 license:
LGPL-2.1-or-later

```

### `apk` package: `libunistring`

```console
libunistring-0.9.10-r1 description:
Library for manipulating Unicode strings and C strings

libunistring-0.9.10-r1 webpage:
https://www.gnu.org/software/libunistring/

libunistring-0.9.10-r1 installed size:
1504 KiB

libunistring-0.9.10-r1 license:
GPL-2.0+ OR LGPL-3.0+

```

### `apk` package: `musl`

```console
musl-1.2.2-r3 description:
the musl c library (libc) implementation

musl-1.2.2-r3 webpage:
https://musl.libc.org/

musl-1.2.2-r3 installed size:
608 KiB

musl-1.2.2-r3 license:
MIT

```

### `apk` package: `musl-utils`

```console
musl-utils-1.2.2-r3 description:
the musl c library (libc) implementation

musl-utils-1.2.2-r3 webpage:
https://musl.libc.org/

musl-utils-1.2.2-r3 installed size:
144 KiB

musl-utils-1.2.2-r3 license:
MIT BSD GPL2+

```

### `apk` package: `ncurses-libs`

```console
ncurses-libs-6.2_p20210612-r1 description:
Ncurses libraries

ncurses-libs-6.2_p20210612-r1 webpage:
https://invisible-island.net/ncurses/

ncurses-libs-6.2_p20210612-r1 installed size:
500 KiB

ncurses-libs-6.2_p20210612-r1 license:
MIT

```

### `apk` package: `ncurses-terminfo-base`

```console
ncurses-terminfo-base-6.2_p20210612-r1 description:
Descriptions of common terminals

ncurses-terminfo-base-6.2_p20210612-r1 webpage:
https://invisible-island.net/ncurses/

ncurses-terminfo-base-6.2_p20210612-r1 installed size:
216 KiB

ncurses-terminfo-base-6.2_p20210612-r1 license:
MIT

```

### `apk` package: `nettle`

```console
nettle-3.7.3-r0 description:
A low-level cryptographic library

nettle-3.7.3-r0 webpage:
https://www.lysator.liu.se/~nisse/nettle/

nettle-3.7.3-r0 installed size:
564 KiB

nettle-3.7.3-r0 license:
LGPL-2.0-or-later

```

### `apk` package: `npth`

```console
npth-1.6-r0 description:
The New GNU Portable Threads library

npth-1.6-r0 webpage:
ftp://ftp.gnupg.org/gcrypt/npth/

npth-1.6-r0 installed size:
32 KiB

npth-1.6-r0 license:
LGPL-3.0-or-later or GPL-2.0-or-later or (LGPL-3.0-or-later and GPL-2.0-or-later)

```

### `apk` package: `p11-kit`

```console
p11-kit-0.23.22-r0 description:
Library for loading and sharing PKCS#11 modules

p11-kit-0.23.22-r0 webpage:
https://p11-glue.freedesktop.org/

p11-kit-0.23.22-r0 installed size:
1200 KiB

p11-kit-0.23.22-r0 license:
BSD-3-Clause

```

### `apk` package: `pcre`

```console
pcre-8.44-r0 description:
Perl-compatible regular expression library

pcre-8.44-r0 webpage:
http://pcre.sourceforge.net

pcre-8.44-r0 installed size:
392 KiB

pcre-8.44-r0 license:
BSD-3-Clause

```

### `apk` package: `pinentry`

```console
pinentry-1.1.1-r0 description:
Collection of simple PIN or passphrase entry dialogs which utilize the Assuan protocol

pinentry-1.1.1-r0 webpage:
https://www.gnupg.org/aegypten2/

pinentry-1.1.1-r0 installed size:
80 KiB

pinentry-1.1.1-r0 license:
GPL-2.0-or-later

```

### `apk` package: `readline`

```console
readline-8.1.0-r0 description:
GNU readline library

readline-8.1.0-r0 webpage:
https://tiswww.cwru.edu/php/chet/readline/rltop.html

readline-8.1.0-r0 installed size:
308 KiB

readline-8.1.0-r0 license:
GPL-2.0-or-later

```

### `apk` package: `run-parts`

```console
run-parts-4.11.2-r0 description:
run-parts from the debianutils package

run-parts-4.11.2-r0 webpage:
https://packages.qa.debian.org/d/debianutils.html

run-parts-4.11.2-r0 installed size:
36 KiB

run-parts-4.11.2-r0 license:
GPL-2.0-or-later

```

### `apk` package: `scanelf`

```console
scanelf-1.3.2-r0 description:
Scan ELF binaries for stuff

scanelf-1.3.2-r0 webpage:
https://wiki.gentoo.org/wiki/Hardened/PaX_Utilities

scanelf-1.3.2-r0 installed size:
92 KiB

scanelf-1.3.2-r0 license:
GPL-2.0-only

```

### `apk` package: `sqlite-libs`

```console
sqlite-libs-3.35.5-r0 description:
Sqlite3 library

sqlite-libs-3.35.5-r0 webpage:
https://www.sqlite.org/

sqlite-libs-3.35.5-r0 installed size:
964 KiB

sqlite-libs-3.35.5-r0 license:
Public-Domain

```

### `apk` package: `ssl_client`

```console
ssl_client-1.33.1-r8 description:
EXternal ssl_client for busybox wget

ssl_client-1.33.1-r8 webpage:
https://busybox.net/

ssl_client-1.33.1-r8 installed size:
28 KiB

ssl_client-1.33.1-r8 license:
GPL-2.0-only

```

### `apk` package: `su-exec`

```console
su-exec-0.2-r1 description:
switch user and group id, setgroups and exec

su-exec-0.2-r1 webpage:
https://github.com/ncopa/su-exec

su-exec-0.2-r1 installed size:
24 KiB

su-exec-0.2-r1 license:
MIT

```

### `apk` package: `tzdata`

```console
tzdata-2022c-r0 description:
Timezone data

tzdata-2022c-r0 webpage:
https://www.iana.org/time-zones

tzdata-2022c-r0 installed size:
3208 KiB

tzdata-2022c-r0 license:
Public-Domain

```

### `apk` package: `zlib`

```console
zlib-1.2.12-r3 description:
A compression/decompression Library

zlib-1.2.12-r3 webpage:
https://zlib.net/

zlib-1.2.12-r3 installed size:
108 KiB

zlib-1.2.12-r3 license:
Zlib

```
