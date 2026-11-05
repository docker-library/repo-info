## `dart:stable-sdk`

```console
$ docker pull dart@sha256:5bbbd3ac35d5093d1f77bb20e7f3b404198f0b5bb5fcb443940abcf97484d396
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
$ docker pull dart@sha256:6216c9953c2483229bb55e9e187737324edb9e08dd66b04f326ddbbc640f017a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.8 MB (316756410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0743b7c39c44930786f437e629da4bd2a80fb8456aa13c7ec8638cb891c91202`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:38:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 05 Nov 2026 07:38:34 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 05 Nov 2026 07:38:34 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:38:34 GMT
WORKDIR /root
# Thu, 05 Nov 2026 07:38:45 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb9a1a08bad32d0273812e0437911df526e550b947416643a7ed5703b04305d`  
		Last Modified: Thu, 05 Nov 2026 07:39:17 GMT  
		Size: 42.5 MB (42525845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d8383a0453aaa68f866323626ff54779dcd72eecb0463c66b78caa6c72e715`  
		Last Modified: Thu, 05 Nov 2026 07:39:16 GMT  
		Size: 1.9 MB (1867114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1b7358e2d9d61ace53fc3b2cd6376b2ad660f2b4131ea399579ecae073eb7f3`  
		Last Modified: Thu, 05 Nov 2026 07:39:21 GMT  
		Size: 242.5 MB (242507287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:0f3ec33557e86f222a1714dfad366b8d2a18ba195335f78fd03e69725c93455e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7370d0b763d5d70bea98dcdc7f5f9149f06e1873bb3e03ef43b61a3a8a85a6`

```dockerfile
```

-	Layers:
	-	`sha256:65693d6ca18d174602a054b18dc4f8163c57ee39ce8e6f773ecbceadcd931b11`  
		Last Modified: Thu, 05 Nov 2026 07:39:15 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:31f9cdf3d24a476ee3d4c2b45509a46d730e9df788348ad49ad55b1a330df923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.6 MB (230576895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57e4629d3360224acaa5cb073f85f48bba515e06a4aba9891c0cafb7342e499f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:18:57 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:18:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 05 Nov 2026 08:18:57 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 05 Nov 2026 08:18:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:18:57 GMT
WORKDIR /root
# Thu, 05 Nov 2026 08:19:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ccd4e362ef4107be2568f6fd858214714a0da581fa253f3cae764e314c06a2`  
		Last Modified: Thu, 05 Nov 2026 08:19:29 GMT  
		Size: 37.5 MB (37529532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c710d372f457fef7dd531f4b14bacf7f24e7625fc89ff1c8971defd2960cd9a`  
		Last Modified: Thu, 05 Nov 2026 08:19:27 GMT  
		Size: 1.3 MB (1271969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1e9c6086bae41fd5a8cd1c157885125f97e269f3034aa3fe862021108649f8c`  
		Last Modified: Thu, 05 Nov 2026 08:19:31 GMT  
		Size: 165.5 MB (165502447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:962c6f3b4ed2757f838d12cffa11c3769f4dab257ac296729714c4d15b83c459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cec4ad5bf11b6871b52924483818067cc41bedbc5ffa4ef398002988876ed8de`

```dockerfile
```

-	Layers:
	-	`sha256:8be06e90e77129ebf2c11832ad5f75804b59d96b4ec7f5c571710282d068dd8a`  
		Last Modified: Thu, 05 Nov 2026 08:19:27 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:1d41a16e76d9ffa545604cc7c77fa21f95792f4fd2fe6c7cc9daa4225dd61b9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315461460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cd109650095e742ad6feaaad4a28e51fedceeb086a5aa6bfdb1ebc41465e708`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:23 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 05 Nov 2026 07:42:24 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 05 Nov 2026 07:42:24 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:42:24 GMT
WORKDIR /root
# Thu, 05 Nov 2026 07:42:35 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e04b3e4a81205fcc9f6649951ac95eec2be852b7297d22e3bf6afa2d78785d4d`  
		Last Modified: Thu, 05 Nov 2026 07:43:07 GMT  
		Size: 42.3 MB (42326836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3beabbc659a937af1f42bfeaeeddeaf6c1591cb3679ca798c83f3779a6ae49f6`  
		Last Modified: Thu, 05 Nov 2026 07:43:05 GMT  
		Size: 1.6 MB (1561919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7ab30349f106ebda57b8aefb760d1635e307804549fbee78c3236a7f06704d5`  
		Last Modified: Thu, 05 Nov 2026 07:43:11 GMT  
		Size: 241.4 MB (241358636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:bbfdd31d798950bd4431f21082cb0d39d59faaaae1a8abcad5822fc9f24524e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf4783371e1f7b2521ed6ab562b2b1ca642064f5d5346cf8fb0c744963c4f481`

```dockerfile
```

-	Layers:
	-	`sha256:1c840c49efc61d0af0fadd088a034639789010ee4d5057f92cce2646adc3c73c`  
		Last Modified: Thu, 05 Nov 2026 07:43:05 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:1213c5f8486b1cdd9344c1440d715fe9abf093eafbf616a87376aeebe4c84c87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252921563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:610a0097092c39189bdbde122c2cefb44ddab75586d87685e970c65295c59306`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Sun, 01 Nov 2026 11:36:10 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sun, 01 Nov 2026 11:36:12 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sun, 01 Nov 2026 11:36:12 GMT
ENV DART_SDK=/usr/lib/dart
# Sun, 01 Nov 2026 11:36:12 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 01 Nov 2026 11:36:12 GMT
WORKDIR /root
# Sun, 01 Nov 2026 11:36:58 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4093ad0590182f5a622a1dfa261a1a316ed390dfb2fae54057f44b1898c56bea`  
		Last Modified: Sun, 01 Nov 2026 11:41:25 GMT  
		Size: 41.6 MB (41600678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:325483a402e04db9f6ba55fc1b65ddba85a851693921049c7f88e9de0a4550a9`  
		Last Modified: Sun, 01 Nov 2026 11:41:13 GMT  
		Size: 1.6 MB (1560329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fa57990d598084aa2425d00bbbcfe99062329dd4f17cc0e6378cd0f4677f80`  
		Last Modified: Sun, 01 Nov 2026 11:41:46 GMT  
		Size: 181.4 MB (181414855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:b8ded95e133c72571432a0f73ae77be81047312a7040225f25922dd740bbc73a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea86fc859e1b829b8458c4b25742d2b2b09e89e6666d9ed5680cee8a8e753f0e`

```dockerfile
```

-	Layers:
	-	`sha256:5034af29a0a0b344b4fdc954ae632d0cc5ae04571bdd13666b24af7737381e06`  
		Last Modified: Sun, 01 Nov 2026 11:41:13 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json
