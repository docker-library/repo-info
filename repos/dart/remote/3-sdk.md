## `dart:3-sdk`

```console
$ docker pull dart@sha256:36176bf7b6400bdc4aa77ba07b733b2eabf22640f71afd1b83eba679a26d5698
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
$ docker pull dart@sha256:ae982708cf13b32313f84dad9368daf07e57e212335c256120103fd98d12a78a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (273034933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd66ce4489f1e2db90229a24cb1f89b03ee689ff2e4f5f405b09c24496b7b1bc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 01:11:35 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 19 Nov 2026 01:11:37 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 19 Nov 2026 01:11:37 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 19 Nov 2026 01:11:37 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 01:11:37 GMT
WORKDIR /root
# Thu, 19 Nov 2026 01:12:32 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=759bed01e0aeb50e1a0b0a19474ba5c80c6087ce1d37b3214e475c81a44430e8;             SDK_ARCH="x64";;         armhf)             DART_SHA256=f4296ab09348630716370bb93a538c54b9f7aa5a5d7f8990a464f93a00d89ddb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c6e5581d478ac43ecf7d7028798b1bd10aef509f5e351184c755ec7eeeb1bea9;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=19bd97a25f3acde226a8b595b53dbf3e4f47295ece50f99b474521ef34f279c0;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.14.1/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce619249da63a9a2850b8bca037e56c8a929600badc46b0be8fe2659100af7be`  
		Last Modified: Thu, 19 Nov 2026 01:17:32 GMT  
		Size: 41.6 MB (41600578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e5ba9cc8a1f61175afc9355bb14f4ed5e6d492cf4de384c806cf702d39b04d`  
		Last Modified: Thu, 19 Nov 2026 01:17:20 GMT  
		Size: 1.6 MB (1560331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2d013161dcbd455bb1175f6f3ba6827e1e9876b4121306528433327d2383c3`  
		Last Modified: Thu, 19 Nov 2026 01:17:56 GMT  
		Size: 201.5 MB (201527808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:b555e7300b346778df8ebf4af4f30e27c42ac2ed867c8ec8dbed03423d1f9bd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72badebcd3c549686c5a7aafbedd59db08f7bd05b8a0aff1599e1b15667d8d9f`

```dockerfile
```

-	Layers:
	-	`sha256:0144ccc4f913c61238c6fb7bab5593be0569e43b66069619e22ed4638395041f`  
		Last Modified: Thu, 19 Nov 2026 01:17:19 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json
