# `wordpress:cli-2.7.1-php8.1`

## Docker Metadata

- Image ID: `sha256:999dc11bd6baa9ce9debed7f1e97cf76e2caa46c059206162d59eea0091c83f6`
- Created: `2023-01-09T23:39:58.129661362Z`
- Virtual Size: ~ 159.80 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-entrypoint.sh"]`
- Command: `["wp","shell"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64`
  - `PHP_LDFLAGS=-Wl,-O1 -pie`
  - `GPG_KEYS=528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 39B641343D8C104B2B146DC3F9C39DC0B9698544 F1F692238FBC1666E5A5CCD4199F9DFEF6FFBAFD`
  - `PHP_VERSION=8.1.14`
  - `PHP_URL=https://www.php.net/distributions/php-8.1.14.tar.xz`
  - `PHP_ASC_URL=https://www.php.net/distributions/php-8.1.14.tar.xz.asc`
  - `PHP_SHA256=e16e47a872d58685913ac848ce92ec49f42c1828110c98c65fb6265a08724a1a`
  - `WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06`
  - `WORDPRESS_CLI_VERSION=2.7.1`
  - `WORDPRESS_CLI_SHA512=956b5e3e1a076bd5441c082ee754e3ff4517ec965b93c621f455c2bf5719358c36e67d52f676492700b59d42cacb34a50d382535c035f19da7a0b98bc41860de`

## `apk` (`.apk`-based packages)

### `apk` package: `alpine-baselayout`

```console
alpine-baselayout-3.4.0-r0 description:
Alpine base dir structure and init scripts

alpine-baselayout-3.4.0-r0 webpage:
https://git.alpinelinux.org/cgit/aports/tree/main/alpine-baselayout

alpine-baselayout-3.4.0-r0 installed size:
324 KiB

alpine-baselayout-3.4.0-r0 license:
GPL-2.0-only

```

### `apk` package: `alpine-baselayout-data`

```console
alpine-baselayout-data-3.4.0-r0 description:
Alpine base dir structure and init scripts

alpine-baselayout-data-3.4.0-r0 webpage:
https://git.alpinelinux.org/cgit/aports/tree/main/alpine-baselayout

alpine-baselayout-data-3.4.0-r0 installed size:
76 KiB

alpine-baselayout-data-3.4.0-r0 license:
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
apk-tools-2.12.10-r1 description:
Alpine Package Keeper - package manager for alpine

apk-tools-2.12.10-r1 webpage:
https://gitlab.alpinelinux.org/alpine/apk-tools

apk-tools-2.12.10-r1 installed size:
300 KiB

apk-tools-2.12.10-r1 license:
GPL-2.0-only

```

### `apk` package: `argon2-libs`

```console
argon2-libs-20190702-r2 description:
The password hash Argon2, winner of PHC (libraries)

argon2-libs-20190702-r2 webpage:
https://github.com/P-H-C/phc-winner-argon2

argon2-libs-20190702-r2 installed size:
52 KiB

argon2-libs-20190702-r2 license:
Apache-2.0 CC0-1.0

```

### `apk` package: `bash`

```console
bash-5.2.15-r0 description:
The GNU Bourne Again shell

bash-5.2.15-r0 webpage:
https://www.gnu.org/software/bash/bash.html

bash-5.2.15-r0 installed size:
1400 KiB

bash-5.2.15-r0 license:
GPL-3.0-or-later

```

### `apk` package: `brotli-libs`

```console
brotli-libs-1.0.9-r9 description:
Generic lossless compressor (libraries)

brotli-libs-1.0.9-r9 webpage:
https://github.com/google/brotli

brotli-libs-1.0.9-r9 installed size:
784 KiB

brotli-libs-1.0.9-r9 license:
MIT

```

### `apk` package: `busybox`

```console
busybox-1.35.0-r29 description:
Size optimized toolbox of many common UNIX utilities

busybox-1.35.0-r29 webpage:
https://busybox.net/

busybox-1.35.0-r29 installed size:
940 KiB

busybox-1.35.0-r29 license:
GPL-2.0-only

```

### `apk` package: `busybox-binsh`

```console
busybox-binsh-1.35.0-r29 description:
busybox ash /bin/sh

busybox-binsh-1.35.0-r29 webpage:
https://busybox.net/

busybox-binsh-1.35.0-r29 installed size:
8192 B

busybox-binsh-1.35.0-r29 license:
GPL-2.0-only

```

### `apk` package: `ca-certificates`

