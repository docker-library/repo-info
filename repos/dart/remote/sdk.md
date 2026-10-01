## `dart:sdk`

```console
$ docker pull dart@sha256:7efb22ee3003e3aaa7af34840bfacb2fc1b06e1ac1295237dfcca1552816588e
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
$ docker pull dart@sha256:4521dc04b39acb70b98be7b018ab0f3161a07346a6eb138bbf895211ca9cf6f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316597342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54edf77006fabe84947091381c63605d96ecca2f82da22ebb085fc743a298d4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Tue, 29 Sep 2026 18:05:57 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 29 Sep 2026 18:05:58 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 29 Sep 2026 18:05:58 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 29 Sep 2026 18:05:58 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 18:05:58 GMT
WORKDIR /root
# Tue, 29 Sep 2026 18:06:08 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2664140cc85d2a40cfe18dc83cbb962f60a5726c55d7ab2659f2e1da66e7657`  
		Last Modified: Tue, 29 Sep 2026 18:06:36 GMT  
		Size: 42.5 MB (42526113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ce1783d0db4e741f07ce51f67a235e03b54f40469fbf612f7eff6d2ae226c83`  
		Last Modified: Tue, 29 Sep 2026 18:06:35 GMT  
		Size: 1.9 MB (1869672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:349477a3a6bbe33131142f1f4d57504358b5420acd23662a4086b88a27517f9d`  
		Last Modified: Tue, 29 Sep 2026 18:06:40 GMT  
		Size: 242.4 MB (242371107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:1c3b665fcf76b3c8b30ecdb1675a1f2aefb1ecf9a184ac8fb687e60ad9650c6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a25cb00b2f17320b984e1055f979087d83e0f66b24904664a8841dd1ec97acb`

```dockerfile
```

-	Layers:
	-	`sha256:75b736e7a75bdf6669a82039a9d4d7d730a54913884c6941fd626a0798b7ae69`  
		Last Modified: Tue, 29 Sep 2026 18:06:35 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:16b0c33a72dd93553859a3eb0f92f187c8d2e5489477be86f1708ead5d8f50cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230521489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a82f2d5b0815f48cef5b37006720de754b1f9863ad26b6a150e4da353b695584`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Tue, 29 Sep 2026 17:56:02 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 29 Sep 2026 17:56:03 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 29 Sep 2026 17:56:03 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 29 Sep 2026 17:56:03 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 17:56:03 GMT
WORKDIR /root
# Tue, 29 Sep 2026 17:56:12 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d7b761697ca6c52d9b15001a5b8390dc41803ffbb9763aba98f034954c18c0f`  
		Last Modified: Tue, 29 Sep 2026 17:56:33 GMT  
		Size: 37.5 MB (37528158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e031900ed5b78189c48c5d13f1781e63882672d7f108bed0dba0a54eb0f7fd3b`  
		Last Modified: Tue, 29 Sep 2026 17:56:31 GMT  
		Size: 1.3 MB (1273041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9228c2b1ec83fa83a2cab432fb328e39898c3c558ec3262bbf9af1b0eb29a790`  
		Last Modified: Tue, 29 Sep 2026 17:56:35 GMT  
		Size: 165.5 MB (165471330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:64bce24a6ebc508ccb224ceb6b02441954dbd37df9db0d338f41196e936b3348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e2068953f1fede4390a294c028ff326d006f58a619f29c608067532f529337b`

```dockerfile
```

-	Layers:
	-	`sha256:47de1c08f1cb3a7a5c73afb501d603d231b35c278ef7a2447eac568f83dba9f8`  
		Last Modified: Tue, 29 Sep 2026 17:56:31 GMT  
		Size: 20.8 KB (20769 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:41547f599ad5d5d1f5601110d7ca95bd481560cd145cef9bb8f591bd710557c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315293048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e743e034671c0cc5b15ccc3a0cd923969c3eaf3d8e2f617649ee3cb0c5f40fa7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Tue, 29 Sep 2026 18:03:51 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 29 Sep 2026 18:03:51 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 29 Sep 2026 18:03:51 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 29 Sep 2026 18:03:51 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 18:03:51 GMT
WORKDIR /root
# Tue, 29 Sep 2026 18:04:02 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9526b2c0adf6c6f5862264f682585a71ef66bcbb64ceb46674baa63839d43d93`  
		Last Modified: Tue, 29 Sep 2026 18:04:35 GMT  
		Size: 42.3 MB (42319612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d84056a9e766f603d594dd3ff6aa0cb42f57ea3eea330eefe5c4dd832769267`  
		Last Modified: Tue, 29 Sep 2026 18:04:33 GMT  
		Size: 1.6 MB (1564406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:221fbe43c1c9e96f1febe08a84e1598fbb25bbef1d562727035e7d1fc57febbe`  
		Last Modified: Tue, 29 Sep 2026 18:04:40 GMT  
		Size: 241.2 MB (241219307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:64b893e7f087c7a0ed2ae333811d4724d760d1b50472e828033802c456a15d0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51b49e186eb3384f8bef1a7495e7eed2dddf1b495fa04e609fecc0875b420ffa`

```dockerfile
```

-	Layers:
	-	`sha256:3fa7496ef5f043116ffcecf7d22df20788758af5e6b1475dbb47dac02e91ccb3`  
		Last Modified: Tue, 29 Sep 2026 18:04:32 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; riscv64

```console
$ docker pull dart@sha256:0b1d5cae7480a6fedf4dce6392c8b47e0c2d4675cf42b709ca372f0f642eb69c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255389371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab85f9a1cbac6d7bcf4f68aca019b9e3c0d593c0bfc9285424021771168eb60`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Thu, 01 Oct 2026 14:48:20 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 14:48:22 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 01 Oct 2026 14:48:22 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 01 Oct 2026 14:48:22 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 14:48:22 GMT
WORKDIR /root
# Thu, 01 Oct 2026 14:49:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3cf0197a69ba5d69d9f03c7d97786aaa146cd8fdfd45fb00f5109d193ccbe81e`  
		Last Modified: Sat, 19 Sep 2026 04:09:02 GMT  
		Size: 28.3 MB (28324384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24044377644e6a96d6fdb39b75d0e90398f9b12bdcd0843a10ca941ef7f4e8ad`  
		Last Modified: Thu, 01 Oct 2026 14:53:33 GMT  
		Size: 44.2 MB (44226198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316453b2b0417e5737b7e2d9e2c446c447ecf911c67bd14856bac54b6c0f4dc7`  
		Last Modified: Thu, 01 Oct 2026 14:53:21 GMT  
		Size: 1.6 MB (1563911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d737f1dfb04e54e5a9fc19c422e359aca7560e41286c3730a0966353a90569`  
		Last Modified: Thu, 01 Oct 2026 14:53:53 GMT  
		Size: 181.3 MB (181274846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:b347a6e3728f1beaa90eec9694fcb5c03b0950970924634466f3d27c606569c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d634ad438bccf435cad4958ece83a8938805374be6677612cc2c942a0f972c32`

```dockerfile
```

-	Layers:
	-	`sha256:138b7929113c0c05638873aac43cb6cf15ae658b3d103fac9f383c571430c4d8`  
		Last Modified: Thu, 01 Oct 2026 14:53:21 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json
