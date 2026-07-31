# `monica:4.1.2-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:6ed19c1b3e467e41ce5945acda1dfe74779512ded5f7fba624dfc0076175b3ff`
- Created: `2026-07-30T23:29:24.516265036Z`
- Virtual Size: ~ 244.45 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/usr/local/bin/entrypoint.sh"]`
- Command: `["php-fpm"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64`
  - `PHP_LDFLAGS=-Wl,-O1 -pie`
  - `GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC`
  - `PHP_VERSION=8.2.33`
  - `PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz`
  - `PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc`
  - `PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1`
  - `PHP_OPCACHE_VALIDATE_TIMESTAMPS=0`
  - `PHP_OPCACHE_MAX_ACCELERATED_FILES=20000`
  - `PHP_OPCACHE_MEMORY_CONSUMPTION=192`
  - `PHP_OPCACHE_MAX_WASTED_PERCENTAGE=10`
  - `PHP_MEMORY_LIMIT=512M`
  - `PHP_UPLOAD_LIMIT=512M`
  - `MONICA_VERSION=v4.1.2`
- Labels:
  - `org.opencontainers.image.authors=Alexis Saettler <alexis@saettler.org>`
  - `org.opencontainers.image.description=This is MonicaHQ, your personal memory! MonicaHQ is like a CRM but for the friends, family, and acquaintances around you.`
  - `org.opencontainers.image.revision=32028ce3ce79cef38df5d27a297e5b20680f0065`
  - `org.opencontainers.image.source=https://github.com/monicahq/docker`
  - `org.opencontainers.image.title=MonicaHQ, the Personal Relationship Manager`
  - `org.opencontainers.image.url=https://monicahq.com`
  - `org.opencontainers.image.vendor=Monica`
  - `org.opencontainers.image.version=v4.1.2`

## `apk` (`.apk`-based packages)

### `apk` package: `acl-libs`

```console
acl-libs-2.3.2-r1 description:
Access control list utilities (libraries)

acl-libs-2.3.2-r1 webpage:
https://savannah.nongnu.org/projects/acl

acl-libs-2.3.2-r1 installed size:
33 KiB

acl-libs-2.3.2-r1 license:
LGPL-2.1-or-later AND GPL-2.0-or-later

```

### `apk` package: `alpine-baselayout`

```console
alpine-baselayout-3.7.2-r1 description:
Alpine base dir structure and init scripts

alpine-baselayout-3.7.2-r1 webpage:
https://gitlab.alpinelinux.org/alpine/aports/-/tree/master/main/alpine-baselayout

alpine-baselayout-3.7.2-r1 installed size:
6552 B

alpine-baselayout-3.7.2-r1 license:
GPL-2.0-only

```

### `apk` package: `alpine-baselayout-data`

```console
alpine-baselayout-data-3.7.2-r1 description:
Alpine base dir structure and init scripts

alpine-baselayout-data-3.7.2-r1 webpage:
https://gitlab.alpinelinux.org/alpine/aports/-/tree/master/main/alpine-baselayout

alpine-baselayout-data-3.7.2-r1 installed size:
18 KiB

alpine-baselayout-data-3.7.2-r1 license:
GPL-2.0-only

```

### `apk` package: `alpine-keys`

```console
alpine-keys-2.6-r0 description:
Public keys for Alpine Linux packages

alpine-keys-2.6-r0 webpage:
https://alpinelinux.org

alpine-keys-2.6-r0 installed size:
12 KiB

alpine-keys-2.6-r0 license:
MIT

```

### `apk` package: `alpine-release`

```console
alpine-release-3.24.1-r0 description:
Alpine release data

alpine-release-3.24.1-r0 webpage:
https://alpinelinux.org

alpine-release-3.24.1-r0 installed size:
343 B

alpine-release-3.24.1-r0 license:
MIT

```

### `apk` package: `apk-tools`

```console
apk-tools-3.0.6-r0 description:
Alpine Package Keeper - package manager for alpine

apk-tools-3.0.6-r0 webpage:
https://gitlab.alpinelinux.org/alpine/apk-tools

apk-tools-3.0.6-r0 installed size:
112 KiB

apk-tools-3.0.6-r0 license:
GPL-2.0-only

```