```console
ca-certificates-20220614-r4 description:
Common CA certificates PEM files from Mozilla

ca-certificates-20220614-r4 webpage:
https://www.mozilla.org/en-US/about/governance/policies/security-group/certs/

ca-certificates-20220614-r4 installed size:
688 KiB

ca-certificates-20220614-r4 license:
MPL-2.0 AND MIT

```

### `apk` package: `ca-certificates-bundle`

```console
ca-certificates-bundle-20220614-r4 description:
Pre generated bundle of Mozilla certificates

ca-certificates-bundle-20220614-r4 webpage:
https://www.mozilla.org/en-US/about/governance/policies/security-group/certs/

ca-certificates-bundle-20220614-r4 installed size:
232 KiB

ca-certificates-bundle-20220614-r4 license:
MPL-2.0 AND MIT

```

### `apk` package: `curl`

```console
curl-7.87.0-r0 description:
URL retrival utility and library

curl-7.87.0-r0 webpage:
https://curl.se/

curl-7.87.0-r0 installed size:
264 KiB

curl-7.87.0-r0 license:
curl

```

### `apk` package: `fontconfig`

```console
fontconfig-2.14.1-r0 description:
Library for configuring and customizing font access

fontconfig-2.14.1-r0 webpage:
https://www.freedesktop.org/wiki/Software/fontconfig

fontconfig-2.14.1-r0 installed size:
716 KiB

fontconfig-2.14.1-r0 license:
MIT

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

### `apk` package: `gnu-libiconv-libs`

```console
gnu-libiconv-libs-1.17-r0 description:
GNU charset conversion library for libc which doesn't implement it (libraries)

gnu-libiconv-libs-1.17-r0 webpage:
https://www.gnu.org/software/libiconv

gnu-libiconv-libs-1.17-r0 installed size:
1076 KiB

gnu-libiconv-libs-1.17-r0 license:
LGPL-2.1-or-later

```

### `apk` package: `icu-data-en`

```console
icu-data-en-72.1-r1 description:
Stripped down ICU data with only en_US/GB locale and no legacy charset converters

icu-data-en-72.1-r1 webpage:
https://icu.unicode.org/

icu-data-en-72.1-r1 installed size:
2676 KiB

icu-data-en-72.1-r1 license:
MIT ICU Unicode-TOU

```

### `apk` package: `icu-libs`

```console
icu-libs-72.1-r1 description:
International Components for Unicode library (libraries)

icu-libs-72.1-r1 webpage:
https://icu.unicode.org/

icu-libs-72.1-r1 installed size:
4552 KiB

icu-libs-72.1-r1 license:
MIT ICU Unicode-TOU

```

### `apk` package: `imagemagick-libs`

```console
imagemagick-libs-7.1.0.52-r0 description:
Collection of tools and libraries for many image formats (libraries)

imagemagick-libs-7.1.0.52-r0 webpage:
https://imagemagick.org/

imagemagick-libs-7.1.0.52-r0 installed size:
3304 KiB

imagemagick-libs-7.1.0.52-r0 license:
ImageMagick

```

### `apk` package: `lcms2`

```console
lcms2-2.14-r0 description:
Color Management Engine

lcms2-2.14-r0 webpage:
https://www.littlecms.com

lcms2-2.14-r0 installed size:
348 KiB

lcms2-2.14-r0 license:
MIT GPL-3.0-only

```

### `apk` package: `less`

```console
less-608-r0 description:
File pager

less-608-r0 webpage:
https://www.greenwoodsoftware.com/less/

less-608-r0 installed size:
224 KiB

less-608-r0 license:
GPL-3.0-or-later OR BSD-2-Clause

```

### `apk` package: `libacl`

```console
libacl-2.3.1-r1 description:
Dynamic library for access control list support

libacl-2.3.1-r1 webpage:
https://savannah.nongnu.org/projects/acl

libacl-2.3.1-r1 installed size:
44 KiB

libacl-2.3.1-r1 license:
LGPL-2.1-or-later AND GPL-2.0-or-later

```

### `apk` package: `libbsd`

```console
libbsd-0.11.7-r0 description:
commonly-used BSD functions not implemented by all libcs

libbsd-0.11.7-r0 webpage:
https://libbsd.freedesktop.org/

libbsd-0.11.7-r0 installed size:
84 KiB

libbsd-0.11.7-r0 license:
BSD-3-Clause

```

### `apk` package: `libbz2`

```console
libbz2-1.0.8-r4 description:
Shared library for bz2

libbz2-1.0.8-r4 webpage:
https://sourceware.org/bzip2/

