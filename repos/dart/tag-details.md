<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `dart`

-	[`dart:3`](#dart3)
-	[`dart:3-sdk`](#dart3-sdk)
-	[`dart:3.13`](#dart313)
-	[`dart:3.13-sdk`](#dart313-sdk)
-	[`dart:3.13.1`](#dart3131)
-	[`dart:3.13.1-sdk`](#dart3131-sdk)
-	[`dart:3.14.0-95.2.beta`](#dart3140-952beta)
-	[`dart:3.14.0-95.2.beta-sdk`](#dart3140-952beta-sdk)
-	[`dart:beta`](#dartbeta)
-	[`dart:beta-sdk`](#dartbeta-sdk)
-	[`dart:latest`](#dartlatest)
-	[`dart:sdk`](#dartsdk)
-	[`dart:stable`](#dartstable)
-	[`dart:stable-sdk`](#dartstable-sdk)

## `dart:3`

```console
$ docker pull dart@sha256:54a0688d298c91b26bde2724bf21ab9cd606f45de0bdf55fe462e5dd6bdd84d1
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
$ docker pull dart@sha256:e2745d479e345441612c97ff25214642820b6be5f8e87a57876b998c3ed68e2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316563639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62e425c3a1681cf0a7ef4329009e402505c9fbcc722b267fc0e03a2d4ce6e829`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:51:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 00:51:25 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 00:51:25 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:51:25 GMT
WORKDIR /root
# Tue, 25 Aug 2026 00:51:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7f2e8af039526de5b0927cf3c3089e11b03fce9992bdc125b52dc3626e1e8d`  
		Last Modified: Tue, 25 Aug 2026 00:52:04 GMT  
		Size: 42.5 MB (42524061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3e7c4974006d405d3af398e0824d1ad33adc7417953ff95bac2ecc62141ca90`  
		Last Modified: Tue, 25 Aug 2026 00:52:02 GMT  
		Size: 1.9 MB (1869786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c3f3e4905e62f509828695f4545aff83d67b525e55db9f687a3213d634e3599`  
		Last Modified: Tue, 25 Aug 2026 00:52:08 GMT  
		Size: 242.4 MB (242377102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:54f22b73d2b8c2b790018984735dac4c5e88d3a9e5e70790e491f331378ce375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c32684b6a44cc3310d915fc8db7ec44bf23b27399c129000fa93acff970a5fb`

```dockerfile
```

-	Layers:
	-	`sha256:14efe922e0fbfcf38ac0d9a6253b61d8a500369a188f6ffb38b6c49bf4125c5b`  
		Last Modified: Tue, 25 Aug 2026 00:52:02 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; arm variant v7

```console
$ docker pull dart@sha256:6f610168c61872d6b04aaa1e691ad8c5b634bfed5219eb5bb25d8b96f2a5dbcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230463480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25185646e1708ded2bdad306d4711c633ea37312c023989216c380b6801f6280`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 17:02:23 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 17:02:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 17:02:24 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 17:02:24 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:02:24 GMT
WORKDIR /root
# Tue, 18 Aug 2026 17:02:33 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd4c3a74a28f3fd7e03ac5adab8bf22c9cb9195220a9067c0e67609e58a03579`  
		Last Modified: Tue, 18 Aug 2026 17:02:57 GMT  
		Size: 37.5 MB (37512645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ec46a3cf19370cb215a128bcbb6cbf8bf5ef8752e7494b4c651460cff097ff`  
		Last Modified: Tue, 18 Aug 2026 17:02:55 GMT  
		Size: 1.3 MB (1273145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc329da1e94e1c590c084f0cee5343b97486a9b78a8c7c0d24bc763257370ac8`  
		Last Modified: Tue, 18 Aug 2026 17:02:59 GMT  
		Size: 165.5 MB (165471286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:0c0de94d7eeecdba9b8cbbb768901ba37fa5fa6ee2341aa600eabeae1e4d4012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7052617aebe915aa650d2031fe83ad9daa1ba990aad8e4d7ae0be7e6a1ed06d1`

```dockerfile
```

-	Layers:
	-	`sha256:a3f2d569ee91d5c558a83e07bf1d958fa5dcc524ab32faa342f6d1e8eb628596`  
		Last Modified: Tue, 18 Aug 2026 17:02:55 GMT  
		Size: 20.8 KB (20767 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:3f59ee9244026d6e24f61f0cc9b8e017de52ddb5252a65588cb4a93257030fb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315240480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f60a4fc2d32db59c879970e6f4745fc305f7602c1cd5cb480306a11470d10f0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 00:53:35 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:53:35 GMT
WORKDIR /root
# Tue, 25 Aug 2026 00:53:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbdb2d489900ceb8cab76b44f62c2f51c47236ab995104959a46d6a7ffd4e44`  
		Last Modified: Tue, 25 Aug 2026 00:54:18 GMT  
		Size: 42.3 MB (42308522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ab4927890f3af895d2c5b922de44ad5bb833c6f4108f62b11187427b5ef4b4`  
		Last Modified: Tue, 25 Aug 2026 00:54:16 GMT  
		Size: 1.6 MB (1564384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:486d3ba3c942ef59c84282512f80b2a62e3984b41fa9f0c7606eb109d220cdb6`  
		Last Modified: Tue, 25 Aug 2026 00:54:22 GMT  
		Size: 241.2 MB (241207960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:c16a3455f03742681633f198349fd0cd58aa927f794737bf30223da1bf3d7cfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aba995029f103066d2232edbbdbf75f99a8e014e7a248abf04c71b38314ea7e`

```dockerfile
```

-	Layers:
	-	`sha256:d43871fac011fde94132932d67f742430a65d3455337a07535e52bf4c2fef575`  
		Last Modified: Tue, 25 Aug 2026 00:54:16 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; riscv64

```console
$ docker pull dart@sha256:99be761b267dfbf906f904fd6daeee3832e63788a57413f5a4f6c93ee0aa7de5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252702441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73514825b4b078ea4f81e8632e9d89690c3e813113ddc2b31154e3c9acd2ec0e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 22:26:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 22:26:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 22:26:50 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 22:26:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 22:26:50 GMT
WORKDIR /root
# Tue, 18 Aug 2026 22:27:37 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6bb2efad7b400de7c3af4988bd91e3d8eda2d593ad2c2f88b9cebd1ef7f8790`  
		Last Modified: Tue, 18 Aug 2026 22:32:06 GMT  
		Size: 41.6 MB (41593643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752783078d21a6b82d626cf7b37a65dafdce069036b624699a3be72f347b02bb`  
		Last Modified: Tue, 18 Aug 2026 22:31:54 GMT  
		Size: 1.6 MB (1564446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc826e27756eac5f32f825b4750024b4409098c032ac9eb915a69ee1a7f14c8`  
		Last Modified: Tue, 18 Aug 2026 22:32:26 GMT  
		Size: 181.3 MB (181266202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:c9b1f67654a8e81f1f01aa2562603d2e56298d8a8cd1b98706efb885530edbc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9998eddcbd0318ef28c130667784cf9573cd6451493b66ccd9f28dc7a4aad3`

```dockerfile
```

-	Layers:
	-	`sha256:abb1458c9795f17ddd1966aa2f23aedb62043f8bf28eb8aab1ba75b31afece58`  
		Last Modified: Tue, 18 Aug 2026 22:31:53 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3-sdk`

```console
$ docker pull dart@sha256:54a0688d298c91b26bde2724bf21ab9cd606f45de0bdf55fe462e5dd6bdd84d1
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
$ docker pull dart@sha256:e2745d479e345441612c97ff25214642820b6be5f8e87a57876b998c3ed68e2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316563639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62e425c3a1681cf0a7ef4329009e402505c9fbcc722b267fc0e03a2d4ce6e829`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:51:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 00:51:25 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 00:51:25 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:51:25 GMT
WORKDIR /root
# Tue, 25 Aug 2026 00:51:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7f2e8af039526de5b0927cf3c3089e11b03fce9992bdc125b52dc3626e1e8d`  
		Last Modified: Tue, 25 Aug 2026 00:52:04 GMT  
		Size: 42.5 MB (42524061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3e7c4974006d405d3af398e0824d1ad33adc7417953ff95bac2ecc62141ca90`  
		Last Modified: Tue, 25 Aug 2026 00:52:02 GMT  
		Size: 1.9 MB (1869786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c3f3e4905e62f509828695f4545aff83d67b525e55db9f687a3213d634e3599`  
		Last Modified: Tue, 25 Aug 2026 00:52:08 GMT  
		Size: 242.4 MB (242377102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:54f22b73d2b8c2b790018984735dac4c5e88d3a9e5e70790e491f331378ce375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c32684b6a44cc3310d915fc8db7ec44bf23b27399c129000fa93acff970a5fb`

```dockerfile
```

-	Layers:
	-	`sha256:14efe922e0fbfcf38ac0d9a6253b61d8a500369a188f6ffb38b6c49bf4125c5b`  
		Last Modified: Tue, 25 Aug 2026 00:52:02 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:6f610168c61872d6b04aaa1e691ad8c5b634bfed5219eb5bb25d8b96f2a5dbcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230463480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25185646e1708ded2bdad306d4711c633ea37312c023989216c380b6801f6280`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 17:02:23 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 17:02:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 17:02:24 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 17:02:24 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:02:24 GMT
WORKDIR /root
# Tue, 18 Aug 2026 17:02:33 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd4c3a74a28f3fd7e03ac5adab8bf22c9cb9195220a9067c0e67609e58a03579`  
		Last Modified: Tue, 18 Aug 2026 17:02:57 GMT  
		Size: 37.5 MB (37512645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ec46a3cf19370cb215a128bcbb6cbf8bf5ef8752e7494b4c651460cff097ff`  
		Last Modified: Tue, 18 Aug 2026 17:02:55 GMT  
		Size: 1.3 MB (1273145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc329da1e94e1c590c084f0cee5343b97486a9b78a8c7c0d24bc763257370ac8`  
		Last Modified: Tue, 18 Aug 2026 17:02:59 GMT  
		Size: 165.5 MB (165471286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:0c0de94d7eeecdba9b8cbbb768901ba37fa5fa6ee2341aa600eabeae1e4d4012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7052617aebe915aa650d2031fe83ad9daa1ba990aad8e4d7ae0be7e6a1ed06d1`

```dockerfile
```

-	Layers:
	-	`sha256:a3f2d569ee91d5c558a83e07bf1d958fa5dcc524ab32faa342f6d1e8eb628596`  
		Last Modified: Tue, 18 Aug 2026 17:02:55 GMT  
		Size: 20.8 KB (20767 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:3f59ee9244026d6e24f61f0cc9b8e017de52ddb5252a65588cb4a93257030fb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315240480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f60a4fc2d32db59c879970e6f4745fc305f7602c1cd5cb480306a11470d10f0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 00:53:35 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:53:35 GMT
WORKDIR /root
# Tue, 25 Aug 2026 00:53:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbdb2d489900ceb8cab76b44f62c2f51c47236ab995104959a46d6a7ffd4e44`  
		Last Modified: Tue, 25 Aug 2026 00:54:18 GMT  
		Size: 42.3 MB (42308522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ab4927890f3af895d2c5b922de44ad5bb833c6f4108f62b11187427b5ef4b4`  
		Last Modified: Tue, 25 Aug 2026 00:54:16 GMT  
		Size: 1.6 MB (1564384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:486d3ba3c942ef59c84282512f80b2a62e3984b41fa9f0c7606eb109d220cdb6`  
		Last Modified: Tue, 25 Aug 2026 00:54:22 GMT  
		Size: 241.2 MB (241207960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:c16a3455f03742681633f198349fd0cd58aa927f794737bf30223da1bf3d7cfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aba995029f103066d2232edbbdbf75f99a8e014e7a248abf04c71b38314ea7e`

```dockerfile
```

-	Layers:
	-	`sha256:d43871fac011fde94132932d67f742430a65d3455337a07535e52bf4c2fef575`  
		Last Modified: Tue, 25 Aug 2026 00:54:16 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:99be761b267dfbf906f904fd6daeee3832e63788a57413f5a4f6c93ee0aa7de5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252702441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73514825b4b078ea4f81e8632e9d89690c3e813113ddc2b31154e3c9acd2ec0e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 22:26:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 22:26:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 22:26:50 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 22:26:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 22:26:50 GMT
WORKDIR /root
# Tue, 18 Aug 2026 22:27:37 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6bb2efad7b400de7c3af4988bd91e3d8eda2d593ad2c2f88b9cebd1ef7f8790`  
		Last Modified: Tue, 18 Aug 2026 22:32:06 GMT  
		Size: 41.6 MB (41593643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752783078d21a6b82d626cf7b37a65dafdce069036b624699a3be72f347b02bb`  
		Last Modified: Tue, 18 Aug 2026 22:31:54 GMT  
		Size: 1.6 MB (1564446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc826e27756eac5f32f825b4750024b4409098c032ac9eb915a69ee1a7f14c8`  
		Last Modified: Tue, 18 Aug 2026 22:32:26 GMT  
		Size: 181.3 MB (181266202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:c9b1f67654a8e81f1f01aa2562603d2e56298d8a8cd1b98706efb885530edbc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9998eddcbd0318ef28c130667784cf9573cd6451493b66ccd9f28dc7a4aad3`

```dockerfile
```

-	Layers:
	-	`sha256:abb1458c9795f17ddd1966aa2f23aedb62043f8bf28eb8aab1ba75b31afece58`  
		Last Modified: Tue, 18 Aug 2026 22:31:53 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13`

```console
$ docker pull dart@sha256:54a0688d298c91b26bde2724bf21ab9cd606f45de0bdf55fe462e5dd6bdd84d1
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

### `dart:3.13` - linux; amd64

```console
$ docker pull dart@sha256:e2745d479e345441612c97ff25214642820b6be5f8e87a57876b998c3ed68e2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316563639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62e425c3a1681cf0a7ef4329009e402505c9fbcc722b267fc0e03a2d4ce6e829`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:51:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 00:51:25 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 00:51:25 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:51:25 GMT
WORKDIR /root
# Tue, 25 Aug 2026 00:51:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7f2e8af039526de5b0927cf3c3089e11b03fce9992bdc125b52dc3626e1e8d`  
		Last Modified: Tue, 25 Aug 2026 00:52:04 GMT  
		Size: 42.5 MB (42524061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3e7c4974006d405d3af398e0824d1ad33adc7417953ff95bac2ecc62141ca90`  
		Last Modified: Tue, 25 Aug 2026 00:52:02 GMT  
		Size: 1.9 MB (1869786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c3f3e4905e62f509828695f4545aff83d67b525e55db9f687a3213d634e3599`  
		Last Modified: Tue, 25 Aug 2026 00:52:08 GMT  
		Size: 242.4 MB (242377102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:54f22b73d2b8c2b790018984735dac4c5e88d3a9e5e70790e491f331378ce375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c32684b6a44cc3310d915fc8db7ec44bf23b27399c129000fa93acff970a5fb`

```dockerfile
```

-	Layers:
	-	`sha256:14efe922e0fbfcf38ac0d9a6253b61d8a500369a188f6ffb38b6c49bf4125c5b`  
		Last Modified: Tue, 25 Aug 2026 00:52:02 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13` - linux; arm variant v7

```console
$ docker pull dart@sha256:6f610168c61872d6b04aaa1e691ad8c5b634bfed5219eb5bb25d8b96f2a5dbcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230463480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25185646e1708ded2bdad306d4711c633ea37312c023989216c380b6801f6280`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 17:02:23 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 17:02:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 17:02:24 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 17:02:24 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:02:24 GMT
WORKDIR /root
# Tue, 18 Aug 2026 17:02:33 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd4c3a74a28f3fd7e03ac5adab8bf22c9cb9195220a9067c0e67609e58a03579`  
		Last Modified: Tue, 18 Aug 2026 17:02:57 GMT  
		Size: 37.5 MB (37512645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ec46a3cf19370cb215a128bcbb6cbf8bf5ef8752e7494b4c651460cff097ff`  
		Last Modified: Tue, 18 Aug 2026 17:02:55 GMT  
		Size: 1.3 MB (1273145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc329da1e94e1c590c084f0cee5343b97486a9b78a8c7c0d24bc763257370ac8`  
		Last Modified: Tue, 18 Aug 2026 17:02:59 GMT  
		Size: 165.5 MB (165471286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:0c0de94d7eeecdba9b8cbbb768901ba37fa5fa6ee2341aa600eabeae1e4d4012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7052617aebe915aa650d2031fe83ad9daa1ba990aad8e4d7ae0be7e6a1ed06d1`

```dockerfile
```

-	Layers:
	-	`sha256:a3f2d569ee91d5c558a83e07bf1d958fa5dcc524ab32faa342f6d1e8eb628596`  
		Last Modified: Tue, 18 Aug 2026 17:02:55 GMT  
		Size: 20.8 KB (20767 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:3f59ee9244026d6e24f61f0cc9b8e017de52ddb5252a65588cb4a93257030fb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315240480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f60a4fc2d32db59c879970e6f4745fc305f7602c1cd5cb480306a11470d10f0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 00:53:35 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:53:35 GMT
WORKDIR /root
# Tue, 25 Aug 2026 00:53:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbdb2d489900ceb8cab76b44f62c2f51c47236ab995104959a46d6a7ffd4e44`  
		Last Modified: Tue, 25 Aug 2026 00:54:18 GMT  
		Size: 42.3 MB (42308522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ab4927890f3af895d2c5b922de44ad5bb833c6f4108f62b11187427b5ef4b4`  
		Last Modified: Tue, 25 Aug 2026 00:54:16 GMT  
		Size: 1.6 MB (1564384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:486d3ba3c942ef59c84282512f80b2a62e3984b41fa9f0c7606eb109d220cdb6`  
		Last Modified: Tue, 25 Aug 2026 00:54:22 GMT  
		Size: 241.2 MB (241207960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:c16a3455f03742681633f198349fd0cd58aa927f794737bf30223da1bf3d7cfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aba995029f103066d2232edbbdbf75f99a8e014e7a248abf04c71b38314ea7e`

```dockerfile
```

-	Layers:
	-	`sha256:d43871fac011fde94132932d67f742430a65d3455337a07535e52bf4c2fef575`  
		Last Modified: Tue, 25 Aug 2026 00:54:16 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13` - linux; riscv64

```console
$ docker pull dart@sha256:99be761b267dfbf906f904fd6daeee3832e63788a57413f5a4f6c93ee0aa7de5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252702441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73514825b4b078ea4f81e8632e9d89690c3e813113ddc2b31154e3c9acd2ec0e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 22:26:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 22:26:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 22:26:50 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 22:26:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 22:26:50 GMT
WORKDIR /root
# Tue, 18 Aug 2026 22:27:37 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6bb2efad7b400de7c3af4988bd91e3d8eda2d593ad2c2f88b9cebd1ef7f8790`  
		Last Modified: Tue, 18 Aug 2026 22:32:06 GMT  
		Size: 41.6 MB (41593643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752783078d21a6b82d626cf7b37a65dafdce069036b624699a3be72f347b02bb`  
		Last Modified: Tue, 18 Aug 2026 22:31:54 GMT  
		Size: 1.6 MB (1564446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc826e27756eac5f32f825b4750024b4409098c032ac9eb915a69ee1a7f14c8`  
		Last Modified: Tue, 18 Aug 2026 22:32:26 GMT  
		Size: 181.3 MB (181266202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:c9b1f67654a8e81f1f01aa2562603d2e56298d8a8cd1b98706efb885530edbc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9998eddcbd0318ef28c130667784cf9573cd6451493b66ccd9f28dc7a4aad3`

```dockerfile
```

-	Layers:
	-	`sha256:abb1458c9795f17ddd1966aa2f23aedb62043f8bf28eb8aab1ba75b31afece58`  
		Last Modified: Tue, 18 Aug 2026 22:31:53 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13-sdk`

```console
$ docker pull dart@sha256:54a0688d298c91b26bde2724bf21ab9cd606f45de0bdf55fe462e5dd6bdd84d1
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

### `dart:3.13-sdk` - linux; amd64

```console
$ docker pull dart@sha256:e2745d479e345441612c97ff25214642820b6be5f8e87a57876b998c3ed68e2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316563639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62e425c3a1681cf0a7ef4329009e402505c9fbcc722b267fc0e03a2d4ce6e829`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:51:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 00:51:25 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 00:51:25 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:51:25 GMT
WORKDIR /root
# Tue, 25 Aug 2026 00:51:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7f2e8af039526de5b0927cf3c3089e11b03fce9992bdc125b52dc3626e1e8d`  
		Last Modified: Tue, 25 Aug 2026 00:52:04 GMT  
		Size: 42.5 MB (42524061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3e7c4974006d405d3af398e0824d1ad33adc7417953ff95bac2ecc62141ca90`  
		Last Modified: Tue, 25 Aug 2026 00:52:02 GMT  
		Size: 1.9 MB (1869786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c3f3e4905e62f509828695f4545aff83d67b525e55db9f687a3213d634e3599`  
		Last Modified: Tue, 25 Aug 2026 00:52:08 GMT  
		Size: 242.4 MB (242377102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:54f22b73d2b8c2b790018984735dac4c5e88d3a9e5e70790e491f331378ce375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c32684b6a44cc3310d915fc8db7ec44bf23b27399c129000fa93acff970a5fb`

```dockerfile
```

-	Layers:
	-	`sha256:14efe922e0fbfcf38ac0d9a6253b61d8a500369a188f6ffb38b6c49bf4125c5b`  
		Last Modified: Tue, 25 Aug 2026 00:52:02 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:6f610168c61872d6b04aaa1e691ad8c5b634bfed5219eb5bb25d8b96f2a5dbcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230463480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25185646e1708ded2bdad306d4711c633ea37312c023989216c380b6801f6280`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 17:02:23 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 17:02:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 17:02:24 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 17:02:24 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:02:24 GMT
WORKDIR /root
# Tue, 18 Aug 2026 17:02:33 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd4c3a74a28f3fd7e03ac5adab8bf22c9cb9195220a9067c0e67609e58a03579`  
		Last Modified: Tue, 18 Aug 2026 17:02:57 GMT  
		Size: 37.5 MB (37512645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ec46a3cf19370cb215a128bcbb6cbf8bf5ef8752e7494b4c651460cff097ff`  
		Last Modified: Tue, 18 Aug 2026 17:02:55 GMT  
		Size: 1.3 MB (1273145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc329da1e94e1c590c084f0cee5343b97486a9b78a8c7c0d24bc763257370ac8`  
		Last Modified: Tue, 18 Aug 2026 17:02:59 GMT  
		Size: 165.5 MB (165471286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:0c0de94d7eeecdba9b8cbbb768901ba37fa5fa6ee2341aa600eabeae1e4d4012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7052617aebe915aa650d2031fe83ad9daa1ba990aad8e4d7ae0be7e6a1ed06d1`

```dockerfile
```

-	Layers:
	-	`sha256:a3f2d569ee91d5c558a83e07bf1d958fa5dcc524ab32faa342f6d1e8eb628596`  
		Last Modified: Tue, 18 Aug 2026 17:02:55 GMT  
		Size: 20.8 KB (20767 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:3f59ee9244026d6e24f61f0cc9b8e017de52ddb5252a65588cb4a93257030fb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315240480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f60a4fc2d32db59c879970e6f4745fc305f7602c1cd5cb480306a11470d10f0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 00:53:35 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:53:35 GMT
WORKDIR /root
# Tue, 25 Aug 2026 00:53:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbdb2d489900ceb8cab76b44f62c2f51c47236ab995104959a46d6a7ffd4e44`  
		Last Modified: Tue, 25 Aug 2026 00:54:18 GMT  
		Size: 42.3 MB (42308522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ab4927890f3af895d2c5b922de44ad5bb833c6f4108f62b11187427b5ef4b4`  
		Last Modified: Tue, 25 Aug 2026 00:54:16 GMT  
		Size: 1.6 MB (1564384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:486d3ba3c942ef59c84282512f80b2a62e3984b41fa9f0c7606eb109d220cdb6`  
		Last Modified: Tue, 25 Aug 2026 00:54:22 GMT  
		Size: 241.2 MB (241207960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:c16a3455f03742681633f198349fd0cd58aa927f794737bf30223da1bf3d7cfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aba995029f103066d2232edbbdbf75f99a8e014e7a248abf04c71b38314ea7e`

```dockerfile
```

-	Layers:
	-	`sha256:d43871fac011fde94132932d67f742430a65d3455337a07535e52bf4c2fef575`  
		Last Modified: Tue, 25 Aug 2026 00:54:16 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:99be761b267dfbf906f904fd6daeee3832e63788a57413f5a4f6c93ee0aa7de5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252702441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73514825b4b078ea4f81e8632e9d89690c3e813113ddc2b31154e3c9acd2ec0e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 22:26:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 22:26:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 22:26:50 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 22:26:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 22:26:50 GMT
WORKDIR /root
# Tue, 18 Aug 2026 22:27:37 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6bb2efad7b400de7c3af4988bd91e3d8eda2d593ad2c2f88b9cebd1ef7f8790`  
		Last Modified: Tue, 18 Aug 2026 22:32:06 GMT  
		Size: 41.6 MB (41593643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752783078d21a6b82d626cf7b37a65dafdce069036b624699a3be72f347b02bb`  
		Last Modified: Tue, 18 Aug 2026 22:31:54 GMT  
		Size: 1.6 MB (1564446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc826e27756eac5f32f825b4750024b4409098c032ac9eb915a69ee1a7f14c8`  
		Last Modified: Tue, 18 Aug 2026 22:32:26 GMT  
		Size: 181.3 MB (181266202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:c9b1f67654a8e81f1f01aa2562603d2e56298d8a8cd1b98706efb885530edbc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9998eddcbd0318ef28c130667784cf9573cd6451493b66ccd9f28dc7a4aad3`

```dockerfile
```

-	Layers:
	-	`sha256:abb1458c9795f17ddd1966aa2f23aedb62043f8bf28eb8aab1ba75b31afece58`  
		Last Modified: Tue, 18 Aug 2026 22:31:53 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13.1`

```console
$ docker pull dart@sha256:54a0688d298c91b26bde2724bf21ab9cd606f45de0bdf55fe462e5dd6bdd84d1
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

### `dart:3.13.1` - linux; amd64

```console
$ docker pull dart@sha256:e2745d479e345441612c97ff25214642820b6be5f8e87a57876b998c3ed68e2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316563639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62e425c3a1681cf0a7ef4329009e402505c9fbcc722b267fc0e03a2d4ce6e829`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:51:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 00:51:25 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 00:51:25 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:51:25 GMT
WORKDIR /root
# Tue, 25 Aug 2026 00:51:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7f2e8af039526de5b0927cf3c3089e11b03fce9992bdc125b52dc3626e1e8d`  
		Last Modified: Tue, 25 Aug 2026 00:52:04 GMT  
		Size: 42.5 MB (42524061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3e7c4974006d405d3af398e0824d1ad33adc7417953ff95bac2ecc62141ca90`  
		Last Modified: Tue, 25 Aug 2026 00:52:02 GMT  
		Size: 1.9 MB (1869786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c3f3e4905e62f509828695f4545aff83d67b525e55db9f687a3213d634e3599`  
		Last Modified: Tue, 25 Aug 2026 00:52:08 GMT  
		Size: 242.4 MB (242377102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.1` - unknown; unknown

```console
$ docker pull dart@sha256:54f22b73d2b8c2b790018984735dac4c5e88d3a9e5e70790e491f331378ce375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c32684b6a44cc3310d915fc8db7ec44bf23b27399c129000fa93acff970a5fb`

```dockerfile
```

-	Layers:
	-	`sha256:14efe922e0fbfcf38ac0d9a6253b61d8a500369a188f6ffb38b6c49bf4125c5b`  
		Last Modified: Tue, 25 Aug 2026 00:52:02 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.1` - linux; arm variant v7

```console
$ docker pull dart@sha256:6f610168c61872d6b04aaa1e691ad8c5b634bfed5219eb5bb25d8b96f2a5dbcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230463480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25185646e1708ded2bdad306d4711c633ea37312c023989216c380b6801f6280`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 17:02:23 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 17:02:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 17:02:24 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 17:02:24 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:02:24 GMT
WORKDIR /root
# Tue, 18 Aug 2026 17:02:33 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd4c3a74a28f3fd7e03ac5adab8bf22c9cb9195220a9067c0e67609e58a03579`  
		Last Modified: Tue, 18 Aug 2026 17:02:57 GMT  
		Size: 37.5 MB (37512645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ec46a3cf19370cb215a128bcbb6cbf8bf5ef8752e7494b4c651460cff097ff`  
		Last Modified: Tue, 18 Aug 2026 17:02:55 GMT  
		Size: 1.3 MB (1273145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc329da1e94e1c590c084f0cee5343b97486a9b78a8c7c0d24bc763257370ac8`  
		Last Modified: Tue, 18 Aug 2026 17:02:59 GMT  
		Size: 165.5 MB (165471286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.1` - unknown; unknown

```console
$ docker pull dart@sha256:0c0de94d7eeecdba9b8cbbb768901ba37fa5fa6ee2341aa600eabeae1e4d4012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7052617aebe915aa650d2031fe83ad9daa1ba990aad8e4d7ae0be7e6a1ed06d1`

```dockerfile
```

-	Layers:
	-	`sha256:a3f2d569ee91d5c558a83e07bf1d958fa5dcc524ab32faa342f6d1e8eb628596`  
		Last Modified: Tue, 18 Aug 2026 17:02:55 GMT  
		Size: 20.8 KB (20767 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.1` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:3f59ee9244026d6e24f61f0cc9b8e017de52ddb5252a65588cb4a93257030fb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315240480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f60a4fc2d32db59c879970e6f4745fc305f7602c1cd5cb480306a11470d10f0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 00:53:35 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:53:35 GMT
WORKDIR /root
# Tue, 25 Aug 2026 00:53:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbdb2d489900ceb8cab76b44f62c2f51c47236ab995104959a46d6a7ffd4e44`  
		Last Modified: Tue, 25 Aug 2026 00:54:18 GMT  
		Size: 42.3 MB (42308522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ab4927890f3af895d2c5b922de44ad5bb833c6f4108f62b11187427b5ef4b4`  
		Last Modified: Tue, 25 Aug 2026 00:54:16 GMT  
		Size: 1.6 MB (1564384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:486d3ba3c942ef59c84282512f80b2a62e3984b41fa9f0c7606eb109d220cdb6`  
		Last Modified: Tue, 25 Aug 2026 00:54:22 GMT  
		Size: 241.2 MB (241207960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.1` - unknown; unknown

```console
$ docker pull dart@sha256:c16a3455f03742681633f198349fd0cd58aa927f794737bf30223da1bf3d7cfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aba995029f103066d2232edbbdbf75f99a8e014e7a248abf04c71b38314ea7e`

```dockerfile
```

-	Layers:
	-	`sha256:d43871fac011fde94132932d67f742430a65d3455337a07535e52bf4c2fef575`  
		Last Modified: Tue, 25 Aug 2026 00:54:16 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.1` - linux; riscv64

```console
$ docker pull dart@sha256:99be761b267dfbf906f904fd6daeee3832e63788a57413f5a4f6c93ee0aa7de5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252702441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73514825b4b078ea4f81e8632e9d89690c3e813113ddc2b31154e3c9acd2ec0e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 22:26:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 22:26:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 22:26:50 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 22:26:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 22:26:50 GMT
WORKDIR /root
# Tue, 18 Aug 2026 22:27:37 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6bb2efad7b400de7c3af4988bd91e3d8eda2d593ad2c2f88b9cebd1ef7f8790`  
		Last Modified: Tue, 18 Aug 2026 22:32:06 GMT  
		Size: 41.6 MB (41593643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752783078d21a6b82d626cf7b37a65dafdce069036b624699a3be72f347b02bb`  
		Last Modified: Tue, 18 Aug 2026 22:31:54 GMT  
		Size: 1.6 MB (1564446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc826e27756eac5f32f825b4750024b4409098c032ac9eb915a69ee1a7f14c8`  
		Last Modified: Tue, 18 Aug 2026 22:32:26 GMT  
		Size: 181.3 MB (181266202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.1` - unknown; unknown

```console
$ docker pull dart@sha256:c9b1f67654a8e81f1f01aa2562603d2e56298d8a8cd1b98706efb885530edbc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9998eddcbd0318ef28c130667784cf9573cd6451493b66ccd9f28dc7a4aad3`

```dockerfile
```

-	Layers:
	-	`sha256:abb1458c9795f17ddd1966aa2f23aedb62043f8bf28eb8aab1ba75b31afece58`  
		Last Modified: Tue, 18 Aug 2026 22:31:53 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13.1-sdk`

```console
$ docker pull dart@sha256:54a0688d298c91b26bde2724bf21ab9cd606f45de0bdf55fe462e5dd6bdd84d1
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

### `dart:3.13.1-sdk` - linux; amd64

```console
$ docker pull dart@sha256:e2745d479e345441612c97ff25214642820b6be5f8e87a57876b998c3ed68e2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316563639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62e425c3a1681cf0a7ef4329009e402505c9fbcc722b267fc0e03a2d4ce6e829`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:51:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 00:51:25 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 00:51:25 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:51:25 GMT
WORKDIR /root
# Tue, 25 Aug 2026 00:51:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7f2e8af039526de5b0927cf3c3089e11b03fce9992bdc125b52dc3626e1e8d`  
		Last Modified: Tue, 25 Aug 2026 00:52:04 GMT  
		Size: 42.5 MB (42524061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3e7c4974006d405d3af398e0824d1ad33adc7417953ff95bac2ecc62141ca90`  
		Last Modified: Tue, 25 Aug 2026 00:52:02 GMT  
		Size: 1.9 MB (1869786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c3f3e4905e62f509828695f4545aff83d67b525e55db9f687a3213d634e3599`  
		Last Modified: Tue, 25 Aug 2026 00:52:08 GMT  
		Size: 242.4 MB (242377102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.1-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:54f22b73d2b8c2b790018984735dac4c5e88d3a9e5e70790e491f331378ce375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c32684b6a44cc3310d915fc8db7ec44bf23b27399c129000fa93acff970a5fb`

```dockerfile
```

-	Layers:
	-	`sha256:14efe922e0fbfcf38ac0d9a6253b61d8a500369a188f6ffb38b6c49bf4125c5b`  
		Last Modified: Tue, 25 Aug 2026 00:52:02 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.1-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:6f610168c61872d6b04aaa1e691ad8c5b634bfed5219eb5bb25d8b96f2a5dbcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230463480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25185646e1708ded2bdad306d4711c633ea37312c023989216c380b6801f6280`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 17:02:23 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 17:02:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 17:02:24 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 17:02:24 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:02:24 GMT
WORKDIR /root
# Tue, 18 Aug 2026 17:02:33 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd4c3a74a28f3fd7e03ac5adab8bf22c9cb9195220a9067c0e67609e58a03579`  
		Last Modified: Tue, 18 Aug 2026 17:02:57 GMT  
		Size: 37.5 MB (37512645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ec46a3cf19370cb215a128bcbb6cbf8bf5ef8752e7494b4c651460cff097ff`  
		Last Modified: Tue, 18 Aug 2026 17:02:55 GMT  
		Size: 1.3 MB (1273145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc329da1e94e1c590c084f0cee5343b97486a9b78a8c7c0d24bc763257370ac8`  
		Last Modified: Tue, 18 Aug 2026 17:02:59 GMT  
		Size: 165.5 MB (165471286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.1-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:0c0de94d7eeecdba9b8cbbb768901ba37fa5fa6ee2341aa600eabeae1e4d4012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7052617aebe915aa650d2031fe83ad9daa1ba990aad8e4d7ae0be7e6a1ed06d1`

```dockerfile
```

-	Layers:
	-	`sha256:a3f2d569ee91d5c558a83e07bf1d958fa5dcc524ab32faa342f6d1e8eb628596`  
		Last Modified: Tue, 18 Aug 2026 17:02:55 GMT  
		Size: 20.8 KB (20767 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.1-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:3f59ee9244026d6e24f61f0cc9b8e017de52ddb5252a65588cb4a93257030fb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315240480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f60a4fc2d32db59c879970e6f4745fc305f7602c1cd5cb480306a11470d10f0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 00:53:35 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:53:35 GMT
WORKDIR /root
# Tue, 25 Aug 2026 00:53:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbdb2d489900ceb8cab76b44f62c2f51c47236ab995104959a46d6a7ffd4e44`  
		Last Modified: Tue, 25 Aug 2026 00:54:18 GMT  
		Size: 42.3 MB (42308522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ab4927890f3af895d2c5b922de44ad5bb833c6f4108f62b11187427b5ef4b4`  
		Last Modified: Tue, 25 Aug 2026 00:54:16 GMT  
		Size: 1.6 MB (1564384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:486d3ba3c942ef59c84282512f80b2a62e3984b41fa9f0c7606eb109d220cdb6`  
		Last Modified: Tue, 25 Aug 2026 00:54:22 GMT  
		Size: 241.2 MB (241207960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.1-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:c16a3455f03742681633f198349fd0cd58aa927f794737bf30223da1bf3d7cfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aba995029f103066d2232edbbdbf75f99a8e014e7a248abf04c71b38314ea7e`

```dockerfile
```

-	Layers:
	-	`sha256:d43871fac011fde94132932d67f742430a65d3455337a07535e52bf4c2fef575`  
		Last Modified: Tue, 25 Aug 2026 00:54:16 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.1-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:99be761b267dfbf906f904fd6daeee3832e63788a57413f5a4f6c93ee0aa7de5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252702441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73514825b4b078ea4f81e8632e9d89690c3e813113ddc2b31154e3c9acd2ec0e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 22:26:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 22:26:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 22:26:50 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 22:26:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 22:26:50 GMT
WORKDIR /root
# Tue, 18 Aug 2026 22:27:37 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6bb2efad7b400de7c3af4988bd91e3d8eda2d593ad2c2f88b9cebd1ef7f8790`  
		Last Modified: Tue, 18 Aug 2026 22:32:06 GMT  
		Size: 41.6 MB (41593643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752783078d21a6b82d626cf7b37a65dafdce069036b624699a3be72f347b02bb`  
		Last Modified: Tue, 18 Aug 2026 22:31:54 GMT  
		Size: 1.6 MB (1564446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc826e27756eac5f32f825b4750024b4409098c032ac9eb915a69ee1a7f14c8`  
		Last Modified: Tue, 18 Aug 2026 22:32:26 GMT  
		Size: 181.3 MB (181266202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.1-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:c9b1f67654a8e81f1f01aa2562603d2e56298d8a8cd1b98706efb885530edbc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9998eddcbd0318ef28c130667784cf9573cd6451493b66ccd9f28dc7a4aad3`

```dockerfile
```

-	Layers:
	-	`sha256:abb1458c9795f17ddd1966aa2f23aedb62043f8bf28eb8aab1ba75b31afece58`  
		Last Modified: Tue, 18 Aug 2026 22:31:53 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.14.0-95.2.beta`

```console
$ docker pull dart@sha256:da856519da063916739b7471eb6a3e7be26a80fc0c30b5ca4fef8cc5c56aad14
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

### `dart:3.14.0-95.2.beta` - linux; amd64

```console
$ docker pull dart@sha256:119248dc5569718feafd6208e66a2225026f2a4594b54f735718d336bebf44d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.2 MB (435168134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:527a9c9e16dbc138dfa08ed77e7235890ca8820314d5a6dac1829642828aa5fb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:51:26 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 00:51:26 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 00:51:26 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:51:26 GMT
WORKDIR /root
# Tue, 25 Aug 2026 00:51:42 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8cd9bf0f283d5c4612a0622124a89183457fcb8eb8d7c2929fb85bafd3c03ac3;             SDK_ARCH="x64";;         armhf)             DART_SHA256=3ca78a19eede87996c57af245979e9114a13a477cc0c71379e8bfa9a628b6e83;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d9f535f8913762f3d716a6f2a69f485bc846ff79d0455497ce1844a795c9a443;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=cf76b79d0ea95f1e3986597c62d11b1aa6eee955f02b8379d721259097fb1f8d;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eb04a3be84b7814146cf42b9a6aaf83dce9122eeb04741b522a85b3de528bd6`  
		Last Modified: Tue, 25 Aug 2026 00:52:21 GMT  
		Size: 42.5 MB (42524125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a4cca3e575e00e4bccf2c70518ceefad64215373cb6f8b234cd46a39dbe806`  
		Last Modified: Tue, 25 Aug 2026 00:52:19 GMT  
		Size: 1.9 MB (1869782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dccc9cc3ee2e9da9ab18f43aa1ac4fb2983e1644e39034d5d1c6a1f74ae7f14`  
		Last Modified: Tue, 25 Aug 2026 00:52:29 GMT  
		Size: 361.0 MB (360981537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-95.2.beta` - unknown; unknown

```console
$ docker pull dart@sha256:8de16f06347f1c7779841d57be5a7f078216878fb97b11812ebf2c11c6f67b71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63eb6c35e6e96169952f30852937373422cd89822d38bd060062dd924ccc34a5`

```dockerfile
```

-	Layers:
	-	`sha256:8f47878cfcd3cb9500d4da3b1bff53d33fb6ecd14be00c0e69521e27a3383e63`  
		Last Modified: Tue, 25 Aug 2026 00:52:19 GMT  
		Size: 18.9 KB (18918 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-95.2.beta` - linux; arm variant v7

```console
$ docker pull dart@sha256:ddfdad0976b9b304f6656e6a4a2cf8a854d7c67fde39451af45e0fbbff66964d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254885844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9760fbac6484e7d0ead188f581036993ea5a5fc38d5b613f21084be49f663e90`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 17:02:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 17:02:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 17:02:25 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 17:02:25 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:02:25 GMT
WORKDIR /root
# Tue, 18 Aug 2026 17:02:35 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8cd9bf0f283d5c4612a0622124a89183457fcb8eb8d7c2929fb85bafd3c03ac3;             SDK_ARCH="x64";;         armhf)             DART_SHA256=3ca78a19eede87996c57af245979e9114a13a477cc0c71379e8bfa9a628b6e83;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d9f535f8913762f3d716a6f2a69f485bc846ff79d0455497ce1844a795c9a443;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=cf76b79d0ea95f1e3986597c62d11b1aa6eee955f02b8379d721259097fb1f8d;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47de1447abd3bad3d8d6693d37039e7d8da43778e9b27257337ef0cf31dd3644`  
		Last Modified: Tue, 18 Aug 2026 17:02:58 GMT  
		Size: 37.5 MB (37512710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7d635463bed93b599256a157bfa9dd63fa9c983e7fff7a41b3e20c5366ab0a`  
		Last Modified: Tue, 18 Aug 2026 17:02:57 GMT  
		Size: 1.3 MB (1273154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:456c667aa5e470b56464147b49e6ccd22dd1abecc3ed16bc0df483a52165bab5`  
		Last Modified: Tue, 18 Aug 2026 17:03:02 GMT  
		Size: 189.9 MB (189893576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-95.2.beta` - unknown; unknown

```console
$ docker pull dart@sha256:d80723adfff996592a315fe1c9460bed10354982271ea48bd015b729920e8eae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6965ffbbba03511e83755d8a8abe79599ca67074da313a619f6ac7d088167f8`

```dockerfile
```

-	Layers:
	-	`sha256:5d2b868300534dd82ff5634632b42be6cbff28035003215255d2e5beccaa8b48`  
		Last Modified: Tue, 18 Aug 2026 17:02:57 GMT  
		Size: 19.0 KB (19023 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-95.2.beta` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:d886bdd28d4881a1557e71ea2257974f035ef5763c28292413c15ca1dea9c99c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.2 MB (432169259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:702c9a0428668f957320252ad081c0650a671bdac8772eaf137c33e9e6b670a8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:37 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 00:53:37 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 00:53:37 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:53:37 GMT
WORKDIR /root
# Tue, 25 Aug 2026 00:53:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8cd9bf0f283d5c4612a0622124a89183457fcb8eb8d7c2929fb85bafd3c03ac3;             SDK_ARCH="x64";;         armhf)             DART_SHA256=3ca78a19eede87996c57af245979e9114a13a477cc0c71379e8bfa9a628b6e83;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d9f535f8913762f3d716a6f2a69f485bc846ff79d0455497ce1844a795c9a443;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=cf76b79d0ea95f1e3986597c62d11b1aa6eee955f02b8379d721259097fb1f8d;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e48ba9b375abd98998385ee31253f16991f2fd813b1ed3bd641df927b4dad3b`  
		Last Modified: Tue, 25 Aug 2026 00:54:40 GMT  
		Size: 42.3 MB (42308292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5e1e2f01a6b70e93e6d094eb9b36910dd933524614b6b62855f2f2190f4814a`  
		Last Modified: Tue, 25 Aug 2026 00:54:38 GMT  
		Size: 1.6 MB (1564381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2f545b79689ead9723120a58a60fda982e38ceb3e8d6caa54301af9fa1162ca`  
		Last Modified: Tue, 25 Aug 2026 00:54:45 GMT  
		Size: 358.1 MB (358136972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-95.2.beta` - unknown; unknown

```console
$ docker pull dart@sha256:0148eca60a144482bde4920ce78cae22a48c9801cae087652f6fb7cfbe3f8bf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7b9504aff2bc79b6d3cfff3b52f0652c03f3776ed69fb1566fc030121b7af4`

```dockerfile
```

-	Layers:
	-	`sha256:76908f6b14c28b65a41db7a28e4d66c029ea408a32f4b2ee7f1bf10e73a2cbb8`  
		Last Modified: Tue, 25 Aug 2026 00:54:38 GMT  
		Size: 19.1 KB (19052 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-95.2.beta` - linux; riscv64

```console
$ docker pull dart@sha256:6d10246004afbf625202d83ad9c0c6a3a9f2b4709ccf9ec4ea798d068d6ee234
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338885082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4917a1c7155123b2deda748943175836a00fc8e5e0801ba62920aba83abc59e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 22:26:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 22:26:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 22:26:50 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 22:26:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 22:26:50 GMT
WORKDIR /root
# Tue, 18 Aug 2026 22:34:05 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8cd9bf0f283d5c4612a0622124a89183457fcb8eb8d7c2929fb85bafd3c03ac3;             SDK_ARCH="x64";;         armhf)             DART_SHA256=3ca78a19eede87996c57af245979e9114a13a477cc0c71379e8bfa9a628b6e83;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d9f535f8913762f3d716a6f2a69f485bc846ff79d0455497ce1844a795c9a443;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=cf76b79d0ea95f1e3986597c62d11b1aa6eee955f02b8379d721259097fb1f8d;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6bb2efad7b400de7c3af4988bd91e3d8eda2d593ad2c2f88b9cebd1ef7f8790`  
		Last Modified: Tue, 18 Aug 2026 22:32:06 GMT  
		Size: 41.6 MB (41593643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752783078d21a6b82d626cf7b37a65dafdce069036b624699a3be72f347b02bb`  
		Last Modified: Tue, 18 Aug 2026 22:31:54 GMT  
		Size: 1.6 MB (1564446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb36edc4dc013eac297640b5215cb92e0c8bbdde72105fd4442d622e636d07e5`  
		Last Modified: Tue, 18 Aug 2026 22:40:49 GMT  
		Size: 267.4 MB (267448843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-95.2.beta` - unknown; unknown

```console
$ docker pull dart@sha256:f475f79f575533f89e2d5bb8187ee1399651cf5707fb3755bba9e769aeabcec5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8b5290a861991759fc00fafc0f57eba1b464b60826c05dcb799752ce85498ff`

```dockerfile
```

-	Layers:
	-	`sha256:c6e13e4d8750ccdc8021601aa70c8fae309710275216daf22ad30b772334269e`  
		Last Modified: Tue, 18 Aug 2026 22:40:11 GMT  
		Size: 19.0 KB (18966 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.14.0-95.2.beta-sdk`

```console
$ docker pull dart@sha256:da856519da063916739b7471eb6a3e7be26a80fc0c30b5ca4fef8cc5c56aad14
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

### `dart:3.14.0-95.2.beta-sdk` - linux; amd64

```console
$ docker pull dart@sha256:119248dc5569718feafd6208e66a2225026f2a4594b54f735718d336bebf44d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.2 MB (435168134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:527a9c9e16dbc138dfa08ed77e7235890ca8820314d5a6dac1829642828aa5fb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:51:26 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 00:51:26 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 00:51:26 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:51:26 GMT
WORKDIR /root
# Tue, 25 Aug 2026 00:51:42 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8cd9bf0f283d5c4612a0622124a89183457fcb8eb8d7c2929fb85bafd3c03ac3;             SDK_ARCH="x64";;         armhf)             DART_SHA256=3ca78a19eede87996c57af245979e9114a13a477cc0c71379e8bfa9a628b6e83;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d9f535f8913762f3d716a6f2a69f485bc846ff79d0455497ce1844a795c9a443;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=cf76b79d0ea95f1e3986597c62d11b1aa6eee955f02b8379d721259097fb1f8d;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eb04a3be84b7814146cf42b9a6aaf83dce9122eeb04741b522a85b3de528bd6`  
		Last Modified: Tue, 25 Aug 2026 00:52:21 GMT  
		Size: 42.5 MB (42524125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a4cca3e575e00e4bccf2c70518ceefad64215373cb6f8b234cd46a39dbe806`  
		Last Modified: Tue, 25 Aug 2026 00:52:19 GMT  
		Size: 1.9 MB (1869782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dccc9cc3ee2e9da9ab18f43aa1ac4fb2983e1644e39034d5d1c6a1f74ae7f14`  
		Last Modified: Tue, 25 Aug 2026 00:52:29 GMT  
		Size: 361.0 MB (360981537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-95.2.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:8de16f06347f1c7779841d57be5a7f078216878fb97b11812ebf2c11c6f67b71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63eb6c35e6e96169952f30852937373422cd89822d38bd060062dd924ccc34a5`

```dockerfile
```

-	Layers:
	-	`sha256:8f47878cfcd3cb9500d4da3b1bff53d33fb6ecd14be00c0e69521e27a3383e63`  
		Last Modified: Tue, 25 Aug 2026 00:52:19 GMT  
		Size: 18.9 KB (18918 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-95.2.beta-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:ddfdad0976b9b304f6656e6a4a2cf8a854d7c67fde39451af45e0fbbff66964d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254885844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9760fbac6484e7d0ead188f581036993ea5a5fc38d5b613f21084be49f663e90`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 17:02:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 17:02:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 17:02:25 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 17:02:25 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:02:25 GMT
WORKDIR /root
# Tue, 18 Aug 2026 17:02:35 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8cd9bf0f283d5c4612a0622124a89183457fcb8eb8d7c2929fb85bafd3c03ac3;             SDK_ARCH="x64";;         armhf)             DART_SHA256=3ca78a19eede87996c57af245979e9114a13a477cc0c71379e8bfa9a628b6e83;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d9f535f8913762f3d716a6f2a69f485bc846ff79d0455497ce1844a795c9a443;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=cf76b79d0ea95f1e3986597c62d11b1aa6eee955f02b8379d721259097fb1f8d;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47de1447abd3bad3d8d6693d37039e7d8da43778e9b27257337ef0cf31dd3644`  
		Last Modified: Tue, 18 Aug 2026 17:02:58 GMT  
		Size: 37.5 MB (37512710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7d635463bed93b599256a157bfa9dd63fa9c983e7fff7a41b3e20c5366ab0a`  
		Last Modified: Tue, 18 Aug 2026 17:02:57 GMT  
		Size: 1.3 MB (1273154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:456c667aa5e470b56464147b49e6ccd22dd1abecc3ed16bc0df483a52165bab5`  
		Last Modified: Tue, 18 Aug 2026 17:03:02 GMT  
		Size: 189.9 MB (189893576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-95.2.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:d80723adfff996592a315fe1c9460bed10354982271ea48bd015b729920e8eae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6965ffbbba03511e83755d8a8abe79599ca67074da313a619f6ac7d088167f8`

```dockerfile
```

-	Layers:
	-	`sha256:5d2b868300534dd82ff5634632b42be6cbff28035003215255d2e5beccaa8b48`  
		Last Modified: Tue, 18 Aug 2026 17:02:57 GMT  
		Size: 19.0 KB (19023 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-95.2.beta-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:d886bdd28d4881a1557e71ea2257974f035ef5763c28292413c15ca1dea9c99c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.2 MB (432169259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:702c9a0428668f957320252ad081c0650a671bdac8772eaf137c33e9e6b670a8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:37 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 00:53:37 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 00:53:37 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:53:37 GMT
WORKDIR /root
# Tue, 25 Aug 2026 00:53:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8cd9bf0f283d5c4612a0622124a89183457fcb8eb8d7c2929fb85bafd3c03ac3;             SDK_ARCH="x64";;         armhf)             DART_SHA256=3ca78a19eede87996c57af245979e9114a13a477cc0c71379e8bfa9a628b6e83;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d9f535f8913762f3d716a6f2a69f485bc846ff79d0455497ce1844a795c9a443;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=cf76b79d0ea95f1e3986597c62d11b1aa6eee955f02b8379d721259097fb1f8d;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e48ba9b375abd98998385ee31253f16991f2fd813b1ed3bd641df927b4dad3b`  
		Last Modified: Tue, 25 Aug 2026 00:54:40 GMT  
		Size: 42.3 MB (42308292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5e1e2f01a6b70e93e6d094eb9b36910dd933524614b6b62855f2f2190f4814a`  
		Last Modified: Tue, 25 Aug 2026 00:54:38 GMT  
		Size: 1.6 MB (1564381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2f545b79689ead9723120a58a60fda982e38ceb3e8d6caa54301af9fa1162ca`  
		Last Modified: Tue, 25 Aug 2026 00:54:45 GMT  
		Size: 358.1 MB (358136972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-95.2.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:0148eca60a144482bde4920ce78cae22a48c9801cae087652f6fb7cfbe3f8bf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7b9504aff2bc79b6d3cfff3b52f0652c03f3776ed69fb1566fc030121b7af4`

```dockerfile
```

-	Layers:
	-	`sha256:76908f6b14c28b65a41db7a28e4d66c029ea408a32f4b2ee7f1bf10e73a2cbb8`  
		Last Modified: Tue, 25 Aug 2026 00:54:38 GMT  
		Size: 19.1 KB (19052 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-95.2.beta-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:6d10246004afbf625202d83ad9c0c6a3a9f2b4709ccf9ec4ea798d068d6ee234
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338885082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4917a1c7155123b2deda748943175836a00fc8e5e0801ba62920aba83abc59e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 22:26:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 22:26:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 22:26:50 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 22:26:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 22:26:50 GMT
WORKDIR /root
# Tue, 18 Aug 2026 22:34:05 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8cd9bf0f283d5c4612a0622124a89183457fcb8eb8d7c2929fb85bafd3c03ac3;             SDK_ARCH="x64";;         armhf)             DART_SHA256=3ca78a19eede87996c57af245979e9114a13a477cc0c71379e8bfa9a628b6e83;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d9f535f8913762f3d716a6f2a69f485bc846ff79d0455497ce1844a795c9a443;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=cf76b79d0ea95f1e3986597c62d11b1aa6eee955f02b8379d721259097fb1f8d;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6bb2efad7b400de7c3af4988bd91e3d8eda2d593ad2c2f88b9cebd1ef7f8790`  
		Last Modified: Tue, 18 Aug 2026 22:32:06 GMT  
		Size: 41.6 MB (41593643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752783078d21a6b82d626cf7b37a65dafdce069036b624699a3be72f347b02bb`  
		Last Modified: Tue, 18 Aug 2026 22:31:54 GMT  
		Size: 1.6 MB (1564446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb36edc4dc013eac297640b5215cb92e0c8bbdde72105fd4442d622e636d07e5`  
		Last Modified: Tue, 18 Aug 2026 22:40:49 GMT  
		Size: 267.4 MB (267448843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-95.2.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:f475f79f575533f89e2d5bb8187ee1399651cf5707fb3755bba9e769aeabcec5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8b5290a861991759fc00fafc0f57eba1b464b60826c05dcb799752ce85498ff`

```dockerfile
```

-	Layers:
	-	`sha256:c6e13e4d8750ccdc8021601aa70c8fae309710275216daf22ad30b772334269e`  
		Last Modified: Tue, 18 Aug 2026 22:40:11 GMT  
		Size: 19.0 KB (18966 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:beta`

```console
$ docker pull dart@sha256:da856519da063916739b7471eb6a3e7be26a80fc0c30b5ca4fef8cc5c56aad14
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
$ docker pull dart@sha256:119248dc5569718feafd6208e66a2225026f2a4594b54f735718d336bebf44d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.2 MB (435168134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:527a9c9e16dbc138dfa08ed77e7235890ca8820314d5a6dac1829642828aa5fb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:51:26 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 00:51:26 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 00:51:26 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:51:26 GMT
WORKDIR /root
# Tue, 25 Aug 2026 00:51:42 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8cd9bf0f283d5c4612a0622124a89183457fcb8eb8d7c2929fb85bafd3c03ac3;             SDK_ARCH="x64";;         armhf)             DART_SHA256=3ca78a19eede87996c57af245979e9114a13a477cc0c71379e8bfa9a628b6e83;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d9f535f8913762f3d716a6f2a69f485bc846ff79d0455497ce1844a795c9a443;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=cf76b79d0ea95f1e3986597c62d11b1aa6eee955f02b8379d721259097fb1f8d;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eb04a3be84b7814146cf42b9a6aaf83dce9122eeb04741b522a85b3de528bd6`  
		Last Modified: Tue, 25 Aug 2026 00:52:21 GMT  
		Size: 42.5 MB (42524125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a4cca3e575e00e4bccf2c70518ceefad64215373cb6f8b234cd46a39dbe806`  
		Last Modified: Tue, 25 Aug 2026 00:52:19 GMT  
		Size: 1.9 MB (1869782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dccc9cc3ee2e9da9ab18f43aa1ac4fb2983e1644e39034d5d1c6a1f74ae7f14`  
		Last Modified: Tue, 25 Aug 2026 00:52:29 GMT  
		Size: 361.0 MB (360981537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:8de16f06347f1c7779841d57be5a7f078216878fb97b11812ebf2c11c6f67b71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63eb6c35e6e96169952f30852937373422cd89822d38bd060062dd924ccc34a5`

```dockerfile
```

-	Layers:
	-	`sha256:8f47878cfcd3cb9500d4da3b1bff53d33fb6ecd14be00c0e69521e27a3383e63`  
		Last Modified: Tue, 25 Aug 2026 00:52:19 GMT  
		Size: 18.9 KB (18918 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm variant v7

```console
$ docker pull dart@sha256:ddfdad0976b9b304f6656e6a4a2cf8a854d7c67fde39451af45e0fbbff66964d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254885844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9760fbac6484e7d0ead188f581036993ea5a5fc38d5b613f21084be49f663e90`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 17:02:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 17:02:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 17:02:25 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 17:02:25 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:02:25 GMT
WORKDIR /root
# Tue, 18 Aug 2026 17:02:35 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8cd9bf0f283d5c4612a0622124a89183457fcb8eb8d7c2929fb85bafd3c03ac3;             SDK_ARCH="x64";;         armhf)             DART_SHA256=3ca78a19eede87996c57af245979e9114a13a477cc0c71379e8bfa9a628b6e83;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d9f535f8913762f3d716a6f2a69f485bc846ff79d0455497ce1844a795c9a443;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=cf76b79d0ea95f1e3986597c62d11b1aa6eee955f02b8379d721259097fb1f8d;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47de1447abd3bad3d8d6693d37039e7d8da43778e9b27257337ef0cf31dd3644`  
		Last Modified: Tue, 18 Aug 2026 17:02:58 GMT  
		Size: 37.5 MB (37512710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7d635463bed93b599256a157bfa9dd63fa9c983e7fff7a41b3e20c5366ab0a`  
		Last Modified: Tue, 18 Aug 2026 17:02:57 GMT  
		Size: 1.3 MB (1273154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:456c667aa5e470b56464147b49e6ccd22dd1abecc3ed16bc0df483a52165bab5`  
		Last Modified: Tue, 18 Aug 2026 17:03:02 GMT  
		Size: 189.9 MB (189893576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:d80723adfff996592a315fe1c9460bed10354982271ea48bd015b729920e8eae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6965ffbbba03511e83755d8a8abe79599ca67074da313a619f6ac7d088167f8`

```dockerfile
```

-	Layers:
	-	`sha256:5d2b868300534dd82ff5634632b42be6cbff28035003215255d2e5beccaa8b48`  
		Last Modified: Tue, 18 Aug 2026 17:02:57 GMT  
		Size: 19.0 KB (19023 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:d886bdd28d4881a1557e71ea2257974f035ef5763c28292413c15ca1dea9c99c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.2 MB (432169259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:702c9a0428668f957320252ad081c0650a671bdac8772eaf137c33e9e6b670a8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:37 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 00:53:37 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 00:53:37 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:53:37 GMT
WORKDIR /root
# Tue, 25 Aug 2026 00:53:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8cd9bf0f283d5c4612a0622124a89183457fcb8eb8d7c2929fb85bafd3c03ac3;             SDK_ARCH="x64";;         armhf)             DART_SHA256=3ca78a19eede87996c57af245979e9114a13a477cc0c71379e8bfa9a628b6e83;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d9f535f8913762f3d716a6f2a69f485bc846ff79d0455497ce1844a795c9a443;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=cf76b79d0ea95f1e3986597c62d11b1aa6eee955f02b8379d721259097fb1f8d;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e48ba9b375abd98998385ee31253f16991f2fd813b1ed3bd641df927b4dad3b`  
		Last Modified: Tue, 25 Aug 2026 00:54:40 GMT  
		Size: 42.3 MB (42308292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5e1e2f01a6b70e93e6d094eb9b36910dd933524614b6b62855f2f2190f4814a`  
		Last Modified: Tue, 25 Aug 2026 00:54:38 GMT  
		Size: 1.6 MB (1564381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2f545b79689ead9723120a58a60fda982e38ceb3e8d6caa54301af9fa1162ca`  
		Last Modified: Tue, 25 Aug 2026 00:54:45 GMT  
		Size: 358.1 MB (358136972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:0148eca60a144482bde4920ce78cae22a48c9801cae087652f6fb7cfbe3f8bf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7b9504aff2bc79b6d3cfff3b52f0652c03f3776ed69fb1566fc030121b7af4`

```dockerfile
```

-	Layers:
	-	`sha256:76908f6b14c28b65a41db7a28e4d66c029ea408a32f4b2ee7f1bf10e73a2cbb8`  
		Last Modified: Tue, 25 Aug 2026 00:54:38 GMT  
		Size: 19.1 KB (19052 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; riscv64

```console
$ docker pull dart@sha256:6d10246004afbf625202d83ad9c0c6a3a9f2b4709ccf9ec4ea798d068d6ee234
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338885082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4917a1c7155123b2deda748943175836a00fc8e5e0801ba62920aba83abc59e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 22:26:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 22:26:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 22:26:50 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 22:26:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 22:26:50 GMT
WORKDIR /root
# Tue, 18 Aug 2026 22:34:05 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8cd9bf0f283d5c4612a0622124a89183457fcb8eb8d7c2929fb85bafd3c03ac3;             SDK_ARCH="x64";;         armhf)             DART_SHA256=3ca78a19eede87996c57af245979e9114a13a477cc0c71379e8bfa9a628b6e83;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d9f535f8913762f3d716a6f2a69f485bc846ff79d0455497ce1844a795c9a443;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=cf76b79d0ea95f1e3986597c62d11b1aa6eee955f02b8379d721259097fb1f8d;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6bb2efad7b400de7c3af4988bd91e3d8eda2d593ad2c2f88b9cebd1ef7f8790`  
		Last Modified: Tue, 18 Aug 2026 22:32:06 GMT  
		Size: 41.6 MB (41593643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752783078d21a6b82d626cf7b37a65dafdce069036b624699a3be72f347b02bb`  
		Last Modified: Tue, 18 Aug 2026 22:31:54 GMT  
		Size: 1.6 MB (1564446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb36edc4dc013eac297640b5215cb92e0c8bbdde72105fd4442d622e636d07e5`  
		Last Modified: Tue, 18 Aug 2026 22:40:49 GMT  
		Size: 267.4 MB (267448843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:f475f79f575533f89e2d5bb8187ee1399651cf5707fb3755bba9e769aeabcec5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8b5290a861991759fc00fafc0f57eba1b464b60826c05dcb799752ce85498ff`

```dockerfile
```

-	Layers:
	-	`sha256:c6e13e4d8750ccdc8021601aa70c8fae309710275216daf22ad30b772334269e`  
		Last Modified: Tue, 18 Aug 2026 22:40:11 GMT  
		Size: 19.0 KB (18966 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:beta-sdk`

```console
$ docker pull dart@sha256:da856519da063916739b7471eb6a3e7be26a80fc0c30b5ca4fef8cc5c56aad14
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
$ docker pull dart@sha256:119248dc5569718feafd6208e66a2225026f2a4594b54f735718d336bebf44d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.2 MB (435168134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:527a9c9e16dbc138dfa08ed77e7235890ca8820314d5a6dac1829642828aa5fb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:51:26 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 00:51:26 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 00:51:26 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:51:26 GMT
WORKDIR /root
# Tue, 25 Aug 2026 00:51:42 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8cd9bf0f283d5c4612a0622124a89183457fcb8eb8d7c2929fb85bafd3c03ac3;             SDK_ARCH="x64";;         armhf)             DART_SHA256=3ca78a19eede87996c57af245979e9114a13a477cc0c71379e8bfa9a628b6e83;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d9f535f8913762f3d716a6f2a69f485bc846ff79d0455497ce1844a795c9a443;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=cf76b79d0ea95f1e3986597c62d11b1aa6eee955f02b8379d721259097fb1f8d;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eb04a3be84b7814146cf42b9a6aaf83dce9122eeb04741b522a85b3de528bd6`  
		Last Modified: Tue, 25 Aug 2026 00:52:21 GMT  
		Size: 42.5 MB (42524125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a4cca3e575e00e4bccf2c70518ceefad64215373cb6f8b234cd46a39dbe806`  
		Last Modified: Tue, 25 Aug 2026 00:52:19 GMT  
		Size: 1.9 MB (1869782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dccc9cc3ee2e9da9ab18f43aa1ac4fb2983e1644e39034d5d1c6a1f74ae7f14`  
		Last Modified: Tue, 25 Aug 2026 00:52:29 GMT  
		Size: 361.0 MB (360981537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:8de16f06347f1c7779841d57be5a7f078216878fb97b11812ebf2c11c6f67b71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63eb6c35e6e96169952f30852937373422cd89822d38bd060062dd924ccc34a5`

```dockerfile
```

-	Layers:
	-	`sha256:8f47878cfcd3cb9500d4da3b1bff53d33fb6ecd14be00c0e69521e27a3383e63`  
		Last Modified: Tue, 25 Aug 2026 00:52:19 GMT  
		Size: 18.9 KB (18918 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:ddfdad0976b9b304f6656e6a4a2cf8a854d7c67fde39451af45e0fbbff66964d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254885844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9760fbac6484e7d0ead188f581036993ea5a5fc38d5b613f21084be49f663e90`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 17:02:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 17:02:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 17:02:25 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 17:02:25 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:02:25 GMT
WORKDIR /root
# Tue, 18 Aug 2026 17:02:35 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8cd9bf0f283d5c4612a0622124a89183457fcb8eb8d7c2929fb85bafd3c03ac3;             SDK_ARCH="x64";;         armhf)             DART_SHA256=3ca78a19eede87996c57af245979e9114a13a477cc0c71379e8bfa9a628b6e83;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d9f535f8913762f3d716a6f2a69f485bc846ff79d0455497ce1844a795c9a443;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=cf76b79d0ea95f1e3986597c62d11b1aa6eee955f02b8379d721259097fb1f8d;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47de1447abd3bad3d8d6693d37039e7d8da43778e9b27257337ef0cf31dd3644`  
		Last Modified: Tue, 18 Aug 2026 17:02:58 GMT  
		Size: 37.5 MB (37512710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7d635463bed93b599256a157bfa9dd63fa9c983e7fff7a41b3e20c5366ab0a`  
		Last Modified: Tue, 18 Aug 2026 17:02:57 GMT  
		Size: 1.3 MB (1273154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:456c667aa5e470b56464147b49e6ccd22dd1abecc3ed16bc0df483a52165bab5`  
		Last Modified: Tue, 18 Aug 2026 17:03:02 GMT  
		Size: 189.9 MB (189893576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:d80723adfff996592a315fe1c9460bed10354982271ea48bd015b729920e8eae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6965ffbbba03511e83755d8a8abe79599ca67074da313a619f6ac7d088167f8`

```dockerfile
```

-	Layers:
	-	`sha256:5d2b868300534dd82ff5634632b42be6cbff28035003215255d2e5beccaa8b48`  
		Last Modified: Tue, 18 Aug 2026 17:02:57 GMT  
		Size: 19.0 KB (19023 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:d886bdd28d4881a1557e71ea2257974f035ef5763c28292413c15ca1dea9c99c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.2 MB (432169259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:702c9a0428668f957320252ad081c0650a671bdac8772eaf137c33e9e6b670a8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:37 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 00:53:37 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 00:53:37 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:53:37 GMT
WORKDIR /root
# Tue, 25 Aug 2026 00:53:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8cd9bf0f283d5c4612a0622124a89183457fcb8eb8d7c2929fb85bafd3c03ac3;             SDK_ARCH="x64";;         armhf)             DART_SHA256=3ca78a19eede87996c57af245979e9114a13a477cc0c71379e8bfa9a628b6e83;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d9f535f8913762f3d716a6f2a69f485bc846ff79d0455497ce1844a795c9a443;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=cf76b79d0ea95f1e3986597c62d11b1aa6eee955f02b8379d721259097fb1f8d;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e48ba9b375abd98998385ee31253f16991f2fd813b1ed3bd641df927b4dad3b`  
		Last Modified: Tue, 25 Aug 2026 00:54:40 GMT  
		Size: 42.3 MB (42308292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5e1e2f01a6b70e93e6d094eb9b36910dd933524614b6b62855f2f2190f4814a`  
		Last Modified: Tue, 25 Aug 2026 00:54:38 GMT  
		Size: 1.6 MB (1564381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2f545b79689ead9723120a58a60fda982e38ceb3e8d6caa54301af9fa1162ca`  
		Last Modified: Tue, 25 Aug 2026 00:54:45 GMT  
		Size: 358.1 MB (358136972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:0148eca60a144482bde4920ce78cae22a48c9801cae087652f6fb7cfbe3f8bf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7b9504aff2bc79b6d3cfff3b52f0652c03f3776ed69fb1566fc030121b7af4`

```dockerfile
```

-	Layers:
	-	`sha256:76908f6b14c28b65a41db7a28e4d66c029ea408a32f4b2ee7f1bf10e73a2cbb8`  
		Last Modified: Tue, 25 Aug 2026 00:54:38 GMT  
		Size: 19.1 KB (19052 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:6d10246004afbf625202d83ad9c0c6a3a9f2b4709ccf9ec4ea798d068d6ee234
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338885082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4917a1c7155123b2deda748943175836a00fc8e5e0801ba62920aba83abc59e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 22:26:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 22:26:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 22:26:50 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 22:26:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 22:26:50 GMT
WORKDIR /root
# Tue, 18 Aug 2026 22:34:05 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8cd9bf0f283d5c4612a0622124a89183457fcb8eb8d7c2929fb85bafd3c03ac3;             SDK_ARCH="x64";;         armhf)             DART_SHA256=3ca78a19eede87996c57af245979e9114a13a477cc0c71379e8bfa9a628b6e83;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d9f535f8913762f3d716a6f2a69f485bc846ff79d0455497ce1844a795c9a443;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=cf76b79d0ea95f1e3986597c62d11b1aa6eee955f02b8379d721259097fb1f8d;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6bb2efad7b400de7c3af4988bd91e3d8eda2d593ad2c2f88b9cebd1ef7f8790`  
		Last Modified: Tue, 18 Aug 2026 22:32:06 GMT  
		Size: 41.6 MB (41593643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752783078d21a6b82d626cf7b37a65dafdce069036b624699a3be72f347b02bb`  
		Last Modified: Tue, 18 Aug 2026 22:31:54 GMT  
		Size: 1.6 MB (1564446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb36edc4dc013eac297640b5215cb92e0c8bbdde72105fd4442d622e636d07e5`  
		Last Modified: Tue, 18 Aug 2026 22:40:49 GMT  
		Size: 267.4 MB (267448843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:f475f79f575533f89e2d5bb8187ee1399651cf5707fb3755bba9e769aeabcec5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8b5290a861991759fc00fafc0f57eba1b464b60826c05dcb799752ce85498ff`

```dockerfile
```

-	Layers:
	-	`sha256:c6e13e4d8750ccdc8021601aa70c8fae309710275216daf22ad30b772334269e`  
		Last Modified: Tue, 18 Aug 2026 22:40:11 GMT  
		Size: 19.0 KB (18966 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:latest`

```console
$ docker pull dart@sha256:54a0688d298c91b26bde2724bf21ab9cd606f45de0bdf55fe462e5dd6bdd84d1
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
$ docker pull dart@sha256:e2745d479e345441612c97ff25214642820b6be5f8e87a57876b998c3ed68e2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316563639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62e425c3a1681cf0a7ef4329009e402505c9fbcc722b267fc0e03a2d4ce6e829`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:51:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 00:51:25 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 00:51:25 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:51:25 GMT
WORKDIR /root
# Tue, 25 Aug 2026 00:51:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7f2e8af039526de5b0927cf3c3089e11b03fce9992bdc125b52dc3626e1e8d`  
		Last Modified: Tue, 25 Aug 2026 00:52:04 GMT  
		Size: 42.5 MB (42524061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3e7c4974006d405d3af398e0824d1ad33adc7417953ff95bac2ecc62141ca90`  
		Last Modified: Tue, 25 Aug 2026 00:52:02 GMT  
		Size: 1.9 MB (1869786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c3f3e4905e62f509828695f4545aff83d67b525e55db9f687a3213d634e3599`  
		Last Modified: Tue, 25 Aug 2026 00:52:08 GMT  
		Size: 242.4 MB (242377102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:54f22b73d2b8c2b790018984735dac4c5e88d3a9e5e70790e491f331378ce375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c32684b6a44cc3310d915fc8db7ec44bf23b27399c129000fa93acff970a5fb`

```dockerfile
```

-	Layers:
	-	`sha256:14efe922e0fbfcf38ac0d9a6253b61d8a500369a188f6ffb38b6c49bf4125c5b`  
		Last Modified: Tue, 25 Aug 2026 00:52:02 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; arm variant v7

```console
$ docker pull dart@sha256:6f610168c61872d6b04aaa1e691ad8c5b634bfed5219eb5bb25d8b96f2a5dbcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230463480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25185646e1708ded2bdad306d4711c633ea37312c023989216c380b6801f6280`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 17:02:23 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 17:02:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 17:02:24 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 17:02:24 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:02:24 GMT
WORKDIR /root
# Tue, 18 Aug 2026 17:02:33 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd4c3a74a28f3fd7e03ac5adab8bf22c9cb9195220a9067c0e67609e58a03579`  
		Last Modified: Tue, 18 Aug 2026 17:02:57 GMT  
		Size: 37.5 MB (37512645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ec46a3cf19370cb215a128bcbb6cbf8bf5ef8752e7494b4c651460cff097ff`  
		Last Modified: Tue, 18 Aug 2026 17:02:55 GMT  
		Size: 1.3 MB (1273145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc329da1e94e1c590c084f0cee5343b97486a9b78a8c7c0d24bc763257370ac8`  
		Last Modified: Tue, 18 Aug 2026 17:02:59 GMT  
		Size: 165.5 MB (165471286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:0c0de94d7eeecdba9b8cbbb768901ba37fa5fa6ee2341aa600eabeae1e4d4012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7052617aebe915aa650d2031fe83ad9daa1ba990aad8e4d7ae0be7e6a1ed06d1`

```dockerfile
```

-	Layers:
	-	`sha256:a3f2d569ee91d5c558a83e07bf1d958fa5dcc524ab32faa342f6d1e8eb628596`  
		Last Modified: Tue, 18 Aug 2026 17:02:55 GMT  
		Size: 20.8 KB (20767 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:3f59ee9244026d6e24f61f0cc9b8e017de52ddb5252a65588cb4a93257030fb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315240480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f60a4fc2d32db59c879970e6f4745fc305f7602c1cd5cb480306a11470d10f0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 00:53:35 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:53:35 GMT
WORKDIR /root
# Tue, 25 Aug 2026 00:53:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbdb2d489900ceb8cab76b44f62c2f51c47236ab995104959a46d6a7ffd4e44`  
		Last Modified: Tue, 25 Aug 2026 00:54:18 GMT  
		Size: 42.3 MB (42308522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ab4927890f3af895d2c5b922de44ad5bb833c6f4108f62b11187427b5ef4b4`  
		Last Modified: Tue, 25 Aug 2026 00:54:16 GMT  
		Size: 1.6 MB (1564384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:486d3ba3c942ef59c84282512f80b2a62e3984b41fa9f0c7606eb109d220cdb6`  
		Last Modified: Tue, 25 Aug 2026 00:54:22 GMT  
		Size: 241.2 MB (241207960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:c16a3455f03742681633f198349fd0cd58aa927f794737bf30223da1bf3d7cfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aba995029f103066d2232edbbdbf75f99a8e014e7a248abf04c71b38314ea7e`

```dockerfile
```

-	Layers:
	-	`sha256:d43871fac011fde94132932d67f742430a65d3455337a07535e52bf4c2fef575`  
		Last Modified: Tue, 25 Aug 2026 00:54:16 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; riscv64

```console
$ docker pull dart@sha256:99be761b267dfbf906f904fd6daeee3832e63788a57413f5a4f6c93ee0aa7de5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252702441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73514825b4b078ea4f81e8632e9d89690c3e813113ddc2b31154e3c9acd2ec0e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 22:26:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 22:26:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 22:26:50 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 22:26:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 22:26:50 GMT
WORKDIR /root
# Tue, 18 Aug 2026 22:27:37 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6bb2efad7b400de7c3af4988bd91e3d8eda2d593ad2c2f88b9cebd1ef7f8790`  
		Last Modified: Tue, 18 Aug 2026 22:32:06 GMT  
		Size: 41.6 MB (41593643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752783078d21a6b82d626cf7b37a65dafdce069036b624699a3be72f347b02bb`  
		Last Modified: Tue, 18 Aug 2026 22:31:54 GMT  
		Size: 1.6 MB (1564446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc826e27756eac5f32f825b4750024b4409098c032ac9eb915a69ee1a7f14c8`  
		Last Modified: Tue, 18 Aug 2026 22:32:26 GMT  
		Size: 181.3 MB (181266202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:c9b1f67654a8e81f1f01aa2562603d2e56298d8a8cd1b98706efb885530edbc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9998eddcbd0318ef28c130667784cf9573cd6451493b66ccd9f28dc7a4aad3`

```dockerfile
```

-	Layers:
	-	`sha256:abb1458c9795f17ddd1966aa2f23aedb62043f8bf28eb8aab1ba75b31afece58`  
		Last Modified: Tue, 18 Aug 2026 22:31:53 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:sdk`

```console
$ docker pull dart@sha256:54a0688d298c91b26bde2724bf21ab9cd606f45de0bdf55fe462e5dd6bdd84d1
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
$ docker pull dart@sha256:e2745d479e345441612c97ff25214642820b6be5f8e87a57876b998c3ed68e2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316563639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62e425c3a1681cf0a7ef4329009e402505c9fbcc722b267fc0e03a2d4ce6e829`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:51:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 00:51:25 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 00:51:25 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:51:25 GMT
WORKDIR /root
# Tue, 25 Aug 2026 00:51:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7f2e8af039526de5b0927cf3c3089e11b03fce9992bdc125b52dc3626e1e8d`  
		Last Modified: Tue, 25 Aug 2026 00:52:04 GMT  
		Size: 42.5 MB (42524061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3e7c4974006d405d3af398e0824d1ad33adc7417953ff95bac2ecc62141ca90`  
		Last Modified: Tue, 25 Aug 2026 00:52:02 GMT  
		Size: 1.9 MB (1869786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c3f3e4905e62f509828695f4545aff83d67b525e55db9f687a3213d634e3599`  
		Last Modified: Tue, 25 Aug 2026 00:52:08 GMT  
		Size: 242.4 MB (242377102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:54f22b73d2b8c2b790018984735dac4c5e88d3a9e5e70790e491f331378ce375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c32684b6a44cc3310d915fc8db7ec44bf23b27399c129000fa93acff970a5fb`

```dockerfile
```

-	Layers:
	-	`sha256:14efe922e0fbfcf38ac0d9a6253b61d8a500369a188f6ffb38b6c49bf4125c5b`  
		Last Modified: Tue, 25 Aug 2026 00:52:02 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:6f610168c61872d6b04aaa1e691ad8c5b634bfed5219eb5bb25d8b96f2a5dbcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230463480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25185646e1708ded2bdad306d4711c633ea37312c023989216c380b6801f6280`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 17:02:23 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 17:02:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 17:02:24 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 17:02:24 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:02:24 GMT
WORKDIR /root
# Tue, 18 Aug 2026 17:02:33 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd4c3a74a28f3fd7e03ac5adab8bf22c9cb9195220a9067c0e67609e58a03579`  
		Last Modified: Tue, 18 Aug 2026 17:02:57 GMT  
		Size: 37.5 MB (37512645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ec46a3cf19370cb215a128bcbb6cbf8bf5ef8752e7494b4c651460cff097ff`  
		Last Modified: Tue, 18 Aug 2026 17:02:55 GMT  
		Size: 1.3 MB (1273145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc329da1e94e1c590c084f0cee5343b97486a9b78a8c7c0d24bc763257370ac8`  
		Last Modified: Tue, 18 Aug 2026 17:02:59 GMT  
		Size: 165.5 MB (165471286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:0c0de94d7eeecdba9b8cbbb768901ba37fa5fa6ee2341aa600eabeae1e4d4012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7052617aebe915aa650d2031fe83ad9daa1ba990aad8e4d7ae0be7e6a1ed06d1`

```dockerfile
```

-	Layers:
	-	`sha256:a3f2d569ee91d5c558a83e07bf1d958fa5dcc524ab32faa342f6d1e8eb628596`  
		Last Modified: Tue, 18 Aug 2026 17:02:55 GMT  
		Size: 20.8 KB (20767 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:3f59ee9244026d6e24f61f0cc9b8e017de52ddb5252a65588cb4a93257030fb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315240480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f60a4fc2d32db59c879970e6f4745fc305f7602c1cd5cb480306a11470d10f0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 00:53:35 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:53:35 GMT
WORKDIR /root
# Tue, 25 Aug 2026 00:53:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbdb2d489900ceb8cab76b44f62c2f51c47236ab995104959a46d6a7ffd4e44`  
		Last Modified: Tue, 25 Aug 2026 00:54:18 GMT  
		Size: 42.3 MB (42308522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ab4927890f3af895d2c5b922de44ad5bb833c6f4108f62b11187427b5ef4b4`  
		Last Modified: Tue, 25 Aug 2026 00:54:16 GMT  
		Size: 1.6 MB (1564384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:486d3ba3c942ef59c84282512f80b2a62e3984b41fa9f0c7606eb109d220cdb6`  
		Last Modified: Tue, 25 Aug 2026 00:54:22 GMT  
		Size: 241.2 MB (241207960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:c16a3455f03742681633f198349fd0cd58aa927f794737bf30223da1bf3d7cfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aba995029f103066d2232edbbdbf75f99a8e014e7a248abf04c71b38314ea7e`

```dockerfile
```

-	Layers:
	-	`sha256:d43871fac011fde94132932d67f742430a65d3455337a07535e52bf4c2fef575`  
		Last Modified: Tue, 25 Aug 2026 00:54:16 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; riscv64

```console
$ docker pull dart@sha256:99be761b267dfbf906f904fd6daeee3832e63788a57413f5a4f6c93ee0aa7de5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252702441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73514825b4b078ea4f81e8632e9d89690c3e813113ddc2b31154e3c9acd2ec0e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 22:26:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 22:26:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 22:26:50 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 22:26:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 22:26:50 GMT
WORKDIR /root
# Tue, 18 Aug 2026 22:27:37 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6bb2efad7b400de7c3af4988bd91e3d8eda2d593ad2c2f88b9cebd1ef7f8790`  
		Last Modified: Tue, 18 Aug 2026 22:32:06 GMT  
		Size: 41.6 MB (41593643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752783078d21a6b82d626cf7b37a65dafdce069036b624699a3be72f347b02bb`  
		Last Modified: Tue, 18 Aug 2026 22:31:54 GMT  
		Size: 1.6 MB (1564446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc826e27756eac5f32f825b4750024b4409098c032ac9eb915a69ee1a7f14c8`  
		Last Modified: Tue, 18 Aug 2026 22:32:26 GMT  
		Size: 181.3 MB (181266202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:c9b1f67654a8e81f1f01aa2562603d2e56298d8a8cd1b98706efb885530edbc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9998eddcbd0318ef28c130667784cf9573cd6451493b66ccd9f28dc7a4aad3`

```dockerfile
```

-	Layers:
	-	`sha256:abb1458c9795f17ddd1966aa2f23aedb62043f8bf28eb8aab1ba75b31afece58`  
		Last Modified: Tue, 18 Aug 2026 22:31:53 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:stable`

```console
$ docker pull dart@sha256:54a0688d298c91b26bde2724bf21ab9cd606f45de0bdf55fe462e5dd6bdd84d1
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
$ docker pull dart@sha256:e2745d479e345441612c97ff25214642820b6be5f8e87a57876b998c3ed68e2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316563639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62e425c3a1681cf0a7ef4329009e402505c9fbcc722b267fc0e03a2d4ce6e829`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:51:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 00:51:25 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 00:51:25 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:51:25 GMT
WORKDIR /root
# Tue, 25 Aug 2026 00:51:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7f2e8af039526de5b0927cf3c3089e11b03fce9992bdc125b52dc3626e1e8d`  
		Last Modified: Tue, 25 Aug 2026 00:52:04 GMT  
		Size: 42.5 MB (42524061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3e7c4974006d405d3af398e0824d1ad33adc7417953ff95bac2ecc62141ca90`  
		Last Modified: Tue, 25 Aug 2026 00:52:02 GMT  
		Size: 1.9 MB (1869786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c3f3e4905e62f509828695f4545aff83d67b525e55db9f687a3213d634e3599`  
		Last Modified: Tue, 25 Aug 2026 00:52:08 GMT  
		Size: 242.4 MB (242377102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:54f22b73d2b8c2b790018984735dac4c5e88d3a9e5e70790e491f331378ce375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c32684b6a44cc3310d915fc8db7ec44bf23b27399c129000fa93acff970a5fb`

```dockerfile
```

-	Layers:
	-	`sha256:14efe922e0fbfcf38ac0d9a6253b61d8a500369a188f6ffb38b6c49bf4125c5b`  
		Last Modified: Tue, 25 Aug 2026 00:52:02 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; arm variant v7

```console
$ docker pull dart@sha256:6f610168c61872d6b04aaa1e691ad8c5b634bfed5219eb5bb25d8b96f2a5dbcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230463480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25185646e1708ded2bdad306d4711c633ea37312c023989216c380b6801f6280`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 17:02:23 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 17:02:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 17:02:24 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 17:02:24 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:02:24 GMT
WORKDIR /root
# Tue, 18 Aug 2026 17:02:33 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd4c3a74a28f3fd7e03ac5adab8bf22c9cb9195220a9067c0e67609e58a03579`  
		Last Modified: Tue, 18 Aug 2026 17:02:57 GMT  
		Size: 37.5 MB (37512645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ec46a3cf19370cb215a128bcbb6cbf8bf5ef8752e7494b4c651460cff097ff`  
		Last Modified: Tue, 18 Aug 2026 17:02:55 GMT  
		Size: 1.3 MB (1273145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc329da1e94e1c590c084f0cee5343b97486a9b78a8c7c0d24bc763257370ac8`  
		Last Modified: Tue, 18 Aug 2026 17:02:59 GMT  
		Size: 165.5 MB (165471286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:0c0de94d7eeecdba9b8cbbb768901ba37fa5fa6ee2341aa600eabeae1e4d4012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7052617aebe915aa650d2031fe83ad9daa1ba990aad8e4d7ae0be7e6a1ed06d1`

```dockerfile
```

-	Layers:
	-	`sha256:a3f2d569ee91d5c558a83e07bf1d958fa5dcc524ab32faa342f6d1e8eb628596`  
		Last Modified: Tue, 18 Aug 2026 17:02:55 GMT  
		Size: 20.8 KB (20767 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:3f59ee9244026d6e24f61f0cc9b8e017de52ddb5252a65588cb4a93257030fb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315240480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f60a4fc2d32db59c879970e6f4745fc305f7602c1cd5cb480306a11470d10f0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 00:53:35 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:53:35 GMT
WORKDIR /root
# Tue, 25 Aug 2026 00:53:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbdb2d489900ceb8cab76b44f62c2f51c47236ab995104959a46d6a7ffd4e44`  
		Last Modified: Tue, 25 Aug 2026 00:54:18 GMT  
		Size: 42.3 MB (42308522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ab4927890f3af895d2c5b922de44ad5bb833c6f4108f62b11187427b5ef4b4`  
		Last Modified: Tue, 25 Aug 2026 00:54:16 GMT  
		Size: 1.6 MB (1564384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:486d3ba3c942ef59c84282512f80b2a62e3984b41fa9f0c7606eb109d220cdb6`  
		Last Modified: Tue, 25 Aug 2026 00:54:22 GMT  
		Size: 241.2 MB (241207960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:c16a3455f03742681633f198349fd0cd58aa927f794737bf30223da1bf3d7cfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aba995029f103066d2232edbbdbf75f99a8e014e7a248abf04c71b38314ea7e`

```dockerfile
```

-	Layers:
	-	`sha256:d43871fac011fde94132932d67f742430a65d3455337a07535e52bf4c2fef575`  
		Last Modified: Tue, 25 Aug 2026 00:54:16 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; riscv64

```console
$ docker pull dart@sha256:99be761b267dfbf906f904fd6daeee3832e63788a57413f5a4f6c93ee0aa7de5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252702441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73514825b4b078ea4f81e8632e9d89690c3e813113ddc2b31154e3c9acd2ec0e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 22:26:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 22:26:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 22:26:50 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 22:26:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 22:26:50 GMT
WORKDIR /root
# Tue, 18 Aug 2026 22:27:37 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6bb2efad7b400de7c3af4988bd91e3d8eda2d593ad2c2f88b9cebd1ef7f8790`  
		Last Modified: Tue, 18 Aug 2026 22:32:06 GMT  
		Size: 41.6 MB (41593643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752783078d21a6b82d626cf7b37a65dafdce069036b624699a3be72f347b02bb`  
		Last Modified: Tue, 18 Aug 2026 22:31:54 GMT  
		Size: 1.6 MB (1564446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc826e27756eac5f32f825b4750024b4409098c032ac9eb915a69ee1a7f14c8`  
		Last Modified: Tue, 18 Aug 2026 22:32:26 GMT  
		Size: 181.3 MB (181266202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:c9b1f67654a8e81f1f01aa2562603d2e56298d8a8cd1b98706efb885530edbc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9998eddcbd0318ef28c130667784cf9573cd6451493b66ccd9f28dc7a4aad3`

```dockerfile
```

-	Layers:
	-	`sha256:abb1458c9795f17ddd1966aa2f23aedb62043f8bf28eb8aab1ba75b31afece58`  
		Last Modified: Tue, 18 Aug 2026 22:31:53 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:stable-sdk`

```console
$ docker pull dart@sha256:54a0688d298c91b26bde2724bf21ab9cd606f45de0bdf55fe462e5dd6bdd84d1
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
$ docker pull dart@sha256:e2745d479e345441612c97ff25214642820b6be5f8e87a57876b998c3ed68e2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316563639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62e425c3a1681cf0a7ef4329009e402505c9fbcc722b267fc0e03a2d4ce6e829`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:51:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 00:51:25 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 00:51:25 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:51:25 GMT
WORKDIR /root
# Tue, 25 Aug 2026 00:51:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7f2e8af039526de5b0927cf3c3089e11b03fce9992bdc125b52dc3626e1e8d`  
		Last Modified: Tue, 25 Aug 2026 00:52:04 GMT  
		Size: 42.5 MB (42524061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3e7c4974006d405d3af398e0824d1ad33adc7417953ff95bac2ecc62141ca90`  
		Last Modified: Tue, 25 Aug 2026 00:52:02 GMT  
		Size: 1.9 MB (1869786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c3f3e4905e62f509828695f4545aff83d67b525e55db9f687a3213d634e3599`  
		Last Modified: Tue, 25 Aug 2026 00:52:08 GMT  
		Size: 242.4 MB (242377102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:54f22b73d2b8c2b790018984735dac4c5e88d3a9e5e70790e491f331378ce375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c32684b6a44cc3310d915fc8db7ec44bf23b27399c129000fa93acff970a5fb`

```dockerfile
```

-	Layers:
	-	`sha256:14efe922e0fbfcf38ac0d9a6253b61d8a500369a188f6ffb38b6c49bf4125c5b`  
		Last Modified: Tue, 25 Aug 2026 00:52:02 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:6f610168c61872d6b04aaa1e691ad8c5b634bfed5219eb5bb25d8b96f2a5dbcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230463480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25185646e1708ded2bdad306d4711c633ea37312c023989216c380b6801f6280`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 17:02:23 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 17:02:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 17:02:24 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 17:02:24 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:02:24 GMT
WORKDIR /root
# Tue, 18 Aug 2026 17:02:33 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd4c3a74a28f3fd7e03ac5adab8bf22c9cb9195220a9067c0e67609e58a03579`  
		Last Modified: Tue, 18 Aug 2026 17:02:57 GMT  
		Size: 37.5 MB (37512645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ec46a3cf19370cb215a128bcbb6cbf8bf5ef8752e7494b4c651460cff097ff`  
		Last Modified: Tue, 18 Aug 2026 17:02:55 GMT  
		Size: 1.3 MB (1273145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc329da1e94e1c590c084f0cee5343b97486a9b78a8c7c0d24bc763257370ac8`  
		Last Modified: Tue, 18 Aug 2026 17:02:59 GMT  
		Size: 165.5 MB (165471286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:0c0de94d7eeecdba9b8cbbb768901ba37fa5fa6ee2341aa600eabeae1e4d4012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7052617aebe915aa650d2031fe83ad9daa1ba990aad8e4d7ae0be7e6a1ed06d1`

```dockerfile
```

-	Layers:
	-	`sha256:a3f2d569ee91d5c558a83e07bf1d958fa5dcc524ab32faa342f6d1e8eb628596`  
		Last Modified: Tue, 18 Aug 2026 17:02:55 GMT  
		Size: 20.8 KB (20767 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:3f59ee9244026d6e24f61f0cc9b8e017de52ddb5252a65588cb4a93257030fb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315240480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f60a4fc2d32db59c879970e6f4745fc305f7602c1cd5cb480306a11470d10f0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 00:53:35 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:53:35 GMT
WORKDIR /root
# Tue, 25 Aug 2026 00:53:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbdb2d489900ceb8cab76b44f62c2f51c47236ab995104959a46d6a7ffd4e44`  
		Last Modified: Tue, 25 Aug 2026 00:54:18 GMT  
		Size: 42.3 MB (42308522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ab4927890f3af895d2c5b922de44ad5bb833c6f4108f62b11187427b5ef4b4`  
		Last Modified: Tue, 25 Aug 2026 00:54:16 GMT  
		Size: 1.6 MB (1564384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:486d3ba3c942ef59c84282512f80b2a62e3984b41fa9f0c7606eb109d220cdb6`  
		Last Modified: Tue, 25 Aug 2026 00:54:22 GMT  
		Size: 241.2 MB (241207960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:c16a3455f03742681633f198349fd0cd58aa927f794737bf30223da1bf3d7cfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aba995029f103066d2232edbbdbf75f99a8e014e7a248abf04c71b38314ea7e`

```dockerfile
```

-	Layers:
	-	`sha256:d43871fac011fde94132932d67f742430a65d3455337a07535e52bf4c2fef575`  
		Last Modified: Tue, 25 Aug 2026 00:54:16 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:99be761b267dfbf906f904fd6daeee3832e63788a57413f5a4f6c93ee0aa7de5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252702441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73514825b4b078ea4f81e8632e9d89690c3e813113ddc2b31154e3c9acd2ec0e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 22:26:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 22:26:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 22:26:50 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 22:26:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 22:26:50 GMT
WORKDIR /root
# Tue, 18 Aug 2026 22:27:37 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6bb2efad7b400de7c3af4988bd91e3d8eda2d593ad2c2f88b9cebd1ef7f8790`  
		Last Modified: Tue, 18 Aug 2026 22:32:06 GMT  
		Size: 41.6 MB (41593643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752783078d21a6b82d626cf7b37a65dafdce069036b624699a3be72f347b02bb`  
		Last Modified: Tue, 18 Aug 2026 22:31:54 GMT  
		Size: 1.6 MB (1564446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc826e27756eac5f32f825b4750024b4409098c032ac9eb915a69ee1a7f14c8`  
		Last Modified: Tue, 18 Aug 2026 22:32:26 GMT  
		Size: 181.3 MB (181266202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:c9b1f67654a8e81f1f01aa2562603d2e56298d8a8cd1b98706efb885530edbc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9998eddcbd0318ef28c130667784cf9573cd6451493b66ccd9f28dc7a4aad3`

```dockerfile
```

-	Layers:
	-	`sha256:abb1458c9795f17ddd1966aa2f23aedb62043f8bf28eb8aab1ba75b31afece58`  
		Last Modified: Tue, 18 Aug 2026 22:31:53 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json