### `apk` package: `argon2-libs`

```console
argon2-libs-20190702-r5 description:
The password hash Argon2, winner of PHC (libraries)

argon2-libs-20190702-r5 webpage:
https://github.com/P-H-C/phc-winner-argon2

argon2-libs-20190702-r5 installed size:
41 KiB

argon2-libs-20190702-r5 license:
Apache-2.0 OR CC0-1.0

```

### `apk` package: `bash`

```console
bash-5.3.9-r1 description:
The GNU Bourne Again shell

bash-5.3.9-r1 webpage:
https://www.gnu.org/software/bash/bash.html

bash-5.3.9-r1 installed size:
1344 KiB

bash-5.3.9-r1 license:
GPL-3.0-or-later

```

### `apk` package: `brotli-libs`

```console
brotli-libs-1.2.0-r1 description:
Generic lossless compressor (libraries)

brotli-libs-1.2.0-r1 webpage:
https://github.com/google/brotli

brotli-libs-1.2.0-r1 installed size:
957 KiB

brotli-libs-1.2.0-r1 license:
MIT

```

### `apk` package: `busybox`

```console
busybox-1.37.0-r31 description:
Size optimized toolbox of many common UNIX utilities

busybox-1.37.0-r31 webpage:
https://busybox.net/

busybox-1.37.0-r31 installed size:
794 KiB

busybox-1.37.0-r31 license:
GPL-2.0-only

```

### `apk` package: `busybox-binsh`

```console
busybox-binsh-1.37.0-r31 description:
busybox ash /bin/sh

busybox-binsh-1.37.0-r31 webpage:
https://busybox.net/

busybox-binsh-1.37.0-r31 installed size:
1 B

busybox-binsh-1.37.0-r31 license:
GPL-2.0-only

```

### `apk` package: `c-ares`

```console
c-ares-1.34.8-r0 description:
Asynchronous DNS/names resolver library

c-ares-1.34.8-r0 webpage:
https://c-ares.org/

c-ares-1.34.8-r0 installed size:
237 KiB

c-ares-1.34.8-r0 license:
MIT

```

### `apk` package: `ca-certificates`

```console
ca-certificates-20260611-r0 description:
Common CA certificates PEM files from Mozilla

ca-certificates-20260611-r0 webpage:
https://www.mozilla.org/en-US/about/governance/policies/security-group/certs/

ca-certificates-20260611-r0 installed size:
207 KiB

ca-certificates-20260611-r0 license:
MPL-2.0 AND MIT

```

### `apk` package: `ca-certificates-bundle`

```console
ca-certificates-bundle-20260611-r0 description:
Pre generated bundle of Mozilla certificates

ca-certificates-bundle-20260611-r0 webpage:
https://www.mozilla.org/en-US/about/governance/policies/security-group/certs/

ca-certificates-bundle-20260611-r0 installed size:
175 KiB

ca-certificates-bundle-20260611-r0 license:
MPL-2.0 AND MIT

```

### `apk` package: `coreutils`

```console
coreutils-9.11-r0 description:
The basic file, shell and text manipulation utilities

coreutils-9.11-r0 webpage:
https://www.gnu.org/software/coreutils/

coreutils-9.11-r0 installed size:
1125 KiB

coreutils-9.11-r0 license:
GPL-3.0-or-later

```

### `apk` package: `coreutils-env`

```console
coreutils-env-9.11-r0 description:
The basic file, shell and text manipulation utilities

coreutils-env-9.11-r0 webpage:
https://www.gnu.org/software/coreutils/

coreutils-env-9.11-r0 installed size:
38 KiB

coreutils-env-9.11-r0 license:
GPL-3.0-or-later

```

### `apk` package: `coreutils-fmt`

```console
coreutils-fmt-9.11-r0 description:
The basic file, shell and text manipulation utilities

coreutils-fmt-9.11-r0 webpage:
https://www.gnu.org/software/coreutils/

coreutils-fmt-9.11-r0 installed size:
34 KiB

coreutils-fmt-9.11-r0 license:
GPL-3.0-or-later

```

### `apk` package: `coreutils-sha512sum`