libbz2-1.0.8-r4 installed size:
88 KiB

libbz2-1.0.8-r4 license:
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

### `apk` package: `libcrypto3`

```console
libcrypto3-3.0.7-r2 description:
Crypto library from openssl

libcrypto3-3.0.7-r2 webpage:
https://www.openssl.org/

libcrypto3-3.0.7-r2 installed size:
4108 KiB

libcrypto3-3.0.7-r2 license:
Apache-2.0

```

### `apk` package: `libcurl`

```console
libcurl-7.87.0-r0 description:
The multiprotocol file transfer library

libcurl-7.87.0-r0 webpage:
https://curl.se/

libcurl-7.87.0-r0 installed size:
540 KiB

libcurl-7.87.0-r0 license:
curl

```

### `apk` package: `libexpat`

```console
libexpat-2.5.0-r0 description:
XML Parser library written in C (libraries)

libexpat-2.5.0-r0 webpage:
https://libexpat.github.io/

libexpat-2.5.0-r0 installed size:
152 KiB

libexpat-2.5.0-r0 license:
MIT

```

### `apk` package: `libgcc`

```console
libgcc-12.2.1_git20220924-r4 description:
GNU C compiler runtime libraries

libgcc-12.2.1_git20220924-r4 webpage:
https://gcc.gnu.org

libgcc-12.2.1_git20220924-r4 installed size:
132 KiB

libgcc-12.2.1_git20220924-r4 license:
GPL-2.0-or-later LGPL-2.1-or-later

```

### `apk` package: `libgomp`

```console
libgomp-12.2.1_git20220924-r4 description:
GCC shared-memory parallel programming API library

libgomp-12.2.1_git20220924-r4 webpage:
https://gcc.gnu.org

libgomp-12.2.1_git20220924-r4 installed size:
292 KiB

libgomp-12.2.1_git20220924-r4 license:
GPL-2.0-or-later LGPL-2.1-or-later

```

### `apk` package: `libjpeg-turbo`

```console
libjpeg-turbo-2.1.4-r0 description:
Accelerated baseline JPEG compression and decompression library

libjpeg-turbo-2.1.4-r0 webpage:
https://libjpeg-turbo.org/

libjpeg-turbo-2.1.4-r0 installed size:
1136 KiB

libjpeg-turbo-2.1.4-r0 license:
BSD-3-Clause AND IJG AND Zlib

```

### `apk` package: `libltdl`

```console
libltdl-2.4.7-r0 description:
Runtime libraries for GNU Libtool Dynamic Module Loader

libltdl-2.4.7-r0 webpage:
https://www.gnu.org/software/libtool

libltdl-2.4.7-r0 installed size:
52 KiB

libltdl-2.4.7-r0 license:
LGPL-2.0-or-later AND GPL-2.0-or-later

```

### `apk` package: `libmd`

```console
libmd-1.0.4-r0 description:
Message Digest functions from BSD systems

libmd-1.0.4-r0 webpage:
https://www.hadrons.org/software/libmd/

libmd-1.0.4-r0 installed size:
56 KiB

libmd-1.0.4-r0 license:
Public Domain

```

### `apk` package: `libpng`

```console
libpng-1.6.38-r0 description:
Portable Network Graphics library

libpng-1.6.38-r0 webpage:
http://www.libpng.org

libpng-1.6.38-r0 installed size:
204 KiB

libpng-1.6.38-r0 license:
Libpng

```

### `apk` package: `libsodium`

```console
libsodium-1.0.18-r2 description:
P(ortable|ackageable) NaCl-based crypto library

libsodium-1.0.18-r2 webpage:
https://github.com/jedisct1/libsodium

libsodium-1.0.18-r2 installed size:
336 KiB

libsodium-1.0.18-r2 license:
ISC

```

### `apk` package: `libssl3`

```console
libssl3-3.0.7-r2 description:
SSL shared libraries

libssl3-3.0.7-r2 webpage:
https://www.openssl.org/

libssl3-3.0.7-r2 installed size:
608 KiB

libssl3-3.0.7-r2 license:
Apache-2.0

```

### `apk` package: `libstdc++`

```console
libstdc++-12.2.1_git20220924-r4 description:
GNU C++ standard runtime library

libstdc++-12.2.1_git20220924-r4 webpage:
https://gcc.gnu.org

libstdc++-12.2.1_git20220924-r4 installed size:
2356 KiB

libstdc++-12.2.1_git20220924-r4 license:
GPL-2.0-or-later LGPL-2.1-or-later

```

