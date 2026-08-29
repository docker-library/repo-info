<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `dart`

-	[`dart:3`](#dart3)
-	[`dart:3-sdk`](#dart3-sdk)
-	[`dart:3.13`](#dart313)
-	[`dart:3.13-sdk`](#dart313-sdk)
-	[`dart:3.13.2`](#dart3132)
-	[`dart:3.13.2-sdk`](#dart3132-sdk)
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
$ docker pull dart@sha256:1f86408456fbcdc5f9c33fa267d3680d86e79c255ec338b9a215459224769770
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
$ docker pull dart@sha256:2544b41c6f7ee596390f21b379d0ddb9d4c1198f164ff0c7faaf206962539805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316551489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e4bc7a1d1f4cc47e4cc605a6afe9411702aa1fe8774f8098b0dd0ef3281bcf0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:14 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:15 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:15 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:15 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:15 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:215dd51dbb686c53ed97cf86641c5b637cd249c25800aed0f2e0322bcbc4cce6`  
		Last Modified: Tue, 25 Aug 2026 17:12:59 GMT  
		Size: 42.5 MB (42524196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811e6a6753efde09b3e9bf962af012ca67a3285020e304b464d8abb2d04f9775`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 1.9 MB (1869786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd189e1087ace44eec13571041664bf8168fe31e52c0dda8d70c1c77dc34424`  
		Last Modified: Tue, 25 Aug 2026 17:13:02 GMT  
		Size: 242.4 MB (242364817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:730dd38bafb097ccc8fb36bb46fb8611eccadebc3b7d3986901ddc4f8d2e1c7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc9dd0c6b255318fdc283d41c971915f66962cda8da69ff0bb3dd9a154cce7ea`

```dockerfile
```

-	Layers:
	-	`sha256:9da347152200bd7ec41bc7534236df97e3bf081d79dfb42fd0b566ee2521bda2`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; arm variant v7

```console
$ docker pull dart@sha256:20de0691a0ee50052ff353589e8c65ed04cf8bb594c9b3cc10145feace0496f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230475180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ff4fb8f751a003b303eb4846f4c89bbfb5a417e4ba287943a0eb18d1fd056e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:15 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:16 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:16 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:16 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c55da37317a4d88dce43c401700b4d258934f535b3e9284caafabe1da0d5af0`  
		Last Modified: Tue, 25 Aug 2026 17:12:51 GMT  
		Size: 37.5 MB (37512715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a47fd8d374e6a090f629f28e5c9ab0c338f690559e30ad5354aee296f2ce80`  
		Last Modified: Tue, 25 Aug 2026 17:12:48 GMT  
		Size: 1.3 MB (1273152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c7898d6aa24b9a8ea912abb75a8c25f152012a595421a11cc18a5939efbd56`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 165.5 MB (165470140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:37a1989adc9891fdad18b14a0debd22263549658d9a3620aea112bfa77c65232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34886f6594bc6b2d5e0f919cfcfa586a45be1185fe2e5f2aee6e9fb060bbe89a`

```dockerfile
```

-	Layers:
	-	`sha256:1d4e672ea2b324d64b2e19ada5604b6e52550b1654a2785e752cea417bf2cb0e`  
		Last Modified: Tue, 25 Aug 2026 17:12:48 GMT  
		Size: 20.8 KB (20768 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee33cb1e72adb04cc85c18b4ae7c98a43d916df4c67d741fe0732ff390f417ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315238786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c55434ce235131fd9392a7185197b3cf9171e75b5e498a3061a58e74fa767c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:12 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:12 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:12 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:12 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df055c98a6afeb806514ab2a8f5ffbe54f2190e642f65d1fb36837633e1f0818`  
		Last Modified: Tue, 25 Aug 2026 17:12:57 GMT  
		Size: 42.3 MB (42308336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0398ed91716e8a85a67741dc897157f6060ba9087ce0bc3fa0d3d31b89502942`  
		Last Modified: Tue, 25 Aug 2026 17:12:55 GMT  
		Size: 1.6 MB (1564375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116c037a84a5f3c9b29358077cc30dea1b515f4858ca7db14d1e2e9312e2cfcf`  
		Last Modified: Tue, 25 Aug 2026 17:13:01 GMT  
		Size: 241.2 MB (241206461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:ccdf94e6ede7340794cf869e78a8c95111648005a636974627a793691840a2bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edf0cb1a139d881546cfef1b5c9ba9299b543d28676e008c265e1439857ea57`

```dockerfile
```

-	Layers:
	-	`sha256:b9e04d3b3efc86e6c833f17d9a1cbd55eb413c051d8f8a277385356cce123ce4`  
		Last Modified: Tue, 25 Aug 2026 17:12:54 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; riscv64

```console
$ docker pull dart@sha256:8690cef468de5ef97dbfc6f4b507dcb991112e1f5cc702739f11cd6d896f2b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255347835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f293dc1b055dc6386224789fdbb2fc76eebf9a5194c28c5d69b4035c31b5b63f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:27:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 00:27:52 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 27 Aug 2026 00:27:52 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 27 Aug 2026 00:27:52 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 00:27:52 GMT
WORKDIR /root
# Sat, 29 Aug 2026 04:55:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de52b89a6376974aa7c3405992c54c5193c4b00bfdc64f847a6e59a5d92d455`  
		Last Modified: Thu, 27 Aug 2026 00:35:29 GMT  
		Size: 44.2 MB (44216001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c22c959b04c7caa75fa98ca9dc502c2910410fd573afc8ae744841d4b52e125`  
		Last Modified: Thu, 27 Aug 2026 00:35:15 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4219c1310fecfbd9f688f17535d7ef2b8b6036984451abec24ca0bbf3dcf8562`  
		Last Modified: Sat, 29 Aug 2026 05:00:34 GMT  
		Size: 181.3 MB (181270891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:e0af6ecb270c99e4194a8a9ab9b66bde1e7bc55980b743f27731fbe895ce0c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0309413f246f7ddbdaf3a12efdb459d78555d403e638ffea0da79822e5360a44`

```dockerfile
```

-	Layers:
	-	`sha256:365c1388cddd8668bc5918d00687bd71ce7495a8b034420ad0f67fde8f3f76a9`  
		Last Modified: Sat, 29 Aug 2026 05:00:09 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3-sdk`

```console
$ docker pull dart@sha256:1f86408456fbcdc5f9c33fa267d3680d86e79c255ec338b9a215459224769770
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
$ docker pull dart@sha256:2544b41c6f7ee596390f21b379d0ddb9d4c1198f164ff0c7faaf206962539805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316551489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e4bc7a1d1f4cc47e4cc605a6afe9411702aa1fe8774f8098b0dd0ef3281bcf0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:14 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:15 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:15 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:15 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:15 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:215dd51dbb686c53ed97cf86641c5b637cd249c25800aed0f2e0322bcbc4cce6`  
		Last Modified: Tue, 25 Aug 2026 17:12:59 GMT  
		Size: 42.5 MB (42524196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811e6a6753efde09b3e9bf962af012ca67a3285020e304b464d8abb2d04f9775`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 1.9 MB (1869786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd189e1087ace44eec13571041664bf8168fe31e52c0dda8d70c1c77dc34424`  
		Last Modified: Tue, 25 Aug 2026 17:13:02 GMT  
		Size: 242.4 MB (242364817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:730dd38bafb097ccc8fb36bb46fb8611eccadebc3b7d3986901ddc4f8d2e1c7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc9dd0c6b255318fdc283d41c971915f66962cda8da69ff0bb3dd9a154cce7ea`

```dockerfile
```

-	Layers:
	-	`sha256:9da347152200bd7ec41bc7534236df97e3bf081d79dfb42fd0b566ee2521bda2`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:20de0691a0ee50052ff353589e8c65ed04cf8bb594c9b3cc10145feace0496f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230475180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ff4fb8f751a003b303eb4846f4c89bbfb5a417e4ba287943a0eb18d1fd056e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:15 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:16 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:16 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:16 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c55da37317a4d88dce43c401700b4d258934f535b3e9284caafabe1da0d5af0`  
		Last Modified: Tue, 25 Aug 2026 17:12:51 GMT  
		Size: 37.5 MB (37512715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a47fd8d374e6a090f629f28e5c9ab0c338f690559e30ad5354aee296f2ce80`  
		Last Modified: Tue, 25 Aug 2026 17:12:48 GMT  
		Size: 1.3 MB (1273152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c7898d6aa24b9a8ea912abb75a8c25f152012a595421a11cc18a5939efbd56`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 165.5 MB (165470140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:37a1989adc9891fdad18b14a0debd22263549658d9a3620aea112bfa77c65232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34886f6594bc6b2d5e0f919cfcfa586a45be1185fe2e5f2aee6e9fb060bbe89a`

```dockerfile
```

-	Layers:
	-	`sha256:1d4e672ea2b324d64b2e19ada5604b6e52550b1654a2785e752cea417bf2cb0e`  
		Last Modified: Tue, 25 Aug 2026 17:12:48 GMT  
		Size: 20.8 KB (20768 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee33cb1e72adb04cc85c18b4ae7c98a43d916df4c67d741fe0732ff390f417ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315238786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c55434ce235131fd9392a7185197b3cf9171e75b5e498a3061a58e74fa767c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:12 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:12 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:12 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:12 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df055c98a6afeb806514ab2a8f5ffbe54f2190e642f65d1fb36837633e1f0818`  
		Last Modified: Tue, 25 Aug 2026 17:12:57 GMT  
		Size: 42.3 MB (42308336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0398ed91716e8a85a67741dc897157f6060ba9087ce0bc3fa0d3d31b89502942`  
		Last Modified: Tue, 25 Aug 2026 17:12:55 GMT  
		Size: 1.6 MB (1564375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116c037a84a5f3c9b29358077cc30dea1b515f4858ca7db14d1e2e9312e2cfcf`  
		Last Modified: Tue, 25 Aug 2026 17:13:01 GMT  
		Size: 241.2 MB (241206461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:ccdf94e6ede7340794cf869e78a8c95111648005a636974627a793691840a2bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edf0cb1a139d881546cfef1b5c9ba9299b543d28676e008c265e1439857ea57`

```dockerfile
```

-	Layers:
	-	`sha256:b9e04d3b3efc86e6c833f17d9a1cbd55eb413c051d8f8a277385356cce123ce4`  
		Last Modified: Tue, 25 Aug 2026 17:12:54 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:8690cef468de5ef97dbfc6f4b507dcb991112e1f5cc702739f11cd6d896f2b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255347835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f293dc1b055dc6386224789fdbb2fc76eebf9a5194c28c5d69b4035c31b5b63f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:27:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 00:27:52 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 27 Aug 2026 00:27:52 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 27 Aug 2026 00:27:52 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 00:27:52 GMT
WORKDIR /root
# Sat, 29 Aug 2026 04:55:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de52b89a6376974aa7c3405992c54c5193c4b00bfdc64f847a6e59a5d92d455`  
		Last Modified: Thu, 27 Aug 2026 00:35:29 GMT  
		Size: 44.2 MB (44216001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c22c959b04c7caa75fa98ca9dc502c2910410fd573afc8ae744841d4b52e125`  
		Last Modified: Thu, 27 Aug 2026 00:35:15 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4219c1310fecfbd9f688f17535d7ef2b8b6036984451abec24ca0bbf3dcf8562`  
		Last Modified: Sat, 29 Aug 2026 05:00:34 GMT  
		Size: 181.3 MB (181270891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:e0af6ecb270c99e4194a8a9ab9b66bde1e7bc55980b743f27731fbe895ce0c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0309413f246f7ddbdaf3a12efdb459d78555d403e638ffea0da79822e5360a44`

```dockerfile
```

-	Layers:
	-	`sha256:365c1388cddd8668bc5918d00687bd71ce7495a8b034420ad0f67fde8f3f76a9`  
		Last Modified: Sat, 29 Aug 2026 05:00:09 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13`

```console
$ docker pull dart@sha256:1f86408456fbcdc5f9c33fa267d3680d86e79c255ec338b9a215459224769770
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
$ docker pull dart@sha256:2544b41c6f7ee596390f21b379d0ddb9d4c1198f164ff0c7faaf206962539805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316551489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e4bc7a1d1f4cc47e4cc605a6afe9411702aa1fe8774f8098b0dd0ef3281bcf0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:14 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:15 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:15 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:15 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:15 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:215dd51dbb686c53ed97cf86641c5b637cd249c25800aed0f2e0322bcbc4cce6`  
		Last Modified: Tue, 25 Aug 2026 17:12:59 GMT  
		Size: 42.5 MB (42524196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811e6a6753efde09b3e9bf962af012ca67a3285020e304b464d8abb2d04f9775`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 1.9 MB (1869786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd189e1087ace44eec13571041664bf8168fe31e52c0dda8d70c1c77dc34424`  
		Last Modified: Tue, 25 Aug 2026 17:13:02 GMT  
		Size: 242.4 MB (242364817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:730dd38bafb097ccc8fb36bb46fb8611eccadebc3b7d3986901ddc4f8d2e1c7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc9dd0c6b255318fdc283d41c971915f66962cda8da69ff0bb3dd9a154cce7ea`

```dockerfile
```

-	Layers:
	-	`sha256:9da347152200bd7ec41bc7534236df97e3bf081d79dfb42fd0b566ee2521bda2`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13` - linux; arm variant v7

```console
$ docker pull dart@sha256:20de0691a0ee50052ff353589e8c65ed04cf8bb594c9b3cc10145feace0496f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230475180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ff4fb8f751a003b303eb4846f4c89bbfb5a417e4ba287943a0eb18d1fd056e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:15 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:16 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:16 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:16 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c55da37317a4d88dce43c401700b4d258934f535b3e9284caafabe1da0d5af0`  
		Last Modified: Tue, 25 Aug 2026 17:12:51 GMT  
		Size: 37.5 MB (37512715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a47fd8d374e6a090f629f28e5c9ab0c338f690559e30ad5354aee296f2ce80`  
		Last Modified: Tue, 25 Aug 2026 17:12:48 GMT  
		Size: 1.3 MB (1273152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c7898d6aa24b9a8ea912abb75a8c25f152012a595421a11cc18a5939efbd56`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 165.5 MB (165470140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:37a1989adc9891fdad18b14a0debd22263549658d9a3620aea112bfa77c65232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34886f6594bc6b2d5e0f919cfcfa586a45be1185fe2e5f2aee6e9fb060bbe89a`

```dockerfile
```

-	Layers:
	-	`sha256:1d4e672ea2b324d64b2e19ada5604b6e52550b1654a2785e752cea417bf2cb0e`  
		Last Modified: Tue, 25 Aug 2026 17:12:48 GMT  
		Size: 20.8 KB (20768 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee33cb1e72adb04cc85c18b4ae7c98a43d916df4c67d741fe0732ff390f417ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315238786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c55434ce235131fd9392a7185197b3cf9171e75b5e498a3061a58e74fa767c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:12 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:12 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:12 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:12 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df055c98a6afeb806514ab2a8f5ffbe54f2190e642f65d1fb36837633e1f0818`  
		Last Modified: Tue, 25 Aug 2026 17:12:57 GMT  
		Size: 42.3 MB (42308336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0398ed91716e8a85a67741dc897157f6060ba9087ce0bc3fa0d3d31b89502942`  
		Last Modified: Tue, 25 Aug 2026 17:12:55 GMT  
		Size: 1.6 MB (1564375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116c037a84a5f3c9b29358077cc30dea1b515f4858ca7db14d1e2e9312e2cfcf`  
		Last Modified: Tue, 25 Aug 2026 17:13:01 GMT  
		Size: 241.2 MB (241206461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:ccdf94e6ede7340794cf869e78a8c95111648005a636974627a793691840a2bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edf0cb1a139d881546cfef1b5c9ba9299b543d28676e008c265e1439857ea57`

```dockerfile
```

-	Layers:
	-	`sha256:b9e04d3b3efc86e6c833f17d9a1cbd55eb413c051d8f8a277385356cce123ce4`  
		Last Modified: Tue, 25 Aug 2026 17:12:54 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13` - linux; riscv64

```console
$ docker pull dart@sha256:8690cef468de5ef97dbfc6f4b507dcb991112e1f5cc702739f11cd6d896f2b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255347835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f293dc1b055dc6386224789fdbb2fc76eebf9a5194c28c5d69b4035c31b5b63f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:27:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 00:27:52 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 27 Aug 2026 00:27:52 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 27 Aug 2026 00:27:52 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 00:27:52 GMT
WORKDIR /root
# Sat, 29 Aug 2026 04:55:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de52b89a6376974aa7c3405992c54c5193c4b00bfdc64f847a6e59a5d92d455`  
		Last Modified: Thu, 27 Aug 2026 00:35:29 GMT  
		Size: 44.2 MB (44216001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c22c959b04c7caa75fa98ca9dc502c2910410fd573afc8ae744841d4b52e125`  
		Last Modified: Thu, 27 Aug 2026 00:35:15 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4219c1310fecfbd9f688f17535d7ef2b8b6036984451abec24ca0bbf3dcf8562`  
		Last Modified: Sat, 29 Aug 2026 05:00:34 GMT  
		Size: 181.3 MB (181270891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:e0af6ecb270c99e4194a8a9ab9b66bde1e7bc55980b743f27731fbe895ce0c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0309413f246f7ddbdaf3a12efdb459d78555d403e638ffea0da79822e5360a44`

```dockerfile
```

-	Layers:
	-	`sha256:365c1388cddd8668bc5918d00687bd71ce7495a8b034420ad0f67fde8f3f76a9`  
		Last Modified: Sat, 29 Aug 2026 05:00:09 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13-sdk`

```console
$ docker pull dart@sha256:1f86408456fbcdc5f9c33fa267d3680d86e79c255ec338b9a215459224769770
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
$ docker pull dart@sha256:2544b41c6f7ee596390f21b379d0ddb9d4c1198f164ff0c7faaf206962539805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316551489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e4bc7a1d1f4cc47e4cc605a6afe9411702aa1fe8774f8098b0dd0ef3281bcf0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:14 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:15 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:15 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:15 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:15 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:215dd51dbb686c53ed97cf86641c5b637cd249c25800aed0f2e0322bcbc4cce6`  
		Last Modified: Tue, 25 Aug 2026 17:12:59 GMT  
		Size: 42.5 MB (42524196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811e6a6753efde09b3e9bf962af012ca67a3285020e304b464d8abb2d04f9775`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 1.9 MB (1869786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd189e1087ace44eec13571041664bf8168fe31e52c0dda8d70c1c77dc34424`  
		Last Modified: Tue, 25 Aug 2026 17:13:02 GMT  
		Size: 242.4 MB (242364817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:730dd38bafb097ccc8fb36bb46fb8611eccadebc3b7d3986901ddc4f8d2e1c7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc9dd0c6b255318fdc283d41c971915f66962cda8da69ff0bb3dd9a154cce7ea`

```dockerfile
```

-	Layers:
	-	`sha256:9da347152200bd7ec41bc7534236df97e3bf081d79dfb42fd0b566ee2521bda2`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:20de0691a0ee50052ff353589e8c65ed04cf8bb594c9b3cc10145feace0496f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230475180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ff4fb8f751a003b303eb4846f4c89bbfb5a417e4ba287943a0eb18d1fd056e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:15 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:16 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:16 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:16 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c55da37317a4d88dce43c401700b4d258934f535b3e9284caafabe1da0d5af0`  
		Last Modified: Tue, 25 Aug 2026 17:12:51 GMT  
		Size: 37.5 MB (37512715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a47fd8d374e6a090f629f28e5c9ab0c338f690559e30ad5354aee296f2ce80`  
		Last Modified: Tue, 25 Aug 2026 17:12:48 GMT  
		Size: 1.3 MB (1273152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c7898d6aa24b9a8ea912abb75a8c25f152012a595421a11cc18a5939efbd56`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 165.5 MB (165470140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:37a1989adc9891fdad18b14a0debd22263549658d9a3620aea112bfa77c65232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34886f6594bc6b2d5e0f919cfcfa586a45be1185fe2e5f2aee6e9fb060bbe89a`

```dockerfile
```

-	Layers:
	-	`sha256:1d4e672ea2b324d64b2e19ada5604b6e52550b1654a2785e752cea417bf2cb0e`  
		Last Modified: Tue, 25 Aug 2026 17:12:48 GMT  
		Size: 20.8 KB (20768 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee33cb1e72adb04cc85c18b4ae7c98a43d916df4c67d741fe0732ff390f417ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315238786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c55434ce235131fd9392a7185197b3cf9171e75b5e498a3061a58e74fa767c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:12 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:12 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:12 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:12 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df055c98a6afeb806514ab2a8f5ffbe54f2190e642f65d1fb36837633e1f0818`  
		Last Modified: Tue, 25 Aug 2026 17:12:57 GMT  
		Size: 42.3 MB (42308336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0398ed91716e8a85a67741dc897157f6060ba9087ce0bc3fa0d3d31b89502942`  
		Last Modified: Tue, 25 Aug 2026 17:12:55 GMT  
		Size: 1.6 MB (1564375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116c037a84a5f3c9b29358077cc30dea1b515f4858ca7db14d1e2e9312e2cfcf`  
		Last Modified: Tue, 25 Aug 2026 17:13:01 GMT  
		Size: 241.2 MB (241206461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:ccdf94e6ede7340794cf869e78a8c95111648005a636974627a793691840a2bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edf0cb1a139d881546cfef1b5c9ba9299b543d28676e008c265e1439857ea57`

```dockerfile
```

-	Layers:
	-	`sha256:b9e04d3b3efc86e6c833f17d9a1cbd55eb413c051d8f8a277385356cce123ce4`  
		Last Modified: Tue, 25 Aug 2026 17:12:54 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:8690cef468de5ef97dbfc6f4b507dcb991112e1f5cc702739f11cd6d896f2b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255347835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f293dc1b055dc6386224789fdbb2fc76eebf9a5194c28c5d69b4035c31b5b63f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:27:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 00:27:52 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 27 Aug 2026 00:27:52 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 27 Aug 2026 00:27:52 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 00:27:52 GMT
WORKDIR /root
# Sat, 29 Aug 2026 04:55:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de52b89a6376974aa7c3405992c54c5193c4b00bfdc64f847a6e59a5d92d455`  
		Last Modified: Thu, 27 Aug 2026 00:35:29 GMT  
		Size: 44.2 MB (44216001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c22c959b04c7caa75fa98ca9dc502c2910410fd573afc8ae744841d4b52e125`  
		Last Modified: Thu, 27 Aug 2026 00:35:15 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4219c1310fecfbd9f688f17535d7ef2b8b6036984451abec24ca0bbf3dcf8562`  
		Last Modified: Sat, 29 Aug 2026 05:00:34 GMT  
		Size: 181.3 MB (181270891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:e0af6ecb270c99e4194a8a9ab9b66bde1e7bc55980b743f27731fbe895ce0c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0309413f246f7ddbdaf3a12efdb459d78555d403e638ffea0da79822e5360a44`

```dockerfile
```

-	Layers:
	-	`sha256:365c1388cddd8668bc5918d00687bd71ce7495a8b034420ad0f67fde8f3f76a9`  
		Last Modified: Sat, 29 Aug 2026 05:00:09 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13.2`

```console
$ docker pull dart@sha256:1f86408456fbcdc5f9c33fa267d3680d86e79c255ec338b9a215459224769770
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

### `dart:3.13.2` - linux; amd64

```console
$ docker pull dart@sha256:2544b41c6f7ee596390f21b379d0ddb9d4c1198f164ff0c7faaf206962539805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316551489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e4bc7a1d1f4cc47e4cc605a6afe9411702aa1fe8774f8098b0dd0ef3281bcf0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:14 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:15 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:15 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:15 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:15 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:215dd51dbb686c53ed97cf86641c5b637cd249c25800aed0f2e0322bcbc4cce6`  
		Last Modified: Tue, 25 Aug 2026 17:12:59 GMT  
		Size: 42.5 MB (42524196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811e6a6753efde09b3e9bf962af012ca67a3285020e304b464d8abb2d04f9775`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 1.9 MB (1869786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd189e1087ace44eec13571041664bf8168fe31e52c0dda8d70c1c77dc34424`  
		Last Modified: Tue, 25 Aug 2026 17:13:02 GMT  
		Size: 242.4 MB (242364817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.2` - unknown; unknown

```console
$ docker pull dart@sha256:730dd38bafb097ccc8fb36bb46fb8611eccadebc3b7d3986901ddc4f8d2e1c7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc9dd0c6b255318fdc283d41c971915f66962cda8da69ff0bb3dd9a154cce7ea`

```dockerfile
```

-	Layers:
	-	`sha256:9da347152200bd7ec41bc7534236df97e3bf081d79dfb42fd0b566ee2521bda2`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.2` - linux; arm variant v7

```console
$ docker pull dart@sha256:20de0691a0ee50052ff353589e8c65ed04cf8bb594c9b3cc10145feace0496f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230475180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ff4fb8f751a003b303eb4846f4c89bbfb5a417e4ba287943a0eb18d1fd056e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:15 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:16 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:16 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:16 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c55da37317a4d88dce43c401700b4d258934f535b3e9284caafabe1da0d5af0`  
		Last Modified: Tue, 25 Aug 2026 17:12:51 GMT  
		Size: 37.5 MB (37512715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a47fd8d374e6a090f629f28e5c9ab0c338f690559e30ad5354aee296f2ce80`  
		Last Modified: Tue, 25 Aug 2026 17:12:48 GMT  
		Size: 1.3 MB (1273152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c7898d6aa24b9a8ea912abb75a8c25f152012a595421a11cc18a5939efbd56`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 165.5 MB (165470140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.2` - unknown; unknown

```console
$ docker pull dart@sha256:37a1989adc9891fdad18b14a0debd22263549658d9a3620aea112bfa77c65232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34886f6594bc6b2d5e0f919cfcfa586a45be1185fe2e5f2aee6e9fb060bbe89a`

```dockerfile
```

-	Layers:
	-	`sha256:1d4e672ea2b324d64b2e19ada5604b6e52550b1654a2785e752cea417bf2cb0e`  
		Last Modified: Tue, 25 Aug 2026 17:12:48 GMT  
		Size: 20.8 KB (20768 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.2` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee33cb1e72adb04cc85c18b4ae7c98a43d916df4c67d741fe0732ff390f417ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315238786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c55434ce235131fd9392a7185197b3cf9171e75b5e498a3061a58e74fa767c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:12 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:12 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:12 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:12 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df055c98a6afeb806514ab2a8f5ffbe54f2190e642f65d1fb36837633e1f0818`  
		Last Modified: Tue, 25 Aug 2026 17:12:57 GMT  
		Size: 42.3 MB (42308336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0398ed91716e8a85a67741dc897157f6060ba9087ce0bc3fa0d3d31b89502942`  
		Last Modified: Tue, 25 Aug 2026 17:12:55 GMT  
		Size: 1.6 MB (1564375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116c037a84a5f3c9b29358077cc30dea1b515f4858ca7db14d1e2e9312e2cfcf`  
		Last Modified: Tue, 25 Aug 2026 17:13:01 GMT  
		Size: 241.2 MB (241206461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.2` - unknown; unknown

```console
$ docker pull dart@sha256:ccdf94e6ede7340794cf869e78a8c95111648005a636974627a793691840a2bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edf0cb1a139d881546cfef1b5c9ba9299b543d28676e008c265e1439857ea57`

```dockerfile
```

-	Layers:
	-	`sha256:b9e04d3b3efc86e6c833f17d9a1cbd55eb413c051d8f8a277385356cce123ce4`  
		Last Modified: Tue, 25 Aug 2026 17:12:54 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.2` - linux; riscv64

```console
$ docker pull dart@sha256:8690cef468de5ef97dbfc6f4b507dcb991112e1f5cc702739f11cd6d896f2b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255347835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f293dc1b055dc6386224789fdbb2fc76eebf9a5194c28c5d69b4035c31b5b63f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:27:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 00:27:52 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 27 Aug 2026 00:27:52 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 27 Aug 2026 00:27:52 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 00:27:52 GMT
WORKDIR /root
# Sat, 29 Aug 2026 04:55:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de52b89a6376974aa7c3405992c54c5193c4b00bfdc64f847a6e59a5d92d455`  
		Last Modified: Thu, 27 Aug 2026 00:35:29 GMT  
		Size: 44.2 MB (44216001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c22c959b04c7caa75fa98ca9dc502c2910410fd573afc8ae744841d4b52e125`  
		Last Modified: Thu, 27 Aug 2026 00:35:15 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4219c1310fecfbd9f688f17535d7ef2b8b6036984451abec24ca0bbf3dcf8562`  
		Last Modified: Sat, 29 Aug 2026 05:00:34 GMT  
		Size: 181.3 MB (181270891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.2` - unknown; unknown

```console
$ docker pull dart@sha256:e0af6ecb270c99e4194a8a9ab9b66bde1e7bc55980b743f27731fbe895ce0c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0309413f246f7ddbdaf3a12efdb459d78555d403e638ffea0da79822e5360a44`

```dockerfile
```

-	Layers:
	-	`sha256:365c1388cddd8668bc5918d00687bd71ce7495a8b034420ad0f67fde8f3f76a9`  
		Last Modified: Sat, 29 Aug 2026 05:00:09 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13.2-sdk`

```console
$ docker pull dart@sha256:1f86408456fbcdc5f9c33fa267d3680d86e79c255ec338b9a215459224769770
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

### `dart:3.13.2-sdk` - linux; amd64

```console
$ docker pull dart@sha256:2544b41c6f7ee596390f21b379d0ddb9d4c1198f164ff0c7faaf206962539805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316551489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e4bc7a1d1f4cc47e4cc605a6afe9411702aa1fe8774f8098b0dd0ef3281bcf0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:14 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:15 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:15 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:15 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:15 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:215dd51dbb686c53ed97cf86641c5b637cd249c25800aed0f2e0322bcbc4cce6`  
		Last Modified: Tue, 25 Aug 2026 17:12:59 GMT  
		Size: 42.5 MB (42524196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811e6a6753efde09b3e9bf962af012ca67a3285020e304b464d8abb2d04f9775`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 1.9 MB (1869786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd189e1087ace44eec13571041664bf8168fe31e52c0dda8d70c1c77dc34424`  
		Last Modified: Tue, 25 Aug 2026 17:13:02 GMT  
		Size: 242.4 MB (242364817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.2-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:730dd38bafb097ccc8fb36bb46fb8611eccadebc3b7d3986901ddc4f8d2e1c7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc9dd0c6b255318fdc283d41c971915f66962cda8da69ff0bb3dd9a154cce7ea`

```dockerfile
```

-	Layers:
	-	`sha256:9da347152200bd7ec41bc7534236df97e3bf081d79dfb42fd0b566ee2521bda2`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.2-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:20de0691a0ee50052ff353589e8c65ed04cf8bb594c9b3cc10145feace0496f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230475180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ff4fb8f751a003b303eb4846f4c89bbfb5a417e4ba287943a0eb18d1fd056e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:15 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:16 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:16 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:16 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c55da37317a4d88dce43c401700b4d258934f535b3e9284caafabe1da0d5af0`  
		Last Modified: Tue, 25 Aug 2026 17:12:51 GMT  
		Size: 37.5 MB (37512715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a47fd8d374e6a090f629f28e5c9ab0c338f690559e30ad5354aee296f2ce80`  
		Last Modified: Tue, 25 Aug 2026 17:12:48 GMT  
		Size: 1.3 MB (1273152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c7898d6aa24b9a8ea912abb75a8c25f152012a595421a11cc18a5939efbd56`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 165.5 MB (165470140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.2-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:37a1989adc9891fdad18b14a0debd22263549658d9a3620aea112bfa77c65232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34886f6594bc6b2d5e0f919cfcfa586a45be1185fe2e5f2aee6e9fb060bbe89a`

```dockerfile
```

-	Layers:
	-	`sha256:1d4e672ea2b324d64b2e19ada5604b6e52550b1654a2785e752cea417bf2cb0e`  
		Last Modified: Tue, 25 Aug 2026 17:12:48 GMT  
		Size: 20.8 KB (20768 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.2-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee33cb1e72adb04cc85c18b4ae7c98a43d916df4c67d741fe0732ff390f417ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315238786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c55434ce235131fd9392a7185197b3cf9171e75b5e498a3061a58e74fa767c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:12 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:12 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:12 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:12 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df055c98a6afeb806514ab2a8f5ffbe54f2190e642f65d1fb36837633e1f0818`  
		Last Modified: Tue, 25 Aug 2026 17:12:57 GMT  
		Size: 42.3 MB (42308336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0398ed91716e8a85a67741dc897157f6060ba9087ce0bc3fa0d3d31b89502942`  
		Last Modified: Tue, 25 Aug 2026 17:12:55 GMT  
		Size: 1.6 MB (1564375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116c037a84a5f3c9b29358077cc30dea1b515f4858ca7db14d1e2e9312e2cfcf`  
		Last Modified: Tue, 25 Aug 2026 17:13:01 GMT  
		Size: 241.2 MB (241206461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.2-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:ccdf94e6ede7340794cf869e78a8c95111648005a636974627a793691840a2bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edf0cb1a139d881546cfef1b5c9ba9299b543d28676e008c265e1439857ea57`

```dockerfile
```

-	Layers:
	-	`sha256:b9e04d3b3efc86e6c833f17d9a1cbd55eb413c051d8f8a277385356cce123ce4`  
		Last Modified: Tue, 25 Aug 2026 17:12:54 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.2-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:8690cef468de5ef97dbfc6f4b507dcb991112e1f5cc702739f11cd6d896f2b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255347835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f293dc1b055dc6386224789fdbb2fc76eebf9a5194c28c5d69b4035c31b5b63f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:27:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 00:27:52 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 27 Aug 2026 00:27:52 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 27 Aug 2026 00:27:52 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 00:27:52 GMT
WORKDIR /root
# Sat, 29 Aug 2026 04:55:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de52b89a6376974aa7c3405992c54c5193c4b00bfdc64f847a6e59a5d92d455`  
		Last Modified: Thu, 27 Aug 2026 00:35:29 GMT  
		Size: 44.2 MB (44216001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c22c959b04c7caa75fa98ca9dc502c2910410fd573afc8ae744841d4b52e125`  
		Last Modified: Thu, 27 Aug 2026 00:35:15 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4219c1310fecfbd9f688f17535d7ef2b8b6036984451abec24ca0bbf3dcf8562`  
		Last Modified: Sat, 29 Aug 2026 05:00:34 GMT  
		Size: 181.3 MB (181270891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.2-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:e0af6ecb270c99e4194a8a9ab9b66bde1e7bc55980b743f27731fbe895ce0c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0309413f246f7ddbdaf3a12efdb459d78555d403e638ffea0da79822e5360a44`

```dockerfile
```

-	Layers:
	-	`sha256:365c1388cddd8668bc5918d00687bd71ce7495a8b034420ad0f67fde8f3f76a9`  
		Last Modified: Sat, 29 Aug 2026 05:00:09 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.14.0-95.2.beta`

```console
$ docker pull dart@sha256:fa6962c2da809b8cd29a29d83ca8c164e559db64a2c4d0e1d98024caca886616
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
$ docker pull dart@sha256:e37f7fdc86cd497fee68fc3291c77f01b73a04688246253377beed62e652a23d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254898445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48bd1f839ee36ab7aff5c2b62e9f93e31d93145c99c7246157ee448f6e0bb0d6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:33:18 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:33:18 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 01:33:18 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 01:33:18 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:33:18 GMT
WORKDIR /root
# Tue, 25 Aug 2026 01:33:28 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8cd9bf0f283d5c4612a0622124a89183457fcb8eb8d7c2929fb85bafd3c03ac3;             SDK_ARCH="x64";;         armhf)             DART_SHA256=3ca78a19eede87996c57af245979e9114a13a477cc0c71379e8bfa9a628b6e83;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d9f535f8913762f3d716a6f2a69f485bc846ff79d0455497ce1844a795c9a443;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=cf76b79d0ea95f1e3986597c62d11b1aa6eee955f02b8379d721259097fb1f8d;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6203a6c451e9386556c12f818752da98e049ad3e482bf6efa5064d1bdf67d34`  
		Last Modified: Tue, 25 Aug 2026 01:33:52 GMT  
		Size: 37.5 MB (37512837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc3323faad3ece6e1a2614b1d03a67fae09b4d82124317d54128ecc996bf5ca9`  
		Last Modified: Tue, 25 Aug 2026 01:33:50 GMT  
		Size: 1.3 MB (1273146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c2560af5431de3616d8d81d3e5aff90a2bb1ec7f81f4d689977c23f1aee9832`  
		Last Modified: Tue, 25 Aug 2026 01:33:55 GMT  
		Size: 189.9 MB (189893289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-95.2.beta` - unknown; unknown

```console
$ docker pull dart@sha256:6636f09c1bef776853cab17e997898d250138702f40b5a6a90d4cef88f45d78e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b53708bf5232f319edba76a3a141e24e104c66b8ac81b02e807d6442ef3aca7`

```dockerfile
```

-	Layers:
	-	`sha256:c7ffde4e821ff739adf18d40018aad80e03e1db0e2666c63be40c42a506b296e`  
		Last Modified: Tue, 25 Aug 2026 01:33:50 GMT  
		Size: 19.0 KB (19024 bytes)  
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
$ docker pull dart@sha256:105838ca7361844f8c00cab2bb96c23fc3e4c8c862e4284853c4aa9870254103
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.5 MB (341525648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:736242a0f17a904995615dbbba804edcf7c5622ecb741c6600cfb9b48254999e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:27:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 00:27:52 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 27 Aug 2026 00:27:52 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 27 Aug 2026 00:27:52 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 00:27:52 GMT
WORKDIR /root
# Thu, 27 Aug 2026 00:29:05 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8cd9bf0f283d5c4612a0622124a89183457fcb8eb8d7c2929fb85bafd3c03ac3;             SDK_ARCH="x64";;         armhf)             DART_SHA256=3ca78a19eede87996c57af245979e9114a13a477cc0c71379e8bfa9a628b6e83;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d9f535f8913762f3d716a6f2a69f485bc846ff79d0455497ce1844a795c9a443;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=cf76b79d0ea95f1e3986597c62d11b1aa6eee955f02b8379d721259097fb1f8d;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de52b89a6376974aa7c3405992c54c5193c4b00bfdc64f847a6e59a5d92d455`  
		Last Modified: Thu, 27 Aug 2026 00:35:29 GMT  
		Size: 44.2 MB (44216001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c22c959b04c7caa75fa98ca9dc502c2910410fd573afc8ae744841d4b52e125`  
		Last Modified: Thu, 27 Aug 2026 00:35:15 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577f5daa2b0ed910e651f5b4a1f20701f7f4b05680f0d931772bfb87bfa12be1`  
		Last Modified: Thu, 27 Aug 2026 00:36:01 GMT  
		Size: 267.4 MB (267448704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-95.2.beta` - unknown; unknown

```console
$ docker pull dart@sha256:e438d4c292c320b73130c1812901460091bdc6f09d04346f03ee49cd859daf31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afc8c903fd84149727ab10035dde1dee45485c0e7ba0ffce8896497194cd87f8`

```dockerfile
```

-	Layers:
	-	`sha256:742a0a4f3da4bc35a386ce7eff46e0b08540fec24cab3f8e2dee6c74ab562155`  
		Last Modified: Thu, 27 Aug 2026 00:35:15 GMT  
		Size: 19.0 KB (18966 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.14.0-95.2.beta-sdk`

```console
$ docker pull dart@sha256:fa6962c2da809b8cd29a29d83ca8c164e559db64a2c4d0e1d98024caca886616
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
$ docker pull dart@sha256:e37f7fdc86cd497fee68fc3291c77f01b73a04688246253377beed62e652a23d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254898445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48bd1f839ee36ab7aff5c2b62e9f93e31d93145c99c7246157ee448f6e0bb0d6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:33:18 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:33:18 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 01:33:18 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 01:33:18 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:33:18 GMT
WORKDIR /root
# Tue, 25 Aug 2026 01:33:28 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8cd9bf0f283d5c4612a0622124a89183457fcb8eb8d7c2929fb85bafd3c03ac3;             SDK_ARCH="x64";;         armhf)             DART_SHA256=3ca78a19eede87996c57af245979e9114a13a477cc0c71379e8bfa9a628b6e83;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d9f535f8913762f3d716a6f2a69f485bc846ff79d0455497ce1844a795c9a443;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=cf76b79d0ea95f1e3986597c62d11b1aa6eee955f02b8379d721259097fb1f8d;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6203a6c451e9386556c12f818752da98e049ad3e482bf6efa5064d1bdf67d34`  
		Last Modified: Tue, 25 Aug 2026 01:33:52 GMT  
		Size: 37.5 MB (37512837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc3323faad3ece6e1a2614b1d03a67fae09b4d82124317d54128ecc996bf5ca9`  
		Last Modified: Tue, 25 Aug 2026 01:33:50 GMT  
		Size: 1.3 MB (1273146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c2560af5431de3616d8d81d3e5aff90a2bb1ec7f81f4d689977c23f1aee9832`  
		Last Modified: Tue, 25 Aug 2026 01:33:55 GMT  
		Size: 189.9 MB (189893289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-95.2.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:6636f09c1bef776853cab17e997898d250138702f40b5a6a90d4cef88f45d78e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b53708bf5232f319edba76a3a141e24e104c66b8ac81b02e807d6442ef3aca7`

```dockerfile
```

-	Layers:
	-	`sha256:c7ffde4e821ff739adf18d40018aad80e03e1db0e2666c63be40c42a506b296e`  
		Last Modified: Tue, 25 Aug 2026 01:33:50 GMT  
		Size: 19.0 KB (19024 bytes)  
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
$ docker pull dart@sha256:105838ca7361844f8c00cab2bb96c23fc3e4c8c862e4284853c4aa9870254103
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.5 MB (341525648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:736242a0f17a904995615dbbba804edcf7c5622ecb741c6600cfb9b48254999e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:27:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 00:27:52 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 27 Aug 2026 00:27:52 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 27 Aug 2026 00:27:52 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 00:27:52 GMT
WORKDIR /root
# Thu, 27 Aug 2026 00:29:05 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8cd9bf0f283d5c4612a0622124a89183457fcb8eb8d7c2929fb85bafd3c03ac3;             SDK_ARCH="x64";;         armhf)             DART_SHA256=3ca78a19eede87996c57af245979e9114a13a477cc0c71379e8bfa9a628b6e83;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d9f535f8913762f3d716a6f2a69f485bc846ff79d0455497ce1844a795c9a443;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=cf76b79d0ea95f1e3986597c62d11b1aa6eee955f02b8379d721259097fb1f8d;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de52b89a6376974aa7c3405992c54c5193c4b00bfdc64f847a6e59a5d92d455`  
		Last Modified: Thu, 27 Aug 2026 00:35:29 GMT  
		Size: 44.2 MB (44216001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c22c959b04c7caa75fa98ca9dc502c2910410fd573afc8ae744841d4b52e125`  
		Last Modified: Thu, 27 Aug 2026 00:35:15 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577f5daa2b0ed910e651f5b4a1f20701f7f4b05680f0d931772bfb87bfa12be1`  
		Last Modified: Thu, 27 Aug 2026 00:36:01 GMT  
		Size: 267.4 MB (267448704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-95.2.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:e438d4c292c320b73130c1812901460091bdc6f09d04346f03ee49cd859daf31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afc8c903fd84149727ab10035dde1dee45485c0e7ba0ffce8896497194cd87f8`

```dockerfile
```

-	Layers:
	-	`sha256:742a0a4f3da4bc35a386ce7eff46e0b08540fec24cab3f8e2dee6c74ab562155`  
		Last Modified: Thu, 27 Aug 2026 00:35:15 GMT  
		Size: 19.0 KB (18966 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:beta`

```console
$ docker pull dart@sha256:fa6962c2da809b8cd29a29d83ca8c164e559db64a2c4d0e1d98024caca886616
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
$ docker pull dart@sha256:e37f7fdc86cd497fee68fc3291c77f01b73a04688246253377beed62e652a23d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254898445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48bd1f839ee36ab7aff5c2b62e9f93e31d93145c99c7246157ee448f6e0bb0d6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:33:18 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:33:18 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 01:33:18 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 01:33:18 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:33:18 GMT
WORKDIR /root
# Tue, 25 Aug 2026 01:33:28 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8cd9bf0f283d5c4612a0622124a89183457fcb8eb8d7c2929fb85bafd3c03ac3;             SDK_ARCH="x64";;         armhf)             DART_SHA256=3ca78a19eede87996c57af245979e9114a13a477cc0c71379e8bfa9a628b6e83;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d9f535f8913762f3d716a6f2a69f485bc846ff79d0455497ce1844a795c9a443;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=cf76b79d0ea95f1e3986597c62d11b1aa6eee955f02b8379d721259097fb1f8d;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6203a6c451e9386556c12f818752da98e049ad3e482bf6efa5064d1bdf67d34`  
		Last Modified: Tue, 25 Aug 2026 01:33:52 GMT  
		Size: 37.5 MB (37512837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc3323faad3ece6e1a2614b1d03a67fae09b4d82124317d54128ecc996bf5ca9`  
		Last Modified: Tue, 25 Aug 2026 01:33:50 GMT  
		Size: 1.3 MB (1273146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c2560af5431de3616d8d81d3e5aff90a2bb1ec7f81f4d689977c23f1aee9832`  
		Last Modified: Tue, 25 Aug 2026 01:33:55 GMT  
		Size: 189.9 MB (189893289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:6636f09c1bef776853cab17e997898d250138702f40b5a6a90d4cef88f45d78e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b53708bf5232f319edba76a3a141e24e104c66b8ac81b02e807d6442ef3aca7`

```dockerfile
```

-	Layers:
	-	`sha256:c7ffde4e821ff739adf18d40018aad80e03e1db0e2666c63be40c42a506b296e`  
		Last Modified: Tue, 25 Aug 2026 01:33:50 GMT  
		Size: 19.0 KB (19024 bytes)  
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
$ docker pull dart@sha256:105838ca7361844f8c00cab2bb96c23fc3e4c8c862e4284853c4aa9870254103
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.5 MB (341525648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:736242a0f17a904995615dbbba804edcf7c5622ecb741c6600cfb9b48254999e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:27:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 00:27:52 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 27 Aug 2026 00:27:52 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 27 Aug 2026 00:27:52 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 00:27:52 GMT
WORKDIR /root
# Thu, 27 Aug 2026 00:29:05 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8cd9bf0f283d5c4612a0622124a89183457fcb8eb8d7c2929fb85bafd3c03ac3;             SDK_ARCH="x64";;         armhf)             DART_SHA256=3ca78a19eede87996c57af245979e9114a13a477cc0c71379e8bfa9a628b6e83;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d9f535f8913762f3d716a6f2a69f485bc846ff79d0455497ce1844a795c9a443;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=cf76b79d0ea95f1e3986597c62d11b1aa6eee955f02b8379d721259097fb1f8d;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de52b89a6376974aa7c3405992c54c5193c4b00bfdc64f847a6e59a5d92d455`  
		Last Modified: Thu, 27 Aug 2026 00:35:29 GMT  
		Size: 44.2 MB (44216001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c22c959b04c7caa75fa98ca9dc502c2910410fd573afc8ae744841d4b52e125`  
		Last Modified: Thu, 27 Aug 2026 00:35:15 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577f5daa2b0ed910e651f5b4a1f20701f7f4b05680f0d931772bfb87bfa12be1`  
		Last Modified: Thu, 27 Aug 2026 00:36:01 GMT  
		Size: 267.4 MB (267448704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:e438d4c292c320b73130c1812901460091bdc6f09d04346f03ee49cd859daf31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afc8c903fd84149727ab10035dde1dee45485c0e7ba0ffce8896497194cd87f8`

```dockerfile
```

-	Layers:
	-	`sha256:742a0a4f3da4bc35a386ce7eff46e0b08540fec24cab3f8e2dee6c74ab562155`  
		Last Modified: Thu, 27 Aug 2026 00:35:15 GMT  
		Size: 19.0 KB (18966 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:beta-sdk`

```console
$ docker pull dart@sha256:fa6962c2da809b8cd29a29d83ca8c164e559db64a2c4d0e1d98024caca886616
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
$ docker pull dart@sha256:e37f7fdc86cd497fee68fc3291c77f01b73a04688246253377beed62e652a23d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254898445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48bd1f839ee36ab7aff5c2b62e9f93e31d93145c99c7246157ee448f6e0bb0d6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:33:18 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:33:18 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 01:33:18 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 01:33:18 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:33:18 GMT
WORKDIR /root
# Tue, 25 Aug 2026 01:33:28 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8cd9bf0f283d5c4612a0622124a89183457fcb8eb8d7c2929fb85bafd3c03ac3;             SDK_ARCH="x64";;         armhf)             DART_SHA256=3ca78a19eede87996c57af245979e9114a13a477cc0c71379e8bfa9a628b6e83;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d9f535f8913762f3d716a6f2a69f485bc846ff79d0455497ce1844a795c9a443;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=cf76b79d0ea95f1e3986597c62d11b1aa6eee955f02b8379d721259097fb1f8d;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6203a6c451e9386556c12f818752da98e049ad3e482bf6efa5064d1bdf67d34`  
		Last Modified: Tue, 25 Aug 2026 01:33:52 GMT  
		Size: 37.5 MB (37512837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc3323faad3ece6e1a2614b1d03a67fae09b4d82124317d54128ecc996bf5ca9`  
		Last Modified: Tue, 25 Aug 2026 01:33:50 GMT  
		Size: 1.3 MB (1273146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c2560af5431de3616d8d81d3e5aff90a2bb1ec7f81f4d689977c23f1aee9832`  
		Last Modified: Tue, 25 Aug 2026 01:33:55 GMT  
		Size: 189.9 MB (189893289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:6636f09c1bef776853cab17e997898d250138702f40b5a6a90d4cef88f45d78e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b53708bf5232f319edba76a3a141e24e104c66b8ac81b02e807d6442ef3aca7`

```dockerfile
```

-	Layers:
	-	`sha256:c7ffde4e821ff739adf18d40018aad80e03e1db0e2666c63be40c42a506b296e`  
		Last Modified: Tue, 25 Aug 2026 01:33:50 GMT  
		Size: 19.0 KB (19024 bytes)  
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
$ docker pull dart@sha256:105838ca7361844f8c00cab2bb96c23fc3e4c8c862e4284853c4aa9870254103
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.5 MB (341525648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:736242a0f17a904995615dbbba804edcf7c5622ecb741c6600cfb9b48254999e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:27:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 00:27:52 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 27 Aug 2026 00:27:52 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 27 Aug 2026 00:27:52 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 00:27:52 GMT
WORKDIR /root
# Thu, 27 Aug 2026 00:29:05 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8cd9bf0f283d5c4612a0622124a89183457fcb8eb8d7c2929fb85bafd3c03ac3;             SDK_ARCH="x64";;         armhf)             DART_SHA256=3ca78a19eede87996c57af245979e9114a13a477cc0c71379e8bfa9a628b6e83;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d9f535f8913762f3d716a6f2a69f485bc846ff79d0455497ce1844a795c9a443;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=cf76b79d0ea95f1e3986597c62d11b1aa6eee955f02b8379d721259097fb1f8d;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de52b89a6376974aa7c3405992c54c5193c4b00bfdc64f847a6e59a5d92d455`  
		Last Modified: Thu, 27 Aug 2026 00:35:29 GMT  
		Size: 44.2 MB (44216001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c22c959b04c7caa75fa98ca9dc502c2910410fd573afc8ae744841d4b52e125`  
		Last Modified: Thu, 27 Aug 2026 00:35:15 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577f5daa2b0ed910e651f5b4a1f20701f7f4b05680f0d931772bfb87bfa12be1`  
		Last Modified: Thu, 27 Aug 2026 00:36:01 GMT  
		Size: 267.4 MB (267448704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:e438d4c292c320b73130c1812901460091bdc6f09d04346f03ee49cd859daf31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afc8c903fd84149727ab10035dde1dee45485c0e7ba0ffce8896497194cd87f8`

```dockerfile
```

-	Layers:
	-	`sha256:742a0a4f3da4bc35a386ce7eff46e0b08540fec24cab3f8e2dee6c74ab562155`  
		Last Modified: Thu, 27 Aug 2026 00:35:15 GMT  
		Size: 19.0 KB (18966 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:latest`

```console
$ docker pull dart@sha256:1f86408456fbcdc5f9c33fa267d3680d86e79c255ec338b9a215459224769770
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
$ docker pull dart@sha256:2544b41c6f7ee596390f21b379d0ddb9d4c1198f164ff0c7faaf206962539805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316551489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e4bc7a1d1f4cc47e4cc605a6afe9411702aa1fe8774f8098b0dd0ef3281bcf0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:14 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:15 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:15 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:15 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:15 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:215dd51dbb686c53ed97cf86641c5b637cd249c25800aed0f2e0322bcbc4cce6`  
		Last Modified: Tue, 25 Aug 2026 17:12:59 GMT  
		Size: 42.5 MB (42524196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811e6a6753efde09b3e9bf962af012ca67a3285020e304b464d8abb2d04f9775`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 1.9 MB (1869786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd189e1087ace44eec13571041664bf8168fe31e52c0dda8d70c1c77dc34424`  
		Last Modified: Tue, 25 Aug 2026 17:13:02 GMT  
		Size: 242.4 MB (242364817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:730dd38bafb097ccc8fb36bb46fb8611eccadebc3b7d3986901ddc4f8d2e1c7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc9dd0c6b255318fdc283d41c971915f66962cda8da69ff0bb3dd9a154cce7ea`

```dockerfile
```

-	Layers:
	-	`sha256:9da347152200bd7ec41bc7534236df97e3bf081d79dfb42fd0b566ee2521bda2`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; arm variant v7

```console
$ docker pull dart@sha256:20de0691a0ee50052ff353589e8c65ed04cf8bb594c9b3cc10145feace0496f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230475180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ff4fb8f751a003b303eb4846f4c89bbfb5a417e4ba287943a0eb18d1fd056e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:15 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:16 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:16 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:16 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c55da37317a4d88dce43c401700b4d258934f535b3e9284caafabe1da0d5af0`  
		Last Modified: Tue, 25 Aug 2026 17:12:51 GMT  
		Size: 37.5 MB (37512715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a47fd8d374e6a090f629f28e5c9ab0c338f690559e30ad5354aee296f2ce80`  
		Last Modified: Tue, 25 Aug 2026 17:12:48 GMT  
		Size: 1.3 MB (1273152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c7898d6aa24b9a8ea912abb75a8c25f152012a595421a11cc18a5939efbd56`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 165.5 MB (165470140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:37a1989adc9891fdad18b14a0debd22263549658d9a3620aea112bfa77c65232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34886f6594bc6b2d5e0f919cfcfa586a45be1185fe2e5f2aee6e9fb060bbe89a`

```dockerfile
```

-	Layers:
	-	`sha256:1d4e672ea2b324d64b2e19ada5604b6e52550b1654a2785e752cea417bf2cb0e`  
		Last Modified: Tue, 25 Aug 2026 17:12:48 GMT  
		Size: 20.8 KB (20768 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee33cb1e72adb04cc85c18b4ae7c98a43d916df4c67d741fe0732ff390f417ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315238786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c55434ce235131fd9392a7185197b3cf9171e75b5e498a3061a58e74fa767c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:12 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:12 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:12 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:12 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df055c98a6afeb806514ab2a8f5ffbe54f2190e642f65d1fb36837633e1f0818`  
		Last Modified: Tue, 25 Aug 2026 17:12:57 GMT  
		Size: 42.3 MB (42308336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0398ed91716e8a85a67741dc897157f6060ba9087ce0bc3fa0d3d31b89502942`  
		Last Modified: Tue, 25 Aug 2026 17:12:55 GMT  
		Size: 1.6 MB (1564375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116c037a84a5f3c9b29358077cc30dea1b515f4858ca7db14d1e2e9312e2cfcf`  
		Last Modified: Tue, 25 Aug 2026 17:13:01 GMT  
		Size: 241.2 MB (241206461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:ccdf94e6ede7340794cf869e78a8c95111648005a636974627a793691840a2bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edf0cb1a139d881546cfef1b5c9ba9299b543d28676e008c265e1439857ea57`

```dockerfile
```

-	Layers:
	-	`sha256:b9e04d3b3efc86e6c833f17d9a1cbd55eb413c051d8f8a277385356cce123ce4`  
		Last Modified: Tue, 25 Aug 2026 17:12:54 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; riscv64

```console
$ docker pull dart@sha256:8690cef468de5ef97dbfc6f4b507dcb991112e1f5cc702739f11cd6d896f2b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255347835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f293dc1b055dc6386224789fdbb2fc76eebf9a5194c28c5d69b4035c31b5b63f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:27:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 00:27:52 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 27 Aug 2026 00:27:52 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 27 Aug 2026 00:27:52 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 00:27:52 GMT
WORKDIR /root
# Sat, 29 Aug 2026 04:55:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de52b89a6376974aa7c3405992c54c5193c4b00bfdc64f847a6e59a5d92d455`  
		Last Modified: Thu, 27 Aug 2026 00:35:29 GMT  
		Size: 44.2 MB (44216001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c22c959b04c7caa75fa98ca9dc502c2910410fd573afc8ae744841d4b52e125`  
		Last Modified: Thu, 27 Aug 2026 00:35:15 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4219c1310fecfbd9f688f17535d7ef2b8b6036984451abec24ca0bbf3dcf8562`  
		Last Modified: Sat, 29 Aug 2026 05:00:34 GMT  
		Size: 181.3 MB (181270891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:e0af6ecb270c99e4194a8a9ab9b66bde1e7bc55980b743f27731fbe895ce0c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0309413f246f7ddbdaf3a12efdb459d78555d403e638ffea0da79822e5360a44`

```dockerfile
```

-	Layers:
	-	`sha256:365c1388cddd8668bc5918d00687bd71ce7495a8b034420ad0f67fde8f3f76a9`  
		Last Modified: Sat, 29 Aug 2026 05:00:09 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:sdk`

```console
$ docker pull dart@sha256:1f86408456fbcdc5f9c33fa267d3680d86e79c255ec338b9a215459224769770
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
$ docker pull dart@sha256:2544b41c6f7ee596390f21b379d0ddb9d4c1198f164ff0c7faaf206962539805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316551489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e4bc7a1d1f4cc47e4cc605a6afe9411702aa1fe8774f8098b0dd0ef3281bcf0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:14 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:15 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:15 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:15 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:15 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:215dd51dbb686c53ed97cf86641c5b637cd249c25800aed0f2e0322bcbc4cce6`  
		Last Modified: Tue, 25 Aug 2026 17:12:59 GMT  
		Size: 42.5 MB (42524196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811e6a6753efde09b3e9bf962af012ca67a3285020e304b464d8abb2d04f9775`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 1.9 MB (1869786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd189e1087ace44eec13571041664bf8168fe31e52c0dda8d70c1c77dc34424`  
		Last Modified: Tue, 25 Aug 2026 17:13:02 GMT  
		Size: 242.4 MB (242364817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:730dd38bafb097ccc8fb36bb46fb8611eccadebc3b7d3986901ddc4f8d2e1c7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc9dd0c6b255318fdc283d41c971915f66962cda8da69ff0bb3dd9a154cce7ea`

```dockerfile
```

-	Layers:
	-	`sha256:9da347152200bd7ec41bc7534236df97e3bf081d79dfb42fd0b566ee2521bda2`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:20de0691a0ee50052ff353589e8c65ed04cf8bb594c9b3cc10145feace0496f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230475180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ff4fb8f751a003b303eb4846f4c89bbfb5a417e4ba287943a0eb18d1fd056e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:15 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:16 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:16 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:16 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c55da37317a4d88dce43c401700b4d258934f535b3e9284caafabe1da0d5af0`  
		Last Modified: Tue, 25 Aug 2026 17:12:51 GMT  
		Size: 37.5 MB (37512715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a47fd8d374e6a090f629f28e5c9ab0c338f690559e30ad5354aee296f2ce80`  
		Last Modified: Tue, 25 Aug 2026 17:12:48 GMT  
		Size: 1.3 MB (1273152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c7898d6aa24b9a8ea912abb75a8c25f152012a595421a11cc18a5939efbd56`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 165.5 MB (165470140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:37a1989adc9891fdad18b14a0debd22263549658d9a3620aea112bfa77c65232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34886f6594bc6b2d5e0f919cfcfa586a45be1185fe2e5f2aee6e9fb060bbe89a`

```dockerfile
```

-	Layers:
	-	`sha256:1d4e672ea2b324d64b2e19ada5604b6e52550b1654a2785e752cea417bf2cb0e`  
		Last Modified: Tue, 25 Aug 2026 17:12:48 GMT  
		Size: 20.8 KB (20768 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee33cb1e72adb04cc85c18b4ae7c98a43d916df4c67d741fe0732ff390f417ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315238786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c55434ce235131fd9392a7185197b3cf9171e75b5e498a3061a58e74fa767c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:12 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:12 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:12 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:12 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df055c98a6afeb806514ab2a8f5ffbe54f2190e642f65d1fb36837633e1f0818`  
		Last Modified: Tue, 25 Aug 2026 17:12:57 GMT  
		Size: 42.3 MB (42308336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0398ed91716e8a85a67741dc897157f6060ba9087ce0bc3fa0d3d31b89502942`  
		Last Modified: Tue, 25 Aug 2026 17:12:55 GMT  
		Size: 1.6 MB (1564375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116c037a84a5f3c9b29358077cc30dea1b515f4858ca7db14d1e2e9312e2cfcf`  
		Last Modified: Tue, 25 Aug 2026 17:13:01 GMT  
		Size: 241.2 MB (241206461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:ccdf94e6ede7340794cf869e78a8c95111648005a636974627a793691840a2bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edf0cb1a139d881546cfef1b5c9ba9299b543d28676e008c265e1439857ea57`

```dockerfile
```

-	Layers:
	-	`sha256:b9e04d3b3efc86e6c833f17d9a1cbd55eb413c051d8f8a277385356cce123ce4`  
		Last Modified: Tue, 25 Aug 2026 17:12:54 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; riscv64

```console
$ docker pull dart@sha256:8690cef468de5ef97dbfc6f4b507dcb991112e1f5cc702739f11cd6d896f2b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255347835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f293dc1b055dc6386224789fdbb2fc76eebf9a5194c28c5d69b4035c31b5b63f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:27:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 00:27:52 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 27 Aug 2026 00:27:52 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 27 Aug 2026 00:27:52 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 00:27:52 GMT
WORKDIR /root
# Sat, 29 Aug 2026 04:55:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de52b89a6376974aa7c3405992c54c5193c4b00bfdc64f847a6e59a5d92d455`  
		Last Modified: Thu, 27 Aug 2026 00:35:29 GMT  
		Size: 44.2 MB (44216001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c22c959b04c7caa75fa98ca9dc502c2910410fd573afc8ae744841d4b52e125`  
		Last Modified: Thu, 27 Aug 2026 00:35:15 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4219c1310fecfbd9f688f17535d7ef2b8b6036984451abec24ca0bbf3dcf8562`  
		Last Modified: Sat, 29 Aug 2026 05:00:34 GMT  
		Size: 181.3 MB (181270891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:e0af6ecb270c99e4194a8a9ab9b66bde1e7bc55980b743f27731fbe895ce0c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0309413f246f7ddbdaf3a12efdb459d78555d403e638ffea0da79822e5360a44`

```dockerfile
```

-	Layers:
	-	`sha256:365c1388cddd8668bc5918d00687bd71ce7495a8b034420ad0f67fde8f3f76a9`  
		Last Modified: Sat, 29 Aug 2026 05:00:09 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:stable`

```console
$ docker pull dart@sha256:1f86408456fbcdc5f9c33fa267d3680d86e79c255ec338b9a215459224769770
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
$ docker pull dart@sha256:2544b41c6f7ee596390f21b379d0ddb9d4c1198f164ff0c7faaf206962539805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316551489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e4bc7a1d1f4cc47e4cc605a6afe9411702aa1fe8774f8098b0dd0ef3281bcf0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:14 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:15 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:15 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:15 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:15 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:215dd51dbb686c53ed97cf86641c5b637cd249c25800aed0f2e0322bcbc4cce6`  
		Last Modified: Tue, 25 Aug 2026 17:12:59 GMT  
		Size: 42.5 MB (42524196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811e6a6753efde09b3e9bf962af012ca67a3285020e304b464d8abb2d04f9775`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 1.9 MB (1869786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd189e1087ace44eec13571041664bf8168fe31e52c0dda8d70c1c77dc34424`  
		Last Modified: Tue, 25 Aug 2026 17:13:02 GMT  
		Size: 242.4 MB (242364817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:730dd38bafb097ccc8fb36bb46fb8611eccadebc3b7d3986901ddc4f8d2e1c7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc9dd0c6b255318fdc283d41c971915f66962cda8da69ff0bb3dd9a154cce7ea`

```dockerfile
```

-	Layers:
	-	`sha256:9da347152200bd7ec41bc7534236df97e3bf081d79dfb42fd0b566ee2521bda2`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; arm variant v7

```console
$ docker pull dart@sha256:20de0691a0ee50052ff353589e8c65ed04cf8bb594c9b3cc10145feace0496f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230475180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ff4fb8f751a003b303eb4846f4c89bbfb5a417e4ba287943a0eb18d1fd056e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:15 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:16 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:16 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:16 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c55da37317a4d88dce43c401700b4d258934f535b3e9284caafabe1da0d5af0`  
		Last Modified: Tue, 25 Aug 2026 17:12:51 GMT  
		Size: 37.5 MB (37512715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a47fd8d374e6a090f629f28e5c9ab0c338f690559e30ad5354aee296f2ce80`  
		Last Modified: Tue, 25 Aug 2026 17:12:48 GMT  
		Size: 1.3 MB (1273152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c7898d6aa24b9a8ea912abb75a8c25f152012a595421a11cc18a5939efbd56`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 165.5 MB (165470140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:37a1989adc9891fdad18b14a0debd22263549658d9a3620aea112bfa77c65232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34886f6594bc6b2d5e0f919cfcfa586a45be1185fe2e5f2aee6e9fb060bbe89a`

```dockerfile
```

-	Layers:
	-	`sha256:1d4e672ea2b324d64b2e19ada5604b6e52550b1654a2785e752cea417bf2cb0e`  
		Last Modified: Tue, 25 Aug 2026 17:12:48 GMT  
		Size: 20.8 KB (20768 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee33cb1e72adb04cc85c18b4ae7c98a43d916df4c67d741fe0732ff390f417ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315238786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c55434ce235131fd9392a7185197b3cf9171e75b5e498a3061a58e74fa767c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:12 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:12 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:12 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:12 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df055c98a6afeb806514ab2a8f5ffbe54f2190e642f65d1fb36837633e1f0818`  
		Last Modified: Tue, 25 Aug 2026 17:12:57 GMT  
		Size: 42.3 MB (42308336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0398ed91716e8a85a67741dc897157f6060ba9087ce0bc3fa0d3d31b89502942`  
		Last Modified: Tue, 25 Aug 2026 17:12:55 GMT  
		Size: 1.6 MB (1564375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116c037a84a5f3c9b29358077cc30dea1b515f4858ca7db14d1e2e9312e2cfcf`  
		Last Modified: Tue, 25 Aug 2026 17:13:01 GMT  
		Size: 241.2 MB (241206461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:ccdf94e6ede7340794cf869e78a8c95111648005a636974627a793691840a2bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edf0cb1a139d881546cfef1b5c9ba9299b543d28676e008c265e1439857ea57`

```dockerfile
```

-	Layers:
	-	`sha256:b9e04d3b3efc86e6c833f17d9a1cbd55eb413c051d8f8a277385356cce123ce4`  
		Last Modified: Tue, 25 Aug 2026 17:12:54 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; riscv64

```console
$ docker pull dart@sha256:8690cef468de5ef97dbfc6f4b507dcb991112e1f5cc702739f11cd6d896f2b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255347835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f293dc1b055dc6386224789fdbb2fc76eebf9a5194c28c5d69b4035c31b5b63f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:27:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 00:27:52 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 27 Aug 2026 00:27:52 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 27 Aug 2026 00:27:52 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 00:27:52 GMT
WORKDIR /root
# Sat, 29 Aug 2026 04:55:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de52b89a6376974aa7c3405992c54c5193c4b00bfdc64f847a6e59a5d92d455`  
		Last Modified: Thu, 27 Aug 2026 00:35:29 GMT  
		Size: 44.2 MB (44216001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c22c959b04c7caa75fa98ca9dc502c2910410fd573afc8ae744841d4b52e125`  
		Last Modified: Thu, 27 Aug 2026 00:35:15 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4219c1310fecfbd9f688f17535d7ef2b8b6036984451abec24ca0bbf3dcf8562`  
		Last Modified: Sat, 29 Aug 2026 05:00:34 GMT  
		Size: 181.3 MB (181270891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:e0af6ecb270c99e4194a8a9ab9b66bde1e7bc55980b743f27731fbe895ce0c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0309413f246f7ddbdaf3a12efdb459d78555d403e638ffea0da79822e5360a44`

```dockerfile
```

-	Layers:
	-	`sha256:365c1388cddd8668bc5918d00687bd71ce7495a8b034420ad0f67fde8f3f76a9`  
		Last Modified: Sat, 29 Aug 2026 05:00:09 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:stable-sdk`

```console
$ docker pull dart@sha256:1f86408456fbcdc5f9c33fa267d3680d86e79c255ec338b9a215459224769770
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
$ docker pull dart@sha256:2544b41c6f7ee596390f21b379d0ddb9d4c1198f164ff0c7faaf206962539805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316551489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e4bc7a1d1f4cc47e4cc605a6afe9411702aa1fe8774f8098b0dd0ef3281bcf0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:14 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:15 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:15 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:15 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:15 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:215dd51dbb686c53ed97cf86641c5b637cd249c25800aed0f2e0322bcbc4cce6`  
		Last Modified: Tue, 25 Aug 2026 17:12:59 GMT  
		Size: 42.5 MB (42524196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811e6a6753efde09b3e9bf962af012ca67a3285020e304b464d8abb2d04f9775`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 1.9 MB (1869786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd189e1087ace44eec13571041664bf8168fe31e52c0dda8d70c1c77dc34424`  
		Last Modified: Tue, 25 Aug 2026 17:13:02 GMT  
		Size: 242.4 MB (242364817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:730dd38bafb097ccc8fb36bb46fb8611eccadebc3b7d3986901ddc4f8d2e1c7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc9dd0c6b255318fdc283d41c971915f66962cda8da69ff0bb3dd9a154cce7ea`

```dockerfile
```

-	Layers:
	-	`sha256:9da347152200bd7ec41bc7534236df97e3bf081d79dfb42fd0b566ee2521bda2`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:20de0691a0ee50052ff353589e8c65ed04cf8bb594c9b3cc10145feace0496f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230475180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ff4fb8f751a003b303eb4846f4c89bbfb5a417e4ba287943a0eb18d1fd056e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:15 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:16 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:16 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:16 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c55da37317a4d88dce43c401700b4d258934f535b3e9284caafabe1da0d5af0`  
		Last Modified: Tue, 25 Aug 2026 17:12:51 GMT  
		Size: 37.5 MB (37512715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a47fd8d374e6a090f629f28e5c9ab0c338f690559e30ad5354aee296f2ce80`  
		Last Modified: Tue, 25 Aug 2026 17:12:48 GMT  
		Size: 1.3 MB (1273152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c7898d6aa24b9a8ea912abb75a8c25f152012a595421a11cc18a5939efbd56`  
		Last Modified: Tue, 25 Aug 2026 17:12:56 GMT  
		Size: 165.5 MB (165470140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:37a1989adc9891fdad18b14a0debd22263549658d9a3620aea112bfa77c65232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34886f6594bc6b2d5e0f919cfcfa586a45be1185fe2e5f2aee6e9fb060bbe89a`

```dockerfile
```

-	Layers:
	-	`sha256:1d4e672ea2b324d64b2e19ada5604b6e52550b1654a2785e752cea417bf2cb0e`  
		Last Modified: Tue, 25 Aug 2026 17:12:48 GMT  
		Size: 20.8 KB (20768 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee33cb1e72adb04cc85c18b4ae7c98a43d916df4c67d741fe0732ff390f417ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315238786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c55434ce235131fd9392a7185197b3cf9171e75b5e498a3061a58e74fa767c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:12:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:12:12 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 25 Aug 2026 17:12:12 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 25 Aug 2026 17:12:12 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:12:12 GMT
WORKDIR /root
# Tue, 25 Aug 2026 17:12:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df055c98a6afeb806514ab2a8f5ffbe54f2190e642f65d1fb36837633e1f0818`  
		Last Modified: Tue, 25 Aug 2026 17:12:57 GMT  
		Size: 42.3 MB (42308336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0398ed91716e8a85a67741dc897157f6060ba9087ce0bc3fa0d3d31b89502942`  
		Last Modified: Tue, 25 Aug 2026 17:12:55 GMT  
		Size: 1.6 MB (1564375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116c037a84a5f3c9b29358077cc30dea1b515f4858ca7db14d1e2e9312e2cfcf`  
		Last Modified: Tue, 25 Aug 2026 17:13:01 GMT  
		Size: 241.2 MB (241206461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:ccdf94e6ede7340794cf869e78a8c95111648005a636974627a793691840a2bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edf0cb1a139d881546cfef1b5c9ba9299b543d28676e008c265e1439857ea57`

```dockerfile
```

-	Layers:
	-	`sha256:b9e04d3b3efc86e6c833f17d9a1cbd55eb413c051d8f8a277385356cce123ce4`  
		Last Modified: Tue, 25 Aug 2026 17:12:54 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:8690cef468de5ef97dbfc6f4b507dcb991112e1f5cc702739f11cd6d896f2b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255347835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f293dc1b055dc6386224789fdbb2fc76eebf9a5194c28c5d69b4035c31b5b63f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:27:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 00:27:52 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 27 Aug 2026 00:27:52 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 27 Aug 2026 00:27:52 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 00:27:52 GMT
WORKDIR /root
# Sat, 29 Aug 2026 04:55:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28951c9f6bcca005a73aa24cd5e11478dd6555f53e8e96a33ef4d868b6efa9eb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c34c656a004d5117fdd05165a4cad56540900a81b424d98c45ec8cbd7bd50e95;             SDK_ARCH="arm";;         arm64)             DART_SHA256=e4b2dd93bb3e7da2a2c5e1215d94c5da2e0ece0ed41b9f26c3d7e98baa659c7c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=b7293b0158d4f9d4b17a9337f90d0917d4c56c16756474a405535fb28bcd45dc;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de52b89a6376974aa7c3405992c54c5193c4b00bfdc64f847a6e59a5d92d455`  
		Last Modified: Thu, 27 Aug 2026 00:35:29 GMT  
		Size: 44.2 MB (44216001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c22c959b04c7caa75fa98ca9dc502c2910410fd573afc8ae744841d4b52e125`  
		Last Modified: Thu, 27 Aug 2026 00:35:15 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4219c1310fecfbd9f688f17535d7ef2b8b6036984451abec24ca0bbf3dcf8562`  
		Last Modified: Sat, 29 Aug 2026 05:00:34 GMT  
		Size: 181.3 MB (181270891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:e0af6ecb270c99e4194a8a9ab9b66bde1e7bc55980b743f27731fbe895ce0c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0309413f246f7ddbdaf3a12efdb459d78555d403e638ffea0da79822e5360a44`

```dockerfile
```

-	Layers:
	-	`sha256:365c1388cddd8668bc5918d00687bd71ce7495a8b034420ad0f67fde8f3f76a9`  
		Last Modified: Sat, 29 Aug 2026 05:00:09 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json