```console
coreutils-sha512sum-9.11-r0 description:
The basic file, shell and text manipulation utilities

coreutils-sha512sum-9.11-r0 webpage:
https://www.gnu.org/software/coreutils/

coreutils-sha512sum-9.11-r0 installed size:
34 KiB

coreutils-sha512sum-9.11-r0 license:
GPL-3.0-or-later

```

### `apk` package: `curl`

```console
curl-8.21.0-r0 description:
URL retrieval utility and library

curl-8.21.0-r0 webpage:
https://curl.se/

curl-8.21.0-r0 installed size:
273 KiB

curl-8.21.0-r0 license:
curl

```

### `apk` package: `freetype`

```console
freetype-2.14.3-r0 description:
TrueType font rendering library

freetype-2.14.3-r0 webpage:
https://www.freetype.org/

freetype-2.14.3-r0 installed size:
658 KiB

freetype-2.14.3-r0 license:
FTL OR GPL-2.0-or-later

```

### `apk` package: `gdbm`

```console
gdbm-1.26-r0 description:
GNU dbm is a set of database routines that use extensible hashing

gdbm-1.26-r0 webpage:
https://www.gnu.org/software/gdbm/

gdbm-1.26-r0 installed size:
71 KiB

gdbm-1.26-r0 license:
GPL-3.0-or-later

```

### `apk` package: `gmp`

```console
gmp-6.3.0-r4 description:
free library for arbitrary precision arithmetic

gmp-6.3.0-r4 webpage:
https://gmplib.org/

gmp-6.3.0-r4 installed size:
413 KiB

gmp-6.3.0-r4 license:
LGPL-3.0-or-later OR GPL-2.0-or-later

```

### `apk` package: `gnu-libiconv-libs`

```console
gnu-libiconv-libs-1.18-r0 description:
GNU charset conversion library for libc which doesn't implement it (libraries)

gnu-libiconv-libs-1.18-r0 webpage:
https://www.gnu.org/software/libiconv

gnu-libiconv-libs-1.18-r0 installed size:
1063 KiB

gnu-libiconv-libs-1.18-r0 license:
LGPL-2.1-or-later

```

### `apk` package: `icu-data-en`

```console
icu-data-en-78.1-r0 description:
Stripped down ICU data with only en_US/GB locale and no legacy charset converters

icu-data-en-78.1-r0 webpage:
https://icu.unicode.org/

icu-data-en-78.1-r0 installed size:
2951 KiB

icu-data-en-78.1-r0 license:
ICU

```

### `apk` package: `icu-libs`

```console
icu-libs-78.1-r0 description:
International Components for Unicode library (libraries)

icu-libs-78.1-r0 webpage:
https://icu.unicode.org/

icu-libs-78.1-r0 installed size:
4739 KiB

icu-libs-78.1-r0 license:
ICU

```

### `apk` package: `libapk`

```console
libapk-3.0.6-r0 description:
Alpine Package Keeper - package manager for alpine

libapk-3.0.6-r0 webpage:
https://gitlab.alpinelinux.org/alpine/apk-tools

libapk-3.0.6-r0 installed size:
270 KiB

libapk-3.0.6-r0 license:
GPL-2.0-only

```

### `apk` package: `libattr`

```console
libattr-2.5.2-r2 description:
utilities for managing filesystem extended attributes (libraries)

libattr-2.5.2-r2 webpage:
https://savannah.nongnu.org/projects/attr

libattr-2.5.2-r2 installed size:
21 KiB

libattr-2.5.2-r2 license:
LGPL-2.1-or-later

```

### `apk` package: `libbz2`

```console
libbz2-1.0.8-r6 description:
Shared library for bz2

libbz2-1.0.8-r6 webpage:
https://sourceware.org/bzip2/

libbz2-1.0.8-r6 installed size:
76 KiB

libbz2-1.0.8-r6 license:
bzip2-1.0.6

```

### `apk` package: `libcrypto3`

```console
libcrypto3-3.5.7-r0 description:
Crypto library from openssl

libcrypto3-3.5.7-r0 webpage:
https://www.openssl.org/

libcrypto3-3.5.7-r0 installed size:
5091 KiB

libcrypto3-3.5.7-r0 license:
Apache-2.0

```

### `apk` package: `libcurl`