### `apk` package: `libwebp`

```console
libwebp-1.2.4-r1 description:
Libraries for working with WebP images

libwebp-1.2.4-r1 webpage:
https://developers.google.com/speed/webp

libwebp-1.2.4-r1 installed size:
584 KiB

libwebp-1.2.4-r1 license:
BSD-3-Clause

```

### `apk` package: `libx11`

```console
libx11-1.8.3-r0 description:
X11 client-side library

libx11-1.8.3-r0 webpage:
http://xorg.freedesktop.org/

libx11-1.8.3-r0 installed size:
3180 KiB

libx11-1.8.3-r0 license:
custom:XFREE86

```

### `apk` package: `libxau`

```console
libxau-1.0.10-r0 description:
X11 authorisation library

libxau-1.0.10-r0 webpage:
http://xorg.freedesktop.org/

libxau-1.0.10-r0 installed size:
28 KiB

libxau-1.0.10-r0 license:
MIT

```

### `apk` package: `libxcb`

```console
libxcb-1.15-r0 description:
X11 client-side library

libxcb-1.15-r0 webpage:
https://xcb.freedesktop.org

libxcb-1.15-r0 installed size:
972 KiB

libxcb-1.15-r0 license:
MIT

```

### `apk` package: `libxdmcp`

```console
libxdmcp-1.1.4-r0 description:
X11 Display Manager Control Protocol library

libxdmcp-1.1.4-r0 webpage:
http://xorg.freedesktop.org/

libxdmcp-1.1.4-r0 installed size:
40 KiB

libxdmcp-1.1.4-r0 license:
MIT

```

### `apk` package: `libxext`

```console
libxext-1.3.5-r0 description:
X11 miscellaneous extensions library

libxext-1.3.5-r0 webpage:
http://xorg.freedesktop.org/

libxext-1.3.5-r0 installed size:
84 KiB

libxext-1.3.5-r0 license:
MIT

```

### `apk` package: `libxml2`

```console
libxml2-2.10.3-r1 description:
XML parsing library, version 2

libxml2-2.10.3-r1 webpage:
http://www.xmlsoft.org/

libxml2-2.10.3-r1 installed size:
1188 KiB

libxml2-2.10.3-r1 license:
MIT

```

### `apk` package: `libzip`

```console
libzip-1.9.2-r2 description:
C library for manipulating zip archives

libzip-1.9.2-r2 webpage:
https://libzip.org/

libzip-1.9.2-r2 installed size:
116 KiB

libzip-1.9.2-r2 license:
BSD-3-Clause

```

### `apk` package: `mariadb-client`

```console
mariadb-client-10.6.11-r0 description:
Client for the MariaDB database

mariadb-client-10.6.11-r0 webpage:
https://www.mariadb.org/

mariadb-client-10.6.11-r0 installed size:
28 MiB

mariadb-client-10.6.11-r0 license:
GPL-2.0-or-later

```

### `apk` package: `mariadb-common`

```console
mariadb-common-10.6.11-r0 description:
MariaDB common files for both server and client

mariadb-common-10.6.11-r0 webpage:
https://www.mariadb.org/

mariadb-common-10.6.11-r0 installed size:
2260 KiB

mariadb-common-10.6.11-r0 license:
GPL-2.0-or-later

```

### `apk` package: `musl`

```console
musl-1.2.3-r4 description:
the musl c library (libc) implementation

musl-1.2.3-r4 webpage:
https://musl.libc.org/

musl-1.2.3-r4 installed size:
620 KiB

musl-1.2.3-r4 license:
MIT

```

### `apk` package: `musl-utils`

```console
musl-utils-1.2.3-r4 description:
the musl c library (libc) implementation

musl-utils-1.2.3-r4 webpage:
https://musl.libc.org/

musl-utils-1.2.3-r4 installed size:
132 KiB

musl-utils-1.2.3-r4 license:
MIT AND BSD-2-Clause AND GPL-2.0-or-later

```

### `apk` package: `mysql-client`

```console
mysql-client-10.6.11-r0 description:
Dummy package for mysql-client migration

mysql-client-10.6.11-r0 webpage:
https://www.mariadb.org/

mysql-client-10.6.11-r0 installed size:
4096 B

mysql-client-10.6.11-r0 license:
GPL-2.0-or-later

```

### `apk` package: `ncurses-libs`

```console
ncurses-libs-6.3_p20221119-r0 description:
Ncurses libraries

ncurses-libs-6.3_p20221119-r0 webpage:
https://invisible-island.net/ncurses/

ncurses-libs-6.3_p20221119-r0 installed size:
500 KiB

ncurses-libs-6.3_p20221119-r0 license:
MIT

```

