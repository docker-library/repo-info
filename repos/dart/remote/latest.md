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
