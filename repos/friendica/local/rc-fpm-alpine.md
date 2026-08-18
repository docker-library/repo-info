# `friendica:2026.08-rc-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:3d50f0581349c9534e5a48d47dc99a0636434e340a3846056191cb3086227395`
- Created: `2026-08-17T17:38:05.99556973Z`
- Virtual Size: ~ 159.15 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/entrypoint-dev.sh"]`
- Command: `["php-fpm"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64`
  - `PHP_LDFLAGS=-Wl,-O1 -pie`
  - `GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD`
  - `PHP_VERSION=8.4.24`
  - `PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz`
  - `PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc`
  - `PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731`
  - `GOSU_VERSION=1.17`
  - `PHP_MEMORY_LIMIT=512M`
  - `PHP_UPLOAD_LIMIT=512M`
  - `FRIENDICA_SYSLOG_FLAGS=39`
  - `FRIENDICA_VERSION=2026.08-rc`

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

### `apk` package: `fftw-double-libs`

```console
fftw-double-libs-3.3.11-r0 description:
Discrete Fourier transform (DFT) library

fftw-double-libs-3.3.11-r0 webpage:
http://www.fftw.org/

fftw-double-libs-3.3.11-r0 installed size:
2023 KiB

fftw-double-libs-3.3.11-r0 license:
GPL-2.0-or-later

```

### `apk` package: `fontconfig`

```console
fontconfig-2.17.1-r1 description:
Library for configuring and customizing font access

fontconfig-2.17.1-r1 webpage:
https://www.freedesktop.org/wiki/Software/fontconfig

fontconfig-2.17.1-r1 installed size:
518 KiB

fontconfig-2.17.1-r1 license:
MIT

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

### `apk` package: `fribidi`

```console
fribidi-1.0.16-r3 description:
Free Implementation of the Unicode Bidirectional Algorithm

fribidi-1.0.16-r3 webpage:
https://github.com/fribidi/fribidi

fribidi-1.0.16-r3 installed size:
144 KiB

fribidi-1.0.16-r3 license:
LGPL-2.1-or-later

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

### `apk` package: `glib`

```console
glib-2.88.1-r1 description:
Low-level core library that forms the basis for projects such as GTK and GNOME

glib-2.88.1-r1 webpage:
https://developer.gnome.org/glib/

glib-2.88.1-r1 installed size:
5262 KiB

glib-2.88.1-r1 license:
LGPL-2.1-or-later

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

### `apk` package: `gnupg`

```console
gnupg-2.4.9-r1 description:
GNU Privacy Guard 2 - meta package for full GnuPG suite

gnupg-2.4.9-r1 webpage:
https://www.gnupg.org/

gnupg-2.4.9-r1 installed size:
0 B

gnupg-2.4.9-r1 license:
GPL-3.0-or-later

```

### `apk` package: `gnupg-dirmngr`

```console
gnupg-dirmngr-2.4.9-r1 description:
GNU Privacy Guard 2 - network certificate management service

gnupg-dirmngr-2.4.9-r1 webpage:
https://www.gnupg.org/

gnupg-dirmngr-2.4.9-r1 installed size:
625 KiB

gnupg-dirmngr-2.4.9-r1 license:
GPL-3.0-or-later

```

### `apk` package: `gnupg-gpgconf`

```console
gnupg-gpgconf-2.4.9-r1 description:
GNU Privacy Guard 2 - core configuration utilities

gnupg-gpgconf-2.4.9-r1 webpage:
https://www.gnupg.org/

gnupg-gpgconf-2.4.9-r1 installed size:
233 KiB

gnupg-gpgconf-2.4.9-r1 license:
GPL-3.0-or-later

```

### `apk` package: `gnupg-keyboxd`

```console
gnupg-keyboxd-2.4.9-r1 description:
GNU Privacy Guard 2 - keyboxd manager

gnupg-keyboxd-2.4.9-r1 webpage:
https://www.gnupg.org/

gnupg-keyboxd-2.4.9-r1 installed size:
223 KiB

gnupg-keyboxd-2.4.9-r1 license:
GPL-3.0-or-later

```

### `apk` package: `gnupg-utils`

```console
gnupg-utils-2.4.9-r1 description:
GNU Privacy Guard 2 - utility programs

gnupg-utils-2.4.9-r1 webpage:
https://www.gnupg.org/