```console
libcurl-8.21.0-r0 description:
The multiprotocol file transfer library

libcurl-8.21.0-r0 webpage:
https://curl.se/

libcurl-8.21.0-r0 installed size:
709 KiB

libcurl-8.21.0-r0 license:
curl

```

### `apk` package: `libgcc`

```console
libgcc-15.2.0-r5 description:
GNU C compiler runtime libraries

libgcc-15.2.0-r5 webpage:
https://gcc.gnu.org

libgcc-15.2.0-r5 installed size:
169 KiB

libgcc-15.2.0-r5 license:
GPL-2.0-or-later AND LGPL-2.1-or-later

```

### `apk` package: `libidn2`

```console
libidn2-2.3.8-r0 description:
Encode/Decode library for internationalized domain names

libidn2-2.3.8-r0 webpage:
https://www.gnu.org/software/libidn#libidn2

libidn2-2.3.8-r0 installed size:
193 KiB

libidn2-2.3.8-r0 license:
GPL-2.0-or-later OR LGPL-3.0-or-later

```

### `apk` package: `libjpeg-turbo`

```console
libjpeg-turbo-3.1.3-r0 description:
Accelerated baseline JPEG compression and decompression library

libjpeg-turbo-3.1.3-r0 webpage:
https://libjpeg-turbo.org/

libjpeg-turbo-3.1.3-r0 installed size:
641 KiB

libjpeg-turbo-3.1.3-r0 license:
BSD-3-Clause AND IJG AND Zlib

```

### `apk` package: `libmemcached-libs`

```console
libmemcached-libs-1.1.4-r1 description:
Client library and command line tools for memcached server (resurrected) (libraries)

libmemcached-libs-1.1.4-r1 webpage:
https://github.com/awesomized/libmemcached

libmemcached-libs-1.1.4-r1 installed size:
243 KiB

libmemcached-libs-1.1.4-r1 license:
BSD-3-Clause

```

### `apk` package: `libncursesw`

```console
libncursesw-6.6_p20260516-r0 description:
Console display library (libncursesw)

libncursesw-6.6_p20260516-r0 webpage:
https://invisible-island.net/ncurses/

libncursesw-6.6_p20260516-r0 installed size:
334 KiB

libncursesw-6.6_p20260516-r0 license:
X11

```

### `apk` package: `libpng`

```console
libpng-1.6.58-r1 description:
Portable Network Graphics library

libpng-1.6.58-r1 webpage:
http://www.libpng.org

libpng-1.6.58-r1 installed size:
181 KiB

libpng-1.6.58-r1 license:
Libpng

```

### `apk` package: `libpq`

```console
libpq-18.4-r0 description:
PostgreSQL client library

libpq-18.4-r0 webpage:
https://www.postgresql.org/

libpq-18.4-r0 installed size:
350 KiB

libpq-18.4-r0 license:
PostgreSQL

```

### `apk` package: `libpsl`

```console
libpsl-0.21.5-r3 description:
C library for the Publix Suffix List

libpsl-0.21.5-r3 webpage:
https://rockdaboot.github.io/libpsl

libpsl-0.21.5-r3 installed size:
73 KiB

libpsl-0.21.5-r3 license:
MIT

```

### `apk` package: `libsasl`

```console
libsasl-2.1.28-r9 description:
Cyrus Simple Authentication and Security Layer (SASL) library

libsasl-2.1.28-r9 webpage:
https://www.cyrusimap.org/sasl/

libsasl-2.1.28-r9 installed size:
163 KiB

libsasl-2.1.28-r9 license:
BSD-3-Clause-Attribution AND BSD-4-Clause

```

### `apk` package: `libsharpyuv`

```console
libsharpyuv-1.6.0-r0 description:
Libraries for working with WebP images (libsharpyuv library)

libsharpyuv-1.6.0-r0 webpage:
https://developers.google.com/speed/webp

libsharpyuv-1.6.0-r0 installed size:
25 KiB

libsharpyuv-1.6.0-r0 license:
BSD-3-Clause

```

### `apk` package: `libsodium`

```console
libsodium-1.0.22-r0 description:
P(ortable|ackageable) NaCl-based crypto library

libsodium-1.0.22-r0 webpage:
https://github.com/jedisct1/libsodium

libsodium-1.0.22-r0 installed size:
407 KiB

libsodium-1.0.22-r0 license:
ISC

```