### `apk` package: `ncurses-terminfo-base`

```console
ncurses-terminfo-base-6.3_p20221119-r0 description:
Descriptions of common terminals

ncurses-terminfo-base-6.3_p20221119-r0 webpage:
https://invisible-island.net/ncurses/

ncurses-terminfo-base-6.3_p20221119-r0 installed size:
216 KiB

ncurses-terminfo-base-6.3_p20221119-r0 license:
MIT

```

### `apk` package: `nghttp2-libs`

```console
nghttp2-libs-1.51.0-r0 description:
Experimental HTTP/2 client, server and proxy (libraries)

nghttp2-libs-1.51.0-r0 webpage:
https://nghttp2.org

nghttp2-libs-1.51.0-r0 installed size:
172 KiB

nghttp2-libs-1.51.0-r0 license:
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
openssl-3.0.7-r2 description:
Toolkit for Transport Layer Security (TLS)

openssl-3.0.7-r2 webpage:
https://www.openssl.org/

openssl-3.0.7-r2 installed size:
868 KiB

openssl-3.0.7-r2 license:
Apache-2.0

```

### `apk` package: `readline`

```console
readline-8.2.0-r0 description:
GNU readline library

readline-8.2.0-r0 webpage:
https://tiswww.cwru.edu/php/chet/readline/rltop.html

readline-8.2.0-r0 installed size:
308 KiB

readline-8.2.0-r0 license:
GPL-2.0-or-later

```

### `apk` package: `scanelf`

```console
scanelf-1.3.5-r1 description:
Scan ELF binaries for stuff

scanelf-1.3.5-r1 webpage:
https://wiki.gentoo.org/wiki/Hardened/PaX_Utilities

scanelf-1.3.5-r1 installed size:
96 KiB

scanelf-1.3.5-r1 license:
GPL-2.0-only

```

### `apk` package: `sqlite-libs`

```console
sqlite-libs-3.40.1-r0 description:
Sqlite3 library

sqlite-libs-3.40.1-r0 webpage:
https://www.sqlite.org/

sqlite-libs-3.40.1-r0 installed size:
1008 KiB

sqlite-libs-3.40.1-r0 license:
blessing

```

### `apk` package: `ssl_client`

```console
ssl_client-1.35.0-r29 description:
EXternal ssl_client for busybox wget

ssl_client-1.35.0-r29 webpage:
https://busybox.net/

ssl_client-1.35.0-r29 installed size:
28 KiB

ssl_client-1.35.0-r29 license:
GPL-2.0-only

```

### `apk` package: `tar`

```console
tar-1.34-r1 description:
Utility used to store, backup, and transport files

tar-1.34-r1 webpage:
https://www.gnu.org/software/tar/

tar-1.34-r1 installed size:
488 KiB

tar-1.34-r1 license:
GPL-3.0-or-later

```

### `apk` package: `xz`

```console
xz-5.2.9-r0 description:
Library and CLI tools for XZ and LZMA compressed files

xz-5.2.9-r0 webpage:
https://tukaani.org/xz

xz-5.2.9-r0 installed size:
172 KiB

xz-5.2.9-r0 license:
GPL-2.0-or-later AND Public-Domain AND LGPL-2.1-or-later

```

### `apk` package: `xz-libs`

```console
xz-libs-5.2.9-r0 description:
Library and CLI tools for XZ and LZMA compressed files (libraries)

xz-libs-5.2.9-r0 webpage:
https://tukaani.org/xz

xz-libs-5.2.9-r0 installed size:
176 KiB

xz-libs-5.2.9-r0 license:
GPL-2.0-or-later AND Public-Domain AND LGPL-2.1-or-later

```

### `apk` package: `zlib`

```console
zlib-1.2.13-r0 description:
A compression/decompression Library

zlib-1.2.13-r0 webpage:
https://zlib.net/

zlib-1.2.13-r0 installed size:
108 KiB

zlib-1.2.13-r0 license:
Zlib

```

### `apk` package: `zstd-libs`

```console
zstd-libs-1.5.2-r9 description:
Zstandard - Fast real-time compression algorithm (libraries)

zstd-libs-1.5.2-r9 webpage:
https://www.zstd.net/

zstd-libs-1.5.2-r9 installed size:
488 KiB

zstd-libs-1.5.2-r9 license:
BSD-3-Clause GPL-2.0-or-later

```