gnupg-utils-2.4.9-r1 installed size:
824 KiB

gnupg-utils-2.4.9-r1 license:
GPL-3.0-or-later

```

### `apk` package: `gnupg-wks-client`

```console
gnupg-wks-client-2.4.9-r1 description:
GNU Privacy Guard 2 - Web Key Service client

gnupg-wks-client-2.4.9-r1 webpage:
https://www.gnupg.org/

gnupg-wks-client-2.4.9-r1 installed size:
167 KiB

gnupg-wks-client-2.4.9-r1 license:
GPL-3.0-or-later

```

### `apk` package: `gnutls`

```console
gnutls-3.8.13-r0 description:
TLS protocol implementation

gnutls-3.8.13-r0 webpage:
https://www.gnutls.org/

gnutls-3.8.13-r0 installed size:
2012 KiB

gnutls-3.8.13-r0 license:
LGPL-2.1-or-later

```

### `apk` package: `gpg`

```console
gpg-2.4.9-r1 description:
GNU Privacy Guard 2 - public key operations only

gpg-2.4.9-r1 webpage:
https://www.gnupg.org/

gpg-2.4.9-r1 installed size:
925 KiB

gpg-2.4.9-r1 license:
GPL-3.0-or-later

```

### `apk` package: `gpg-agent`

```console
gpg-agent-2.4.9-r1 description:
GNU Privacy Guard 2 - cryptographic agent

gpg-agent-2.4.9-r1 webpage:
https://www.gnupg.org/

gpg-agent-2.4.9-r1 installed size:
634 KiB

gpg-agent-2.4.9-r1 license:
GPL-3.0-or-later

```

### `apk` package: `gpg-wks-server`

```console
gpg-wks-server-2.4.9-r1 description:
GNU Privacy Guard 2 - Web Key Service server

gpg-wks-server-2.4.9-r1 webpage:
https://www.gnupg.org/

gpg-wks-server-2.4.9-r1 installed size:
150 KiB

gpg-wks-server-2.4.9-r1 license:
GPL-3.0-or-later

```

### `apk` package: `gpgsm`

```console
gpgsm-2.4.9-r1 description:
GNU Privacy Guard 2 - S/MIME version

gpgsm-2.4.9-r1 webpage:
https://www.gnupg.org/

gpgsm-2.4.9-r1 installed size:
477 KiB

gpgsm-2.4.9-r1 license:
GPL-3.0-or-later

```

### `apk` package: `gpgv`

```console
gpgv-2.4.9-r1 description:
GNU Privacy Guard 2 - signature verification only

gpgv-2.4.9-r1 webpage:
https://www.gnupg.org/

gpgv-2.4.9-r1 installed size:
428 KiB

gpgv-2.4.9-r1 license:
GPL-3.0-or-later

```

### `apk` package: `graphite2`

```console
graphite2-1.3.14-r6 description:
reimplementation of the SIL Graphite text processing engine

graphite2-1.3.14-r6 webpage:
https://graphite.sil.org/

graphite2-1.3.14-r6 installed size:
117 KiB

graphite2-1.3.14-r6 license:
LGPL-2.1-or-later OR MPL-1.1

```

### `apk` package: `harfbuzz`

```console
harfbuzz-13.2.1-r0 description:
Text shaping library

harfbuzz-13.2.1-r0 webpage:
https://harfbuzz.github.io/

harfbuzz-13.2.1-r0 installed size:
1657 KiB

harfbuzz-13.2.1-r0 license:
MIT

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

### `apk` package: `imagemagick`

```console
imagemagick-7.1.2.27-r0 description:
Collection of tools and libraries for many image formats

imagemagick-7.1.2.27-r0 webpage:
https://imagemagick.org/

imagemagick-7.1.2.27-r0 installed size:
3700 KiB

imagemagick-7.1.2.27-r0 license:
ImageMagick

```

### `apk` package: `imagemagick-jpeg`

```console
imagemagick-jpeg-7.1.2.27-r0 description:
Collection of tools and libraries for many image formats (JPEG support modules)

imagemagick-jpeg-7.1.2.27-r0 webpage:
https://imagemagick.org/

imagemagick-jpeg-7.1.2.27-r0 installed size:
62 KiB

imagemagick-jpeg-7.1.2.27-r0 license:
ImageMagick

```