### `apk` package: `libssl3`

```console
libssl3-3.5.7-r0 description:
SSL shared libraries

libssl3-3.5.7-r0 webpage:
https://www.openssl.org/

libssl3-3.5.7-r0 installed size:
819 KiB

libssl3-3.5.7-r0 license:
Apache-2.0

```

### `apk` package: `libstdc++`

```console
libstdc++-15.2.0-r5 description:
GNU C++ standard runtime library

libstdc++-15.2.0-r5 webpage:
https://gcc.gnu.org

libstdc++-15.2.0-r5 installed size:
2738 KiB

libstdc++-15.2.0-r5 license:
GPL-2.0-or-later AND LGPL-2.1-or-later

```

### `apk` package: `libunistring`

```console
libunistring-1.4.2-r0 description:
Library for manipulating Unicode strings and C strings

libunistring-1.4.2-r0 webpage:
https://www.gnu.org/software/libunistring/

libunistring-1.4.2-r0 installed size:
1877 KiB

libunistring-1.4.2-r0 license:
GPL-2.0-or-later OR LGPL-3.0-or-later

```

### `apk` package: `libwebp`

```console
libwebp-1.6.0-r0 description:
Libraries for working with WebP images

libwebp-1.6.0-r0 webpage:
https://developers.google.com/speed/webp

libwebp-1.6.0-r0 installed size:
545 KiB

libwebp-1.6.0-r0 license:
BSD-3-Clause

```

### `apk` package: `libxml2`

```console
libxml2-2.13.9-r2 description:
XML parsing library, version 2

libxml2-2.13.9-r2 webpage:
https://gitlab.gnome.org/GNOME/libxml2

libxml2-2.13.9-r2 installed size:
1046 KiB

libxml2-2.13.9-r2 license:
MIT

```

### `apk` package: `libzip`

```console
libzip-1.11.4-r2 description:
C library for manipulating zip archives

libzip-1.11.4-r2 webpage:
https://libzip.org/

libzip-1.11.4-r2 installed size:
102 KiB

libzip-1.11.4-r2 license:
BSD-3-Clause

```

### `apk` package: `musl`

```console
musl-1.2.6-r2 description:
the musl c library (libc) implementation

musl-1.2.6-r2 webpage:
https://musl.libc.org/

musl-1.2.6-r2 installed size:
654 KiB

musl-1.2.6-r2 license:
MIT

```

### `apk` package: `musl-utils`

```console
musl-utils-1.2.6-r2 description:
the musl c library (libc) implementation

musl-utils-1.2.6-r2 webpage:
https://musl.libc.org/

musl-utils-1.2.6-r2 installed size:
54 KiB

musl-utils-1.2.6-r2 license:
MIT AND BSD-2-Clause AND GPL-2.0-or-later

```

### `apk` package: `ncurses-terminfo-base`

```console
ncurses-terminfo-base-6.6_p20260516-r0 description:
Descriptions of common terminals

ncurses-terminfo-base-6.6_p20260516-r0 webpage:
https://invisible-island.net/ncurses/

ncurses-terminfo-base-6.6_p20260516-r0 installed size:
100 KiB

ncurses-terminfo-base-6.6_p20260516-r0 license:
X11

```

### `apk` package: `nghttp2-libs`

```console
nghttp2-libs-1.69.0-r0 description:
HTTP/2 C client, server and proxy (libraries)

nghttp2-libs-1.69.0-r0 webpage:
https://nghttp2.org

nghttp2-libs-1.69.0-r0 installed size:
129 KiB

nghttp2-libs-1.69.0-r0 license:
MIT

```

### `apk` package: `oniguruma`

```console
oniguruma-6.9.10-r0 description:
a regular expressions library

oniguruma-6.9.10-r0 webpage:
https://github.com/kkos/oniguruma

oniguruma-6.9.10-r0 installed size:
547 KiB

oniguruma-6.9.10-r0 license:
BSD-2-Clause

```

### `apk` package: `openssl`

```console
openssl-3.5.7-r0 description:
Toolkit for Transport Layer Security (TLS)

openssl-3.5.7-r0 webpage:
https://www.openssl.org/

openssl-3.5.7-r0 installed size:
801 KiB

openssl-3.5.7-r0 license:
Apache-2.0

```

