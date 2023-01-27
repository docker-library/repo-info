# `eclipse-mosquitto:2.0.15`

## Docker Metadata

- Image ID: `sha256:09ef04ba0be0e6d8d32d6015eced31c4b39430b71d9e1a8c751d0eb1fc2a4b0d`
- Created: `2022-11-12T05:08:06.02327312Z`
- Virtual Size: ~ 11.87 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/docker-entrypoint.sh"]`
- Command: `["/usr/sbin/mosquitto","-c","/mosquitto/config/mosquitto.conf"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `VERSION=2.0.15`
  - `DOWNLOAD_SHA256=4735b1d32e3f91c7a8896741d88a3022e89730a1ee897946decfa0df27039ac6`
  - `GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7`
  - `LWS_VERSION=4.2.1`
  - `LWS_SHA256=842da21f73ccba2be59e680de10a8cce7928313048750eb6ad73b6fa50763c51`
- Labels:
  - `description=Eclipse Mosquitto MQTT Broker`
  - `maintainer=Roger Light <roger@atchoo.org>`

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

### `apk` package: `cjson`

```console
cjson-1.7.15-r3 description:
Lighweight JSON parser in C

cjson-1.7.15-r3 webpage:
https://github.com/DaveGamble/cJSON

cjson-1.7.15-r3 installed size:
44 KiB

cjson-1.7.15-r3 license:
MIT

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

### `apk` package: `libressl`

```console
libressl-3.5.3-r0 description:
Version of the TLS/crypto stack forked from OpenSSL

libressl-3.5.3-r0 webpage:
https://www.libressl.org/

libressl-3.5.3-r0 installed size:
584 KiB

libressl-3.5.3-r0 license:
custom

```

### `apk` package: `libressl3.5-libcrypto`

```console
libressl3.5-libcrypto-3.5.3-r0 description:
libressl libcrypto library

libressl3.5-libcrypto-3.5.3-r0 webpage:
https://www.libressl.org/

libressl3.5-libcrypto-3.5.3-r0 installed size:
1908 KiB

libressl3.5-libcrypto-3.5.3-r0 license:
custom

```

### `apk` package: `libressl3.5-libssl`

```console
libressl3.5-libssl-3.5.3-r0 description:
libressl libssl library

libressl3.5-libssl-3.5.3-r0 webpage:
https://www.libressl.org/

libressl3.5-libssl-3.5.3-r0 installed size:
356 KiB

libressl3.5-libssl-3.5.3-r0 license:
custom

```

### `apk` package: `libressl3.5-libtls`

```console
libressl3.5-libtls-3.5.3-r0 description:
libressl libtls library

libressl3.5-libtls-3.5.3-r0 webpage:
https://www.libressl.org/

libressl3.5-libtls-3.5.3-r0 installed size:
1908 KiB

libressl3.5-libtls-3.5.3-r0 license:
custom

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

### `apk` package: `musl`

```console
musl-1.2.3-r1 description:
the musl c library (libc) implementation

musl-1.2.3-r1 webpage:
https://musl.libc.org/

musl-1.2.3-r1 installed size:
608 KiB

musl-1.2.3-r1 license:
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
