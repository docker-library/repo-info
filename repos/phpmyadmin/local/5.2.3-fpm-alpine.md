# `phpmyadmin:5.2.3-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:97d9a04b3670257e0aa618f4d706690e7af3a72d4ec38bffc19f677560b91d04`
- Created: `2026-07-30T23:15:24.365035265Z`
- Virtual Size: ~ 165.44 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/docker-entrypoint.sh"]`
- Command: `["php-fpm"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64`
  - `PHP_LDFLAGS=-Wl,-O1 -pie`
  - `GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA`
  - `PHP_VERSION=8.3.33`
  - `PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz`
  - `PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc`
  - `PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676`
  - `UPLOAD_PROGRESS_EXT_URL=https://github.com/php/pecl-php-uploadprogress/archive/refs/tags/uploadprogress-2.0.2.tar.gz`
  - `UPLOAD_PROGRESS_SHA256=fe3f6cdfcedad563c970c4fd1cda31e422cfc0df5cc9a217d8c80ed3c8d137f5`
  - `PMA_SSL_DIR=/etc/phpmyadmin/ssl`
  - `MAX_EXECUTION_TIME=600`
  - `MEMORY_LIMIT=512M`
  - `UPLOAD_LIMIT=2048K`
  - `TZ=UTC`
  - `SESSION_SAVE_PATH=/sessions`
  - `VERSION=5.2.3`
  - `SHA256=57881348297c4412f86c410547cf76b4d8a236574dd2c6b7d6a2beebe7fc44e3`
  - `URL=https://files.phpmyadmin.net/phpMyAdmin/5.2.3/phpMyAdmin-5.2.3-all-languages.tar.xz`
- Labels:
  - `org.opencontainers.image.authors=The phpMyAdmin Team <developers@phpmyadmin.net>`
  - `org.opencontainers.image.description=Run phpMyAdmin with Alpine, Apache and PHP FPM.`
  - `org.opencontainers.image.documentation=https://github.com/phpmyadmin/docker#readme`
  - `org.opencontainers.image.licenses=GPL-2.0-only`
  - `org.opencontainers.image.source=https://github.com/phpmyadmin/docker.git`
  - `org.opencontainers.image.title=Official phpMyAdmin Docker image`
  - `org.opencontainers.image.url=https://github.com/phpmyadmin/docker#readme`
  - `org.opencontainers.image.vendor=phpMyAdmin`
  - `org.opencontainers.image.version=5.2.3`

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
libldap-2.6.13-r0 description:
OpenLDAP libraries

libldap-2.6.13-r0 webpage:
https://www.openldap.org/

libldap-2.6.13-r0 installed size:
365 KiB

libldap-2.6.13-r0 license:
OLDAP-2.8

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

### `apk` package: `libxpm`

```console
libxpm-3.5.19-r0 description:
X11 pixmap library

libxpm-3.5.19-r0 webpage:
https://xorg.freedesktop.org/

libxpm-3.5.19-r0 installed size:
106 KiB

libxpm-3.5.19-r0 license:
X11

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

### `apk` package: `tzdata`

```console
tzdata-2026c-r0 description:
Timezone data

tzdata-2026c-r0 webpage:
https://www.iana.org/time-zones

tzdata-2026c-r0 installed size:
433 KiB

tzdata-2026c-r0 license:
Public-Domain

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