### `apk` package: `imagemagick-libs`

```console
imagemagick-libs-7.1.2.27-r0 description:
Collection of tools and libraries for many image formats (libraries)

imagemagick-libs-7.1.2.27-r0 webpage:
https://imagemagick.org/

imagemagick-libs-7.1.2.27-r0 installed size:
4313 KiB

imagemagick-libs-7.1.2.27-r0 license:
ImageMagick

```

### `apk` package: `imagemagick-webp`

```console
imagemagick-webp-7.1.2.27-r0 description:
Collection of tools and libraries for many image formats (WebP support modules)

imagemagick-webp-7.1.2.27-r0 webpage:
https://imagemagick.org/

imagemagick-webp-7.1.2.27-r0 installed size:
30 KiB

imagemagick-webp-7.1.2.27-r0 license:
ImageMagick

```

### `apk` package: `keyutils-libs`

```console
keyutils-libs-1.6.3-r4 description:
Key utilities library

keyutils-libs-1.6.3-r4 webpage:
https://people.redhat.com/~dhowells/keyutils/

keyutils-libs-1.6.3-r4 installed size:
17 KiB

keyutils-libs-1.6.3-r4 license:
GPL-2.0-or-later AND LGPL-2.0-or-later

```

### `apk` package: `krb5-conf`

```console
krb5-conf-1.0-r2 description:
Shared krb5.conf for both MIT krb5 and heimdal

krb5-conf-1.0-r2 webpage:
https://web.mit.edu/kerberos/www/

krb5-conf-1.0-r2 installed size:
450 B

krb5-conf-1.0-r2 license:
MIT

```

### `apk` package: `krb5-libs`

```console
krb5-libs-1.22.2-r1 description:
The shared libraries used by Kerberos 5

krb5-libs-1.22.2-r1 webpage:
https://web.mit.edu/kerberos/www/

krb5-libs-1.22.2-r1 installed size:
1747 KiB

krb5-libs-1.22.2-r1 license:
MIT

```

### `apk` package: `lcms2`

```console
lcms2-2.19-r0 description:
Color Management Engine

lcms2-2.19-r0 webpage:
https://www.littlecms.com

lcms2-2.19-r0 installed size:
332 KiB

lcms2-2.19-r0 license:
MIT

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

### `apk` package: `libassuan`

```console
libassuan-3.0.2-r0 description:
IPC library used by some GnuPG related software

libassuan-3.0.2-r0 webpage:
https://www.gnupg.org/software/libassuan/index.html

libassuan-3.0.2-r0 installed size:
74 KiB

libassuan-3.0.2-r0 license:
LGPL-2.1-or-later

```

### `apk` package: `libblkid`

```console
libblkid-2.42.1-r0 description:
Block device identification library from util-linux

libblkid-2.42.1-r0 webpage:
https://git.kernel.org/cgit/utils/util-linux/util-linux.git

libblkid-2.42.1-r0 installed size:
198 KiB

libblkid-2.42.1-r0 license:
LGPL-2.1-or-later

```

### `apk` package: `libbsd`

```console
libbsd-0.12.2-r0 description:
commonly-used BSD functions not implemented by all libcs

libbsd-0.12.2-r0 webpage:
https://libbsd.freedesktop.org/

libbsd-0.12.2-r0 installed size:
62 KiB

libbsd-0.12.2-r0 license:
BSD-3-Clause

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

### `apk` package: `libcom_err`

```console
libcom_err-1.47.4-r0 description:
Common error description library

libcom_err-1.47.4-r0 webpage:
https://e2fsprogs.sourceforge.net/

libcom_err-1.47.4-r0 installed size:
17 KiB

libcom_err-1.47.4-r0 license:
GPL-2.0-or-later AND LGPL-2.0-or-later AND BSD-3-Clause AND MIT

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

### `apk` package: `libeconf`

```console
libeconf-0.8.3-r0 description:
Enhanced Config File Parser

libeconf-0.8.3-r0 webpage:
https://github.com/openSUSE/libeconf

libeconf-0.8.3-r0 installed size:
64 KiB

libeconf-0.8.3-r0 license:
MIT

```

### `apk` package: `libexpat`

```console
libexpat-2.8.2-r0 description:
XML Parser library written in C (libraries)

libexpat-2.8.2-r0 webpage:
https://libexpat.github.io/

