## `dart:3-sdk`

```console
$ docker pull dart@sha256:076c19054db5b792e37d2fa0f97a39ed250ba37b87d0d1d3efe3d367f723ec65
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
$ docker pull dart@sha256:3784506017fcf7bd52f9c9d021efdfd60f6ceb2a63eb17c3cf73bfe909910b6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316551638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f70f4a5afa29d1abbb35bb80929e16204228e9335ff9f6962b24d7f9f19ac898`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 17:02:35 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 17:02:35 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 17:02:35 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 17:02:35 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:02:35 GMT
WORKDIR /root
# Tue, 18 Aug 2026 17:02:45 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9328bf8ddbdad1f862e793cd20a987f904acd2c6d806239bd22f2180e49bc9a2`  
		Last Modified: Tue, 18 Aug 2026 17:03:17 GMT  
		Size: 42.5 MB (42524000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4da317a2c627e43b642b8cb4223bfba7e00f91fefe3446c90c7d3ffa7a3f735f`  
		Last Modified: Tue, 18 Aug 2026 17:03:16 GMT  
		Size: 1.9 MB (1869784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a86f7122d955aa58278db3790f555d1198f90bcaff5cb0febd67a8f3f3999cb`  
		Last Modified: Tue, 18 Aug 2026 17:03:22 GMT  
		Size: 242.4 MB (242377057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:836fb3aaec8eeab40b26648305c9d54f5dbbc8589c84113eb1a836c94a53d171
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95f9a966c94557235b9f0cfad01cd7d918ef03583fef960a95a4bfac3512e191`

```dockerfile
```

-	Layers:
	-	`sha256:fb5825589b070e4c2908831ab10ece6008cf29194cd155e9b45b8bb51cac2e17`  
		Last Modified: Tue, 18 Aug 2026 17:03:15 GMT  
		Size: 20.6 KB (20616 bytes)  
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
$ docker pull dart@sha256:b55cb6df7fc66c9c3175169bb33932db0be6fbce5242b099994245ed9db15eb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315224089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68280c73590296be47bff72529891c2c38be22b55a37d19700d6c21f0248e8a2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 17:03:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 17:03:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 17:03:25 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 17:03:25 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:03:25 GMT
WORKDIR /root
# Tue, 18 Aug 2026 17:03:37 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=9251c4606ebb31480c45f430be69fce2697e3b888a0a828b9e16e7d23403d72a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=b17aec791a0930fbe7f3d9bbf870748107ffda99a946f68be940577c116974bf;             SDK_ARCH="arm";;         arm64)             DART_SHA256=5141d5ac62dabfcf0d3dd8fbf5c4d143d0092ef42fad0f25f6cf6587e5cfc3bf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=99242e5e64a2bd070c7fdc9cc422de35435abe1c8bc596de9f7d10dadf6a4a18;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbde58b904b07f340ac4c1b166271a2bf7562246b03aef35badfa5845d727766`  
		Last Modified: Tue, 18 Aug 2026 17:04:09 GMT  
		Size: 42.3 MB (42308179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b1630688ec087ee13b531002b6c29671cef2499ee935d5029afb9b3707168e5`  
		Last Modified: Tue, 18 Aug 2026 17:04:07 GMT  
		Size: 1.6 MB (1564373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4059b6f291cd912c941650dbf0594291342f5608ea7493f9f852425a0d0b0ca6`  
		Last Modified: Tue, 18 Aug 2026 17:04:13 GMT  
		Size: 241.2 MB (241207896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:abc527558fdcef1b0c0be45c752c933fe612b9655cf474723af0b857de22fc26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5c43f9f31c87ca4b34c0624ec4fc56f1ac7091e646d8af58856584d847f050f`

```dockerfile
```

-	Layers:
	-	`sha256:b1268d53bbdf51e1a6c5b7ec05cee830f9037b135c6b39bd860ce87a6b34cbe5`  
		Last Modified: Tue, 18 Aug 2026 17:04:07 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:21d1714e01f02c5e7fa15eab0d01b4d1b01cb4f68b038e00d2386736ac9ff3c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252701652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:271a28690d5cf8482589e2d6c741b68ea03527163e219e1466d07d90bc2c2659`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Thu, 13 Aug 2026 04:31:47 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 04:31:49 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 13 Aug 2026 04:31:49 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 13 Aug 2026 04:31:49 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 04:31:49 GMT
WORKDIR /root
# Thu, 13 Aug 2026 04:32:35 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5881b62e4c98d558d075f4dd5c49e1c5203ce090d95bb6a9b291fcadc0687c0`  
		Last Modified: Thu, 13 Aug 2026 04:37:02 GMT  
		Size: 41.6 MB (41594102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708b4122040098ed8df9e7fa656b0d261c667e1341efbbeefe585d2cf6413ebc`  
		Last Modified: Thu, 13 Aug 2026 04:36:49 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b30b5a0a35c1bc0a77de045cfbf3d786f9c8bd950f0393143bde9d33c1d577d`  
		Last Modified: Thu, 13 Aug 2026 04:37:23 GMT  
		Size: 181.3 MB (181264952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:e70bcef5ea99ef2569ce5c529c0128f948ccfad36bb3258c8f234cf233ea7803
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cafa2e362b9ea75e416c9f455cbf7f985550395546395c7faa952b42dcd4e4ab`

```dockerfile
```

-	Layers:
	-	`sha256:909671d27647ec1974d2be8d9e6cce6dc4a017f51ee431a7ecb2beaacbc184bf`  
		Last Modified: Thu, 13 Aug 2026 04:36:49 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json
