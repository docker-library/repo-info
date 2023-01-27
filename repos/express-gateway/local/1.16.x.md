# `express-gateway:1.x`

## Docker Metadata

- Image ID: `sha256:a1cf2157d5bd3a6f1f0141ed2aa1fcc635a6cba4a2de14960eda4ce6094d35f9`
- Created: `2022-04-11T21:41:13.652790822Z`
- Virtual Size: ~ 131.93 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-entrypoint.sh"]`
- Command: `["node","-e","require('express-gateway')().run();"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `NODE_VERSION=12.22.12`
  - `YARN_VERSION=1.22.18`
  - `NODE_ENV=production`
  - `NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/`
  - `EG_CONFIG_DIR=/var/lib/eg`
  - `CHOKIDAR_USEPOLLING=true`
- Labels:
  - `maintainer=Vincenzo Chianese, vincenzo@express-gateway.io`

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

### `apk` package: `busybox`

```console
busybox-1.34.1-r5 description:
Size optimized toolbox of many common UNIX utilities

busybox-1.34.1-r5 webpage:
https://busybox.net/

busybox-1.34.1-r5 installed size:
924 KiB

busybox-1.34.1-r5 license:
GPL-2.0-only

```

### `apk` package: `ca-certificates-bundle`

```console
ca-certificates-bundle-20211220-r0 description:
Pre generated bundle of Mozilla certificates

ca-certificates-bundle-20211220-r0 webpage:
https://www.mozilla.org/en-US/about/governance/policies/security-group/certs/

ca-certificates-bundle-20211220-r0 installed size:
216 KiB

ca-certificates-bundle-20211220-r0 license:
MPL-2.0 AND MIT

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
libcrypto1.1-1.1.1n-r0 description:
Crypto library from openssl

libcrypto1.1-1.1.1n-r0 webpage:
https://www.openssl.org/

libcrypto1.1-1.1.1n-r0 installed size:
2676 KiB

libcrypto1.1-1.1.1n-r0 license:
OpenSSL

```

### `apk` package: `libgcc`

```console
libgcc-10.3.1_git20211027-r0 description:
GNU C compiler runtime libraries

libgcc-10.3.1_git20211027-r0 webpage:
https://gcc.gnu.org

libgcc-10.3.1_git20211027-r0 installed size:
112 KiB

libgcc-10.3.1_git20211027-r0 license:
GPL-2.0-or-later LGPL-2.1-or-later

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
libssl1.1-1.1.1n-r0 description:
SSL shared libraries

libssl1.1-1.1.1n-r0 webpage:
https://www.openssl.org/

libssl1.1-1.1.1n-r0 installed size:
528 KiB

libssl1.1-1.1.1n-r0 license:
OpenSSL

```

### `apk` package: `libstdc++`

```console
libstdc++-10.3.1_git20211027-r0 description:
GNU C++ standard runtime library

libstdc++-10.3.1_git20211027-r0 webpage:
https://gcc.gnu.org

libstdc++-10.3.1_git20211027-r0 installed size:
1664 KiB

libstdc++-10.3.1_git20211027-r0 license:
GPL-2.0-or-later LGPL-2.1-or-later

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
ssl_client-1.34.1-r5 description:
EXternal ssl_client for busybox wget

ssl_client-1.34.1-r5 webpage:
https://busybox.net/

ssl_client-1.34.1-r5 installed size:
28 KiB

ssl_client-1.34.1-r5 license:
GPL-2.0-only

```

### `apk` package: `zlib`

```console
zlib-1.2.12-r0 description:
A compression/decompression Library

zlib-1.2.12-r0 webpage:
https://zlib.net/

zlib-1.2.12-r0 installed size:
108 KiB

zlib-1.2.12-r0 license:
Zlib

```
