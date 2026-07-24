# `wordpress:beta-7.1-beta3-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:13c084a00bd343b6ffe20c599e2ff34583f06c9bba3d7bdabc9a1b64bbc2b6d7`
- Created: `2026-07-22T21:41:50.393475892Z`
- Virtual Size: ~ 324.83 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-entrypoint.sh"]`
- Command: `["php-fpm"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64`
  - `PHP_LDFLAGS=-Wl,-O1 -pie`
  - `GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA`
  - `PHP_VERSION=8.3.32`
  - `PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz`
  - `PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc`
  - `PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92`

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

### `apk` package: `aom-libs`

```console
aom-libs-3.14.1-r0 description:
Alliance for Open Media (AOM) AV1 codec SDK (libraries)

aom-libs-3.14.1-r0 webpage:
https://aomedia.org/

aom-libs-3.14.1-r0 installed size:
8180 KiB

aom-libs-3.14.1-r0 license:
BSD-2-Clause AND custom

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

### `apk` package: `avahi-libs`

```console
avahi-libs-0.9_rc4-r0 description:
Libraries for avahi run-time use

avahi-libs-0.9_rc4-r0 webpage:
https://www.avahi.org/

avahi-libs-0.9_rc4-r0 installed size:
104 KiB

avahi-libs-0.9_rc4-r0 license:
LGPL-2.1-or-later

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
c-ares-1.34.6-r0 description:
Asynchronous DNS/names resolver library

c-ares-1.34.6-r0 webpage:
https://c-ares.org/

c-ares-1.34.6-r0 installed size:
233 KiB

c-ares-1.34.6-r0 license:
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

### `apk` package: `cups-libs`

```console
cups-libs-2.4.19-r0 description:
CUPS libraries

cups-libs-2.4.19-r0 webpage:
https://github.com/OpenPrinting/cups/

cups-libs-2.4.19-r0 installed size:
559 KiB

cups-libs-2.4.19-r0 license:
Apache-2.0

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

### `apk` package: `dbus-libs`

```console
dbus-libs-1.16.2-r2 description:
D-BUS access libraries

dbus-libs-1.16.2-r2 webpage:
https://www.freedesktop.org/Software/dbus

dbus-libs-1.16.2-r2 installed size:
289 KiB

dbus-libs-1.16.2-r2 license:
AFL-2.1 OR GPL-2.0-or-later

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

### `apk` package: `ghostscript`

```console
ghostscript-10.07.1-r0 description:
Interpreter for the PostScript language and for PDF

ghostscript-10.07.1-r0 webpage:
https://ghostscript.com/

ghostscript-10.07.1-r0 installed size:
62 MiB

ghostscript-10.07.1-r0 license:
AGPL-3.0-or-later

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
imagemagick-7.1.2.24-r0 description:
Collection of tools and libraries for many image formats

imagemagick-7.1.2.24-r0 webpage:
https://imagemagick.org/

imagemagick-7.1.2.24-r0 installed size:
3696 KiB

imagemagick-7.1.2.24-r0 license:
ImageMagick

```

### `apk` package: `imagemagick-jp2`

```console
imagemagick-jp2-7.1.2.24-r0 description:
Collection of tools and libraries for many image formats (JPEG2000 support modules)

imagemagick-jp2-7.1.2.24-r0 webpage:
https://imagemagick.org/

imagemagick-jp2-7.1.2.24-r0 installed size:
26 KiB

imagemagick-jp2-7.1.2.24-r0 license:
ImageMagick

```

### `apk` package: `imagemagick-jpeg`

```console
imagemagick-jpeg-7.1.2.24-r0 description:
Collection of tools and libraries for many image formats (JPEG support modules)

imagemagick-jpeg-7.1.2.24-r0 webpage:
https://imagemagick.org/

imagemagick-jpeg-7.1.2.24-r0 installed size:
62 KiB

imagemagick-jpeg-7.1.2.24-r0 license:
ImageMagick

```

### `apk` package: `imagemagick-libs`

```console
imagemagick-libs-7.1.2.24-r0 description:
Collection of tools and libraries for many image formats (libraries)

imagemagick-libs-7.1.2.24-r0 webpage:
https://imagemagick.org/

imagemagick-libs-7.1.2.24-r0 installed size:
4261 KiB

imagemagick-libs-7.1.2.24-r0 license:
ImageMagick

```

### `apk` package: `imagemagick-pdf`

