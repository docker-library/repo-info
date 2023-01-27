# `bonita:2022.1-u0`

## Docker Metadata

- Image ID: `sha256:5bff25d56fe4420a99127f674a2df8588fc8fdf9319915429e3416e6f76dc008`
- Created: `2022-10-06T20:14:32.759756284Z`
- Virtual Size: ~ 311.44 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/opt/files/startup.sh"]`
- Command: `["/opt/bonita/server/bin/catalina.sh","run"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `BONITA_VERSION=7.14.0`
  - `BRANDING_VERSION=2022.1-u0`
  - `BONITA_SHA256=a88b3f4368bd68dda4eccf4680a71b7e523678811b6b3bcd61cd85e67e9b9aeb`
  - `ZIP_FILE=BonitaCommunity-2022.1-u0.zip`
  - `BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download`
  - `BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2022.1-u0/BonitaCommunity-2022.1-u0.zip`
  - `HTTP_API=false`
  - `HTTP_API_USERNAME=http-api`
  - `HTTP_API_PASSWORD=`
  - `MONITORING_USERNAME=monitoring`
  - `MONITORING_PASSWORD=mon1tor1ng_adm1n`
  - `JMX_REMOTE_ACCESS=false`
  - `REMOTE_IP_VALVE_ENABLED=false`
  - `ACCESSLOGS_STDOUT_ENABLED=false`
  - `ACCESSLOGS_FILES_ENABLED=false`
  - `ACCESSLOGS_PATH=/opt/bonita/logs`
  - `ACCESSLOGS_PATH_APPEND_HOSTNAME=false`
  - `ACCESSLOGS_MAX_DAYS=30`
  - `HTTP_MAX_THREADS=20`
- Labels:
  - `maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>`

## `apk` (`.apk`-based packages)

### `apk` package: `alpine-baselayout`

```console
alpine-baselayout-3.2.0-r18 description:
Alpine base dir structure and init scripts

alpine-baselayout-3.2.0-r18 webpage:
https://git.alpinelinux.org/cgit/aports/tree/main/alpine-baselayout

alpine-baselayout-3.2.0-r18 installed size:
404 KiB

alpine-baselayout-3.2.0-r18 license:
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
apk-tools-2.12.7-r3 description:
Alpine Package Keeper - package manager for alpine

apk-tools-2.12.7-r3 webpage:
https://gitlab.alpinelinux.org/alpine/apk-tools

apk-tools-2.12.7-r3 installed size:
304 KiB

apk-tools-2.12.7-r3 license:
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

### `apk` package: `brotli-libs`

```console
brotli-libs-1.0.9-r5 description:
Generic lossless compressor (libraries)

brotli-libs-1.0.9-r5 webpage:
https://github.com/google/brotli

brotli-libs-1.0.9-r5 installed size:
720 KiB

brotli-libs-1.0.9-r5 license:
MIT

```

### `apk` package: `busybox`

```console
busybox-1.34.1-r7 description:
Size optimized toolbox of many common UNIX utilities

busybox-1.34.1-r7 webpage:
https://busybox.net/

busybox-1.34.1-r7 installed size:
924 KiB

busybox-1.34.1-r7 license:
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
curl-7.80.0-r3 description:
URL retrival utility and library

curl-7.80.0-r3 webpage:
https://curl.se/

curl-7.80.0-r3 installed size:
248 KiB

curl-7.80.0-r3 license:
MIT

```

### `apk` package: `jattach`

```console
jattach-1.5-r0 description:
JVM dynamic attach utility

jattach-1.5-r0 webpage:
https://github.com/apangin/jattach

jattach-1.5-r0 installed size:
32 KiB

jattach-1.5-r0 license:
Apache-2.0

```

### `apk` package: `java-cacerts`

```console
java-cacerts-1.0-r1 description:
Script to update java cacerts store

java-cacerts-1.0-r1 webpage:
https://git.alpinelinux.org/aports/tree/community/java-cacerts

java-cacerts-1.0-r1 installed size:
32 KiB

java-cacerts-1.0-r1 license:
MIT

```

### `apk` package: `java-common`

```console
java-common-0.5-r0 description:
Java common (updates java links)

java-common-0.5-r0 webpage:
https://git.alpinelinux.org/aports/

java-common-0.5-r0 installed size:
12 KiB

java-common-0.5-r0 license:
GPL-2.0-or-later

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
libcrypto1.1-1.1.1q-r0 description:
Crypto library from openssl

libcrypto1.1-1.1.1q-r0 webpage:
https://www.openssl.org/

libcrypto1.1-1.1.1q-r0 installed size:
2676 KiB

libcrypto1.1-1.1.1q-r0 license:
OpenSSL

```

### `apk` package: `libcurl`

```console
libcurl-7.80.0-r3 description:
The multiprotocol file transfer library

libcurl-7.80.0-r3 webpage:
https://curl.se/

libcurl-7.80.0-r3 installed size:
504 KiB

libcurl-7.80.0-r3 license:
MIT

```

### `apk` package: `libffi`

```console
libffi-3.4.2-r1 description:
portable, high level programming interface to various calling conventions.

libffi-3.4.2-r1 webpage:
https://sourceware.org/libffi/

libffi-3.4.2-r1 installed size:
60 KiB

libffi-3.4.2-r1 license:
MIT

```

