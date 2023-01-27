# `fluentd:v1.14.0-1.0`

## Docker Metadata

- Image ID: `sha256:b9bb541bfc9908f21cb0dd96aaaacb54d846895aecd4b03c4a16707d4f4f13e4`
- Created: `2022-10-06T21:16:01.702168208Z`
- Virtual Size: ~ 50.22 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["tini","--","/bin/entrypoint.sh"]`
- Command: `["fluentd"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `FLUENTD_CONF=fluent.conf`
  - `LD_PRELOAD=`
  - `RUBYLIB=/usr/lib/ruby/gems/2.7.0/gems/resolv-0.2.1/lib`
- Labels:
  - `Description=Fluentd docker image`
  - `Vendor=Fluent Organization`
  - `Version=1.14.0`
  - `maintainer=Fluentd developers <fluentd@googlegroups.com>`

## `apk` (`.apk`-based packages)

### `apk` package: `alpine-baselayout`

```console
alpine-baselayout-3.2.0-r8 description:
Alpine base dir structure and init scripts

alpine-baselayout-3.2.0-r8 webpage:
https://git.alpinelinux.org/cgit/aports/tree/main/alpine-baselayout

alpine-baselayout-3.2.0-r8 installed size:
400 KiB

alpine-baselayout-3.2.0-r8 license:
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

### `apk` package: `busybox`

```console
busybox-1.32.1-r9 description:
Size optimized toolbox of many common UNIX utilities

busybox-1.32.1-r9 webpage:
https://busybox.net/

busybox-1.32.1-r9 installed size:
924 KiB

busybox-1.32.1-r9 license:
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

### `apk` package: `gmp`

```console
gmp-6.2.1-r1 description:
free library for arbitrary precision arithmetic

gmp-6.2.1-r1 webpage:
https://gmplib.org/

gmp-6.2.1-r1 installed size:
416 KiB

gmp-6.2.1-r1 license:
LGPL-3.0-or-later OR GPL-2.0-or-later

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
2704 KiB

libcrypto1.1-1.1.1q-r0 license:
OpenSSL

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

### `apk` package: `libtls-standalone`

```console
libtls-standalone-2.9.1-r1 description:
libtls extricated from libressl sources

libtls-standalone-2.9.1-r1 webpage:
https://www.libressl.org/

libtls-standalone-2.9.1-r1 installed size:
108 KiB

libtls-standalone-2.9.1-r1 license:
ISC

```

### `apk` package: `musl`

```console
musl-1.2.2-r1 description:
the musl c library (libc) implementation

musl-1.2.2-r1 webpage:
https://musl.libc.org/

musl-1.2.2-r1 installed size:
608 KiB

musl-1.2.2-r1 license:
MIT

```

### `apk` package: `musl-utils`

```console
musl-utils-1.2.2-r1 description:
the musl c library (libc) implementation

musl-utils-1.2.2-r1 webpage:
https://musl.libc.org/

musl-utils-1.2.2-r1 installed size:
140 KiB

musl-utils-1.2.2-r1 license:
MIT BSD GPL2+

```

### `apk` package: `ncurses-libs`

```console
ncurses-libs-6.2_p20210109-r1 description:
Ncurses libraries

ncurses-libs-6.2_p20210109-r1 webpage:
https://invisible-island.net/ncurses/

ncurses-libs-6.2_p20210109-r1 installed size:
496 KiB

ncurses-libs-6.2_p20210109-r1 license:
MIT

```

### `apk` package: `ncurses-terminfo-base`

```console
ncurses-terminfo-base-6.2_p20210109-r1 description:
Descriptions of common terminals

ncurses-terminfo-base-6.2_p20210109-r1 webpage:
https://invisible-island.net/ncurses/

ncurses-terminfo-base-6.2_p20210109-r1 installed size:
216 KiB

ncurses-terminfo-base-6.2_p20210109-r1 license:
MIT

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

### `apk` package: `ruby`

```console
ruby-2.7.6-r0 description:
An object-oriented language for quick and easy programming

ruby-2.7.6-r0 webpage:
https://www.ruby-lang.org/

ruby-2.7.6-r0 installed size:
52 KiB

ruby-2.7.6-r0 license:
Ruby AND BSD-2-Clause AND MIT

```

### `apk` package: `ruby-etc`

```console
ruby-etc-2.7.6-r0 description:
Provides access to information typically stored in UNIX /etc directory

ruby-etc-2.7.6-r0 webpage:
https://www.ruby-lang.org/

ruby-etc-2.7.6-r0 installed size:
84 KiB

ruby-etc-2.7.6-r0 license:
BSD-2-Clause

```

### `apk` package: `ruby-irb`

```console
ruby-irb-2.7.6-r0 description:
The Interactive Ruby

ruby-irb-2.7.6-r0 webpage:
https://www.ruby-lang.org/

ruby-irb-2.7.6-r0 installed size:
364 KiB

ruby-irb-2.7.6-r0 license:
Ruby AND BSD-2-Clause AND MIT

```

### `apk` package: `ruby-libs`

```console
ruby-libs-2.7.6-r0 description:
Libraries necessary to run Ruby

ruby-libs-2.7.6-r0 webpage:
https://www.ruby-lang.org/

ruby-libs-2.7.6-r0 installed size:
13 MiB

ruby-libs-2.7.6-r0 license:
Ruby AND BSD-2-Clause AND MIT

```

### `apk` package: `ruby-webrick`

```console
ruby-webrick-2.7.6-r0 description:
HTTP server toolkit for Ruby

ruby-webrick-2.7.6-r0 webpage:
https://www.ruby-lang.org/

ruby-webrick-2.7.6-r0 installed size:
328 KiB

ruby-webrick-2.7.6-r0 license:
BSD-2-Clause

```

### `apk` package: `scanelf`

```console
scanelf-1.2.8-r0 description:
Scan ELF binaries for stuff

scanelf-1.2.8-r0 webpage:
https://wiki.gentoo.org/wiki/Hardened/PaX_Utilities

scanelf-1.2.8-r0 installed size:
92 KiB

scanelf-1.2.8-r0 license:
GPL-2.0-only

```

### `apk` package: `ssl_client`

```console
ssl_client-1.32.1-r9 description:
EXternal ssl_client for busybox wget

ssl_client-1.32.1-r9 webpage:
https://busybox.net/

ssl_client-1.32.1-r9 installed size:
28 KiB

ssl_client-1.32.1-r9 license:
GPL-2.0-only

```

### `apk` package: `tini`

```console
tini-0.19.0-r0 description:
A tiny but valid init for containers

tini-0.19.0-r0 webpage:
https://github.com/krallin/tini

tini-0.19.0-r0 installed size:
36 KiB

tini-0.19.0-r0 license:
MIT

```

### `apk` package: `yaml`

```console
yaml-0.2.5-r0 description:
YAML 1.1 parser and emitter written in C

yaml-0.2.5-r0 webpage:
https://pyyaml.org/wiki/LibYAML

yaml-0.2.5-r0 installed size:
120 KiB

yaml-0.2.5-r0 license:
MIT

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
