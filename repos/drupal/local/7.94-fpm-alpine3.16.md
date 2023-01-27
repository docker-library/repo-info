# `drupal:7.94-php8.0-fpm-alpine3.16`

## Docker Metadata

- Image ID: `sha256:0f8bbeb1e505816946be47f6dfc8d59b6fae41147fdd18345fab403bd9a0e887`
- Created: `2023-01-06T02:42:56.37348788Z`
- Virtual Size: ~ 88.24 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-php-entrypoint"]`
- Command: `["php-fpm"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64`
  - `PHP_LDFLAGS=-Wl,-O1 -pie`
  - `GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 BFDDD28642824F8118EF77909B67A5C12229118F 2C16C765DBE54A088130F1BC4B9B5F600B55F3B4`
  - `PHP_VERSION=8.0.27`
  - `PHP_URL=https://www.php.net/distributions/php-8.0.27.tar.xz`
  - `PHP_ASC_URL=https://www.php.net/distributions/php-8.0.27.tar.xz.asc`
  - `PHP_SHA256=f942cbfe2f7bacbb8039fb79bbec41c76ea779ac5c8157f21e1e0c1b28a5fc3a`
  - `DRUPAL_VERSION=7.94`
  - `DRUPAL_MD5=dae634ea0da005c5c435cfa9a9c5c322`

## `apk` (`.apk`-based packages)

### `apk` package: `alpine-baselayout`

```console
alpine-baselayout-3.2.0-r23 description:
Alpine base dir structure and init scripts

alpine-baselayout-3.2.0-r23 webpage:
https://git.alpinelinux.org/cgit/aports/tree/main/alpine-baselayout

alpine-baselayout-3.2.0-r23 installed size:
340 KiB

alpine-baselayout-3.2.0-r23 license:
GPL-2.0-only

```

### `apk` package: `alpine-baselayout-data`

```console
alpine-baselayout-data-3.2.0-r23 description:
Alpine base dir structure and init scripts

alpine-baselayout-data-3.2.0-r23 webpage:
https://git.alpinelinux.org/cgit/aports/tree/main/alpine-baselayout

alpine-baselayout-data-3.2.0-r23 installed size:
76 KiB

alpine-baselayout-data-3.2.0-r23 license:
GPL-2.0-only

```

### `apk` package: `alpine-keys`

```console
alpine-keys-2.4-r1 description:
Public keys for Alpine Linux packages

alpine-keys-2.4-r1 webpage:
https://alpinelinux.org

alpine-keys-2.4-r1 installed size:
156 KiB

alpine-keys-2.4-r1 license:
MIT

```

### `apk` package: `apk-tools`

```console
apk-tools-2.12.9-r3 description:
Alpine Package Keeper - package manager for alpine

apk-tools-2.12.9-r3 webpage:
https://gitlab.alpinelinux.org/alpine/apk-tools

apk-tools-2.12.9-r3 installed size:
300 KiB

apk-tools-2.12.9-r3 license:
GPL-2.0-only

```

### `apk` package: `argon2-libs`

```console
argon2-libs-20190702-r1 description:
The password hash Argon2, winner of PHC (libraries)

argon2-libs-20190702-r1 webpage:
https://github.com/P-H-C/phc-winner-argon2

argon2-libs-20190702-r1 installed size:
52 KiB

argon2-libs-20190702-r1 license:
Apache-2.0 CC0-1.0

```

### `apk` package: `brotli-libs`

```console
brotli-libs-1.0.9-r6 description:
Generic lossless compressor (libraries)

brotli-libs-1.0.9-r6 webpage:
https://github.com/google/brotli

brotli-libs-1.0.9-r6 installed size:
716 KiB

brotli-libs-1.0.9-r6 license:
MIT

```

### `apk` package: `busybox`

```console
busybox-1.35.0-r17 description:
Size optimized toolbox of many common UNIX utilities

busybox-1.35.0-r17 webpage:
https://busybox.net/

busybox-1.35.0-r17 installed size:
940 KiB

busybox-1.35.0-r17 license:
GPL-2.0-only

```

### `apk` package: `ca-certificates`

```console
ca-certificates-20220614-r0 description:
Common CA certificates PEM files from Mozilla

ca-certificates-20220614-r0 webpage:
https://www.mozilla.org/en-US/about/governance/policies/security-group/certs/

ca-certificates-20220614-r0 installed size:
688 KiB

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

### `apk` package: `curl`

```console
curl-7.83.1-r4 description:
URL retrival utility and library

curl-7.83.1-r4 webpage:
https://curl.se/

curl-7.83.1-r4 installed size:
256 KiB

curl-7.83.1-r4 license:
curl

```

### `apk` package: `freetype`

```console
freetype-2.12.1-r0 description:
TrueType font rendering library

freetype-2.12.1-r0 webpage:
https://www.freetype.org/

freetype-2.12.1-r0 installed size:
752 KiB