### `apk` package: `readline`

```console
readline-8.3.3-r1 description:
GNU readline library

readline-8.3.3-r1 webpage:
https://tiswww.cwru.edu/php/chet/readline/rltop.html

readline-8.3.3-r1 installed size:
292 KiB

readline-8.3.3-r1 license:
GPL-3.0-or-later

```

### `apk` package: `scanelf`

```console
scanelf-1.3.9-r1 description:
Scan ELF binaries for stuff

scanelf-1.3.9-r1 webpage:
https://wiki.gentoo.org/wiki/Hardened/PaX_Utilities

scanelf-1.3.9-r1 installed size:
65 KiB

scanelf-1.3.9-r1 license:
GPL-2.0-only

```

### `apk` package: `skalibs-libs`

```console
skalibs-libs-2.15.0.0-r0 description:
Set of general-purpose C programming libraries for skarnet.org software. (libraries)

skalibs-libs-2.15.0.0-r0 webpage:
https://skarnet.org/software/skalibs/

skalibs-libs-2.15.0.0-r0 installed size:
207 KiB

skalibs-libs-2.15.0.0-r0 license:
ISC

```

### `apk` package: `sqlite-libs`

```console
sqlite-libs-3.53.2-r0 description:
C library that implements an SQL database engine (libraries)

sqlite-libs-3.53.2-r0 webpage:
https://www.sqlite.org/

sqlite-libs-3.53.2-r0 installed size:
1602 KiB

sqlite-libs-3.53.2-r0 license:
blessing

```

### `apk` package: `ssl_client`

```console
ssl_client-1.37.0-r31 description:
External ssl_client for busybox wget

ssl_client-1.37.0-r31 webpage:
https://busybox.net/

ssl_client-1.37.0-r31 installed size:
14 KiB

ssl_client-1.37.0-r31 license:
GPL-2.0-only

```

### `apk` package: `tar`

```console
tar-1.35-r5 description:
Utility used to store, backup, and transport files

tar-1.35-r5 webpage:
https://www.gnu.org/software/tar/

tar-1.35-r5 installed size:
399 KiB

tar-1.35-r5 license:
GPL-3.0-or-later

```

### `apk` package: `utmps-libs`

```console
utmps-libs-0.1.3.3-r0 description:
A secure utmp/wtmp implementation (libraries)

utmps-libs-0.1.3.3-r0 webpage:
https://skarnet.org/software/utmps/

utmps-libs-0.1.3.3-r0 installed size:
17 KiB

utmps-libs-0.1.3.3-r0 license:
ISC

```

### `apk` package: `xz`

```console
xz-5.8.3-r0 description:
Library and CLI tools for XZ and LZMA compressed files

xz-5.8.3-r0 webpage:
https://tukaani.org/xz/

xz-5.8.3-r0 installed size:
162 KiB

xz-5.8.3-r0 license:
GPL-2.0-or-later AND 0BSD AND Public-Domain AND LGPL-2.1-or-later

```

### `apk` package: `xz-libs`

```console
xz-libs-5.8.3-r0 description:
Library and CLI tools for XZ and LZMA compressed files (libraries)

xz-libs-5.8.3-r0 webpage:
https://tukaani.org/xz/

xz-libs-5.8.3-r0 installed size:
221 KiB

xz-libs-5.8.3-r0 license:
GPL-2.0-or-later AND 0BSD AND Public-Domain AND LGPL-2.1-or-later

```

### `apk` package: `zlib`

```console
zlib-1.3.2-r0 description:
A compression/decompression Library

zlib-1.3.2-r0 webpage:
https://zlib.net/

zlib-1.3.2-r0 installed size:
105 KiB

zlib-1.3.2-r0 license:
Zlib

```

### `apk` package: `zstd-libs`

```console
zstd-libs-1.5.7-r2 description:
Zstandard - Fast real-time compression algorithm (libraries)

zstd-libs-1.5.7-r2 webpage:
https://facebook.github.io/zstd/

zstd-libs-1.5.7-r2 installed size:
697 KiB

zstd-libs-1.5.7-r2 license:
BSD-3-Clause OR GPL-2.0-or-later

```
