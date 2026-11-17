<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `dart`

-	[`dart:3`](#dart3)
-	[`dart:3-sdk`](#dart3-sdk)
-	[`dart:3.14`](#dart314)
-	[`dart:3.14-sdk`](#dart314-sdk)
-	[`dart:3.14.1`](#dart3141)
-	[`dart:3.14.1-sdk`](#dart3141-sdk)
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
$ docker pull dart@sha256:520700c66210aa263db8c782783839cb14d577a2f1a01774cdec6d6561668da4
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
$ docker pull dart@sha256:09e10f974f1cf014d2b37ae0c02e9d71ff65f944bf4660cbfe2de19bea9f50d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345875211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb5ab76f2d41f2b56360f041fdfdd65b1b8949987a98600e23bd6e5adbec75b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:02:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:02:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:02:34 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:02:34 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:02:34 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:02:45 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e460bc5fd4fc79ae1363e3e5ed6da7cc479080f8bac27e053b19f6d83052304e`  
		Last Modified: Tue, 17 Nov 2026 19:03:18 GMT  
		Size: 42.5 MB (42525840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7203245aa4831028488a04c66e9fba8ddc584481b71a3a7a272634200a614aee`  
		Last Modified: Tue, 17 Nov 2026 19:03:16 GMT  
		Size: 1.9 MB (1867118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d273d65ef7af4d626155591d3482f6986241635ed316b5b09b49492117ab3b46`  
		Last Modified: Tue, 17 Nov 2026 19:03:22 GMT  
		Size: 271.6 MB (271626089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:be5ed390e869049116673bb4586956bdbc458e5e7c3e5e5554882473f826cf2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f3c17608f13cb4d5136321985096544f56d53bc530b6754787a4ee95f62b2b`

```dockerfile
```

-	Layers:
	-	`sha256:6dd6fdddc0756658e7b0c593d9bfa9ce7ed910ac3859b3ad9fcb7db92bd11482`  
		Last Modified: Tue, 17 Nov 2026 19:03:16 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; arm variant v7

```console
$ docker pull dart@sha256:4e95bbf481cb42a8bc386a2b841221554a4d840d5b8cf999a8e5b817d43a1f59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238601819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b7b5dc1812087d1d1eae4d151e1fdca7353e5e4f9618f0c2554290c84f61149`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:02:27 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:02:28 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:02:28 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:02:28 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:02:28 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:02:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4fb3c582bff7a45e8e8c3186f33f8d522a829bf4c222e8f150c8ed4e9245c3`  
		Last Modified: Tue, 17 Nov 2026 19:02:59 GMT  
		Size: 37.5 MB (37529360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a67da6ba49c43c9791037a78f2c7b5d1aaf567cc43466cea324dd3173fcdaab3`  
		Last Modified: Tue, 17 Nov 2026 19:02:58 GMT  
		Size: 1.3 MB (1271966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f60dab05cd5ad7e75a875aa15b2e73b09aa6bd6183e24cd238fceb3adb572db`  
		Last Modified: Tue, 17 Nov 2026 19:03:02 GMT  
		Size: 173.5 MB (173527546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:20f4431a179427a376888c789d3736f0c14a94af83027d30989d8bc93abc9f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7b38b56ba411c59b8314c58b62e9102c71d0241c837dbeec8870cc52bab81cc`

```dockerfile
```

-	Layers:
	-	`sha256:c70c39fcfa24745cf84a3c6ef00cb39ef590fe99c3caed148a9039caca266414`  
		Last Modified: Tue, 17 Nov 2026 19:02:58 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee676c29dbf7d654816e5b4244f469dd24ac27d0eb66fdad60cd6a0f3ecf6d38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (343974683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2def52687eba8413927192d63b471511dbf3febeb69ab616caa5dfdab3fecd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:34:49 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:34:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:34:50 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:34:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:34:50 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:35:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae570daede8a564b4caf10bb83c2c433ec0a5ecf548d07d50df14c9ebfa2c3cd`  
		Last Modified: Tue, 17 Nov 2026 19:35:34 GMT  
		Size: 42.3 MB (42327882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e10a0469eeba9e35d73da2fe4deef6c1284ca42005eb31d692b4580c1e3c8b`  
		Last Modified: Tue, 17 Nov 2026 19:35:32 GMT  
		Size: 1.6 MB (1561932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75c66787126071391a5bad3e2eb8d57ddf9fcc9000bfcdd1673f77e0f17d9350`  
		Last Modified: Tue, 17 Nov 2026 19:35:37 GMT  
		Size: 269.9 MB (269870800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:8228a9a275b215ea52a97427c07d518eb7c69a30d2a9899bb4491c18634903a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47d54f98fa91718a17f825d93ebe7d0a429bffdffe12f9537be49eb9aac67c6a`

```dockerfile
```

-	Layers:
	-	`sha256:397db9feb9acc75c4355f64d387c866affe08ef446f26f9eaa2ffc8a2a21691b`  
		Last Modified: Tue, 17 Nov 2026 19:35:32 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; riscv64

```console
$ docker pull dart@sha256:95cd499497eb133973a72041d490a03ee93c2792c157bf37f0d4ad7f47dfb007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (273035193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70639f9885a77eba0a97b85eaa379d1453ea0903938df4852f70dd00d7357c68`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Mon, 16 Nov 2026 03:46:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 03:47:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Mon, 16 Nov 2026 03:47:00 GMT
ENV DART_SDK=/usr/lib/dart
# Mon, 16 Nov 2026 03:47:00 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 03:47:00 GMT
WORKDIR /root
# Mon, 16 Nov 2026 03:47:53 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c064befb9d238afe4ab46594aa387c1a196e26b23de6d2efcd586170740b07f7`  
		Last Modified: Mon, 16 Nov 2026 03:52:36 GMT  
		Size: 41.6 MB (41600700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a042cc6a76e5c34d49298689ccba26050aa444275cc7c5d279a585f587e2d3f`  
		Last Modified: Mon, 16 Nov 2026 03:52:24 GMT  
		Size: 1.6 MB (1560327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74bd4c0c5b0fd2a60f254b31d184a14156b1ac45d4d73633ba5081d101f8404c`  
		Last Modified: Mon, 16 Nov 2026 03:53:02 GMT  
		Size: 201.5 MB (201527950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:02cddd00b1213b699d9af50cb914154c54e5fc331db4ec483545e39d82a8ff2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455771506d667356e54e3c0dc4c16dfec03efb0f84f35051db66c6ae6b04133c`

```dockerfile
```

-	Layers:
	-	`sha256:394cb02337c059338955008c225f8512581b4ac338f77d227c7d4c1602585cd2`  
		Last Modified: Mon, 16 Nov 2026 03:52:23 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3-sdk`

```console
$ docker pull dart@sha256:520700c66210aa263db8c782783839cb14d577a2f1a01774cdec6d6561668da4
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
$ docker pull dart@sha256:09e10f974f1cf014d2b37ae0c02e9d71ff65f944bf4660cbfe2de19bea9f50d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345875211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb5ab76f2d41f2b56360f041fdfdd65b1b8949987a98600e23bd6e5adbec75b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:02:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:02:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:02:34 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:02:34 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:02:34 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:02:45 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e460bc5fd4fc79ae1363e3e5ed6da7cc479080f8bac27e053b19f6d83052304e`  
		Last Modified: Tue, 17 Nov 2026 19:03:18 GMT  
		Size: 42.5 MB (42525840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7203245aa4831028488a04c66e9fba8ddc584481b71a3a7a272634200a614aee`  
		Last Modified: Tue, 17 Nov 2026 19:03:16 GMT  
		Size: 1.9 MB (1867118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d273d65ef7af4d626155591d3482f6986241635ed316b5b09b49492117ab3b46`  
		Last Modified: Tue, 17 Nov 2026 19:03:22 GMT  
		Size: 271.6 MB (271626089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:be5ed390e869049116673bb4586956bdbc458e5e7c3e5e5554882473f826cf2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f3c17608f13cb4d5136321985096544f56d53bc530b6754787a4ee95f62b2b`

```dockerfile
```

-	Layers:
	-	`sha256:6dd6fdddc0756658e7b0c593d9bfa9ce7ed910ac3859b3ad9fcb7db92bd11482`  
		Last Modified: Tue, 17 Nov 2026 19:03:16 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:4e95bbf481cb42a8bc386a2b841221554a4d840d5b8cf999a8e5b817d43a1f59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238601819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b7b5dc1812087d1d1eae4d151e1fdca7353e5e4f9618f0c2554290c84f61149`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:02:27 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:02:28 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:02:28 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:02:28 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:02:28 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:02:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4fb3c582bff7a45e8e8c3186f33f8d522a829bf4c222e8f150c8ed4e9245c3`  
		Last Modified: Tue, 17 Nov 2026 19:02:59 GMT  
		Size: 37.5 MB (37529360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a67da6ba49c43c9791037a78f2c7b5d1aaf567cc43466cea324dd3173fcdaab3`  
		Last Modified: Tue, 17 Nov 2026 19:02:58 GMT  
		Size: 1.3 MB (1271966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f60dab05cd5ad7e75a875aa15b2e73b09aa6bd6183e24cd238fceb3adb572db`  
		Last Modified: Tue, 17 Nov 2026 19:03:02 GMT  
		Size: 173.5 MB (173527546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:20f4431a179427a376888c789d3736f0c14a94af83027d30989d8bc93abc9f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7b38b56ba411c59b8314c58b62e9102c71d0241c837dbeec8870cc52bab81cc`

```dockerfile
```

-	Layers:
	-	`sha256:c70c39fcfa24745cf84a3c6ef00cb39ef590fe99c3caed148a9039caca266414`  
		Last Modified: Tue, 17 Nov 2026 19:02:58 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee676c29dbf7d654816e5b4244f469dd24ac27d0eb66fdad60cd6a0f3ecf6d38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (343974683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2def52687eba8413927192d63b471511dbf3febeb69ab616caa5dfdab3fecd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:34:49 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:34:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:34:50 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:34:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:34:50 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:35:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae570daede8a564b4caf10bb83c2c433ec0a5ecf548d07d50df14c9ebfa2c3cd`  
		Last Modified: Tue, 17 Nov 2026 19:35:34 GMT  
		Size: 42.3 MB (42327882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e10a0469eeba9e35d73da2fe4deef6c1284ca42005eb31d692b4580c1e3c8b`  
		Last Modified: Tue, 17 Nov 2026 19:35:32 GMT  
		Size: 1.6 MB (1561932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75c66787126071391a5bad3e2eb8d57ddf9fcc9000bfcdd1673f77e0f17d9350`  
		Last Modified: Tue, 17 Nov 2026 19:35:37 GMT  
		Size: 269.9 MB (269870800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:8228a9a275b215ea52a97427c07d518eb7c69a30d2a9899bb4491c18634903a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47d54f98fa91718a17f825d93ebe7d0a429bffdffe12f9537be49eb9aac67c6a`

```dockerfile
```

-	Layers:
	-	`sha256:397db9feb9acc75c4355f64d387c866affe08ef446f26f9eaa2ffc8a2a21691b`  
		Last Modified: Tue, 17 Nov 2026 19:35:32 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:95cd499497eb133973a72041d490a03ee93c2792c157bf37f0d4ad7f47dfb007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (273035193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70639f9885a77eba0a97b85eaa379d1453ea0903938df4852f70dd00d7357c68`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Mon, 16 Nov 2026 03:46:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 03:47:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Mon, 16 Nov 2026 03:47:00 GMT
ENV DART_SDK=/usr/lib/dart
# Mon, 16 Nov 2026 03:47:00 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 03:47:00 GMT
WORKDIR /root
# Mon, 16 Nov 2026 03:47:53 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c064befb9d238afe4ab46594aa387c1a196e26b23de6d2efcd586170740b07f7`  
		Last Modified: Mon, 16 Nov 2026 03:52:36 GMT  
		Size: 41.6 MB (41600700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a042cc6a76e5c34d49298689ccba26050aa444275cc7c5d279a585f587e2d3f`  
		Last Modified: Mon, 16 Nov 2026 03:52:24 GMT  
		Size: 1.6 MB (1560327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74bd4c0c5b0fd2a60f254b31d184a14156b1ac45d4d73633ba5081d101f8404c`  
		Last Modified: Mon, 16 Nov 2026 03:53:02 GMT  
		Size: 201.5 MB (201527950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:02cddd00b1213b699d9af50cb914154c54e5fc331db4ec483545e39d82a8ff2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455771506d667356e54e3c0dc4c16dfec03efb0f84f35051db66c6ae6b04133c`

```dockerfile
```

-	Layers:
	-	`sha256:394cb02337c059338955008c225f8512581b4ac338f77d227c7d4c1602585cd2`  
		Last Modified: Mon, 16 Nov 2026 03:52:23 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.14`

```console
$ docker pull dart@sha256:520700c66210aa263db8c782783839cb14d577a2f1a01774cdec6d6561668da4
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

### `dart:3.14` - linux; amd64

```console
$ docker pull dart@sha256:09e10f974f1cf014d2b37ae0c02e9d71ff65f944bf4660cbfe2de19bea9f50d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345875211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb5ab76f2d41f2b56360f041fdfdd65b1b8949987a98600e23bd6e5adbec75b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:02:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:02:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:02:34 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:02:34 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:02:34 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:02:45 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e460bc5fd4fc79ae1363e3e5ed6da7cc479080f8bac27e053b19f6d83052304e`  
		Last Modified: Tue, 17 Nov 2026 19:03:18 GMT  
		Size: 42.5 MB (42525840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7203245aa4831028488a04c66e9fba8ddc584481b71a3a7a272634200a614aee`  
		Last Modified: Tue, 17 Nov 2026 19:03:16 GMT  
		Size: 1.9 MB (1867118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d273d65ef7af4d626155591d3482f6986241635ed316b5b09b49492117ab3b46`  
		Last Modified: Tue, 17 Nov 2026 19:03:22 GMT  
		Size: 271.6 MB (271626089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14` - unknown; unknown

```console
$ docker pull dart@sha256:be5ed390e869049116673bb4586956bdbc458e5e7c3e5e5554882473f826cf2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f3c17608f13cb4d5136321985096544f56d53bc530b6754787a4ee95f62b2b`

```dockerfile
```

-	Layers:
	-	`sha256:6dd6fdddc0756658e7b0c593d9bfa9ce7ed910ac3859b3ad9fcb7db92bd11482`  
		Last Modified: Tue, 17 Nov 2026 19:03:16 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14` - linux; arm variant v7

```console
$ docker pull dart@sha256:4e95bbf481cb42a8bc386a2b841221554a4d840d5b8cf999a8e5b817d43a1f59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238601819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b7b5dc1812087d1d1eae4d151e1fdca7353e5e4f9618f0c2554290c84f61149`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:02:27 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:02:28 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:02:28 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:02:28 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:02:28 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:02:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4fb3c582bff7a45e8e8c3186f33f8d522a829bf4c222e8f150c8ed4e9245c3`  
		Last Modified: Tue, 17 Nov 2026 19:02:59 GMT  
		Size: 37.5 MB (37529360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a67da6ba49c43c9791037a78f2c7b5d1aaf567cc43466cea324dd3173fcdaab3`  
		Last Modified: Tue, 17 Nov 2026 19:02:58 GMT  
		Size: 1.3 MB (1271966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f60dab05cd5ad7e75a875aa15b2e73b09aa6bd6183e24cd238fceb3adb572db`  
		Last Modified: Tue, 17 Nov 2026 19:03:02 GMT  
		Size: 173.5 MB (173527546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14` - unknown; unknown

```console
$ docker pull dart@sha256:20f4431a179427a376888c789d3736f0c14a94af83027d30989d8bc93abc9f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7b38b56ba411c59b8314c58b62e9102c71d0241c837dbeec8870cc52bab81cc`

```dockerfile
```

-	Layers:
	-	`sha256:c70c39fcfa24745cf84a3c6ef00cb39ef590fe99c3caed148a9039caca266414`  
		Last Modified: Tue, 17 Nov 2026 19:02:58 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee676c29dbf7d654816e5b4244f469dd24ac27d0eb66fdad60cd6a0f3ecf6d38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (343974683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2def52687eba8413927192d63b471511dbf3febeb69ab616caa5dfdab3fecd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:34:49 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:34:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:34:50 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:34:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:34:50 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:35:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae570daede8a564b4caf10bb83c2c433ec0a5ecf548d07d50df14c9ebfa2c3cd`  
		Last Modified: Tue, 17 Nov 2026 19:35:34 GMT  
		Size: 42.3 MB (42327882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e10a0469eeba9e35d73da2fe4deef6c1284ca42005eb31d692b4580c1e3c8b`  
		Last Modified: Tue, 17 Nov 2026 19:35:32 GMT  
		Size: 1.6 MB (1561932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75c66787126071391a5bad3e2eb8d57ddf9fcc9000bfcdd1673f77e0f17d9350`  
		Last Modified: Tue, 17 Nov 2026 19:35:37 GMT  
		Size: 269.9 MB (269870800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14` - unknown; unknown

```console
$ docker pull dart@sha256:8228a9a275b215ea52a97427c07d518eb7c69a30d2a9899bb4491c18634903a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47d54f98fa91718a17f825d93ebe7d0a429bffdffe12f9537be49eb9aac67c6a`

```dockerfile
```

-	Layers:
	-	`sha256:397db9feb9acc75c4355f64d387c866affe08ef446f26f9eaa2ffc8a2a21691b`  
		Last Modified: Tue, 17 Nov 2026 19:35:32 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14` - linux; riscv64

```console
$ docker pull dart@sha256:95cd499497eb133973a72041d490a03ee93c2792c157bf37f0d4ad7f47dfb007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (273035193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70639f9885a77eba0a97b85eaa379d1453ea0903938df4852f70dd00d7357c68`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Mon, 16 Nov 2026 03:46:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 03:47:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Mon, 16 Nov 2026 03:47:00 GMT
ENV DART_SDK=/usr/lib/dart
# Mon, 16 Nov 2026 03:47:00 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 03:47:00 GMT
WORKDIR /root
# Mon, 16 Nov 2026 03:47:53 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c064befb9d238afe4ab46594aa387c1a196e26b23de6d2efcd586170740b07f7`  
		Last Modified: Mon, 16 Nov 2026 03:52:36 GMT  
		Size: 41.6 MB (41600700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a042cc6a76e5c34d49298689ccba26050aa444275cc7c5d279a585f587e2d3f`  
		Last Modified: Mon, 16 Nov 2026 03:52:24 GMT  
		Size: 1.6 MB (1560327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74bd4c0c5b0fd2a60f254b31d184a14156b1ac45d4d73633ba5081d101f8404c`  
		Last Modified: Mon, 16 Nov 2026 03:53:02 GMT  
		Size: 201.5 MB (201527950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14` - unknown; unknown

```console
$ docker pull dart@sha256:02cddd00b1213b699d9af50cb914154c54e5fc331db4ec483545e39d82a8ff2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455771506d667356e54e3c0dc4c16dfec03efb0f84f35051db66c6ae6b04133c`

```dockerfile
```

-	Layers:
	-	`sha256:394cb02337c059338955008c225f8512581b4ac338f77d227c7d4c1602585cd2`  
		Last Modified: Mon, 16 Nov 2026 03:52:23 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.14-sdk`

```console
$ docker pull dart@sha256:520700c66210aa263db8c782783839cb14d577a2f1a01774cdec6d6561668da4
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

### `dart:3.14-sdk` - linux; amd64

```console
$ docker pull dart@sha256:09e10f974f1cf014d2b37ae0c02e9d71ff65f944bf4660cbfe2de19bea9f50d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345875211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb5ab76f2d41f2b56360f041fdfdd65b1b8949987a98600e23bd6e5adbec75b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:02:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:02:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:02:34 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:02:34 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:02:34 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:02:45 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e460bc5fd4fc79ae1363e3e5ed6da7cc479080f8bac27e053b19f6d83052304e`  
		Last Modified: Tue, 17 Nov 2026 19:03:18 GMT  
		Size: 42.5 MB (42525840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7203245aa4831028488a04c66e9fba8ddc584481b71a3a7a272634200a614aee`  
		Last Modified: Tue, 17 Nov 2026 19:03:16 GMT  
		Size: 1.9 MB (1867118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d273d65ef7af4d626155591d3482f6986241635ed316b5b09b49492117ab3b46`  
		Last Modified: Tue, 17 Nov 2026 19:03:22 GMT  
		Size: 271.6 MB (271626089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:be5ed390e869049116673bb4586956bdbc458e5e7c3e5e5554882473f826cf2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f3c17608f13cb4d5136321985096544f56d53bc530b6754787a4ee95f62b2b`

```dockerfile
```

-	Layers:
	-	`sha256:6dd6fdddc0756658e7b0c593d9bfa9ce7ed910ac3859b3ad9fcb7db92bd11482`  
		Last Modified: Tue, 17 Nov 2026 19:03:16 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:4e95bbf481cb42a8bc386a2b841221554a4d840d5b8cf999a8e5b817d43a1f59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238601819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b7b5dc1812087d1d1eae4d151e1fdca7353e5e4f9618f0c2554290c84f61149`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:02:27 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:02:28 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:02:28 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:02:28 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:02:28 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:02:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4fb3c582bff7a45e8e8c3186f33f8d522a829bf4c222e8f150c8ed4e9245c3`  
		Last Modified: Tue, 17 Nov 2026 19:02:59 GMT  
		Size: 37.5 MB (37529360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a67da6ba49c43c9791037a78f2c7b5d1aaf567cc43466cea324dd3173fcdaab3`  
		Last Modified: Tue, 17 Nov 2026 19:02:58 GMT  
		Size: 1.3 MB (1271966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f60dab05cd5ad7e75a875aa15b2e73b09aa6bd6183e24cd238fceb3adb572db`  
		Last Modified: Tue, 17 Nov 2026 19:03:02 GMT  
		Size: 173.5 MB (173527546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:20f4431a179427a376888c789d3736f0c14a94af83027d30989d8bc93abc9f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7b38b56ba411c59b8314c58b62e9102c71d0241c837dbeec8870cc52bab81cc`

```dockerfile
```

-	Layers:
	-	`sha256:c70c39fcfa24745cf84a3c6ef00cb39ef590fe99c3caed148a9039caca266414`  
		Last Modified: Tue, 17 Nov 2026 19:02:58 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee676c29dbf7d654816e5b4244f469dd24ac27d0eb66fdad60cd6a0f3ecf6d38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (343974683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2def52687eba8413927192d63b471511dbf3febeb69ab616caa5dfdab3fecd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:34:49 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:34:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:34:50 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:34:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:34:50 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:35:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae570daede8a564b4caf10bb83c2c433ec0a5ecf548d07d50df14c9ebfa2c3cd`  
		Last Modified: Tue, 17 Nov 2026 19:35:34 GMT  
		Size: 42.3 MB (42327882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e10a0469eeba9e35d73da2fe4deef6c1284ca42005eb31d692b4580c1e3c8b`  
		Last Modified: Tue, 17 Nov 2026 19:35:32 GMT  
		Size: 1.6 MB (1561932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75c66787126071391a5bad3e2eb8d57ddf9fcc9000bfcdd1673f77e0f17d9350`  
		Last Modified: Tue, 17 Nov 2026 19:35:37 GMT  
		Size: 269.9 MB (269870800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:8228a9a275b215ea52a97427c07d518eb7c69a30d2a9899bb4491c18634903a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47d54f98fa91718a17f825d93ebe7d0a429bffdffe12f9537be49eb9aac67c6a`

```dockerfile
```

-	Layers:
	-	`sha256:397db9feb9acc75c4355f64d387c866affe08ef446f26f9eaa2ffc8a2a21691b`  
		Last Modified: Tue, 17 Nov 2026 19:35:32 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:95cd499497eb133973a72041d490a03ee93c2792c157bf37f0d4ad7f47dfb007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (273035193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70639f9885a77eba0a97b85eaa379d1453ea0903938df4852f70dd00d7357c68`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Mon, 16 Nov 2026 03:46:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 03:47:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Mon, 16 Nov 2026 03:47:00 GMT
ENV DART_SDK=/usr/lib/dart
# Mon, 16 Nov 2026 03:47:00 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 03:47:00 GMT
WORKDIR /root
# Mon, 16 Nov 2026 03:47:53 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c064befb9d238afe4ab46594aa387c1a196e26b23de6d2efcd586170740b07f7`  
		Last Modified: Mon, 16 Nov 2026 03:52:36 GMT  
		Size: 41.6 MB (41600700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a042cc6a76e5c34d49298689ccba26050aa444275cc7c5d279a585f587e2d3f`  
		Last Modified: Mon, 16 Nov 2026 03:52:24 GMT  
		Size: 1.6 MB (1560327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74bd4c0c5b0fd2a60f254b31d184a14156b1ac45d4d73633ba5081d101f8404c`  
		Last Modified: Mon, 16 Nov 2026 03:53:02 GMT  
		Size: 201.5 MB (201527950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:02cddd00b1213b699d9af50cb914154c54e5fc331db4ec483545e39d82a8ff2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455771506d667356e54e3c0dc4c16dfec03efb0f84f35051db66c6ae6b04133c`

```dockerfile
```

-	Layers:
	-	`sha256:394cb02337c059338955008c225f8512581b4ac338f77d227c7d4c1602585cd2`  
		Last Modified: Mon, 16 Nov 2026 03:52:23 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.14.1`

```console
$ docker pull dart@sha256:9f319448188a66344cc72658bf093e6289ac1ab14164b92bd0d100c3a1ea11f0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `dart:3.14.1` - linux; amd64

```console
$ docker pull dart@sha256:09e10f974f1cf014d2b37ae0c02e9d71ff65f944bf4660cbfe2de19bea9f50d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345875211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb5ab76f2d41f2b56360f041fdfdd65b1b8949987a98600e23bd6e5adbec75b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:02:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:02:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:02:34 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:02:34 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:02:34 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:02:45 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e460bc5fd4fc79ae1363e3e5ed6da7cc479080f8bac27e053b19f6d83052304e`  
		Last Modified: Tue, 17 Nov 2026 19:03:18 GMT  
		Size: 42.5 MB (42525840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7203245aa4831028488a04c66e9fba8ddc584481b71a3a7a272634200a614aee`  
		Last Modified: Tue, 17 Nov 2026 19:03:16 GMT  
		Size: 1.9 MB (1867118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d273d65ef7af4d626155591d3482f6986241635ed316b5b09b49492117ab3b46`  
		Last Modified: Tue, 17 Nov 2026 19:03:22 GMT  
		Size: 271.6 MB (271626089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.1` - unknown; unknown

```console
$ docker pull dart@sha256:be5ed390e869049116673bb4586956bdbc458e5e7c3e5e5554882473f826cf2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f3c17608f13cb4d5136321985096544f56d53bc530b6754787a4ee95f62b2b`

```dockerfile
```

-	Layers:
	-	`sha256:6dd6fdddc0756658e7b0c593d9bfa9ce7ed910ac3859b3ad9fcb7db92bd11482`  
		Last Modified: Tue, 17 Nov 2026 19:03:16 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.1` - linux; arm variant v7

```console
$ docker pull dart@sha256:4e95bbf481cb42a8bc386a2b841221554a4d840d5b8cf999a8e5b817d43a1f59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238601819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b7b5dc1812087d1d1eae4d151e1fdca7353e5e4f9618f0c2554290c84f61149`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:02:27 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:02:28 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:02:28 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:02:28 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:02:28 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:02:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4fb3c582bff7a45e8e8c3186f33f8d522a829bf4c222e8f150c8ed4e9245c3`  
		Last Modified: Tue, 17 Nov 2026 19:02:59 GMT  
		Size: 37.5 MB (37529360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a67da6ba49c43c9791037a78f2c7b5d1aaf567cc43466cea324dd3173fcdaab3`  
		Last Modified: Tue, 17 Nov 2026 19:02:58 GMT  
		Size: 1.3 MB (1271966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f60dab05cd5ad7e75a875aa15b2e73b09aa6bd6183e24cd238fceb3adb572db`  
		Last Modified: Tue, 17 Nov 2026 19:03:02 GMT  
		Size: 173.5 MB (173527546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.1` - unknown; unknown

```console
$ docker pull dart@sha256:20f4431a179427a376888c789d3736f0c14a94af83027d30989d8bc93abc9f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7b38b56ba411c59b8314c58b62e9102c71d0241c837dbeec8870cc52bab81cc`

```dockerfile
```

-	Layers:
	-	`sha256:c70c39fcfa24745cf84a3c6ef00cb39ef590fe99c3caed148a9039caca266414`  
		Last Modified: Tue, 17 Nov 2026 19:02:58 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.1` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee676c29dbf7d654816e5b4244f469dd24ac27d0eb66fdad60cd6a0f3ecf6d38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (343974683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2def52687eba8413927192d63b471511dbf3febeb69ab616caa5dfdab3fecd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:34:49 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:34:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:34:50 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:34:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:34:50 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:35:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae570daede8a564b4caf10bb83c2c433ec0a5ecf548d07d50df14c9ebfa2c3cd`  
		Last Modified: Tue, 17 Nov 2026 19:35:34 GMT  
		Size: 42.3 MB (42327882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e10a0469eeba9e35d73da2fe4deef6c1284ca42005eb31d692b4580c1e3c8b`  
		Last Modified: Tue, 17 Nov 2026 19:35:32 GMT  
		Size: 1.6 MB (1561932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75c66787126071391a5bad3e2eb8d57ddf9fcc9000bfcdd1673f77e0f17d9350`  
		Last Modified: Tue, 17 Nov 2026 19:35:37 GMT  
		Size: 269.9 MB (269870800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.1` - unknown; unknown

```console
$ docker pull dart@sha256:8228a9a275b215ea52a97427c07d518eb7c69a30d2a9899bb4491c18634903a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47d54f98fa91718a17f825d93ebe7d0a429bffdffe12f9537be49eb9aac67c6a`

```dockerfile
```

-	Layers:
	-	`sha256:397db9feb9acc75c4355f64d387c866affe08ef446f26f9eaa2ffc8a2a21691b`  
		Last Modified: Tue, 17 Nov 2026 19:35:32 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.14.1-sdk`

```console
$ docker pull dart@sha256:9f319448188a66344cc72658bf093e6289ac1ab14164b92bd0d100c3a1ea11f0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `dart:3.14.1-sdk` - linux; amd64

```console
$ docker pull dart@sha256:09e10f974f1cf014d2b37ae0c02e9d71ff65f944bf4660cbfe2de19bea9f50d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345875211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb5ab76f2d41f2b56360f041fdfdd65b1b8949987a98600e23bd6e5adbec75b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:02:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:02:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:02:34 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:02:34 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:02:34 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:02:45 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e460bc5fd4fc79ae1363e3e5ed6da7cc479080f8bac27e053b19f6d83052304e`  
		Last Modified: Tue, 17 Nov 2026 19:03:18 GMT  
		Size: 42.5 MB (42525840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7203245aa4831028488a04c66e9fba8ddc584481b71a3a7a272634200a614aee`  
		Last Modified: Tue, 17 Nov 2026 19:03:16 GMT  
		Size: 1.9 MB (1867118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d273d65ef7af4d626155591d3482f6986241635ed316b5b09b49492117ab3b46`  
		Last Modified: Tue, 17 Nov 2026 19:03:22 GMT  
		Size: 271.6 MB (271626089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.1-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:be5ed390e869049116673bb4586956bdbc458e5e7c3e5e5554882473f826cf2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f3c17608f13cb4d5136321985096544f56d53bc530b6754787a4ee95f62b2b`

```dockerfile
```

-	Layers:
	-	`sha256:6dd6fdddc0756658e7b0c593d9bfa9ce7ed910ac3859b3ad9fcb7db92bd11482`  
		Last Modified: Tue, 17 Nov 2026 19:03:16 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.1-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:4e95bbf481cb42a8bc386a2b841221554a4d840d5b8cf999a8e5b817d43a1f59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238601819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b7b5dc1812087d1d1eae4d151e1fdca7353e5e4f9618f0c2554290c84f61149`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:02:27 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:02:28 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:02:28 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:02:28 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:02:28 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:02:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4fb3c582bff7a45e8e8c3186f33f8d522a829bf4c222e8f150c8ed4e9245c3`  
		Last Modified: Tue, 17 Nov 2026 19:02:59 GMT  
		Size: 37.5 MB (37529360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a67da6ba49c43c9791037a78f2c7b5d1aaf567cc43466cea324dd3173fcdaab3`  
		Last Modified: Tue, 17 Nov 2026 19:02:58 GMT  
		Size: 1.3 MB (1271966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f60dab05cd5ad7e75a875aa15b2e73b09aa6bd6183e24cd238fceb3adb572db`  
		Last Modified: Tue, 17 Nov 2026 19:03:02 GMT  
		Size: 173.5 MB (173527546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.1-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:20f4431a179427a376888c789d3736f0c14a94af83027d30989d8bc93abc9f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7b38b56ba411c59b8314c58b62e9102c71d0241c837dbeec8870cc52bab81cc`

```dockerfile
```

-	Layers:
	-	`sha256:c70c39fcfa24745cf84a3c6ef00cb39ef590fe99c3caed148a9039caca266414`  
		Last Modified: Tue, 17 Nov 2026 19:02:58 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.1-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee676c29dbf7d654816e5b4244f469dd24ac27d0eb66fdad60cd6a0f3ecf6d38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (343974683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2def52687eba8413927192d63b471511dbf3febeb69ab616caa5dfdab3fecd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:34:49 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:34:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:34:50 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:34:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:34:50 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:35:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae570daede8a564b4caf10bb83c2c433ec0a5ecf548d07d50df14c9ebfa2c3cd`  
		Last Modified: Tue, 17 Nov 2026 19:35:34 GMT  
		Size: 42.3 MB (42327882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e10a0469eeba9e35d73da2fe4deef6c1284ca42005eb31d692b4580c1e3c8b`  
		Last Modified: Tue, 17 Nov 2026 19:35:32 GMT  
		Size: 1.6 MB (1561932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75c66787126071391a5bad3e2eb8d57ddf9fcc9000bfcdd1673f77e0f17d9350`  
		Last Modified: Tue, 17 Nov 2026 19:35:37 GMT  
		Size: 269.9 MB (269870800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.1-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:8228a9a275b215ea52a97427c07d518eb7c69a30d2a9899bb4491c18634903a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47d54f98fa91718a17f825d93ebe7d0a429bffdffe12f9537be49eb9aac67c6a`

```dockerfile
```

-	Layers:
	-	`sha256:397db9feb9acc75c4355f64d387c866affe08ef446f26f9eaa2ffc8a2a21691b`  
		Last Modified: Tue, 17 Nov 2026 19:35:32 GMT  
		Size: 20.8 KB (20821 bytes)  
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
$ docker pull dart@sha256:520700c66210aa263db8c782783839cb14d577a2f1a01774cdec6d6561668da4
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
$ docker pull dart@sha256:09e10f974f1cf014d2b37ae0c02e9d71ff65f944bf4660cbfe2de19bea9f50d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345875211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb5ab76f2d41f2b56360f041fdfdd65b1b8949987a98600e23bd6e5adbec75b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:02:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:02:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:02:34 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:02:34 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:02:34 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:02:45 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e460bc5fd4fc79ae1363e3e5ed6da7cc479080f8bac27e053b19f6d83052304e`  
		Last Modified: Tue, 17 Nov 2026 19:03:18 GMT  
		Size: 42.5 MB (42525840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7203245aa4831028488a04c66e9fba8ddc584481b71a3a7a272634200a614aee`  
		Last Modified: Tue, 17 Nov 2026 19:03:16 GMT  
		Size: 1.9 MB (1867118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d273d65ef7af4d626155591d3482f6986241635ed316b5b09b49492117ab3b46`  
		Last Modified: Tue, 17 Nov 2026 19:03:22 GMT  
		Size: 271.6 MB (271626089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:be5ed390e869049116673bb4586956bdbc458e5e7c3e5e5554882473f826cf2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f3c17608f13cb4d5136321985096544f56d53bc530b6754787a4ee95f62b2b`

```dockerfile
```

-	Layers:
	-	`sha256:6dd6fdddc0756658e7b0c593d9bfa9ce7ed910ac3859b3ad9fcb7db92bd11482`  
		Last Modified: Tue, 17 Nov 2026 19:03:16 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; arm variant v7

```console
$ docker pull dart@sha256:4e95bbf481cb42a8bc386a2b841221554a4d840d5b8cf999a8e5b817d43a1f59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238601819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b7b5dc1812087d1d1eae4d151e1fdca7353e5e4f9618f0c2554290c84f61149`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:02:27 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:02:28 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:02:28 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:02:28 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:02:28 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:02:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4fb3c582bff7a45e8e8c3186f33f8d522a829bf4c222e8f150c8ed4e9245c3`  
		Last Modified: Tue, 17 Nov 2026 19:02:59 GMT  
		Size: 37.5 MB (37529360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a67da6ba49c43c9791037a78f2c7b5d1aaf567cc43466cea324dd3173fcdaab3`  
		Last Modified: Tue, 17 Nov 2026 19:02:58 GMT  
		Size: 1.3 MB (1271966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f60dab05cd5ad7e75a875aa15b2e73b09aa6bd6183e24cd238fceb3adb572db`  
		Last Modified: Tue, 17 Nov 2026 19:03:02 GMT  
		Size: 173.5 MB (173527546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:20f4431a179427a376888c789d3736f0c14a94af83027d30989d8bc93abc9f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7b38b56ba411c59b8314c58b62e9102c71d0241c837dbeec8870cc52bab81cc`

```dockerfile
```

-	Layers:
	-	`sha256:c70c39fcfa24745cf84a3c6ef00cb39ef590fe99c3caed148a9039caca266414`  
		Last Modified: Tue, 17 Nov 2026 19:02:58 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee676c29dbf7d654816e5b4244f469dd24ac27d0eb66fdad60cd6a0f3ecf6d38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (343974683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2def52687eba8413927192d63b471511dbf3febeb69ab616caa5dfdab3fecd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:34:49 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:34:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:34:50 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:34:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:34:50 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:35:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae570daede8a564b4caf10bb83c2c433ec0a5ecf548d07d50df14c9ebfa2c3cd`  
		Last Modified: Tue, 17 Nov 2026 19:35:34 GMT  
		Size: 42.3 MB (42327882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e10a0469eeba9e35d73da2fe4deef6c1284ca42005eb31d692b4580c1e3c8b`  
		Last Modified: Tue, 17 Nov 2026 19:35:32 GMT  
		Size: 1.6 MB (1561932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75c66787126071391a5bad3e2eb8d57ddf9fcc9000bfcdd1673f77e0f17d9350`  
		Last Modified: Tue, 17 Nov 2026 19:35:37 GMT  
		Size: 269.9 MB (269870800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:8228a9a275b215ea52a97427c07d518eb7c69a30d2a9899bb4491c18634903a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47d54f98fa91718a17f825d93ebe7d0a429bffdffe12f9537be49eb9aac67c6a`

```dockerfile
```

-	Layers:
	-	`sha256:397db9feb9acc75c4355f64d387c866affe08ef446f26f9eaa2ffc8a2a21691b`  
		Last Modified: Tue, 17 Nov 2026 19:35:32 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; riscv64

```console
$ docker pull dart@sha256:95cd499497eb133973a72041d490a03ee93c2792c157bf37f0d4ad7f47dfb007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (273035193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70639f9885a77eba0a97b85eaa379d1453ea0903938df4852f70dd00d7357c68`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Mon, 16 Nov 2026 03:46:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 03:47:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Mon, 16 Nov 2026 03:47:00 GMT
ENV DART_SDK=/usr/lib/dart
# Mon, 16 Nov 2026 03:47:00 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 03:47:00 GMT
WORKDIR /root
# Mon, 16 Nov 2026 03:47:53 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c064befb9d238afe4ab46594aa387c1a196e26b23de6d2efcd586170740b07f7`  
		Last Modified: Mon, 16 Nov 2026 03:52:36 GMT  
		Size: 41.6 MB (41600700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a042cc6a76e5c34d49298689ccba26050aa444275cc7c5d279a585f587e2d3f`  
		Last Modified: Mon, 16 Nov 2026 03:52:24 GMT  
		Size: 1.6 MB (1560327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74bd4c0c5b0fd2a60f254b31d184a14156b1ac45d4d73633ba5081d101f8404c`  
		Last Modified: Mon, 16 Nov 2026 03:53:02 GMT  
		Size: 201.5 MB (201527950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:02cddd00b1213b699d9af50cb914154c54e5fc331db4ec483545e39d82a8ff2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455771506d667356e54e3c0dc4c16dfec03efb0f84f35051db66c6ae6b04133c`

```dockerfile
```

-	Layers:
	-	`sha256:394cb02337c059338955008c225f8512581b4ac338f77d227c7d4c1602585cd2`  
		Last Modified: Mon, 16 Nov 2026 03:52:23 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:sdk`

```console
$ docker pull dart@sha256:520700c66210aa263db8c782783839cb14d577a2f1a01774cdec6d6561668da4
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
$ docker pull dart@sha256:09e10f974f1cf014d2b37ae0c02e9d71ff65f944bf4660cbfe2de19bea9f50d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345875211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb5ab76f2d41f2b56360f041fdfdd65b1b8949987a98600e23bd6e5adbec75b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:02:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:02:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:02:34 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:02:34 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:02:34 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:02:45 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e460bc5fd4fc79ae1363e3e5ed6da7cc479080f8bac27e053b19f6d83052304e`  
		Last Modified: Tue, 17 Nov 2026 19:03:18 GMT  
		Size: 42.5 MB (42525840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7203245aa4831028488a04c66e9fba8ddc584481b71a3a7a272634200a614aee`  
		Last Modified: Tue, 17 Nov 2026 19:03:16 GMT  
		Size: 1.9 MB (1867118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d273d65ef7af4d626155591d3482f6986241635ed316b5b09b49492117ab3b46`  
		Last Modified: Tue, 17 Nov 2026 19:03:22 GMT  
		Size: 271.6 MB (271626089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:be5ed390e869049116673bb4586956bdbc458e5e7c3e5e5554882473f826cf2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f3c17608f13cb4d5136321985096544f56d53bc530b6754787a4ee95f62b2b`

```dockerfile
```

-	Layers:
	-	`sha256:6dd6fdddc0756658e7b0c593d9bfa9ce7ed910ac3859b3ad9fcb7db92bd11482`  
		Last Modified: Tue, 17 Nov 2026 19:03:16 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:4e95bbf481cb42a8bc386a2b841221554a4d840d5b8cf999a8e5b817d43a1f59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238601819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b7b5dc1812087d1d1eae4d151e1fdca7353e5e4f9618f0c2554290c84f61149`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:02:27 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:02:28 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:02:28 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:02:28 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:02:28 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:02:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4fb3c582bff7a45e8e8c3186f33f8d522a829bf4c222e8f150c8ed4e9245c3`  
		Last Modified: Tue, 17 Nov 2026 19:02:59 GMT  
		Size: 37.5 MB (37529360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a67da6ba49c43c9791037a78f2c7b5d1aaf567cc43466cea324dd3173fcdaab3`  
		Last Modified: Tue, 17 Nov 2026 19:02:58 GMT  
		Size: 1.3 MB (1271966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f60dab05cd5ad7e75a875aa15b2e73b09aa6bd6183e24cd238fceb3adb572db`  
		Last Modified: Tue, 17 Nov 2026 19:03:02 GMT  
		Size: 173.5 MB (173527546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:20f4431a179427a376888c789d3736f0c14a94af83027d30989d8bc93abc9f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7b38b56ba411c59b8314c58b62e9102c71d0241c837dbeec8870cc52bab81cc`

```dockerfile
```

-	Layers:
	-	`sha256:c70c39fcfa24745cf84a3c6ef00cb39ef590fe99c3caed148a9039caca266414`  
		Last Modified: Tue, 17 Nov 2026 19:02:58 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee676c29dbf7d654816e5b4244f469dd24ac27d0eb66fdad60cd6a0f3ecf6d38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (343974683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2def52687eba8413927192d63b471511dbf3febeb69ab616caa5dfdab3fecd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:34:49 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:34:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:34:50 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:34:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:34:50 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:35:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae570daede8a564b4caf10bb83c2c433ec0a5ecf548d07d50df14c9ebfa2c3cd`  
		Last Modified: Tue, 17 Nov 2026 19:35:34 GMT  
		Size: 42.3 MB (42327882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e10a0469eeba9e35d73da2fe4deef6c1284ca42005eb31d692b4580c1e3c8b`  
		Last Modified: Tue, 17 Nov 2026 19:35:32 GMT  
		Size: 1.6 MB (1561932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75c66787126071391a5bad3e2eb8d57ddf9fcc9000bfcdd1673f77e0f17d9350`  
		Last Modified: Tue, 17 Nov 2026 19:35:37 GMT  
		Size: 269.9 MB (269870800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:8228a9a275b215ea52a97427c07d518eb7c69a30d2a9899bb4491c18634903a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47d54f98fa91718a17f825d93ebe7d0a429bffdffe12f9537be49eb9aac67c6a`

```dockerfile
```

-	Layers:
	-	`sha256:397db9feb9acc75c4355f64d387c866affe08ef446f26f9eaa2ffc8a2a21691b`  
		Last Modified: Tue, 17 Nov 2026 19:35:32 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; riscv64

```console
$ docker pull dart@sha256:95cd499497eb133973a72041d490a03ee93c2792c157bf37f0d4ad7f47dfb007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (273035193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70639f9885a77eba0a97b85eaa379d1453ea0903938df4852f70dd00d7357c68`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Mon, 16 Nov 2026 03:46:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 03:47:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Mon, 16 Nov 2026 03:47:00 GMT
ENV DART_SDK=/usr/lib/dart
# Mon, 16 Nov 2026 03:47:00 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 03:47:00 GMT
WORKDIR /root
# Mon, 16 Nov 2026 03:47:53 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c064befb9d238afe4ab46594aa387c1a196e26b23de6d2efcd586170740b07f7`  
		Last Modified: Mon, 16 Nov 2026 03:52:36 GMT  
		Size: 41.6 MB (41600700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a042cc6a76e5c34d49298689ccba26050aa444275cc7c5d279a585f587e2d3f`  
		Last Modified: Mon, 16 Nov 2026 03:52:24 GMT  
		Size: 1.6 MB (1560327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74bd4c0c5b0fd2a60f254b31d184a14156b1ac45d4d73633ba5081d101f8404c`  
		Last Modified: Mon, 16 Nov 2026 03:53:02 GMT  
		Size: 201.5 MB (201527950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:02cddd00b1213b699d9af50cb914154c54e5fc331db4ec483545e39d82a8ff2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455771506d667356e54e3c0dc4c16dfec03efb0f84f35051db66c6ae6b04133c`

```dockerfile
```

-	Layers:
	-	`sha256:394cb02337c059338955008c225f8512581b4ac338f77d227c7d4c1602585cd2`  
		Last Modified: Mon, 16 Nov 2026 03:52:23 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:stable`

```console
$ docker pull dart@sha256:520700c66210aa263db8c782783839cb14d577a2f1a01774cdec6d6561668da4
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
$ docker pull dart@sha256:09e10f974f1cf014d2b37ae0c02e9d71ff65f944bf4660cbfe2de19bea9f50d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345875211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb5ab76f2d41f2b56360f041fdfdd65b1b8949987a98600e23bd6e5adbec75b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:02:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:02:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:02:34 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:02:34 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:02:34 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:02:45 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e460bc5fd4fc79ae1363e3e5ed6da7cc479080f8bac27e053b19f6d83052304e`  
		Last Modified: Tue, 17 Nov 2026 19:03:18 GMT  
		Size: 42.5 MB (42525840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7203245aa4831028488a04c66e9fba8ddc584481b71a3a7a272634200a614aee`  
		Last Modified: Tue, 17 Nov 2026 19:03:16 GMT  
		Size: 1.9 MB (1867118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d273d65ef7af4d626155591d3482f6986241635ed316b5b09b49492117ab3b46`  
		Last Modified: Tue, 17 Nov 2026 19:03:22 GMT  
		Size: 271.6 MB (271626089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:be5ed390e869049116673bb4586956bdbc458e5e7c3e5e5554882473f826cf2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f3c17608f13cb4d5136321985096544f56d53bc530b6754787a4ee95f62b2b`

```dockerfile
```

-	Layers:
	-	`sha256:6dd6fdddc0756658e7b0c593d9bfa9ce7ed910ac3859b3ad9fcb7db92bd11482`  
		Last Modified: Tue, 17 Nov 2026 19:03:16 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; arm variant v7

```console
$ docker pull dart@sha256:4e95bbf481cb42a8bc386a2b841221554a4d840d5b8cf999a8e5b817d43a1f59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238601819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b7b5dc1812087d1d1eae4d151e1fdca7353e5e4f9618f0c2554290c84f61149`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:02:27 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:02:28 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:02:28 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:02:28 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:02:28 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:02:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4fb3c582bff7a45e8e8c3186f33f8d522a829bf4c222e8f150c8ed4e9245c3`  
		Last Modified: Tue, 17 Nov 2026 19:02:59 GMT  
		Size: 37.5 MB (37529360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a67da6ba49c43c9791037a78f2c7b5d1aaf567cc43466cea324dd3173fcdaab3`  
		Last Modified: Tue, 17 Nov 2026 19:02:58 GMT  
		Size: 1.3 MB (1271966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f60dab05cd5ad7e75a875aa15b2e73b09aa6bd6183e24cd238fceb3adb572db`  
		Last Modified: Tue, 17 Nov 2026 19:03:02 GMT  
		Size: 173.5 MB (173527546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:20f4431a179427a376888c789d3736f0c14a94af83027d30989d8bc93abc9f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7b38b56ba411c59b8314c58b62e9102c71d0241c837dbeec8870cc52bab81cc`

```dockerfile
```

-	Layers:
	-	`sha256:c70c39fcfa24745cf84a3c6ef00cb39ef590fe99c3caed148a9039caca266414`  
		Last Modified: Tue, 17 Nov 2026 19:02:58 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee676c29dbf7d654816e5b4244f469dd24ac27d0eb66fdad60cd6a0f3ecf6d38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (343974683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2def52687eba8413927192d63b471511dbf3febeb69ab616caa5dfdab3fecd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:34:49 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:34:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:34:50 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:34:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:34:50 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:35:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae570daede8a564b4caf10bb83c2c433ec0a5ecf548d07d50df14c9ebfa2c3cd`  
		Last Modified: Tue, 17 Nov 2026 19:35:34 GMT  
		Size: 42.3 MB (42327882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e10a0469eeba9e35d73da2fe4deef6c1284ca42005eb31d692b4580c1e3c8b`  
		Last Modified: Tue, 17 Nov 2026 19:35:32 GMT  
		Size: 1.6 MB (1561932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75c66787126071391a5bad3e2eb8d57ddf9fcc9000bfcdd1673f77e0f17d9350`  
		Last Modified: Tue, 17 Nov 2026 19:35:37 GMT  
		Size: 269.9 MB (269870800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:8228a9a275b215ea52a97427c07d518eb7c69a30d2a9899bb4491c18634903a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47d54f98fa91718a17f825d93ebe7d0a429bffdffe12f9537be49eb9aac67c6a`

```dockerfile
```

-	Layers:
	-	`sha256:397db9feb9acc75c4355f64d387c866affe08ef446f26f9eaa2ffc8a2a21691b`  
		Last Modified: Tue, 17 Nov 2026 19:35:32 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; riscv64

```console
$ docker pull dart@sha256:95cd499497eb133973a72041d490a03ee93c2792c157bf37f0d4ad7f47dfb007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (273035193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70639f9885a77eba0a97b85eaa379d1453ea0903938df4852f70dd00d7357c68`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Mon, 16 Nov 2026 03:46:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 03:47:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Mon, 16 Nov 2026 03:47:00 GMT
ENV DART_SDK=/usr/lib/dart
# Mon, 16 Nov 2026 03:47:00 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 03:47:00 GMT
WORKDIR /root
# Mon, 16 Nov 2026 03:47:53 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c064befb9d238afe4ab46594aa387c1a196e26b23de6d2efcd586170740b07f7`  
		Last Modified: Mon, 16 Nov 2026 03:52:36 GMT  
		Size: 41.6 MB (41600700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a042cc6a76e5c34d49298689ccba26050aa444275cc7c5d279a585f587e2d3f`  
		Last Modified: Mon, 16 Nov 2026 03:52:24 GMT  
		Size: 1.6 MB (1560327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74bd4c0c5b0fd2a60f254b31d184a14156b1ac45d4d73633ba5081d101f8404c`  
		Last Modified: Mon, 16 Nov 2026 03:53:02 GMT  
		Size: 201.5 MB (201527950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:02cddd00b1213b699d9af50cb914154c54e5fc331db4ec483545e39d82a8ff2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455771506d667356e54e3c0dc4c16dfec03efb0f84f35051db66c6ae6b04133c`

```dockerfile
```

-	Layers:
	-	`sha256:394cb02337c059338955008c225f8512581b4ac338f77d227c7d4c1602585cd2`  
		Last Modified: Mon, 16 Nov 2026 03:52:23 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:stable-sdk`

```console
$ docker pull dart@sha256:520700c66210aa263db8c782783839cb14d577a2f1a01774cdec6d6561668da4
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
$ docker pull dart@sha256:09e10f974f1cf014d2b37ae0c02e9d71ff65f944bf4660cbfe2de19bea9f50d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345875211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb5ab76f2d41f2b56360f041fdfdd65b1b8949987a98600e23bd6e5adbec75b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:02:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:02:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:02:34 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:02:34 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:02:34 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:02:45 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e460bc5fd4fc79ae1363e3e5ed6da7cc479080f8bac27e053b19f6d83052304e`  
		Last Modified: Tue, 17 Nov 2026 19:03:18 GMT  
		Size: 42.5 MB (42525840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7203245aa4831028488a04c66e9fba8ddc584481b71a3a7a272634200a614aee`  
		Last Modified: Tue, 17 Nov 2026 19:03:16 GMT  
		Size: 1.9 MB (1867118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d273d65ef7af4d626155591d3482f6986241635ed316b5b09b49492117ab3b46`  
		Last Modified: Tue, 17 Nov 2026 19:03:22 GMT  
		Size: 271.6 MB (271626089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:be5ed390e869049116673bb4586956bdbc458e5e7c3e5e5554882473f826cf2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f3c17608f13cb4d5136321985096544f56d53bc530b6754787a4ee95f62b2b`

```dockerfile
```

-	Layers:
	-	`sha256:6dd6fdddc0756658e7b0c593d9bfa9ce7ed910ac3859b3ad9fcb7db92bd11482`  
		Last Modified: Tue, 17 Nov 2026 19:03:16 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:4e95bbf481cb42a8bc386a2b841221554a4d840d5b8cf999a8e5b817d43a1f59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238601819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b7b5dc1812087d1d1eae4d151e1fdca7353e5e4f9618f0c2554290c84f61149`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:02:27 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:02:28 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:02:28 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:02:28 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:02:28 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:02:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4fb3c582bff7a45e8e8c3186f33f8d522a829bf4c222e8f150c8ed4e9245c3`  
		Last Modified: Tue, 17 Nov 2026 19:02:59 GMT  
		Size: 37.5 MB (37529360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a67da6ba49c43c9791037a78f2c7b5d1aaf567cc43466cea324dd3173fcdaab3`  
		Last Modified: Tue, 17 Nov 2026 19:02:58 GMT  
		Size: 1.3 MB (1271966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f60dab05cd5ad7e75a875aa15b2e73b09aa6bd6183e24cd238fceb3adb572db`  
		Last Modified: Tue, 17 Nov 2026 19:03:02 GMT  
		Size: 173.5 MB (173527546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:20f4431a179427a376888c789d3736f0c14a94af83027d30989d8bc93abc9f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7b38b56ba411c59b8314c58b62e9102c71d0241c837dbeec8870cc52bab81cc`

```dockerfile
```

-	Layers:
	-	`sha256:c70c39fcfa24745cf84a3c6ef00cb39ef590fe99c3caed148a9039caca266414`  
		Last Modified: Tue, 17 Nov 2026 19:02:58 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee676c29dbf7d654816e5b4244f469dd24ac27d0eb66fdad60cd6a0f3ecf6d38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (343974683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2def52687eba8413927192d63b471511dbf3febeb69ab616caa5dfdab3fecd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:34:49 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 17 Nov 2026 19:34:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 17 Nov 2026 19:34:50 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 17 Nov 2026 19:34:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 19:34:50 GMT
WORKDIR /root
# Tue, 17 Nov 2026 19:35:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae570daede8a564b4caf10bb83c2c433ec0a5ecf548d07d50df14c9ebfa2c3cd`  
		Last Modified: Tue, 17 Nov 2026 19:35:34 GMT  
		Size: 42.3 MB (42327882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e10a0469eeba9e35d73da2fe4deef6c1284ca42005eb31d692b4580c1e3c8b`  
		Last Modified: Tue, 17 Nov 2026 19:35:32 GMT  
		Size: 1.6 MB (1561932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75c66787126071391a5bad3e2eb8d57ddf9fcc9000bfcdd1673f77e0f17d9350`  
		Last Modified: Tue, 17 Nov 2026 19:35:37 GMT  
		Size: 269.9 MB (269870800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:8228a9a275b215ea52a97427c07d518eb7c69a30d2a9899bb4491c18634903a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47d54f98fa91718a17f825d93ebe7d0a429bffdffe12f9537be49eb9aac67c6a`

```dockerfile
```

-	Layers:
	-	`sha256:397db9feb9acc75c4355f64d387c866affe08ef446f26f9eaa2ffc8a2a21691b`  
		Last Modified: Tue, 17 Nov 2026 19:35:32 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:95cd499497eb133973a72041d490a03ee93c2792c157bf37f0d4ad7f47dfb007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (273035193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70639f9885a77eba0a97b85eaa379d1453ea0903938df4852f70dd00d7357c68`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Mon, 16 Nov 2026 03:46:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 03:47:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Mon, 16 Nov 2026 03:47:00 GMT
ENV DART_SDK=/usr/lib/dart
# Mon, 16 Nov 2026 03:47:00 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 03:47:00 GMT
WORKDIR /root
# Mon, 16 Nov 2026 03:47:53 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=90f7fd75fe21e16437778df882f280910d9bbd4809c90024f21de82435dded1d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=ec85c228e7f0acd314c5c8e164f1629b79bddd03c243c31f80ad209420c73ac0;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2bb9a19418ced8d9f5cc9e7faa2dcbbc7dc93882b287b8cd8db859efa191c888;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c6ffdd6cb60a231611ee47aa3ad744f36949f77618c36adc1cbba5877050eaf5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c064befb9d238afe4ab46594aa387c1a196e26b23de6d2efcd586170740b07f7`  
		Last Modified: Mon, 16 Nov 2026 03:52:36 GMT  
		Size: 41.6 MB (41600700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a042cc6a76e5c34d49298689ccba26050aa444275cc7c5d279a585f587e2d3f`  
		Last Modified: Mon, 16 Nov 2026 03:52:24 GMT  
		Size: 1.6 MB (1560327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74bd4c0c5b0fd2a60f254b31d184a14156b1ac45d4d73633ba5081d101f8404c`  
		Last Modified: Mon, 16 Nov 2026 03:53:02 GMT  
		Size: 201.5 MB (201527950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:02cddd00b1213b699d9af50cb914154c54e5fc331db4ec483545e39d82a8ff2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455771506d667356e54e3c0dc4c16dfec03efb0f84f35051db66c6ae6b04133c`

```dockerfile
```

-	Layers:
	-	`sha256:394cb02337c059338955008c225f8512581b4ac338f77d227c7d4c1602585cd2`  
		Last Modified: Mon, 16 Nov 2026 03:52:23 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json