```console
imagemagick-pdf-7.1.2.24-r0 description:
Collection of tools and libraries for many image formats (PDF support modules)

imagemagick-pdf-7.1.2.24-r0 webpage:
https://imagemagick.org/

imagemagick-pdf-7.1.2.24-r0 installed size:
121 KiB

imagemagick-pdf-7.1.2.24-r0 license:
ImageMagick

```

### `apk` package: `imagemagick-tiff`

```console
imagemagick-tiff-7.1.2.24-r0 description:
Collection of tools and libraries for many image formats (TIFF support modules)

imagemagick-tiff-7.1.2.24-r0 webpage:
https://imagemagick.org/

imagemagick-tiff-7.1.2.24-r0 installed size:
115 KiB

imagemagick-tiff-7.1.2.24-r0 license:
ImageMagick

```

### `apk` package: `imagemagick-webp`

```console
imagemagick-webp-7.1.2.24-r0 description:
Collection of tools and libraries for many image formats (WebP support modules)

imagemagick-webp-7.1.2.24-r0 webpage:
https://imagemagick.org/

imagemagick-webp-7.1.2.24-r0 installed size:
30 KiB

imagemagick-webp-7.1.2.24-r0 license:
ImageMagick

```

### `apk` package: `jbig2dec`

```console
jbig2dec-0.20-r0 description:
JBIG2 image compression format decoder

jbig2dec-0.20-r0 webpage:
https://jbig2dec.com/

jbig2dec-0.20-r0 installed size:
127 KiB

jbig2dec-0.20-r0 license:
AGPL-3.0-or-later

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

### `apk` package: `libavif`

```console
libavif-1.4.1-r0 description:
Library for encoding and decoding .avif files

libavif-1.4.1-r0 webpage:
https://aomediacodec.github.io/av1-avif/

libavif-1.4.1-r0 installed size:
245 KiB

libavif-1.4.1-r0 license:
BSD-2-Clause

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

### `apk` package: `libdav1d`

```console
libdav1d-1.5.3-r0 description:
small and fast AV1 Decoder (libraries)

libdav1d-1.5.3-r0 webpage:
https://code.videolan.org/videolan/dav1d

libdav1d-1.5.3-r0 installed size:
1709 KiB

libdav1d-1.5.3-r0 license:
BSD-2-Clause

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

### `apk` package: `libice`

```console
libice-1.1.2-r0 description:
X11 Inter-Client Exchange library

libice-1.1.2-r0 webpage:
https://xorg.freedesktop.org/

libice-1.1.2-r0 installed size:
86 KiB

libice-1.1.2-r0 license:
X11

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

### `apk` package: `libsm`

```console
libsm-1.2.6-r0 description:
X11 Session Management library

libsm-1.2.6-r0 webpage:
https://xorg.freedesktop.org/

libsm-1.2.6-r0 installed size:
33 KiB

libsm-1.2.6-r0 license:
MIT

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

### `apk` package: `libuuid`

```console
libuuid-2.42.1-r0 description:
DCE compatible Universally Unique Identifier library

libuuid-2.42.1-r0 webpage:
https://git.kernel.org/cgit/utils/util-linux/util-linux.git

libuuid-2.42.1-r0 installed size:
29 KiB

libuuid-2.42.1-r0 license:
BSD-3-Clause

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

### `apk` package: `libxt`

```console
libxt-1.3.1-r0 description:
X11 toolkit intrinsics library

libxt-1.3.1-r0 webpage:
https://xorg.freedesktop.org/

libxt-1.3.1-r0 installed size:
347 KiB

libxt-1.3.1-r0 license:
MIT

```

### `apk` package: `libyuv`

```console
libyuv-0.0.1928-r0 description:
Library for YUV scaling

libyuv-0.0.1928-r0 webpage:
https://chromium.googlesource.com/libyuv/libyuv/

libyuv-0.0.1928-r0 installed size:
1979 KiB

libyuv-0.0.1928-r0 license:
BSD-3-Clause

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

### `apk` package: `openjpeg`

```console
openjpeg-2.5.4-r1 description:
Open-source implementation of JPEG2000 image codec

openjpeg-2.5.4-r1 webpage:
https://www.openjpeg.org/

openjpeg-2.5.4-r1 installed size:
305 KiB

openjpeg-2.5.4-r1 license:
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

### `apk` package: `tiff`

```console
tiff-4.7.1-r0 description:
Support for the Tag Image File Format or TIFF

tiff-4.7.1-r0 webpage:
https://gitlab.com/libtiff/libtiff

tiff-4.7.1-r0 installed size:
453 KiB

tiff-4.7.1-r0 license:
libtiff

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