### `apk` package: `libretls`

```console
libretls-3.3.4-r3 description:
port of libtls from libressl to openssl

libretls-3.3.4-r3 webpage:
https://git.causal.agency/libretls/

libretls-3.3.4-r3 installed size:
84 KiB

libretls-3.3.4-r3 license:
ISC AND (BSD-3-Clause OR MIT)

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
libtasn1-4.18.0-r0 description:
The ASN.1 library used in GNUTLS

libtasn1-4.18.0-r0 webpage:
https://www.gnu.org/software/gnutls/

libtasn1-4.18.0-r0 installed size:
84 KiB

libtasn1-4.18.0-r0 license:
LGPL-2.1-or-later

```

### `apk` package: `musl`

```console
musl-1.2.2-r7 description:
the musl c library (libc) implementation

musl-1.2.2-r7 webpage:
https://musl.libc.org/

musl-1.2.2-r7 installed size:
608 KiB

musl-1.2.2-r7 license:
MIT

```

### `apk` package: `musl-utils`

```console
musl-utils-1.2.2-r7 description:
the musl c library (libc) implementation

musl-utils-1.2.2-r7 webpage:
https://musl.libc.org/

musl-utils-1.2.2-r7 installed size:
140 KiB

musl-utils-1.2.2-r7 license:
MIT BSD GPL2+

```

### `apk` package: `ncurses-libs`

```console
ncurses-libs-6.3_p20211120-r1 description:
Ncurses libraries

ncurses-libs-6.3_p20211120-r1 webpage:
https://invisible-island.net/ncurses/

ncurses-libs-6.3_p20211120-r1 installed size:
504 KiB

ncurses-libs-6.3_p20211120-r1 license:
MIT

```

### `apk` package: `ncurses-terminfo-base`

```console
ncurses-terminfo-base-6.3_p20211120-r1 description:
Descriptions of common terminals

ncurses-terminfo-base-6.3_p20211120-r1 webpage:
https://invisible-island.net/ncurses/

ncurses-terminfo-base-6.3_p20211120-r1 installed size:
216 KiB

ncurses-terminfo-base-6.3_p20211120-r1 license:
MIT

```

### `apk` package: `nghttp2-libs`

```console
nghttp2-libs-1.46.0-r0 description:
Experimental HTTP/2 client, server and proxy (libraries)

nghttp2-libs-1.46.0-r0 webpage:
https://nghttp2.org

nghttp2-libs-1.46.0-r0 installed size:
156 KiB

nghttp2-libs-1.46.0-r0 license:
MIT

```

### `apk` package: `openjdk11-jre-headless`

```console
openjdk11-jre-headless-11.0.15_p10-r0 description:
Oracle OpenJDK 11 (JRE headless)

openjdk11-jre-headless-11.0.15_p10-r0 webpage:
https://github.com/openjdk/jdk11u

openjdk11-jre-headless-11.0.15_p10-r0 installed size:
158 MiB

openjdk11-jre-headless-11.0.15_p10-r0 license:
GPL-2.0-with-classpath-exception

```

### `apk` package: `p11-kit`

```console
p11-kit-0.24.0-r1 description:
Library for loading and sharing PKCS#11 modules

p11-kit-0.24.0-r1 webpage:
https://p11-glue.freedesktop.org/

p11-kit-0.24.0-r1 installed size:
1200 KiB

p11-kit-0.24.0-r1 license:
BSD-3-Clause

```

### `apk` package: `p11-kit-trust`

```console
p11-kit-trust-0.24.0-r1 description:
System trust module from p11-kit

p11-kit-trust-0.24.0-r1 webpage:
https://p11-glue.freedesktop.org/

p11-kit-trust-0.24.0-r1 installed size:
452 KiB

p11-kit-trust-0.24.0-r1 license:
BSD-3-Clause

```

### `apk` package: `readline`

```console
readline-8.1.1-r0 description:
GNU readline library

readline-8.1.1-r0 webpage:
https://tiswww.cwru.edu/php/chet/readline/rltop.html

readline-8.1.1-r0 installed size:
308 KiB

readline-8.1.1-r0 license:
GPL-2.0-or-later

```

### `apk` package: `scanelf`

```console
scanelf-1.3.3-r0 description:
Scan ELF binaries for stuff

scanelf-1.3.3-r0 webpage:
https://wiki.gentoo.org/wiki/Hardened/PaX_Utilities

scanelf-1.3.3-r0 installed size:
92 KiB

scanelf-1.3.3-r0 license:
GPL-2.0-only

```

### `apk` package: `ssl_client`

```console
ssl_client-1.34.1-r7 description:
EXternal ssl_client for busybox wget

ssl_client-1.34.1-r7 webpage:
https://busybox.net/

ssl_client-1.34.1-r7 installed size:
28 KiB

ssl_client-1.34.1-r7 license:
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

### `apk` package: `unzip`

```console
unzip-6.0-r9 description:
Extract PKZIP-compatible .zip files

unzip-6.0-r9 webpage:
http://www.info-zip.org/UnZip.html

unzip-6.0-r9 installed size:
316 KiB

unzip-6.0-r9 license:
custom

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