libexpat-2.8.2-r0 installed size:
133 KiB

libexpat-2.8.2-r0 license:
MIT

```

### `apk` package: `libffi`

```console
libffi-3.5.2-r1 description:
portable, high level programming interface to various calling conventions.

libffi-3.5.2-r1 webpage:
https://sourceware.org/libffi/

libffi-3.5.2-r1 installed size:
38 KiB

libffi-3.5.2-r1 license:
MIT

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

### `apk` package: `libgcrypt`

```console
libgcrypt-1.12.2-r0 description:
General purpose crypto library based on the code used in GnuPG

libgcrypt-1.12.2-r0 webpage:
https://www.gnupg.org/

libgcrypt-1.12.2-r0 installed size:
1510 KiB

libgcrypt-1.12.2-r0 license:
LGPL-2.1-or-later AND GPL-2.0-or-later

```

### `apk` package: `libgomp`

```console
libgomp-15.2.0-r5 description:
GCC shared-memory parallel programming API library

libgomp-15.2.0-r5 webpage:
https://gcc.gnu.org

libgomp-15.2.0-r5 installed size:
330 KiB

libgomp-15.2.0-r5 license:
GPL-2.0-or-later AND LGPL-2.1-or-later

```

### `apk` package: `libgpg-error`

```console
libgpg-error-1.61-r0 description:
Support library for libgcrypt

libgpg-error-1.61-r0 webpage:
https://www.gnupg.org/

libgpg-error-1.61-r0 installed size:
180 KiB

libgpg-error-1.61-r0 license:
GPL-2.0-or-later AND LGPL-2.1-or-later

```

### `apk` package: `libgsasl`

```console
libgsasl-2.2.2-r1 description:
An implementation of the Simple Authentication and Security Layer framework

libgsasl-2.2.2-r1 webpage:
https://www.gnu.org/software/gsasl/

libgsasl-2.2.2-r1 installed size:
119 KiB

libgsasl-2.2.2-r1 license:
LGPL-2.0-or-later

```

### `apk` package: `libidn`

```console
libidn-1.43-r0 description:
Encode/Decode library for internationalized domain names

libidn-1.43-r0 webpage:
https://www.gnu.org/software/libidn

libidn-1.43-r0 installed size:
253 KiB

libidn-1.43-r0 license:
LGPL-2.1-or-later

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

### `apk` package: `libintl`

```console
libintl-1.0-r0 description:
GNU gettext runtime library

libintl-1.0-r0 webpage:
https://www.gnu.org/software/gettext/gettext.html

libintl-1.0-r0 installed size:
133 KiB

libintl-1.0-r0 license:
LGPL-2.1-or-later

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

### `apk` package: `libksba`

```console
libksba-1.7.0-r0 description:
Libksba is a CMS and X.509 access library

libksba-1.7.0-r0 webpage:
https://www.gnupg.org/software/libksba/index.html

libksba-1.7.0-r0 installed size:
205 KiB

libksba-1.7.0-r0 license:
LGPL-3.0-only AND GPL-2.0-only AND GPL-3.0-only

```

### `apk` package: `libldap`

```console
libldap-2.6.14-r0 description:
OpenLDAP libraries

libldap-2.6.14-r0 webpage:
https://www.openldap.org/

libldap-2.6.14-r0 installed size:
365 KiB

libldap-2.6.14-r0 license:
OLDAP-2.8

```

### `apk` package: `libltdl`

```console
libltdl-2.6.0-r1 description:
Runtime libraries for GNU Libtool Dynamic Module Loader

libltdl-2.6.0-r1 webpage:
https://www.gnu.org/software/libtool/

libltdl-2.6.0-r1 installed size:
37 KiB

libltdl-2.6.0-r1 license:
LGPL-2.0-or-later AND GPL-2.0-or-later

```

### `apk` package: `libmd`

```console
libmd-1.2.0-r0 description:
Message Digest functions from BSD systems

libmd-1.2.0-r0 webpage:
https://www.hadrons.org/software/libmd/

libmd-1.2.0-r0 installed size:
61 KiB

libmd-1.2.0-r0 license:
BSD-3-Clause AND BSD-2-Clause AND ISC AND Beerware AND Public Domain

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

### `apk` package: `libmount`

```console
libmount-2.42.1-r0 description:
Block device identification library from util-linux