freetype-2.12.1-r0 license:
FTL GPL-2.0-or-later

```

### `apk` package: `gnu-libiconv`

```console
gnu-libiconv-1.16-r0 description:
GNU charset conversion library for libc which doesn't implement it

gnu-libiconv-1.16-r0 webpage:
https://www.gnu.org/software/libiconv

gnu-libiconv-1.16-r0 installed size:
1056 KiB

gnu-libiconv-1.16-r0 license:
LGPL-2.1-or-later

```

### `apk` package: `libacl`

```console
libacl-2.3.1-r0 description:
Dynamic library for access control list support

libacl-2.3.1-r0 webpage:
https://savannah.nongnu.org/projects/acl

libacl-2.3.1-r0 installed size:
44 KiB

libacl-2.3.1-r0 license:
LGPL-2.1-or-later AND GPL-2.0-or-later

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

### `apk` package: `libcrypto1.1`

```console
libcrypto1.1-1.1.1s-r0 description:
Crypto library from openssl

libcrypto1.1-1.1.1s-r0 webpage:
https://www.openssl.org/

libcrypto1.1-1.1.1s-r0 installed size:
2708 KiB

libcrypto1.1-1.1.1s-r0 license:
OpenSSL

```

### `apk` package: `libcurl`

```console
libcurl-7.83.1-r5 description:
The multiprotocol file transfer library

libcurl-7.83.1-r5 webpage:
https://curl.se/

libcurl-7.83.1-r5 installed size:
512 KiB

libcurl-7.83.1-r5 license:
curl

```

### `apk` package: `libjpeg-turbo`

```console
libjpeg-turbo-2.1.3-r1 description:
Accelerated baseline JPEG compression and decompression library

libjpeg-turbo-2.1.3-r1 webpage:
https://libjpeg-turbo.org/

libjpeg-turbo-2.1.3-r1 installed size:
1140 KiB

libjpeg-turbo-2.1.3-r1 license:
BSD-3-Clause IJG Zlib

```

### `apk` package: `libpng`

```console
libpng-1.6.37-r1 description:
Portable Network Graphics library

libpng-1.6.37-r1 webpage:
http://www.libpng.org

libpng-1.6.37-r1 installed size:
204 KiB

libpng-1.6.37-r1 license:
Libpng

```

### `apk` package: `libpq`

```console
libpq-14.5-r0 description:
PostgreSQL client library

libpq-14.5-r0 webpage:
https://www.postgresql.org/

libpq-14.5-r0 installed size:
328 KiB

libpq-14.5-r0 license:
PostgreSQL

```

### `apk` package: `libsodium`

```console
libsodium-1.0.18-r0 description:
P(ortable|ackageable) NaCl-based crypto library

libsodium-1.0.18-r0 webpage:
https://github.com/jedisct1/libsodium

libsodium-1.0.18-r0 installed size:
336 KiB

libsodium-1.0.18-r0 license:
ISC

```

### `apk` package: `libssl1.1`

```console
libssl1.1-1.1.1s-r0 description:
SSL shared libraries

libssl1.1-1.1.1s-r0 webpage:
https://www.openssl.org/

libssl1.1-1.1.1s-r0 installed size:
528 KiB

libssl1.1-1.1.1s-r0 license:
OpenSSL

```

### `apk` package: `libwebp`

```console
libwebp-1.2.3-r0 description:
Libraries for working with WebP images

libwebp-1.2.3-r0 webpage:
https://developers.google.com/speed/webp

libwebp-1.2.3-r0 installed size:
584 KiB

libwebp-1.2.3-r0 license:
BSD-3-Clause

```

### `apk` package: `libxml2`

```console
libxml2-2.9.14-r2 description:
XML parsing library, version 2

libxml2-2.9.14-r2 webpage:
http://www.xmlsoft.org/

libxml2-2.9.14-r2 installed size:
1200 KiB

libxml2-2.9.14-r2 license:
MIT

```

### `apk` package: `libzip`

```console
libzip-1.8.0-r1 description:
C library for manipulating zip archives

libzip-1.8.0-r1 webpage:
https://libzip.org/

libzip-1.8.0-r1 installed size:
116 KiB

libzip-1.8.0-r1 license:
BSD-3-Clause

```

### `apk` package: `musl`

```console
musl-1.2.3-r2 description:
the musl c library (libc) implementation

musl-1.2.3-r2 webpage:
https://musl.libc.org/

musl-1.2.3-r2 installed size:
608 KiB

musl-1.2.3-r2 license:
MIT

```

### `apk` package: `musl-utils`

```console
musl-utils-1.2.3-r1 description:
the musl c library (libc) implementation

musl-utils-1.2.3-r1 webpage:
https://musl.libc.org/

musl-utils-1.2.3-r1 installed size:
132 KiB

musl-utils-1.2.3-r1 license:
MIT BSD GPL2+

```

