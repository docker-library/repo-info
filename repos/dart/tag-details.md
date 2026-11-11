<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `dart`

-	[`dart:3`](#dart3)
-	[`dart:3-sdk`](#dart3-sdk)
-	[`dart:3.14`](#dart314)
-	[`dart:3.14-sdk`](#dart314-sdk)
-	[`dart:3.14.0`](#dart3140)
-	[`dart:3.14.0-sdk`](#dart3140-sdk)
-	[`dart:3.15.0-118.1.beta`](#dart3150-1181beta)
-	[`dart:3.15.0-118.1.beta-sdk`](#dart3150-1181beta-sdk)
-	[`dart:beta`](#dartbeta)
-	[`dart:beta-sdk`](#dartbeta-sdk)
-	[`dart:latest`](#dartlatest)
-	[`dart:sdk`](#dartsdk)
-	[`dart:stable`](#dartstable)
-	[`dart:stable-sdk`](#dartstable-sdk)

## `dart:3`

```console
$ docker pull dart@sha256:754aaf779c07a44017823fcb0e972f92d8053a9631531cc4e425053036efcb85
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown

### `dart:3` - linux; amd64

```console
$ docker pull dart@sha256:fa43be1e030d618681105d6d3d7619f7cdcbf87bd921a6b24e41ef000c61d039
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345914352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d8d12ac2b921f225efe78a6ee734e5ad4395e88ef16f84c48b6cb792dfbb9ea`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:31:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:31:54 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:31:54 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:31:54 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:31:54 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:32:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90740073b6a6a0f8de9e2718574a73ffa4ca49f3e02aa6526089be26b077b199`  
		Last Modified: Wed, 11 Nov 2026 19:32:38 GMT  
		Size: 42.5 MB (42525875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac10e2a1cd3d9eb4486ac24b36d2320c2dd6bb41813a803eaa157a28861101c`  
		Last Modified: Wed, 11 Nov 2026 19:32:36 GMT  
		Size: 1.9 MB (1867115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb96941149463133bb6c17b0f4d83d88f7d797d89babb17843e410e8d245a5a4`  
		Last Modified: Wed, 11 Nov 2026 19:32:42 GMT  
		Size: 271.7 MB (271665198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:c199c779001df45679f4a6fb44f1d2496246eac80e44b102ea2c957644c6edf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74b5b263d150c7a98a66065bf72189cc3b485e2a2cec39ab96d3698ac32db732`

```dockerfile
```

-	Layers:
	-	`sha256:6cac4af3f71c6637bf3cd3450a26a04324d413f5627fba6062564ec90b286875`  
		Last Modified: Wed, 11 Nov 2026 19:32:36 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; arm variant v7

```console
$ docker pull dart@sha256:dc3a6cf6a7c7bf4b0358fc8f5aaeaade71338d57bb5e968e3bbe49f128792cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238601123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ffa23030d056230f708255fa40f1d45c22cee124b105ea8859e59dfe8d6928`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:32:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:32:53 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:32:53 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:32:53 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:32:53 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:33:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1079a7d65272edc8f45b80baac8b7aa7829c2d6566b917d1fc7ffa3569f1317`  
		Last Modified: Wed, 11 Nov 2026 19:33:24 GMT  
		Size: 37.5 MB (37529465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7550675fdbd7e2021d2690022f4fe105aa54515432bdb29706da6766571f96`  
		Last Modified: Wed, 11 Nov 2026 19:33:23 GMT  
		Size: 1.3 MB (1271965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0366a6ef0b0fc29ad4a63ddc9f61a46d7ae1f835f8c12da8a2e454480587b92`  
		Last Modified: Wed, 11 Nov 2026 19:33:27 GMT  
		Size: 173.5 MB (173526746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:eaaf8c45e30c73635078e1a1513f8251b1c73940215b364854c02e7791f6e109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d4d6699666e80f7abe46e1a5bff5678f79a09d4c6fd1d37fd6a99d7397cf7c`

```dockerfile
```

-	Layers:
	-	`sha256:701e73d68eb5b3d0954740f6079a09552ca9ce9039b6ab0681527a0988545a4f`  
		Last Modified: Wed, 11 Nov 2026 19:33:23 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:42c71f23e3c1d546f0fd3b983134468c5c01a619763bcc484c1e60ba551f4b8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (343973508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01f69bf702b51abd97e4efd7ce7ea8c4b40ab386b5fab2e81f490cfaac303f5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:47:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:47:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:47:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:47:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:47:38 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:47:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3d59eac7a0a6618d0f7e8dbb8004e3bfbcf6d223c6a09e8bb6c33046321d43f`  
		Last Modified: Wed, 11 Nov 2026 19:48:22 GMT  
		Size: 42.3 MB (42328039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a18589c938c23c3529ff3ce2b1719e577f321f829903fae45a03198739dcc02`  
		Last Modified: Wed, 11 Nov 2026 19:48:20 GMT  
		Size: 1.6 MB (1561929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87df17345b3f66cefa9462decceb5c57f7cfeaec0bb3dcae57b3728b12d8f54c`  
		Last Modified: Wed, 11 Nov 2026 19:48:26 GMT  
		Size: 269.9 MB (269869471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:0c0673a4fc967b5073eee593b87fa8bc770b5c548feb7c594de3b0a4eceba1e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2888bf4dbb8d2785b8947aa3d58ec1c4e2beccee435693cb21a6837f37c7c06`

```dockerfile
```

-	Layers:
	-	`sha256:2e21d8b6a51b89b65b4f739f0df7a4973442b8024a470cbffcfddb5b27efc920`  
		Last Modified: Wed, 11 Nov 2026 19:48:20 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; riscv64

```console
$ docker pull dart@sha256:acf7a8f4f1d7afdde9d7faf2a9e9316336865544e55f16804a53dc035420a0f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252922252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f5ea85d69ec2bd678200d21ba88534f1f0ecba4539dfbfe3bf520bdb256de13`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sat, 07 Nov 2026 04:27:30 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 07 Nov 2026 04:27:32 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 07 Nov 2026 04:27:32 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 07 Nov 2026 04:27:32 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 07 Nov 2026 04:27:32 GMT
WORKDIR /root
# Sat, 07 Nov 2026 04:28:20 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a98a3ee37450414df465ff7fded7456d96405c7c8ee93b69c3f41dda862dc13`  
		Last Modified: Sat, 07 Nov 2026 04:32:56 GMT  
		Size: 41.6 MB (41600759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:616a4d678938ba3ea9c917db1af630e0c54b90112caf6dab633ee9f0ca6aedf1`  
		Last Modified: Sat, 07 Nov 2026 04:32:44 GMT  
		Size: 1.6 MB (1560327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cf202a03decf7465601ffe1afddbf9156bbccc6ff971b22499c347b0463f8a6`  
		Last Modified: Sat, 07 Nov 2026 04:33:16 GMT  
		Size: 181.4 MB (181414950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:08e859f70b28058f1f0c0f22768abe90bfa68ccd9b966ab1a81b6aae2f1bab0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4e8255f88f5f504f7f0e52e1bbf94b28edad0e08b79340b72cdc902ca1d67c`

```dockerfile
```

-	Layers:
	-	`sha256:8ae6cf76796c664540c388aad9bcde6c8d964cf7ba9adf855337e049bf47eabd`  
		Last Modified: Sat, 07 Nov 2026 04:32:44 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3-sdk`

```console
$ docker pull dart@sha256:754aaf779c07a44017823fcb0e972f92d8053a9631531cc4e425053036efcb85
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown

### `dart:3-sdk` - linux; amd64

```console
$ docker pull dart@sha256:fa43be1e030d618681105d6d3d7619f7cdcbf87bd921a6b24e41ef000c61d039
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345914352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d8d12ac2b921f225efe78a6ee734e5ad4395e88ef16f84c48b6cb792dfbb9ea`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:31:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:31:54 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:31:54 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:31:54 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:31:54 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:32:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90740073b6a6a0f8de9e2718574a73ffa4ca49f3e02aa6526089be26b077b199`  
		Last Modified: Wed, 11 Nov 2026 19:32:38 GMT  
		Size: 42.5 MB (42525875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac10e2a1cd3d9eb4486ac24b36d2320c2dd6bb41813a803eaa157a28861101c`  
		Last Modified: Wed, 11 Nov 2026 19:32:36 GMT  
		Size: 1.9 MB (1867115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb96941149463133bb6c17b0f4d83d88f7d797d89babb17843e410e8d245a5a4`  
		Last Modified: Wed, 11 Nov 2026 19:32:42 GMT  
		Size: 271.7 MB (271665198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:c199c779001df45679f4a6fb44f1d2496246eac80e44b102ea2c957644c6edf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74b5b263d150c7a98a66065bf72189cc3b485e2a2cec39ab96d3698ac32db732`

```dockerfile
```

-	Layers:
	-	`sha256:6cac4af3f71c6637bf3cd3450a26a04324d413f5627fba6062564ec90b286875`  
		Last Modified: Wed, 11 Nov 2026 19:32:36 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:dc3a6cf6a7c7bf4b0358fc8f5aaeaade71338d57bb5e968e3bbe49f128792cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238601123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ffa23030d056230f708255fa40f1d45c22cee124b105ea8859e59dfe8d6928`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:32:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:32:53 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:32:53 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:32:53 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:32:53 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:33:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1079a7d65272edc8f45b80baac8b7aa7829c2d6566b917d1fc7ffa3569f1317`  
		Last Modified: Wed, 11 Nov 2026 19:33:24 GMT  
		Size: 37.5 MB (37529465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7550675fdbd7e2021d2690022f4fe105aa54515432bdb29706da6766571f96`  
		Last Modified: Wed, 11 Nov 2026 19:33:23 GMT  
		Size: 1.3 MB (1271965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0366a6ef0b0fc29ad4a63ddc9f61a46d7ae1f835f8c12da8a2e454480587b92`  
		Last Modified: Wed, 11 Nov 2026 19:33:27 GMT  
		Size: 173.5 MB (173526746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:eaaf8c45e30c73635078e1a1513f8251b1c73940215b364854c02e7791f6e109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d4d6699666e80f7abe46e1a5bff5678f79a09d4c6fd1d37fd6a99d7397cf7c`

```dockerfile
```

-	Layers:
	-	`sha256:701e73d68eb5b3d0954740f6079a09552ca9ce9039b6ab0681527a0988545a4f`  
		Last Modified: Wed, 11 Nov 2026 19:33:23 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:42c71f23e3c1d546f0fd3b983134468c5c01a619763bcc484c1e60ba551f4b8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (343973508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01f69bf702b51abd97e4efd7ce7ea8c4b40ab386b5fab2e81f490cfaac303f5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:47:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:47:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:47:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:47:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:47:38 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:47:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3d59eac7a0a6618d0f7e8dbb8004e3bfbcf6d223c6a09e8bb6c33046321d43f`  
		Last Modified: Wed, 11 Nov 2026 19:48:22 GMT  
		Size: 42.3 MB (42328039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a18589c938c23c3529ff3ce2b1719e577f321f829903fae45a03198739dcc02`  
		Last Modified: Wed, 11 Nov 2026 19:48:20 GMT  
		Size: 1.6 MB (1561929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87df17345b3f66cefa9462decceb5c57f7cfeaec0bb3dcae57b3728b12d8f54c`  
		Last Modified: Wed, 11 Nov 2026 19:48:26 GMT  
		Size: 269.9 MB (269869471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:0c0673a4fc967b5073eee593b87fa8bc770b5c548feb7c594de3b0a4eceba1e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2888bf4dbb8d2785b8947aa3d58ec1c4e2beccee435693cb21a6837f37c7c06`

```dockerfile
```

-	Layers:
	-	`sha256:2e21d8b6a51b89b65b4f739f0df7a4973442b8024a470cbffcfddb5b27efc920`  
		Last Modified: Wed, 11 Nov 2026 19:48:20 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:acf7a8f4f1d7afdde9d7faf2a9e9316336865544e55f16804a53dc035420a0f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252922252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f5ea85d69ec2bd678200d21ba88534f1f0ecba4539dfbfe3bf520bdb256de13`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sat, 07 Nov 2026 04:27:30 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 07 Nov 2026 04:27:32 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 07 Nov 2026 04:27:32 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 07 Nov 2026 04:27:32 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 07 Nov 2026 04:27:32 GMT
WORKDIR /root
# Sat, 07 Nov 2026 04:28:20 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a98a3ee37450414df465ff7fded7456d96405c7c8ee93b69c3f41dda862dc13`  
		Last Modified: Sat, 07 Nov 2026 04:32:56 GMT  
		Size: 41.6 MB (41600759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:616a4d678938ba3ea9c917db1af630e0c54b90112caf6dab633ee9f0ca6aedf1`  
		Last Modified: Sat, 07 Nov 2026 04:32:44 GMT  
		Size: 1.6 MB (1560327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cf202a03decf7465601ffe1afddbf9156bbccc6ff971b22499c347b0463f8a6`  
		Last Modified: Sat, 07 Nov 2026 04:33:16 GMT  
		Size: 181.4 MB (181414950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:08e859f70b28058f1f0c0f22768abe90bfa68ccd9b966ab1a81b6aae2f1bab0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4e8255f88f5f504f7f0e52e1bbf94b28edad0e08b79340b72cdc902ca1d67c`

```dockerfile
```

-	Layers:
	-	`sha256:8ae6cf76796c664540c388aad9bcde6c8d964cf7ba9adf855337e049bf47eabd`  
		Last Modified: Sat, 07 Nov 2026 04:32:44 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.14`

```console
$ docker pull dart@sha256:9ba97850b3154383a90f67844b09ea77751f7835836d8b2662ad2ffe03f60c8c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `dart:3.14` - linux; amd64

```console
$ docker pull dart@sha256:fa43be1e030d618681105d6d3d7619f7cdcbf87bd921a6b24e41ef000c61d039
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345914352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d8d12ac2b921f225efe78a6ee734e5ad4395e88ef16f84c48b6cb792dfbb9ea`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:31:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:31:54 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:31:54 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:31:54 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:31:54 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:32:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90740073b6a6a0f8de9e2718574a73ffa4ca49f3e02aa6526089be26b077b199`  
		Last Modified: Wed, 11 Nov 2026 19:32:38 GMT  
		Size: 42.5 MB (42525875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac10e2a1cd3d9eb4486ac24b36d2320c2dd6bb41813a803eaa157a28861101c`  
		Last Modified: Wed, 11 Nov 2026 19:32:36 GMT  
		Size: 1.9 MB (1867115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb96941149463133bb6c17b0f4d83d88f7d797d89babb17843e410e8d245a5a4`  
		Last Modified: Wed, 11 Nov 2026 19:32:42 GMT  
		Size: 271.7 MB (271665198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14` - unknown; unknown

```console
$ docker pull dart@sha256:c199c779001df45679f4a6fb44f1d2496246eac80e44b102ea2c957644c6edf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74b5b263d150c7a98a66065bf72189cc3b485e2a2cec39ab96d3698ac32db732`

```dockerfile
```

-	Layers:
	-	`sha256:6cac4af3f71c6637bf3cd3450a26a04324d413f5627fba6062564ec90b286875`  
		Last Modified: Wed, 11 Nov 2026 19:32:36 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14` - linux; arm variant v7

```console
$ docker pull dart@sha256:dc3a6cf6a7c7bf4b0358fc8f5aaeaade71338d57bb5e968e3bbe49f128792cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238601123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ffa23030d056230f708255fa40f1d45c22cee124b105ea8859e59dfe8d6928`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:32:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:32:53 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:32:53 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:32:53 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:32:53 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:33:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1079a7d65272edc8f45b80baac8b7aa7829c2d6566b917d1fc7ffa3569f1317`  
		Last Modified: Wed, 11 Nov 2026 19:33:24 GMT  
		Size: 37.5 MB (37529465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7550675fdbd7e2021d2690022f4fe105aa54515432bdb29706da6766571f96`  
		Last Modified: Wed, 11 Nov 2026 19:33:23 GMT  
		Size: 1.3 MB (1271965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0366a6ef0b0fc29ad4a63ddc9f61a46d7ae1f835f8c12da8a2e454480587b92`  
		Last Modified: Wed, 11 Nov 2026 19:33:27 GMT  
		Size: 173.5 MB (173526746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14` - unknown; unknown

```console
$ docker pull dart@sha256:eaaf8c45e30c73635078e1a1513f8251b1c73940215b364854c02e7791f6e109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d4d6699666e80f7abe46e1a5bff5678f79a09d4c6fd1d37fd6a99d7397cf7c`

```dockerfile
```

-	Layers:
	-	`sha256:701e73d68eb5b3d0954740f6079a09552ca9ce9039b6ab0681527a0988545a4f`  
		Last Modified: Wed, 11 Nov 2026 19:33:23 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:42c71f23e3c1d546f0fd3b983134468c5c01a619763bcc484c1e60ba551f4b8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (343973508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01f69bf702b51abd97e4efd7ce7ea8c4b40ab386b5fab2e81f490cfaac303f5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:47:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:47:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:47:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:47:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:47:38 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:47:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3d59eac7a0a6618d0f7e8dbb8004e3bfbcf6d223c6a09e8bb6c33046321d43f`  
		Last Modified: Wed, 11 Nov 2026 19:48:22 GMT  
		Size: 42.3 MB (42328039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a18589c938c23c3529ff3ce2b1719e577f321f829903fae45a03198739dcc02`  
		Last Modified: Wed, 11 Nov 2026 19:48:20 GMT  
		Size: 1.6 MB (1561929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87df17345b3f66cefa9462decceb5c57f7cfeaec0bb3dcae57b3728b12d8f54c`  
		Last Modified: Wed, 11 Nov 2026 19:48:26 GMT  
		Size: 269.9 MB (269869471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14` - unknown; unknown

```console
$ docker pull dart@sha256:0c0673a4fc967b5073eee593b87fa8bc770b5c548feb7c594de3b0a4eceba1e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2888bf4dbb8d2785b8947aa3d58ec1c4e2beccee435693cb21a6837f37c7c06`

```dockerfile
```

-	Layers:
	-	`sha256:2e21d8b6a51b89b65b4f739f0df7a4973442b8024a470cbffcfddb5b27efc920`  
		Last Modified: Wed, 11 Nov 2026 19:48:20 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.14-sdk`

```console
$ docker pull dart@sha256:9ba97850b3154383a90f67844b09ea77751f7835836d8b2662ad2ffe03f60c8c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `dart:3.14-sdk` - linux; amd64

```console
$ docker pull dart@sha256:fa43be1e030d618681105d6d3d7619f7cdcbf87bd921a6b24e41ef000c61d039
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345914352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d8d12ac2b921f225efe78a6ee734e5ad4395e88ef16f84c48b6cb792dfbb9ea`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:31:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:31:54 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:31:54 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:31:54 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:31:54 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:32:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90740073b6a6a0f8de9e2718574a73ffa4ca49f3e02aa6526089be26b077b199`  
		Last Modified: Wed, 11 Nov 2026 19:32:38 GMT  
		Size: 42.5 MB (42525875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac10e2a1cd3d9eb4486ac24b36d2320c2dd6bb41813a803eaa157a28861101c`  
		Last Modified: Wed, 11 Nov 2026 19:32:36 GMT  
		Size: 1.9 MB (1867115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb96941149463133bb6c17b0f4d83d88f7d797d89babb17843e410e8d245a5a4`  
		Last Modified: Wed, 11 Nov 2026 19:32:42 GMT  
		Size: 271.7 MB (271665198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:c199c779001df45679f4a6fb44f1d2496246eac80e44b102ea2c957644c6edf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74b5b263d150c7a98a66065bf72189cc3b485e2a2cec39ab96d3698ac32db732`

```dockerfile
```

-	Layers:
	-	`sha256:6cac4af3f71c6637bf3cd3450a26a04324d413f5627fba6062564ec90b286875`  
		Last Modified: Wed, 11 Nov 2026 19:32:36 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:dc3a6cf6a7c7bf4b0358fc8f5aaeaade71338d57bb5e968e3bbe49f128792cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238601123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ffa23030d056230f708255fa40f1d45c22cee124b105ea8859e59dfe8d6928`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:32:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:32:53 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:32:53 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:32:53 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:32:53 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:33:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1079a7d65272edc8f45b80baac8b7aa7829c2d6566b917d1fc7ffa3569f1317`  
		Last Modified: Wed, 11 Nov 2026 19:33:24 GMT  
		Size: 37.5 MB (37529465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7550675fdbd7e2021d2690022f4fe105aa54515432bdb29706da6766571f96`  
		Last Modified: Wed, 11 Nov 2026 19:33:23 GMT  
		Size: 1.3 MB (1271965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0366a6ef0b0fc29ad4a63ddc9f61a46d7ae1f835f8c12da8a2e454480587b92`  
		Last Modified: Wed, 11 Nov 2026 19:33:27 GMT  
		Size: 173.5 MB (173526746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:eaaf8c45e30c73635078e1a1513f8251b1c73940215b364854c02e7791f6e109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d4d6699666e80f7abe46e1a5bff5678f79a09d4c6fd1d37fd6a99d7397cf7c`

```dockerfile
```

-	Layers:
	-	`sha256:701e73d68eb5b3d0954740f6079a09552ca9ce9039b6ab0681527a0988545a4f`  
		Last Modified: Wed, 11 Nov 2026 19:33:23 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:42c71f23e3c1d546f0fd3b983134468c5c01a619763bcc484c1e60ba551f4b8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (343973508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01f69bf702b51abd97e4efd7ce7ea8c4b40ab386b5fab2e81f490cfaac303f5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:47:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:47:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:47:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:47:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:47:38 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:47:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3d59eac7a0a6618d0f7e8dbb8004e3bfbcf6d223c6a09e8bb6c33046321d43f`  
		Last Modified: Wed, 11 Nov 2026 19:48:22 GMT  
		Size: 42.3 MB (42328039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a18589c938c23c3529ff3ce2b1719e577f321f829903fae45a03198739dcc02`  
		Last Modified: Wed, 11 Nov 2026 19:48:20 GMT  
		Size: 1.6 MB (1561929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87df17345b3f66cefa9462decceb5c57f7cfeaec0bb3dcae57b3728b12d8f54c`  
		Last Modified: Wed, 11 Nov 2026 19:48:26 GMT  
		Size: 269.9 MB (269869471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:0c0673a4fc967b5073eee593b87fa8bc770b5c548feb7c594de3b0a4eceba1e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2888bf4dbb8d2785b8947aa3d58ec1c4e2beccee435693cb21a6837f37c7c06`

```dockerfile
```

-	Layers:
	-	`sha256:2e21d8b6a51b89b65b4f739f0df7a4973442b8024a470cbffcfddb5b27efc920`  
		Last Modified: Wed, 11 Nov 2026 19:48:20 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.14.0`

```console
$ docker pull dart@sha256:9ba97850b3154383a90f67844b09ea77751f7835836d8b2662ad2ffe03f60c8c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `dart:3.14.0` - linux; amd64

```console
$ docker pull dart@sha256:fa43be1e030d618681105d6d3d7619f7cdcbf87bd921a6b24e41ef000c61d039
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345914352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d8d12ac2b921f225efe78a6ee734e5ad4395e88ef16f84c48b6cb792dfbb9ea`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:31:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:31:54 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:31:54 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:31:54 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:31:54 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:32:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90740073b6a6a0f8de9e2718574a73ffa4ca49f3e02aa6526089be26b077b199`  
		Last Modified: Wed, 11 Nov 2026 19:32:38 GMT  
		Size: 42.5 MB (42525875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac10e2a1cd3d9eb4486ac24b36d2320c2dd6bb41813a803eaa157a28861101c`  
		Last Modified: Wed, 11 Nov 2026 19:32:36 GMT  
		Size: 1.9 MB (1867115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb96941149463133bb6c17b0f4d83d88f7d797d89babb17843e410e8d245a5a4`  
		Last Modified: Wed, 11 Nov 2026 19:32:42 GMT  
		Size: 271.7 MB (271665198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0` - unknown; unknown

```console
$ docker pull dart@sha256:c199c779001df45679f4a6fb44f1d2496246eac80e44b102ea2c957644c6edf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74b5b263d150c7a98a66065bf72189cc3b485e2a2cec39ab96d3698ac32db732`

```dockerfile
```

-	Layers:
	-	`sha256:6cac4af3f71c6637bf3cd3450a26a04324d413f5627fba6062564ec90b286875`  
		Last Modified: Wed, 11 Nov 2026 19:32:36 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0` - linux; arm variant v7

```console
$ docker pull dart@sha256:dc3a6cf6a7c7bf4b0358fc8f5aaeaade71338d57bb5e968e3bbe49f128792cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238601123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ffa23030d056230f708255fa40f1d45c22cee124b105ea8859e59dfe8d6928`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:32:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:32:53 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:32:53 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:32:53 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:32:53 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:33:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1079a7d65272edc8f45b80baac8b7aa7829c2d6566b917d1fc7ffa3569f1317`  
		Last Modified: Wed, 11 Nov 2026 19:33:24 GMT  
		Size: 37.5 MB (37529465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7550675fdbd7e2021d2690022f4fe105aa54515432bdb29706da6766571f96`  
		Last Modified: Wed, 11 Nov 2026 19:33:23 GMT  
		Size: 1.3 MB (1271965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0366a6ef0b0fc29ad4a63ddc9f61a46d7ae1f835f8c12da8a2e454480587b92`  
		Last Modified: Wed, 11 Nov 2026 19:33:27 GMT  
		Size: 173.5 MB (173526746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0` - unknown; unknown

```console
$ docker pull dart@sha256:eaaf8c45e30c73635078e1a1513f8251b1c73940215b364854c02e7791f6e109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d4d6699666e80f7abe46e1a5bff5678f79a09d4c6fd1d37fd6a99d7397cf7c`

```dockerfile
```

-	Layers:
	-	`sha256:701e73d68eb5b3d0954740f6079a09552ca9ce9039b6ab0681527a0988545a4f`  
		Last Modified: Wed, 11 Nov 2026 19:33:23 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:42c71f23e3c1d546f0fd3b983134468c5c01a619763bcc484c1e60ba551f4b8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (343973508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01f69bf702b51abd97e4efd7ce7ea8c4b40ab386b5fab2e81f490cfaac303f5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:47:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:47:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:47:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:47:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:47:38 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:47:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3d59eac7a0a6618d0f7e8dbb8004e3bfbcf6d223c6a09e8bb6c33046321d43f`  
		Last Modified: Wed, 11 Nov 2026 19:48:22 GMT  
		Size: 42.3 MB (42328039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a18589c938c23c3529ff3ce2b1719e577f321f829903fae45a03198739dcc02`  
		Last Modified: Wed, 11 Nov 2026 19:48:20 GMT  
		Size: 1.6 MB (1561929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87df17345b3f66cefa9462decceb5c57f7cfeaec0bb3dcae57b3728b12d8f54c`  
		Last Modified: Wed, 11 Nov 2026 19:48:26 GMT  
		Size: 269.9 MB (269869471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0` - unknown; unknown

```console
$ docker pull dart@sha256:0c0673a4fc967b5073eee593b87fa8bc770b5c548feb7c594de3b0a4eceba1e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2888bf4dbb8d2785b8947aa3d58ec1c4e2beccee435693cb21a6837f37c7c06`

```dockerfile
```

-	Layers:
	-	`sha256:2e21d8b6a51b89b65b4f739f0df7a4973442b8024a470cbffcfddb5b27efc920`  
		Last Modified: Wed, 11 Nov 2026 19:48:20 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.14.0-sdk`

```console
$ docker pull dart@sha256:9ba97850b3154383a90f67844b09ea77751f7835836d8b2662ad2ffe03f60c8c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `dart:3.14.0-sdk` - linux; amd64

```console
$ docker pull dart@sha256:fa43be1e030d618681105d6d3d7619f7cdcbf87bd921a6b24e41ef000c61d039
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345914352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d8d12ac2b921f225efe78a6ee734e5ad4395e88ef16f84c48b6cb792dfbb9ea`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:31:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:31:54 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:31:54 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:31:54 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:31:54 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:32:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90740073b6a6a0f8de9e2718574a73ffa4ca49f3e02aa6526089be26b077b199`  
		Last Modified: Wed, 11 Nov 2026 19:32:38 GMT  
		Size: 42.5 MB (42525875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac10e2a1cd3d9eb4486ac24b36d2320c2dd6bb41813a803eaa157a28861101c`  
		Last Modified: Wed, 11 Nov 2026 19:32:36 GMT  
		Size: 1.9 MB (1867115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb96941149463133bb6c17b0f4d83d88f7d797d89babb17843e410e8d245a5a4`  
		Last Modified: Wed, 11 Nov 2026 19:32:42 GMT  
		Size: 271.7 MB (271665198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:c199c779001df45679f4a6fb44f1d2496246eac80e44b102ea2c957644c6edf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74b5b263d150c7a98a66065bf72189cc3b485e2a2cec39ab96d3698ac32db732`

```dockerfile
```

-	Layers:
	-	`sha256:6cac4af3f71c6637bf3cd3450a26a04324d413f5627fba6062564ec90b286875`  
		Last Modified: Wed, 11 Nov 2026 19:32:36 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:dc3a6cf6a7c7bf4b0358fc8f5aaeaade71338d57bb5e968e3bbe49f128792cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238601123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ffa23030d056230f708255fa40f1d45c22cee124b105ea8859e59dfe8d6928`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:32:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:32:53 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:32:53 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:32:53 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:32:53 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:33:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1079a7d65272edc8f45b80baac8b7aa7829c2d6566b917d1fc7ffa3569f1317`  
		Last Modified: Wed, 11 Nov 2026 19:33:24 GMT  
		Size: 37.5 MB (37529465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7550675fdbd7e2021d2690022f4fe105aa54515432bdb29706da6766571f96`  
		Last Modified: Wed, 11 Nov 2026 19:33:23 GMT  
		Size: 1.3 MB (1271965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0366a6ef0b0fc29ad4a63ddc9f61a46d7ae1f835f8c12da8a2e454480587b92`  
		Last Modified: Wed, 11 Nov 2026 19:33:27 GMT  
		Size: 173.5 MB (173526746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:eaaf8c45e30c73635078e1a1513f8251b1c73940215b364854c02e7791f6e109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d4d6699666e80f7abe46e1a5bff5678f79a09d4c6fd1d37fd6a99d7397cf7c`

```dockerfile
```

-	Layers:
	-	`sha256:701e73d68eb5b3d0954740f6079a09552ca9ce9039b6ab0681527a0988545a4f`  
		Last Modified: Wed, 11 Nov 2026 19:33:23 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:42c71f23e3c1d546f0fd3b983134468c5c01a619763bcc484c1e60ba551f4b8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (343973508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01f69bf702b51abd97e4efd7ce7ea8c4b40ab386b5fab2e81f490cfaac303f5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:47:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:47:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:47:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:47:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:47:38 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:47:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3d59eac7a0a6618d0f7e8dbb8004e3bfbcf6d223c6a09e8bb6c33046321d43f`  
		Last Modified: Wed, 11 Nov 2026 19:48:22 GMT  
		Size: 42.3 MB (42328039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a18589c938c23c3529ff3ce2b1719e577f321f829903fae45a03198739dcc02`  
		Last Modified: Wed, 11 Nov 2026 19:48:20 GMT  
		Size: 1.6 MB (1561929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87df17345b3f66cefa9462decceb5c57f7cfeaec0bb3dcae57b3728b12d8f54c`  
		Last Modified: Wed, 11 Nov 2026 19:48:26 GMT  
		Size: 269.9 MB (269869471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:0c0673a4fc967b5073eee593b87fa8bc770b5c548feb7c594de3b0a4eceba1e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2888bf4dbb8d2785b8947aa3d58ec1c4e2beccee435693cb21a6837f37c7c06`

```dockerfile
```

-	Layers:
	-	`sha256:2e21d8b6a51b89b65b4f739f0df7a4973442b8024a470cbffcfddb5b27efc920`  
		Last Modified: Wed, 11 Nov 2026 19:48:20 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.15.0-118.1.beta`

```console
$ docker pull dart@sha256:47460f87d4c1a8424dec7a7a0d8fef5312412fc05560349d7058eb4e42b995c0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown

### `dart:3.15.0-118.1.beta` - linux; amd64

```console
$ docker pull dart@sha256:d68201063844c2c65729bc0c06e1918cfc6d82433f8e50b183c88e82632bc780
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.7 MB (350656597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:affc1c640a57b8b70b56af1a3682e935ed0b308ee62bd02bd9e8c729aa698045`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 19:17:23 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 19:17:23 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 05 Nov 2026 19:17:23 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 05 Nov 2026 19:17:23 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:17:23 GMT
WORKDIR /root
# Thu, 05 Nov 2026 19:17:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=0563232981f3b0d2ffb03430b0627a7cad7f5327ca2caaec33ec6ad9c3a9c774;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec1cbe21c8d1e45a8ca9b0e3fed7e566d2f1e0642c00017eaa974a8b67623e60;             SDK_ARCH="arm";;         arm64)             DART_SHA256=32cc7c1451564b281d993298a93b32981bd095e5e1d9a592b47a61c5ff44d910;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=1cb8a646237c4f0a07d72fd912ad80801fece786e7565b9e1d056fe7660c0dfa;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.15.0-118.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07ab48fd560c142dd4784c4364c4c320b95e0e3f3d294fce68ce73f991a6f5dc`  
		Last Modified: Thu, 05 Nov 2026 19:18:08 GMT  
		Size: 42.5 MB (42525846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9b3ed083354563c48f6d07acce306532196026204fb2371126815b91fe22860`  
		Last Modified: Thu, 05 Nov 2026 19:18:07 GMT  
		Size: 1.9 MB (1867114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:848485157538efa749bd4c925d9e9bee297ee31a79b83347cb8dd78e23a86f6a`  
		Last Modified: Thu, 05 Nov 2026 19:18:13 GMT  
		Size: 276.4 MB (276407473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.15.0-118.1.beta` - unknown; unknown

```console
$ docker pull dart@sha256:526bbac3f2681f3c3efd1296085b197fb8c00e04c7341cc33cea0debc1c81b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4dad3b5efcff0129da2a4046906e036b3d2ff1a965693ca3801ab971ac4d285`

```dockerfile
```

-	Layers:
	-	`sha256:e4ad32c69987e4ed306df7e10732c93abbac23d32c00e6078eb1f62c859a39a6`  
		Last Modified: Thu, 05 Nov 2026 19:18:07 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.15.0-118.1.beta` - linux; arm variant v7

```console
$ docker pull dart@sha256:21af254d594307b14fd8726b3c57679725eeac9e87d43dbc720718f238182ad7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.4 MB (242425966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd8e960a8fe3784503e92147a7808a9684a25f1dba5abe8d1612645d6b49f434`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 19:41:28 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 19:41:29 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 05 Nov 2026 19:41:29 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 05 Nov 2026 19:41:29 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:41:29 GMT
WORKDIR /root
# Thu, 05 Nov 2026 19:41:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=0563232981f3b0d2ffb03430b0627a7cad7f5327ca2caaec33ec6ad9c3a9c774;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec1cbe21c8d1e45a8ca9b0e3fed7e566d2f1e0642c00017eaa974a8b67623e60;             SDK_ARCH="arm";;         arm64)             DART_SHA256=32cc7c1451564b281d993298a93b32981bd095e5e1d9a592b47a61c5ff44d910;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=1cb8a646237c4f0a07d72fd912ad80801fece786e7565b9e1d056fe7660c0dfa;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.15.0-118.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e1ed66a3e0f0e76f1074e1f8ef4bea220169a55a227a791d57135660f01cd9b`  
		Last Modified: Thu, 05 Nov 2026 19:42:01 GMT  
		Size: 37.5 MB (37529491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b47c006a075cad489cf79d80581a30eb34f80dcfcd91665cc0294966998953f9`  
		Last Modified: Thu, 05 Nov 2026 19:41:59 GMT  
		Size: 1.3 MB (1271966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9bae7d70d6d3c833b5bb857ed1341ee4e74b28c86e08ef95ea1bb5adf7c27ee`  
		Last Modified: Thu, 05 Nov 2026 19:42:03 GMT  
		Size: 177.4 MB (177351562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.15.0-118.1.beta` - unknown; unknown

```console
$ docker pull dart@sha256:5f13626a2dcddbab06b199bde6833a9e7a317ed4305c8900e0bc5d32a6b79d80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94136df8a5b17f2993fd66ecd94ff62ed63104455ba5c632dc01639a5dc02ed5`

```dockerfile
```

-	Layers:
	-	`sha256:f4a1905033af6119b259b65fe4cad89dcbe4b5a8134375813e864105bb15732a`  
		Last Modified: Thu, 05 Nov 2026 19:41:59 GMT  
		Size: 19.0 KB (19029 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.15.0-118.1.beta` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:e58fb2aa8b98b7a185552dcb19a02b98fa0180efa754e5af3ddf8af86b97b996
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.1 MB (348072982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2254240257a40d157c8c3f570cfb40acb2c6b8ac8958492b3bf625a9bca818b1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 19:13:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 19:13:05 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 05 Nov 2026 19:13:05 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 05 Nov 2026 19:13:05 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:13:05 GMT
WORKDIR /root
# Thu, 05 Nov 2026 19:13:20 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=0563232981f3b0d2ffb03430b0627a7cad7f5327ca2caaec33ec6ad9c3a9c774;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec1cbe21c8d1e45a8ca9b0e3fed7e566d2f1e0642c00017eaa974a8b67623e60;             SDK_ARCH="arm";;         arm64)             DART_SHA256=32cc7c1451564b281d993298a93b32981bd095e5e1d9a592b47a61c5ff44d910;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=1cb8a646237c4f0a07d72fd912ad80801fece786e7565b9e1d056fe7660c0dfa;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.15.0-118.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53ac3ee2de5bc3d1721eeb08c82460d20ea70ce8a1906883c0c06a3f91666cf3`  
		Last Modified: Thu, 05 Nov 2026 19:13:58 GMT  
		Size: 42.3 MB (42327655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ea8f3fe66e8888379693cdd66d8f0e605de097a65370987540bae1ea0593e6`  
		Last Modified: Thu, 05 Nov 2026 19:13:56 GMT  
		Size: 1.6 MB (1561922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42904fd8806d8b2a89e39fef3fb6a816c3972b6f636ab1913c985eecc655c16d`  
		Last Modified: Thu, 05 Nov 2026 19:14:02 GMT  
		Size: 274.0 MB (273969336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.15.0-118.1.beta` - unknown; unknown

```console
$ docker pull dart@sha256:1cb5b715f1e5c6447a6acdafbe8d9442b0657fe96115f8be457b6181d54c3f2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f9e1967078e33a4e571f645469fb96dc214e037677a218e84734a76b500385`

```dockerfile
```

-	Layers:
	-	`sha256:1623cca73edf11abf6105d9679cd0b4a36f446b30add76c519aa5efb4eefc976`  
		Last Modified: Thu, 05 Nov 2026 19:13:56 GMT  
		Size: 19.1 KB (19056 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.15.0-118.1.beta` - linux; riscv64

```console
$ docker pull dart@sha256:ce6c937c19add214f9b4fed5d9eb4402d6856c797150c3c949de3e1f740e070c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.0 MB (277003537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76a33c5a88a10a924082f883a95098ba5234f587539a7f9aed37da67bfe42e0a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sun, 08 Nov 2026 19:04:49 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sun, 08 Nov 2026 19:04:51 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sun, 08 Nov 2026 19:04:51 GMT
ENV DART_SDK=/usr/lib/dart
# Sun, 08 Nov 2026 19:04:51 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 08 Nov 2026 19:04:51 GMT
WORKDIR /root
# Sun, 08 Nov 2026 19:05:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=0563232981f3b0d2ffb03430b0627a7cad7f5327ca2caaec33ec6ad9c3a9c774;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec1cbe21c8d1e45a8ca9b0e3fed7e566d2f1e0642c00017eaa974a8b67623e60;             SDK_ARCH="arm";;         arm64)             DART_SHA256=32cc7c1451564b281d993298a93b32981bd095e5e1d9a592b47a61c5ff44d910;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=1cb8a646237c4f0a07d72fd912ad80801fece786e7565b9e1d056fe7660c0dfa;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.15.0-118.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a405870b7f71d5b261475ec09f54d3c514cb088967bf27c3881af8c24b81729`  
		Last Modified: Sun, 08 Nov 2026 19:10:38 GMT  
		Size: 41.6 MB (41600663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4716c4cdddd6e475bbe2658a6706cd98246d7f460dda3bbc75e1c09ae4c97972`  
		Last Modified: Sun, 08 Nov 2026 19:10:26 GMT  
		Size: 1.6 MB (1560335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:758f354d556d0ab9f6b2e101bc383f235fddf151d41a00d8b3208984f2bca131`  
		Last Modified: Sun, 08 Nov 2026 19:11:02 GMT  
		Size: 205.5 MB (205496323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.15.0-118.1.beta` - unknown; unknown

```console
$ docker pull dart@sha256:587f09e83c085526b1e24bb40c336665d929129df2aac4cc19d9ac7e9caab7e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d56bbfafbaef9d8c7a3e0bfa6c8e65880ca2ff5b4e7554eb72ffad49a1f65965`

```dockerfile
```

-	Layers:
	-	`sha256:b8135967ad542abeb21536ea865e4aa4e6ee1f4d9235351aa69360c7fe64a605`  
		Last Modified: Sun, 08 Nov 2026 19:10:26 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.15.0-118.1.beta-sdk`

```console
$ docker pull dart@sha256:47460f87d4c1a8424dec7a7a0d8fef5312412fc05560349d7058eb4e42b995c0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown

### `dart:3.15.0-118.1.beta-sdk` - linux; amd64

```console
$ docker pull dart@sha256:d68201063844c2c65729bc0c06e1918cfc6d82433f8e50b183c88e82632bc780
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.7 MB (350656597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:affc1c640a57b8b70b56af1a3682e935ed0b308ee62bd02bd9e8c729aa698045`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 19:17:23 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 19:17:23 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 05 Nov 2026 19:17:23 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 05 Nov 2026 19:17:23 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:17:23 GMT
WORKDIR /root
# Thu, 05 Nov 2026 19:17:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=0563232981f3b0d2ffb03430b0627a7cad7f5327ca2caaec33ec6ad9c3a9c774;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec1cbe21c8d1e45a8ca9b0e3fed7e566d2f1e0642c00017eaa974a8b67623e60;             SDK_ARCH="arm";;         arm64)             DART_SHA256=32cc7c1451564b281d993298a93b32981bd095e5e1d9a592b47a61c5ff44d910;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=1cb8a646237c4f0a07d72fd912ad80801fece786e7565b9e1d056fe7660c0dfa;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.15.0-118.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07ab48fd560c142dd4784c4364c4c320b95e0e3f3d294fce68ce73f991a6f5dc`  
		Last Modified: Thu, 05 Nov 2026 19:18:08 GMT  
		Size: 42.5 MB (42525846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9b3ed083354563c48f6d07acce306532196026204fb2371126815b91fe22860`  
		Last Modified: Thu, 05 Nov 2026 19:18:07 GMT  
		Size: 1.9 MB (1867114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:848485157538efa749bd4c925d9e9bee297ee31a79b83347cb8dd78e23a86f6a`  
		Last Modified: Thu, 05 Nov 2026 19:18:13 GMT  
		Size: 276.4 MB (276407473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.15.0-118.1.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:526bbac3f2681f3c3efd1296085b197fb8c00e04c7341cc33cea0debc1c81b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4dad3b5efcff0129da2a4046906e036b3d2ff1a965693ca3801ab971ac4d285`

```dockerfile
```

-	Layers:
	-	`sha256:e4ad32c69987e4ed306df7e10732c93abbac23d32c00e6078eb1f62c859a39a6`  
		Last Modified: Thu, 05 Nov 2026 19:18:07 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.15.0-118.1.beta-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:21af254d594307b14fd8726b3c57679725eeac9e87d43dbc720718f238182ad7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.4 MB (242425966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd8e960a8fe3784503e92147a7808a9684a25f1dba5abe8d1612645d6b49f434`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 19:41:28 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 19:41:29 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 05 Nov 2026 19:41:29 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 05 Nov 2026 19:41:29 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:41:29 GMT
WORKDIR /root
# Thu, 05 Nov 2026 19:41:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=0563232981f3b0d2ffb03430b0627a7cad7f5327ca2caaec33ec6ad9c3a9c774;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec1cbe21c8d1e45a8ca9b0e3fed7e566d2f1e0642c00017eaa974a8b67623e60;             SDK_ARCH="arm";;         arm64)             DART_SHA256=32cc7c1451564b281d993298a93b32981bd095e5e1d9a592b47a61c5ff44d910;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=1cb8a646237c4f0a07d72fd912ad80801fece786e7565b9e1d056fe7660c0dfa;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.15.0-118.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e1ed66a3e0f0e76f1074e1f8ef4bea220169a55a227a791d57135660f01cd9b`  
		Last Modified: Thu, 05 Nov 2026 19:42:01 GMT  
		Size: 37.5 MB (37529491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b47c006a075cad489cf79d80581a30eb34f80dcfcd91665cc0294966998953f9`  
		Last Modified: Thu, 05 Nov 2026 19:41:59 GMT  
		Size: 1.3 MB (1271966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9bae7d70d6d3c833b5bb857ed1341ee4e74b28c86e08ef95ea1bb5adf7c27ee`  
		Last Modified: Thu, 05 Nov 2026 19:42:03 GMT  
		Size: 177.4 MB (177351562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.15.0-118.1.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:5f13626a2dcddbab06b199bde6833a9e7a317ed4305c8900e0bc5d32a6b79d80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94136df8a5b17f2993fd66ecd94ff62ed63104455ba5c632dc01639a5dc02ed5`

```dockerfile
```

-	Layers:
	-	`sha256:f4a1905033af6119b259b65fe4cad89dcbe4b5a8134375813e864105bb15732a`  
		Last Modified: Thu, 05 Nov 2026 19:41:59 GMT  
		Size: 19.0 KB (19029 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.15.0-118.1.beta-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:e58fb2aa8b98b7a185552dcb19a02b98fa0180efa754e5af3ddf8af86b97b996
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.1 MB (348072982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2254240257a40d157c8c3f570cfb40acb2c6b8ac8958492b3bf625a9bca818b1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 19:13:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 19:13:05 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 05 Nov 2026 19:13:05 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 05 Nov 2026 19:13:05 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:13:05 GMT
WORKDIR /root
# Thu, 05 Nov 2026 19:13:20 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=0563232981f3b0d2ffb03430b0627a7cad7f5327ca2caaec33ec6ad9c3a9c774;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec1cbe21c8d1e45a8ca9b0e3fed7e566d2f1e0642c00017eaa974a8b67623e60;             SDK_ARCH="arm";;         arm64)             DART_SHA256=32cc7c1451564b281d993298a93b32981bd095e5e1d9a592b47a61c5ff44d910;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=1cb8a646237c4f0a07d72fd912ad80801fece786e7565b9e1d056fe7660c0dfa;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.15.0-118.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53ac3ee2de5bc3d1721eeb08c82460d20ea70ce8a1906883c0c06a3f91666cf3`  
		Last Modified: Thu, 05 Nov 2026 19:13:58 GMT  
		Size: 42.3 MB (42327655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ea8f3fe66e8888379693cdd66d8f0e605de097a65370987540bae1ea0593e6`  
		Last Modified: Thu, 05 Nov 2026 19:13:56 GMT  
		Size: 1.6 MB (1561922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42904fd8806d8b2a89e39fef3fb6a816c3972b6f636ab1913c985eecc655c16d`  
		Last Modified: Thu, 05 Nov 2026 19:14:02 GMT  
		Size: 274.0 MB (273969336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.15.0-118.1.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:1cb5b715f1e5c6447a6acdafbe8d9442b0657fe96115f8be457b6181d54c3f2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f9e1967078e33a4e571f645469fb96dc214e037677a218e84734a76b500385`

```dockerfile
```

-	Layers:
	-	`sha256:1623cca73edf11abf6105d9679cd0b4a36f446b30add76c519aa5efb4eefc976`  
		Last Modified: Thu, 05 Nov 2026 19:13:56 GMT  
		Size: 19.1 KB (19056 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.15.0-118.1.beta-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:ce6c937c19add214f9b4fed5d9eb4402d6856c797150c3c949de3e1f740e070c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.0 MB (277003537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76a33c5a88a10a924082f883a95098ba5234f587539a7f9aed37da67bfe42e0a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sun, 08 Nov 2026 19:04:49 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sun, 08 Nov 2026 19:04:51 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sun, 08 Nov 2026 19:04:51 GMT
ENV DART_SDK=/usr/lib/dart
# Sun, 08 Nov 2026 19:04:51 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 08 Nov 2026 19:04:51 GMT
WORKDIR /root
# Sun, 08 Nov 2026 19:05:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=0563232981f3b0d2ffb03430b0627a7cad7f5327ca2caaec33ec6ad9c3a9c774;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec1cbe21c8d1e45a8ca9b0e3fed7e566d2f1e0642c00017eaa974a8b67623e60;             SDK_ARCH="arm";;         arm64)             DART_SHA256=32cc7c1451564b281d993298a93b32981bd095e5e1d9a592b47a61c5ff44d910;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=1cb8a646237c4f0a07d72fd912ad80801fece786e7565b9e1d056fe7660c0dfa;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.15.0-118.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a405870b7f71d5b261475ec09f54d3c514cb088967bf27c3881af8c24b81729`  
		Last Modified: Sun, 08 Nov 2026 19:10:38 GMT  
		Size: 41.6 MB (41600663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4716c4cdddd6e475bbe2658a6706cd98246d7f460dda3bbc75e1c09ae4c97972`  
		Last Modified: Sun, 08 Nov 2026 19:10:26 GMT  
		Size: 1.6 MB (1560335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:758f354d556d0ab9f6b2e101bc383f235fddf151d41a00d8b3208984f2bca131`  
		Last Modified: Sun, 08 Nov 2026 19:11:02 GMT  
		Size: 205.5 MB (205496323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.15.0-118.1.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:587f09e83c085526b1e24bb40c336665d929129df2aac4cc19d9ac7e9caab7e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d56bbfafbaef9d8c7a3e0bfa6c8e65880ca2ff5b4e7554eb72ffad49a1f65965`

```dockerfile
```

-	Layers:
	-	`sha256:b8135967ad542abeb21536ea865e4aa4e6ee1f4d9235351aa69360c7fe64a605`  
		Last Modified: Sun, 08 Nov 2026 19:10:26 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:beta`

```console
$ docker pull dart@sha256:47460f87d4c1a8424dec7a7a0d8fef5312412fc05560349d7058eb4e42b995c0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown

### `dart:beta` - linux; amd64

```console
$ docker pull dart@sha256:d68201063844c2c65729bc0c06e1918cfc6d82433f8e50b183c88e82632bc780
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.7 MB (350656597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:affc1c640a57b8b70b56af1a3682e935ed0b308ee62bd02bd9e8c729aa698045`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 19:17:23 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 19:17:23 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 05 Nov 2026 19:17:23 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 05 Nov 2026 19:17:23 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:17:23 GMT
WORKDIR /root
# Thu, 05 Nov 2026 19:17:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=0563232981f3b0d2ffb03430b0627a7cad7f5327ca2caaec33ec6ad9c3a9c774;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec1cbe21c8d1e45a8ca9b0e3fed7e566d2f1e0642c00017eaa974a8b67623e60;             SDK_ARCH="arm";;         arm64)             DART_SHA256=32cc7c1451564b281d993298a93b32981bd095e5e1d9a592b47a61c5ff44d910;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=1cb8a646237c4f0a07d72fd912ad80801fece786e7565b9e1d056fe7660c0dfa;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.15.0-118.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07ab48fd560c142dd4784c4364c4c320b95e0e3f3d294fce68ce73f991a6f5dc`  
		Last Modified: Thu, 05 Nov 2026 19:18:08 GMT  
		Size: 42.5 MB (42525846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9b3ed083354563c48f6d07acce306532196026204fb2371126815b91fe22860`  
		Last Modified: Thu, 05 Nov 2026 19:18:07 GMT  
		Size: 1.9 MB (1867114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:848485157538efa749bd4c925d9e9bee297ee31a79b83347cb8dd78e23a86f6a`  
		Last Modified: Thu, 05 Nov 2026 19:18:13 GMT  
		Size: 276.4 MB (276407473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:526bbac3f2681f3c3efd1296085b197fb8c00e04c7341cc33cea0debc1c81b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4dad3b5efcff0129da2a4046906e036b3d2ff1a965693ca3801ab971ac4d285`

```dockerfile
```

-	Layers:
	-	`sha256:e4ad32c69987e4ed306df7e10732c93abbac23d32c00e6078eb1f62c859a39a6`  
		Last Modified: Thu, 05 Nov 2026 19:18:07 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm variant v7

```console
$ docker pull dart@sha256:21af254d594307b14fd8726b3c57679725eeac9e87d43dbc720718f238182ad7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.4 MB (242425966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd8e960a8fe3784503e92147a7808a9684a25f1dba5abe8d1612645d6b49f434`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 19:41:28 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 19:41:29 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 05 Nov 2026 19:41:29 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 05 Nov 2026 19:41:29 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:41:29 GMT
WORKDIR /root
# Thu, 05 Nov 2026 19:41:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=0563232981f3b0d2ffb03430b0627a7cad7f5327ca2caaec33ec6ad9c3a9c774;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec1cbe21c8d1e45a8ca9b0e3fed7e566d2f1e0642c00017eaa974a8b67623e60;             SDK_ARCH="arm";;         arm64)             DART_SHA256=32cc7c1451564b281d993298a93b32981bd095e5e1d9a592b47a61c5ff44d910;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=1cb8a646237c4f0a07d72fd912ad80801fece786e7565b9e1d056fe7660c0dfa;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.15.0-118.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e1ed66a3e0f0e76f1074e1f8ef4bea220169a55a227a791d57135660f01cd9b`  
		Last Modified: Thu, 05 Nov 2026 19:42:01 GMT  
		Size: 37.5 MB (37529491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b47c006a075cad489cf79d80581a30eb34f80dcfcd91665cc0294966998953f9`  
		Last Modified: Thu, 05 Nov 2026 19:41:59 GMT  
		Size: 1.3 MB (1271966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9bae7d70d6d3c833b5bb857ed1341ee4e74b28c86e08ef95ea1bb5adf7c27ee`  
		Last Modified: Thu, 05 Nov 2026 19:42:03 GMT  
		Size: 177.4 MB (177351562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:5f13626a2dcddbab06b199bde6833a9e7a317ed4305c8900e0bc5d32a6b79d80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94136df8a5b17f2993fd66ecd94ff62ed63104455ba5c632dc01639a5dc02ed5`

```dockerfile
```

-	Layers:
	-	`sha256:f4a1905033af6119b259b65fe4cad89dcbe4b5a8134375813e864105bb15732a`  
		Last Modified: Thu, 05 Nov 2026 19:41:59 GMT  
		Size: 19.0 KB (19029 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:e58fb2aa8b98b7a185552dcb19a02b98fa0180efa754e5af3ddf8af86b97b996
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.1 MB (348072982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2254240257a40d157c8c3f570cfb40acb2c6b8ac8958492b3bf625a9bca818b1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 19:13:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 19:13:05 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 05 Nov 2026 19:13:05 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 05 Nov 2026 19:13:05 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:13:05 GMT
WORKDIR /root
# Thu, 05 Nov 2026 19:13:20 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=0563232981f3b0d2ffb03430b0627a7cad7f5327ca2caaec33ec6ad9c3a9c774;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec1cbe21c8d1e45a8ca9b0e3fed7e566d2f1e0642c00017eaa974a8b67623e60;             SDK_ARCH="arm";;         arm64)             DART_SHA256=32cc7c1451564b281d993298a93b32981bd095e5e1d9a592b47a61c5ff44d910;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=1cb8a646237c4f0a07d72fd912ad80801fece786e7565b9e1d056fe7660c0dfa;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.15.0-118.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53ac3ee2de5bc3d1721eeb08c82460d20ea70ce8a1906883c0c06a3f91666cf3`  
		Last Modified: Thu, 05 Nov 2026 19:13:58 GMT  
		Size: 42.3 MB (42327655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ea8f3fe66e8888379693cdd66d8f0e605de097a65370987540bae1ea0593e6`  
		Last Modified: Thu, 05 Nov 2026 19:13:56 GMT  
		Size: 1.6 MB (1561922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42904fd8806d8b2a89e39fef3fb6a816c3972b6f636ab1913c985eecc655c16d`  
		Last Modified: Thu, 05 Nov 2026 19:14:02 GMT  
		Size: 274.0 MB (273969336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:1cb5b715f1e5c6447a6acdafbe8d9442b0657fe96115f8be457b6181d54c3f2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f9e1967078e33a4e571f645469fb96dc214e037677a218e84734a76b500385`

```dockerfile
```

-	Layers:
	-	`sha256:1623cca73edf11abf6105d9679cd0b4a36f446b30add76c519aa5efb4eefc976`  
		Last Modified: Thu, 05 Nov 2026 19:13:56 GMT  
		Size: 19.1 KB (19056 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; riscv64

```console
$ docker pull dart@sha256:ce6c937c19add214f9b4fed5d9eb4402d6856c797150c3c949de3e1f740e070c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.0 MB (277003537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76a33c5a88a10a924082f883a95098ba5234f587539a7f9aed37da67bfe42e0a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sun, 08 Nov 2026 19:04:49 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sun, 08 Nov 2026 19:04:51 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sun, 08 Nov 2026 19:04:51 GMT
ENV DART_SDK=/usr/lib/dart
# Sun, 08 Nov 2026 19:04:51 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 08 Nov 2026 19:04:51 GMT
WORKDIR /root
# Sun, 08 Nov 2026 19:05:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=0563232981f3b0d2ffb03430b0627a7cad7f5327ca2caaec33ec6ad9c3a9c774;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec1cbe21c8d1e45a8ca9b0e3fed7e566d2f1e0642c00017eaa974a8b67623e60;             SDK_ARCH="arm";;         arm64)             DART_SHA256=32cc7c1451564b281d993298a93b32981bd095e5e1d9a592b47a61c5ff44d910;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=1cb8a646237c4f0a07d72fd912ad80801fece786e7565b9e1d056fe7660c0dfa;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.15.0-118.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a405870b7f71d5b261475ec09f54d3c514cb088967bf27c3881af8c24b81729`  
		Last Modified: Sun, 08 Nov 2026 19:10:38 GMT  
		Size: 41.6 MB (41600663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4716c4cdddd6e475bbe2658a6706cd98246d7f460dda3bbc75e1c09ae4c97972`  
		Last Modified: Sun, 08 Nov 2026 19:10:26 GMT  
		Size: 1.6 MB (1560335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:758f354d556d0ab9f6b2e101bc383f235fddf151d41a00d8b3208984f2bca131`  
		Last Modified: Sun, 08 Nov 2026 19:11:02 GMT  
		Size: 205.5 MB (205496323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:587f09e83c085526b1e24bb40c336665d929129df2aac4cc19d9ac7e9caab7e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d56bbfafbaef9d8c7a3e0bfa6c8e65880ca2ff5b4e7554eb72ffad49a1f65965`

```dockerfile
```

-	Layers:
	-	`sha256:b8135967ad542abeb21536ea865e4aa4e6ee1f4d9235351aa69360c7fe64a605`  
		Last Modified: Sun, 08 Nov 2026 19:10:26 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:beta-sdk`

```console
$ docker pull dart@sha256:47460f87d4c1a8424dec7a7a0d8fef5312412fc05560349d7058eb4e42b995c0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown

### `dart:beta-sdk` - linux; amd64

```console
$ docker pull dart@sha256:d68201063844c2c65729bc0c06e1918cfc6d82433f8e50b183c88e82632bc780
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.7 MB (350656597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:affc1c640a57b8b70b56af1a3682e935ed0b308ee62bd02bd9e8c729aa698045`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 19:17:23 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 19:17:23 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 05 Nov 2026 19:17:23 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 05 Nov 2026 19:17:23 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:17:23 GMT
WORKDIR /root
# Thu, 05 Nov 2026 19:17:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=0563232981f3b0d2ffb03430b0627a7cad7f5327ca2caaec33ec6ad9c3a9c774;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec1cbe21c8d1e45a8ca9b0e3fed7e566d2f1e0642c00017eaa974a8b67623e60;             SDK_ARCH="arm";;         arm64)             DART_SHA256=32cc7c1451564b281d993298a93b32981bd095e5e1d9a592b47a61c5ff44d910;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=1cb8a646237c4f0a07d72fd912ad80801fece786e7565b9e1d056fe7660c0dfa;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.15.0-118.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07ab48fd560c142dd4784c4364c4c320b95e0e3f3d294fce68ce73f991a6f5dc`  
		Last Modified: Thu, 05 Nov 2026 19:18:08 GMT  
		Size: 42.5 MB (42525846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9b3ed083354563c48f6d07acce306532196026204fb2371126815b91fe22860`  
		Last Modified: Thu, 05 Nov 2026 19:18:07 GMT  
		Size: 1.9 MB (1867114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:848485157538efa749bd4c925d9e9bee297ee31a79b83347cb8dd78e23a86f6a`  
		Last Modified: Thu, 05 Nov 2026 19:18:13 GMT  
		Size: 276.4 MB (276407473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:526bbac3f2681f3c3efd1296085b197fb8c00e04c7341cc33cea0debc1c81b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4dad3b5efcff0129da2a4046906e036b3d2ff1a965693ca3801ab971ac4d285`

```dockerfile
```

-	Layers:
	-	`sha256:e4ad32c69987e4ed306df7e10732c93abbac23d32c00e6078eb1f62c859a39a6`  
		Last Modified: Thu, 05 Nov 2026 19:18:07 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:21af254d594307b14fd8726b3c57679725eeac9e87d43dbc720718f238182ad7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.4 MB (242425966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd8e960a8fe3784503e92147a7808a9684a25f1dba5abe8d1612645d6b49f434`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 19:41:28 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 19:41:29 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 05 Nov 2026 19:41:29 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 05 Nov 2026 19:41:29 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:41:29 GMT
WORKDIR /root
# Thu, 05 Nov 2026 19:41:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=0563232981f3b0d2ffb03430b0627a7cad7f5327ca2caaec33ec6ad9c3a9c774;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec1cbe21c8d1e45a8ca9b0e3fed7e566d2f1e0642c00017eaa974a8b67623e60;             SDK_ARCH="arm";;         arm64)             DART_SHA256=32cc7c1451564b281d993298a93b32981bd095e5e1d9a592b47a61c5ff44d910;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=1cb8a646237c4f0a07d72fd912ad80801fece786e7565b9e1d056fe7660c0dfa;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.15.0-118.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e1ed66a3e0f0e76f1074e1f8ef4bea220169a55a227a791d57135660f01cd9b`  
		Last Modified: Thu, 05 Nov 2026 19:42:01 GMT  
		Size: 37.5 MB (37529491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b47c006a075cad489cf79d80581a30eb34f80dcfcd91665cc0294966998953f9`  
		Last Modified: Thu, 05 Nov 2026 19:41:59 GMT  
		Size: 1.3 MB (1271966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9bae7d70d6d3c833b5bb857ed1341ee4e74b28c86e08ef95ea1bb5adf7c27ee`  
		Last Modified: Thu, 05 Nov 2026 19:42:03 GMT  
		Size: 177.4 MB (177351562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:5f13626a2dcddbab06b199bde6833a9e7a317ed4305c8900e0bc5d32a6b79d80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94136df8a5b17f2993fd66ecd94ff62ed63104455ba5c632dc01639a5dc02ed5`

```dockerfile
```

-	Layers:
	-	`sha256:f4a1905033af6119b259b65fe4cad89dcbe4b5a8134375813e864105bb15732a`  
		Last Modified: Thu, 05 Nov 2026 19:41:59 GMT  
		Size: 19.0 KB (19029 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:e58fb2aa8b98b7a185552dcb19a02b98fa0180efa754e5af3ddf8af86b97b996
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.1 MB (348072982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2254240257a40d157c8c3f570cfb40acb2c6b8ac8958492b3bf625a9bca818b1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 19:13:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 19:13:05 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 05 Nov 2026 19:13:05 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 05 Nov 2026 19:13:05 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:13:05 GMT
WORKDIR /root
# Thu, 05 Nov 2026 19:13:20 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=0563232981f3b0d2ffb03430b0627a7cad7f5327ca2caaec33ec6ad9c3a9c774;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec1cbe21c8d1e45a8ca9b0e3fed7e566d2f1e0642c00017eaa974a8b67623e60;             SDK_ARCH="arm";;         arm64)             DART_SHA256=32cc7c1451564b281d993298a93b32981bd095e5e1d9a592b47a61c5ff44d910;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=1cb8a646237c4f0a07d72fd912ad80801fece786e7565b9e1d056fe7660c0dfa;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.15.0-118.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53ac3ee2de5bc3d1721eeb08c82460d20ea70ce8a1906883c0c06a3f91666cf3`  
		Last Modified: Thu, 05 Nov 2026 19:13:58 GMT  
		Size: 42.3 MB (42327655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ea8f3fe66e8888379693cdd66d8f0e605de097a65370987540bae1ea0593e6`  
		Last Modified: Thu, 05 Nov 2026 19:13:56 GMT  
		Size: 1.6 MB (1561922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42904fd8806d8b2a89e39fef3fb6a816c3972b6f636ab1913c985eecc655c16d`  
		Last Modified: Thu, 05 Nov 2026 19:14:02 GMT  
		Size: 274.0 MB (273969336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:1cb5b715f1e5c6447a6acdafbe8d9442b0657fe96115f8be457b6181d54c3f2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f9e1967078e33a4e571f645469fb96dc214e037677a218e84734a76b500385`

```dockerfile
```

-	Layers:
	-	`sha256:1623cca73edf11abf6105d9679cd0b4a36f446b30add76c519aa5efb4eefc976`  
		Last Modified: Thu, 05 Nov 2026 19:13:56 GMT  
		Size: 19.1 KB (19056 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:ce6c937c19add214f9b4fed5d9eb4402d6856c797150c3c949de3e1f740e070c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.0 MB (277003537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76a33c5a88a10a924082f883a95098ba5234f587539a7f9aed37da67bfe42e0a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sun, 08 Nov 2026 19:04:49 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sun, 08 Nov 2026 19:04:51 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sun, 08 Nov 2026 19:04:51 GMT
ENV DART_SDK=/usr/lib/dart
# Sun, 08 Nov 2026 19:04:51 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 08 Nov 2026 19:04:51 GMT
WORKDIR /root
# Sun, 08 Nov 2026 19:05:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=0563232981f3b0d2ffb03430b0627a7cad7f5327ca2caaec33ec6ad9c3a9c774;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec1cbe21c8d1e45a8ca9b0e3fed7e566d2f1e0642c00017eaa974a8b67623e60;             SDK_ARCH="arm";;         arm64)             DART_SHA256=32cc7c1451564b281d993298a93b32981bd095e5e1d9a592b47a61c5ff44d910;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=1cb8a646237c4f0a07d72fd912ad80801fece786e7565b9e1d056fe7660c0dfa;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.15.0-118.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a405870b7f71d5b261475ec09f54d3c514cb088967bf27c3881af8c24b81729`  
		Last Modified: Sun, 08 Nov 2026 19:10:38 GMT  
		Size: 41.6 MB (41600663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4716c4cdddd6e475bbe2658a6706cd98246d7f460dda3bbc75e1c09ae4c97972`  
		Last Modified: Sun, 08 Nov 2026 19:10:26 GMT  
		Size: 1.6 MB (1560335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:758f354d556d0ab9f6b2e101bc383f235fddf151d41a00d8b3208984f2bca131`  
		Last Modified: Sun, 08 Nov 2026 19:11:02 GMT  
		Size: 205.5 MB (205496323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:587f09e83c085526b1e24bb40c336665d929129df2aac4cc19d9ac7e9caab7e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d56bbfafbaef9d8c7a3e0bfa6c8e65880ca2ff5b4e7554eb72ffad49a1f65965`

```dockerfile
```

-	Layers:
	-	`sha256:b8135967ad542abeb21536ea865e4aa4e6ee1f4d9235351aa69360c7fe64a605`  
		Last Modified: Sun, 08 Nov 2026 19:10:26 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:latest`

```console
$ docker pull dart@sha256:754aaf779c07a44017823fcb0e972f92d8053a9631531cc4e425053036efcb85
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown

### `dart:latest` - linux; amd64

```console
$ docker pull dart@sha256:fa43be1e030d618681105d6d3d7619f7cdcbf87bd921a6b24e41ef000c61d039
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345914352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d8d12ac2b921f225efe78a6ee734e5ad4395e88ef16f84c48b6cb792dfbb9ea`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:31:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:31:54 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:31:54 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:31:54 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:31:54 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:32:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90740073b6a6a0f8de9e2718574a73ffa4ca49f3e02aa6526089be26b077b199`  
		Last Modified: Wed, 11 Nov 2026 19:32:38 GMT  
		Size: 42.5 MB (42525875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac10e2a1cd3d9eb4486ac24b36d2320c2dd6bb41813a803eaa157a28861101c`  
		Last Modified: Wed, 11 Nov 2026 19:32:36 GMT  
		Size: 1.9 MB (1867115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb96941149463133bb6c17b0f4d83d88f7d797d89babb17843e410e8d245a5a4`  
		Last Modified: Wed, 11 Nov 2026 19:32:42 GMT  
		Size: 271.7 MB (271665198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:c199c779001df45679f4a6fb44f1d2496246eac80e44b102ea2c957644c6edf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74b5b263d150c7a98a66065bf72189cc3b485e2a2cec39ab96d3698ac32db732`

```dockerfile
```

-	Layers:
	-	`sha256:6cac4af3f71c6637bf3cd3450a26a04324d413f5627fba6062564ec90b286875`  
		Last Modified: Wed, 11 Nov 2026 19:32:36 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; arm variant v7

```console
$ docker pull dart@sha256:dc3a6cf6a7c7bf4b0358fc8f5aaeaade71338d57bb5e968e3bbe49f128792cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238601123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ffa23030d056230f708255fa40f1d45c22cee124b105ea8859e59dfe8d6928`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:32:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:32:53 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:32:53 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:32:53 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:32:53 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:33:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1079a7d65272edc8f45b80baac8b7aa7829c2d6566b917d1fc7ffa3569f1317`  
		Last Modified: Wed, 11 Nov 2026 19:33:24 GMT  
		Size: 37.5 MB (37529465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7550675fdbd7e2021d2690022f4fe105aa54515432bdb29706da6766571f96`  
		Last Modified: Wed, 11 Nov 2026 19:33:23 GMT  
		Size: 1.3 MB (1271965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0366a6ef0b0fc29ad4a63ddc9f61a46d7ae1f835f8c12da8a2e454480587b92`  
		Last Modified: Wed, 11 Nov 2026 19:33:27 GMT  
		Size: 173.5 MB (173526746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:eaaf8c45e30c73635078e1a1513f8251b1c73940215b364854c02e7791f6e109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d4d6699666e80f7abe46e1a5bff5678f79a09d4c6fd1d37fd6a99d7397cf7c`

```dockerfile
```

-	Layers:
	-	`sha256:701e73d68eb5b3d0954740f6079a09552ca9ce9039b6ab0681527a0988545a4f`  
		Last Modified: Wed, 11 Nov 2026 19:33:23 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:42c71f23e3c1d546f0fd3b983134468c5c01a619763bcc484c1e60ba551f4b8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (343973508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01f69bf702b51abd97e4efd7ce7ea8c4b40ab386b5fab2e81f490cfaac303f5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:47:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:47:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:47:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:47:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:47:38 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:47:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3d59eac7a0a6618d0f7e8dbb8004e3bfbcf6d223c6a09e8bb6c33046321d43f`  
		Last Modified: Wed, 11 Nov 2026 19:48:22 GMT  
		Size: 42.3 MB (42328039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a18589c938c23c3529ff3ce2b1719e577f321f829903fae45a03198739dcc02`  
		Last Modified: Wed, 11 Nov 2026 19:48:20 GMT  
		Size: 1.6 MB (1561929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87df17345b3f66cefa9462decceb5c57f7cfeaec0bb3dcae57b3728b12d8f54c`  
		Last Modified: Wed, 11 Nov 2026 19:48:26 GMT  
		Size: 269.9 MB (269869471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:0c0673a4fc967b5073eee593b87fa8bc770b5c548feb7c594de3b0a4eceba1e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2888bf4dbb8d2785b8947aa3d58ec1c4e2beccee435693cb21a6837f37c7c06`

```dockerfile
```

-	Layers:
	-	`sha256:2e21d8b6a51b89b65b4f739f0df7a4973442b8024a470cbffcfddb5b27efc920`  
		Last Modified: Wed, 11 Nov 2026 19:48:20 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; riscv64

```console
$ docker pull dart@sha256:acf7a8f4f1d7afdde9d7faf2a9e9316336865544e55f16804a53dc035420a0f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252922252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f5ea85d69ec2bd678200d21ba88534f1f0ecba4539dfbfe3bf520bdb256de13`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sat, 07 Nov 2026 04:27:30 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 07 Nov 2026 04:27:32 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 07 Nov 2026 04:27:32 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 07 Nov 2026 04:27:32 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 07 Nov 2026 04:27:32 GMT
WORKDIR /root
# Sat, 07 Nov 2026 04:28:20 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a98a3ee37450414df465ff7fded7456d96405c7c8ee93b69c3f41dda862dc13`  
		Last Modified: Sat, 07 Nov 2026 04:32:56 GMT  
		Size: 41.6 MB (41600759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:616a4d678938ba3ea9c917db1af630e0c54b90112caf6dab633ee9f0ca6aedf1`  
		Last Modified: Sat, 07 Nov 2026 04:32:44 GMT  
		Size: 1.6 MB (1560327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cf202a03decf7465601ffe1afddbf9156bbccc6ff971b22499c347b0463f8a6`  
		Last Modified: Sat, 07 Nov 2026 04:33:16 GMT  
		Size: 181.4 MB (181414950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:08e859f70b28058f1f0c0f22768abe90bfa68ccd9b966ab1a81b6aae2f1bab0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4e8255f88f5f504f7f0e52e1bbf94b28edad0e08b79340b72cdc902ca1d67c`

```dockerfile
```

-	Layers:
	-	`sha256:8ae6cf76796c664540c388aad9bcde6c8d964cf7ba9adf855337e049bf47eabd`  
		Last Modified: Sat, 07 Nov 2026 04:32:44 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:sdk`

```console
$ docker pull dart@sha256:754aaf779c07a44017823fcb0e972f92d8053a9631531cc4e425053036efcb85
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown

### `dart:sdk` - linux; amd64

```console
$ docker pull dart@sha256:fa43be1e030d618681105d6d3d7619f7cdcbf87bd921a6b24e41ef000c61d039
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345914352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d8d12ac2b921f225efe78a6ee734e5ad4395e88ef16f84c48b6cb792dfbb9ea`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:31:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:31:54 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:31:54 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:31:54 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:31:54 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:32:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90740073b6a6a0f8de9e2718574a73ffa4ca49f3e02aa6526089be26b077b199`  
		Last Modified: Wed, 11 Nov 2026 19:32:38 GMT  
		Size: 42.5 MB (42525875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac10e2a1cd3d9eb4486ac24b36d2320c2dd6bb41813a803eaa157a28861101c`  
		Last Modified: Wed, 11 Nov 2026 19:32:36 GMT  
		Size: 1.9 MB (1867115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb96941149463133bb6c17b0f4d83d88f7d797d89babb17843e410e8d245a5a4`  
		Last Modified: Wed, 11 Nov 2026 19:32:42 GMT  
		Size: 271.7 MB (271665198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:c199c779001df45679f4a6fb44f1d2496246eac80e44b102ea2c957644c6edf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74b5b263d150c7a98a66065bf72189cc3b485e2a2cec39ab96d3698ac32db732`

```dockerfile
```

-	Layers:
	-	`sha256:6cac4af3f71c6637bf3cd3450a26a04324d413f5627fba6062564ec90b286875`  
		Last Modified: Wed, 11 Nov 2026 19:32:36 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:dc3a6cf6a7c7bf4b0358fc8f5aaeaade71338d57bb5e968e3bbe49f128792cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238601123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ffa23030d056230f708255fa40f1d45c22cee124b105ea8859e59dfe8d6928`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:32:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:32:53 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:32:53 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:32:53 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:32:53 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:33:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1079a7d65272edc8f45b80baac8b7aa7829c2d6566b917d1fc7ffa3569f1317`  
		Last Modified: Wed, 11 Nov 2026 19:33:24 GMT  
		Size: 37.5 MB (37529465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7550675fdbd7e2021d2690022f4fe105aa54515432bdb29706da6766571f96`  
		Last Modified: Wed, 11 Nov 2026 19:33:23 GMT  
		Size: 1.3 MB (1271965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0366a6ef0b0fc29ad4a63ddc9f61a46d7ae1f835f8c12da8a2e454480587b92`  
		Last Modified: Wed, 11 Nov 2026 19:33:27 GMT  
		Size: 173.5 MB (173526746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:eaaf8c45e30c73635078e1a1513f8251b1c73940215b364854c02e7791f6e109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d4d6699666e80f7abe46e1a5bff5678f79a09d4c6fd1d37fd6a99d7397cf7c`

```dockerfile
```

-	Layers:
	-	`sha256:701e73d68eb5b3d0954740f6079a09552ca9ce9039b6ab0681527a0988545a4f`  
		Last Modified: Wed, 11 Nov 2026 19:33:23 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:42c71f23e3c1d546f0fd3b983134468c5c01a619763bcc484c1e60ba551f4b8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (343973508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01f69bf702b51abd97e4efd7ce7ea8c4b40ab386b5fab2e81f490cfaac303f5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:47:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:47:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:47:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:47:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:47:38 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:47:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3d59eac7a0a6618d0f7e8dbb8004e3bfbcf6d223c6a09e8bb6c33046321d43f`  
		Last Modified: Wed, 11 Nov 2026 19:48:22 GMT  
		Size: 42.3 MB (42328039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a18589c938c23c3529ff3ce2b1719e577f321f829903fae45a03198739dcc02`  
		Last Modified: Wed, 11 Nov 2026 19:48:20 GMT  
		Size: 1.6 MB (1561929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87df17345b3f66cefa9462decceb5c57f7cfeaec0bb3dcae57b3728b12d8f54c`  
		Last Modified: Wed, 11 Nov 2026 19:48:26 GMT  
		Size: 269.9 MB (269869471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:0c0673a4fc967b5073eee593b87fa8bc770b5c548feb7c594de3b0a4eceba1e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2888bf4dbb8d2785b8947aa3d58ec1c4e2beccee435693cb21a6837f37c7c06`

```dockerfile
```

-	Layers:
	-	`sha256:2e21d8b6a51b89b65b4f739f0df7a4973442b8024a470cbffcfddb5b27efc920`  
		Last Modified: Wed, 11 Nov 2026 19:48:20 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; riscv64

```console
$ docker pull dart@sha256:acf7a8f4f1d7afdde9d7faf2a9e9316336865544e55f16804a53dc035420a0f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252922252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f5ea85d69ec2bd678200d21ba88534f1f0ecba4539dfbfe3bf520bdb256de13`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sat, 07 Nov 2026 04:27:30 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 07 Nov 2026 04:27:32 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 07 Nov 2026 04:27:32 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 07 Nov 2026 04:27:32 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 07 Nov 2026 04:27:32 GMT
WORKDIR /root
# Sat, 07 Nov 2026 04:28:20 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a98a3ee37450414df465ff7fded7456d96405c7c8ee93b69c3f41dda862dc13`  
		Last Modified: Sat, 07 Nov 2026 04:32:56 GMT  
		Size: 41.6 MB (41600759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:616a4d678938ba3ea9c917db1af630e0c54b90112caf6dab633ee9f0ca6aedf1`  
		Last Modified: Sat, 07 Nov 2026 04:32:44 GMT  
		Size: 1.6 MB (1560327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cf202a03decf7465601ffe1afddbf9156bbccc6ff971b22499c347b0463f8a6`  
		Last Modified: Sat, 07 Nov 2026 04:33:16 GMT  
		Size: 181.4 MB (181414950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:08e859f70b28058f1f0c0f22768abe90bfa68ccd9b966ab1a81b6aae2f1bab0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4e8255f88f5f504f7f0e52e1bbf94b28edad0e08b79340b72cdc902ca1d67c`

```dockerfile
```

-	Layers:
	-	`sha256:8ae6cf76796c664540c388aad9bcde6c8d964cf7ba9adf855337e049bf47eabd`  
		Last Modified: Sat, 07 Nov 2026 04:32:44 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:stable`

```console
$ docker pull dart@sha256:754aaf779c07a44017823fcb0e972f92d8053a9631531cc4e425053036efcb85
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown

### `dart:stable` - linux; amd64

```console
$ docker pull dart@sha256:fa43be1e030d618681105d6d3d7619f7cdcbf87bd921a6b24e41ef000c61d039
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345914352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d8d12ac2b921f225efe78a6ee734e5ad4395e88ef16f84c48b6cb792dfbb9ea`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:31:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:31:54 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:31:54 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:31:54 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:31:54 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:32:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90740073b6a6a0f8de9e2718574a73ffa4ca49f3e02aa6526089be26b077b199`  
		Last Modified: Wed, 11 Nov 2026 19:32:38 GMT  
		Size: 42.5 MB (42525875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac10e2a1cd3d9eb4486ac24b36d2320c2dd6bb41813a803eaa157a28861101c`  
		Last Modified: Wed, 11 Nov 2026 19:32:36 GMT  
		Size: 1.9 MB (1867115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb96941149463133bb6c17b0f4d83d88f7d797d89babb17843e410e8d245a5a4`  
		Last Modified: Wed, 11 Nov 2026 19:32:42 GMT  
		Size: 271.7 MB (271665198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:c199c779001df45679f4a6fb44f1d2496246eac80e44b102ea2c957644c6edf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74b5b263d150c7a98a66065bf72189cc3b485e2a2cec39ab96d3698ac32db732`

```dockerfile
```

-	Layers:
	-	`sha256:6cac4af3f71c6637bf3cd3450a26a04324d413f5627fba6062564ec90b286875`  
		Last Modified: Wed, 11 Nov 2026 19:32:36 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; arm variant v7

```console
$ docker pull dart@sha256:dc3a6cf6a7c7bf4b0358fc8f5aaeaade71338d57bb5e968e3bbe49f128792cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238601123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ffa23030d056230f708255fa40f1d45c22cee124b105ea8859e59dfe8d6928`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:32:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:32:53 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:32:53 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:32:53 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:32:53 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:33:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1079a7d65272edc8f45b80baac8b7aa7829c2d6566b917d1fc7ffa3569f1317`  
		Last Modified: Wed, 11 Nov 2026 19:33:24 GMT  
		Size: 37.5 MB (37529465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7550675fdbd7e2021d2690022f4fe105aa54515432bdb29706da6766571f96`  
		Last Modified: Wed, 11 Nov 2026 19:33:23 GMT  
		Size: 1.3 MB (1271965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0366a6ef0b0fc29ad4a63ddc9f61a46d7ae1f835f8c12da8a2e454480587b92`  
		Last Modified: Wed, 11 Nov 2026 19:33:27 GMT  
		Size: 173.5 MB (173526746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:eaaf8c45e30c73635078e1a1513f8251b1c73940215b364854c02e7791f6e109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d4d6699666e80f7abe46e1a5bff5678f79a09d4c6fd1d37fd6a99d7397cf7c`

```dockerfile
```

-	Layers:
	-	`sha256:701e73d68eb5b3d0954740f6079a09552ca9ce9039b6ab0681527a0988545a4f`  
		Last Modified: Wed, 11 Nov 2026 19:33:23 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:42c71f23e3c1d546f0fd3b983134468c5c01a619763bcc484c1e60ba551f4b8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (343973508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01f69bf702b51abd97e4efd7ce7ea8c4b40ab386b5fab2e81f490cfaac303f5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:47:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:47:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:47:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:47:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:47:38 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:47:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3d59eac7a0a6618d0f7e8dbb8004e3bfbcf6d223c6a09e8bb6c33046321d43f`  
		Last Modified: Wed, 11 Nov 2026 19:48:22 GMT  
		Size: 42.3 MB (42328039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a18589c938c23c3529ff3ce2b1719e577f321f829903fae45a03198739dcc02`  
		Last Modified: Wed, 11 Nov 2026 19:48:20 GMT  
		Size: 1.6 MB (1561929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87df17345b3f66cefa9462decceb5c57f7cfeaec0bb3dcae57b3728b12d8f54c`  
		Last Modified: Wed, 11 Nov 2026 19:48:26 GMT  
		Size: 269.9 MB (269869471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:0c0673a4fc967b5073eee593b87fa8bc770b5c548feb7c594de3b0a4eceba1e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2888bf4dbb8d2785b8947aa3d58ec1c4e2beccee435693cb21a6837f37c7c06`

```dockerfile
```

-	Layers:
	-	`sha256:2e21d8b6a51b89b65b4f739f0df7a4973442b8024a470cbffcfddb5b27efc920`  
		Last Modified: Wed, 11 Nov 2026 19:48:20 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; riscv64

```console
$ docker pull dart@sha256:acf7a8f4f1d7afdde9d7faf2a9e9316336865544e55f16804a53dc035420a0f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252922252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f5ea85d69ec2bd678200d21ba88534f1f0ecba4539dfbfe3bf520bdb256de13`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sat, 07 Nov 2026 04:27:30 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 07 Nov 2026 04:27:32 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 07 Nov 2026 04:27:32 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 07 Nov 2026 04:27:32 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 07 Nov 2026 04:27:32 GMT
WORKDIR /root
# Sat, 07 Nov 2026 04:28:20 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a98a3ee37450414df465ff7fded7456d96405c7c8ee93b69c3f41dda862dc13`  
		Last Modified: Sat, 07 Nov 2026 04:32:56 GMT  
		Size: 41.6 MB (41600759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:616a4d678938ba3ea9c917db1af630e0c54b90112caf6dab633ee9f0ca6aedf1`  
		Last Modified: Sat, 07 Nov 2026 04:32:44 GMT  
		Size: 1.6 MB (1560327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cf202a03decf7465601ffe1afddbf9156bbccc6ff971b22499c347b0463f8a6`  
		Last Modified: Sat, 07 Nov 2026 04:33:16 GMT  
		Size: 181.4 MB (181414950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:08e859f70b28058f1f0c0f22768abe90bfa68ccd9b966ab1a81b6aae2f1bab0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4e8255f88f5f504f7f0e52e1bbf94b28edad0e08b79340b72cdc902ca1d67c`

```dockerfile
```

-	Layers:
	-	`sha256:8ae6cf76796c664540c388aad9bcde6c8d964cf7ba9adf855337e049bf47eabd`  
		Last Modified: Sat, 07 Nov 2026 04:32:44 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:stable-sdk`

```console
$ docker pull dart@sha256:754aaf779c07a44017823fcb0e972f92d8053a9631531cc4e425053036efcb85
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown

### `dart:stable-sdk` - linux; amd64

```console
$ docker pull dart@sha256:fa43be1e030d618681105d6d3d7619f7cdcbf87bd921a6b24e41ef000c61d039
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345914352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d8d12ac2b921f225efe78a6ee734e5ad4395e88ef16f84c48b6cb792dfbb9ea`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:31:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:31:54 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:31:54 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:31:54 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:31:54 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:32:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90740073b6a6a0f8de9e2718574a73ffa4ca49f3e02aa6526089be26b077b199`  
		Last Modified: Wed, 11 Nov 2026 19:32:38 GMT  
		Size: 42.5 MB (42525875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac10e2a1cd3d9eb4486ac24b36d2320c2dd6bb41813a803eaa157a28861101c`  
		Last Modified: Wed, 11 Nov 2026 19:32:36 GMT  
		Size: 1.9 MB (1867115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb96941149463133bb6c17b0f4d83d88f7d797d89babb17843e410e8d245a5a4`  
		Last Modified: Wed, 11 Nov 2026 19:32:42 GMT  
		Size: 271.7 MB (271665198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:c199c779001df45679f4a6fb44f1d2496246eac80e44b102ea2c957644c6edf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74b5b263d150c7a98a66065bf72189cc3b485e2a2cec39ab96d3698ac32db732`

```dockerfile
```

-	Layers:
	-	`sha256:6cac4af3f71c6637bf3cd3450a26a04324d413f5627fba6062564ec90b286875`  
		Last Modified: Wed, 11 Nov 2026 19:32:36 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:dc3a6cf6a7c7bf4b0358fc8f5aaeaade71338d57bb5e968e3bbe49f128792cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238601123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ffa23030d056230f708255fa40f1d45c22cee124b105ea8859e59dfe8d6928`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:32:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:32:53 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:32:53 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:32:53 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:32:53 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:33:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1079a7d65272edc8f45b80baac8b7aa7829c2d6566b917d1fc7ffa3569f1317`  
		Last Modified: Wed, 11 Nov 2026 19:33:24 GMT  
		Size: 37.5 MB (37529465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7550675fdbd7e2021d2690022f4fe105aa54515432bdb29706da6766571f96`  
		Last Modified: Wed, 11 Nov 2026 19:33:23 GMT  
		Size: 1.3 MB (1271965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0366a6ef0b0fc29ad4a63ddc9f61a46d7ae1f835f8c12da8a2e454480587b92`  
		Last Modified: Wed, 11 Nov 2026 19:33:27 GMT  
		Size: 173.5 MB (173526746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:eaaf8c45e30c73635078e1a1513f8251b1c73940215b364854c02e7791f6e109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d4d6699666e80f7abe46e1a5bff5678f79a09d4c6fd1d37fd6a99d7397cf7c`

```dockerfile
```

-	Layers:
	-	`sha256:701e73d68eb5b3d0954740f6079a09552ca9ce9039b6ab0681527a0988545a4f`  
		Last Modified: Wed, 11 Nov 2026 19:33:23 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:42c71f23e3c1d546f0fd3b983134468c5c01a619763bcc484c1e60ba551f4b8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (343973508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01f69bf702b51abd97e4efd7ce7ea8c4b40ab386b5fab2e81f490cfaac303f5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 11 Nov 2026 19:47:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:47:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 11 Nov 2026 19:47:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Nov 2026 19:47:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 19:47:38 GMT
WORKDIR /root
# Wed, 11 Nov 2026 19:47:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3d59eac7a0a6618d0f7e8dbb8004e3bfbcf6d223c6a09e8bb6c33046321d43f`  
		Last Modified: Wed, 11 Nov 2026 19:48:22 GMT  
		Size: 42.3 MB (42328039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a18589c938c23c3529ff3ce2b1719e577f321f829903fae45a03198739dcc02`  
		Last Modified: Wed, 11 Nov 2026 19:48:20 GMT  
		Size: 1.6 MB (1561929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87df17345b3f66cefa9462decceb5c57f7cfeaec0bb3dcae57b3728b12d8f54c`  
		Last Modified: Wed, 11 Nov 2026 19:48:26 GMT  
		Size: 269.9 MB (269869471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:0c0673a4fc967b5073eee593b87fa8bc770b5c548feb7c594de3b0a4eceba1e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2888bf4dbb8d2785b8947aa3d58ec1c4e2beccee435693cb21a6837f37c7c06`

```dockerfile
```

-	Layers:
	-	`sha256:2e21d8b6a51b89b65b4f739f0df7a4973442b8024a470cbffcfddb5b27efc920`  
		Last Modified: Wed, 11 Nov 2026 19:48:20 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:acf7a8f4f1d7afdde9d7faf2a9e9316336865544e55f16804a53dc035420a0f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252922252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f5ea85d69ec2bd678200d21ba88534f1f0ecba4539dfbfe3bf520bdb256de13`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sat, 07 Nov 2026 04:27:30 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 07 Nov 2026 04:27:32 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 07 Nov 2026 04:27:32 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 07 Nov 2026 04:27:32 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 07 Nov 2026 04:27:32 GMT
WORKDIR /root
# Sat, 07 Nov 2026 04:28:20 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a98a3ee37450414df465ff7fded7456d96405c7c8ee93b69c3f41dda862dc13`  
		Last Modified: Sat, 07 Nov 2026 04:32:56 GMT  
		Size: 41.6 MB (41600759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:616a4d678938ba3ea9c917db1af630e0c54b90112caf6dab633ee9f0ca6aedf1`  
		Last Modified: Sat, 07 Nov 2026 04:32:44 GMT  
		Size: 1.6 MB (1560327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cf202a03decf7465601ffe1afddbf9156bbccc6ff971b22499c347b0463f8a6`  
		Last Modified: Sat, 07 Nov 2026 04:33:16 GMT  
		Size: 181.4 MB (181414950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:08e859f70b28058f1f0c0f22768abe90bfa68ccd9b966ab1a81b6aae2f1bab0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4e8255f88f5f504f7f0e52e1bbf94b28edad0e08b79340b72cdc902ca1d67c`

```dockerfile
```

-	Layers:
	-	`sha256:8ae6cf76796c664540c388aad9bcde6c8d964cf7ba9adf855337e049bf47eabd`  
		Last Modified: Sat, 07 Nov 2026 04:32:44 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json