libmount-2.42.1-r0 webpage:
https://git.kernel.org/cgit/utils/util-linux/util-linux.git

libmount-2.42.1-r0 installed size:
282 KiB

libmount-2.42.1-r0 license:
LGPL-2.1-or-later

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

### `apk` package: `libraqm`

```console
libraqm-0.10.2-r0 description:
A library that encapsulates the logic for complex text layout

libraqm-0.10.2-r0 webpage:
https://github.com/HOST-Oman/libraqm/

libraqm-0.10.2-r0 installed size:
21 KiB

libraqm-0.10.2-r0 license:
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

### `apk` package: `libsecret`

```console
libsecret-0.21.7-r0 description:
Library for storing and retrieving passwords and other secrets

libsecret-0.21.7-r0 webpage:
https://gnome.pages.gitlab.gnome.org/libsecret

libsecret-0.21.7-r0 installed size:
377 KiB

libsecret-0.21.7-r0 license:
LGPL-2.1-or-later

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

### `apk` package: `libtasn1`

```console
libtasn1-4.21.0-r0 description:
The ASN.1 library used in GNUTLS

libtasn1-4.21.0-r0 webpage:
https://www.gnu.org/software/gnutls/

libtasn1-4.21.0-r0 installed size:
65 KiB

libtasn1-4.21.0-r0 license:
LGPL-2.1-or-later

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

### `apk` package: `libverto`

```console
libverto-0.3.2-r2 description:
Main loop abstraction library

libverto-0.3.2-r2 webpage:
https://github.com/latchset/libverto

libverto-0.3.2-r2 installed size:
21 KiB

libverto-0.3.2-r2 license:
MIT

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

### `apk` package: `libwebpdemux`

```console
libwebpdemux-1.6.0-r0 description:
Libraries for working with WebP images (libwebpdemux library)

libwebpdemux-1.6.0-r0 webpage:
https://developers.google.com/speed/webp

libwebpdemux-1.6.0-r0 installed size:
21 KiB

libwebpdemux-1.6.0-r0 license:
BSD-3-Clause

```

### `apk` package: `libwebpmux`

```console
libwebpmux-1.6.0-r0 description:
Libraries for working with WebP images (libwebpmux library)

libwebpmux-1.6.0-r0 webpage:
https://developers.google.com/speed/webp

libwebpmux-1.6.0-r0 installed size:
45 KiB

libwebpmux-1.6.0-r0 license:
BSD-3-Clause

```

### `apk` package: `libx11`

```console
libx11-1.8.13-r0 description:
X11 client-side library

libx11-1.8.13-r0 webpage:
https://xorg.freedesktop.org/

libx11-1.8.13-r0 installed size:
2271 KiB

libx11-1.8.13-r0 license:
X11

```

### `apk` package: `libxau`

```console
libxau-1.0.12-r0 description:
X11 authorisation library

libxau-1.0.12-r0 webpage:
https://xorg.freedesktop.org/

libxau-1.0.12-r0 installed size:
13 KiB

libxau-1.0.12-r0 license:
MIT

```

### `apk` package: `libxcb`

```console
libxcb-1.17.0-r2 description:
X11 client-side library

libxcb-1.17.0-r2 webpage:
https://xcb.freedesktop.org/

libxcb-1.17.0-r2 installed size:
943 KiB

libxcb-1.17.0-r2 license:
MIT

```

### `apk` package: `libxdmcp`

```console
libxdmcp-1.1.5-r1 description:
X11 Display Manager Control Protocol library

libxdmcp-1.1.5-r1 webpage:
https://xorg.freedesktop.org/

libxdmcp-1.1.5-r1 installed size:
25 KiB

libxdmcp-1.1.5-r1 license:
MIT

```

### `apk` package: `libxext`

```console
libxext-1.3.7-r0 description:
X11 miscellaneous extensions library

libxext-1.3.7-r0 webpage:
https://xorg.freedesktop.org/

libxext-1.3.7-r0 installed size:
66 KiB

libxext-1.3.7-r0 license:
MIT

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

### `apk` package: `libxxhash`

```console
libxxhash-0.8.3-r1 description:
Extremely fast non-cryptographic hash algorithm (libraries)

libxxhash-0.8.3-r1 webpage:
https://cyan4973.github.io/xxHash/

libxxhash-0.8.3-r1 installed size:
69 KiB