### `apk` package: `ncurses-libs`

```console
ncurses-libs-6.3_p20220521-r0 description:
Ncurses libraries

ncurses-libs-6.3_p20220521-r0 webpage:
https://invisible-island.net/ncurses/

ncurses-libs-6.3_p20220521-r0 installed size:
500 KiB

ncurses-libs-6.3_p20220521-r0 license:
MIT

```

### `apk` package: `ncurses-terminfo-base`

```console
ncurses-terminfo-base-6.3_p20220521-r0 description:
Descriptions of common terminals

ncurses-terminfo-base-6.3_p20220521-r0 webpage:
https://invisible-island.net/ncurses/

ncurses-terminfo-base-6.3_p20220521-r0 installed size:
216 KiB

ncurses-terminfo-base-6.3_p20220521-r0 license:
MIT

```

### `apk` package: `nghttp2-libs`

```console
nghttp2-libs-1.47.0-r0 description:
Experimental HTTP/2 client, server and proxy (libraries)

nghttp2-libs-1.47.0-r0 webpage:
https://nghttp2.org

nghttp2-libs-1.47.0-r0 installed size:
156 KiB

nghttp2-libs-1.47.0-r0 license:
MIT

```

### `apk` package: `oniguruma`

```console
oniguruma-6.9.8-r0 description:
a regular expressions library

oniguruma-6.9.8-r0 webpage:
https://github.com/kkos/oniguruma

oniguruma-6.9.8-r0 installed size:
568 KiB

oniguruma-6.9.8-r0 license:
BSD-2-Clause

```

### `apk` package: `openssl`

```console
openssl-1.1.1s-r0 description:
toolkit for transport layer security (TLS) - version 1.1

openssl-1.1.1s-r0 webpage:
https://www.openssl.org/

openssl-1.1.1s-r0 installed size:
660 KiB

openssl-1.1.1s-r0 license:
OpenSSL

```

### `apk` package: `readline`

```console
readline-8.1.2-r0 description:
GNU readline library

readline-8.1.2-r0 webpage:
https://tiswww.cwru.edu/php/chet/readline/rltop.html

readline-8.1.2-r0 installed size:
304 KiB

readline-8.1.2-r0 license:
GPL-2.0-or-later

```

### `apk` package: `scanelf`

```console
scanelf-1.3.4-r0 description:
Scan ELF binaries for stuff

scanelf-1.3.4-r0 webpage:
https://wiki.gentoo.org/wiki/Hardened/PaX_Utilities

scanelf-1.3.4-r0 installed size:
92 KiB

scanelf-1.3.4-r0 license:
GPL-2.0-only

```

### `apk` package: `sqlite-libs`

```console
sqlite-libs-3.38.5-r0 description:
Sqlite3 library

sqlite-libs-3.38.5-r0 webpage:
https://www.sqlite.org/

sqlite-libs-3.38.5-r0 installed size:
992 KiB

sqlite-libs-3.38.5-r0 license:
blessing

```

### `apk` package: `ssl_client`

```console
ssl_client-1.35.0-r17 description:
EXternal ssl_client for busybox wget

ssl_client-1.35.0-r17 webpage:
https://busybox.net/

ssl_client-1.35.0-r17 installed size:
28 KiB

ssl_client-1.35.0-r17 license:
GPL-2.0-only

```

### `apk` package: `tar`

```console
tar-1.34-r0 description:
Utility used to store, backup, and transport files

tar-1.34-r0 webpage:
https://www.gnu.org/software/tar/

tar-1.34-r0 installed size:
488 KiB

tar-1.34-r0 license:
GPL-3.0-or-later

```

### `apk` package: `xz`

```console
xz-5.2.5-r1 description:
Library and CLI tools for XZ and LZMA compressed files

xz-5.2.5-r1 webpage:
https://tukaani.org/xz

xz-5.2.5-r1 installed size:
160 KiB

xz-5.2.5-r1 license:
GPL-2.0-or-later AND Public-Domain AND LGPL-2.1-or-later

```

### `apk` package: `xz-libs`

```console
xz-libs-5.2.5-r1 description:
Library and CLI tools for XZ and LZMA compressed files (libraries)

xz-libs-5.2.5-r1 webpage:
https://tukaani.org/xz

xz-libs-5.2.5-r1 installed size:
148 KiB

xz-libs-5.2.5-r1 license:
GPL-2.0-or-later AND Public-Domain AND LGPL-2.1-or-later

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

### `apk` package: `zstd-libs`

```console
zstd-libs-1.5.2-r1 description:
Zstandard - Fast real-time compression algorithm (libraries)

zstd-libs-1.5.2-r1 webpage:
https://www.zstd.net/

zstd-libs-1.5.2-r1 installed size:
512 KiB

zstd-libs-1.5.2-r1 license:
BSD-3-Clause GPL-2.0-or-later

```
