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