libxxhash-0.8.3-r1 license:
BSD-2-Clause

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

### `apk` package: `linux-pam`

```console
linux-pam-1.7.1-r2 description:
Linux PAM (Pluggable Authentication Modules for Linux)

linux-pam-1.7.1-r2 webpage:
https://www.kernel.org/pub/linux/libs/pam

linux-pam-1.7.1-r2 installed size:
830 KiB

linux-pam-1.7.1-r2 license:
BSD-3-Clause

```

### `apk` package: `lz4-libs`

```console
lz4-libs-1.10.0-r1 description:
LZ4 is lossless compression algorithm with fast decoder @ multiple GB/s per core. (libraries)

lz4-libs-1.10.0-r1 webpage:
https://github.com/lz4/lz4

lz4-libs-1.10.0-r1 installed size:
165 KiB

lz4-libs-1.10.0-r1 license:
BSD-2-Clause AND GPL-2.0-or-later

```

### `apk` package: `msmtp`

```console
msmtp-1.8.32-r1 description:
SMTP client with a sendmail compatible interface

msmtp-1.8.32-r1 webpage:
https://marlam.de/msmtp/

msmtp-1.8.32-r1 installed size:
141 KiB

msmtp-1.8.32-r1 license:
GPL-3.0-or-later

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

### `apk` package: `nettle`

```console
nettle-3.10.2-r0 description:
Low-level cryptographic library

nettle-3.10.2-r0 webpage:
https://www.lysator.liu.se/~nisse/nettle/

nettle-3.10.2-r0 installed size:
583 KiB

nettle-3.10.2-r0 license:
GPL-2.0-or-later OR LGPL-3.0-or-later

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

### `apk` package: `npth`

```console
npth-1.8-r0 description:
The New GNU Portable Threads library

npth-1.8-r0 webpage:
https://gnupg.org/related_software/npth/

npth-1.8-r0 installed size:
17 KiB

npth-1.8-r0 license:
LGPL-2.0-or-later

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

### `apk` package: `p11-kit`

```console
p11-kit-0.26.2-r0 description:
Library for loading and sharing PKCS#11 modules

p11-kit-0.26.2-r0 webpage:
https://p11-glue.freedesktop.org/

p11-kit-0.26.2-r0 installed size:
1549 KiB

p11-kit-0.26.2-r0 license:
BSD-3-Clause

```

### `apk` package: `pcre2`

```console
pcre2-10.47-r1 description:
Perl-compatible regular expression library

pcre2-10.47-r1 webpage:
https://pcre.org/

pcre2-10.47-r1 installed size:
775 KiB

pcre2-10.47-r1 license:
BSD-3-Clause

```

### `apk` package: `pinentry`

```console
pinentry-1.3.2-r0 description:
Collection of simple PIN or passphrase entry dialogs which utilize the Assuan protocol

pinentry-1.3.2-r0 webpage:
https://www.gnupg.org/aegypten2/

pinentry-1.3.2-r0 installed size:
66 KiB

pinentry-1.3.2-r0 license:
GPL-2.0-or-later

```

### `apk` package: `popt`

```console
popt-1.19-r4 description:
commandline option parser

popt-1.19-r4 webpage:
https://github.com/rpm-software-management/popt

popt-1.19-r4 installed size:
42 KiB

popt-1.19-r4 license:
MIT

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

### `apk` package: `rsync`

```console
rsync-3.4.3-r1 description:
A file transfer program to keep remote files in sync

rsync-3.4.3-r1 webpage:
https://rsync.samba.org/

rsync-3.4.3-r1 installed size:
389 KiB

rsync-3.4.3-r1 license:
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

### `apk` package: `shadow`

```console
shadow-4.18.0-r1 description:
PAM-using login and passwd utilities (usermod, useradd, ...)

shadow-4.18.0-r1 webpage:
https://github.com/shadow-maint/shadow

shadow-4.18.0-r1 installed size:
1302 KiB

shadow-4.18.0-r1 license:
BSD-3-Clause

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

### `apk` package: `tini`

```console
tini-0.19.0-r3 description:
A tiny but valid init for containers

tini-0.19.0-r3 webpage:
https://github.com/krallin/tini

tini-0.19.0-r3 installed size:
23 KiB

tini-0.19.0-r3 license:
MIT

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
