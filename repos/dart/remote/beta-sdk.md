## `dart:beta-sdk`

```console
$ docker pull dart@sha256:b8c57d58abfdec83c2f8e7a0baed223c9b0d7d54e3bc6fa1340a2633d701d743
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
$ docker pull dart@sha256:9ca575998d5db7c7d8a4193f45e699a35a5462f38c9ea9c3bdae62a183c0bd86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.0 MB (344951344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84f90941c455c0f28941dcd3ae48bc542870fd3e5f534cb0a9105ba4f84686e9`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:30 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:30 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 00:45:30 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 00:45:30 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:45:30 GMT
WORKDIR /root
# Sat, 19 Sep 2026 00:45:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:251179571487fd022ac1e0a0c64aee3b48db1f7fddd26c17903faddea6ecc2d4`  
		Last Modified: Sat, 19 Sep 2026 00:46:16 GMT  
		Size: 42.5 MB (42526208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3936357055f9e681f77d168bcef2401a915b25241e0562ab9e0d742aa72cee8e`  
		Last Modified: Sat, 19 Sep 2026 00:46:14 GMT  
		Size: 1.9 MB (1869666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cde7c2a520a634a8af4d5886f2c2ac9dac18d61ab5da1dffbb7d7045539394b`  
		Last Modified: Sat, 19 Sep 2026 00:46:21 GMT  
		Size: 270.7 MB (270725020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:0d208e8e1da056aefb64e75c7f58d3c6c4b4b058af6f9fef6b32f705133ac55d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:613c03e76079fe45ac6908db71e1a6b1948f3ffb5d4312f9c4f1badfe9ad7650`

```dockerfile
```

-	Layers:
	-	`sha256:a913a80e7a27910c522e5b8f38b77c035b5709ed024721e03b3a2399f85869fa`  
		Last Modified: Sat, 19 Sep 2026 00:46:14 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:62e2a5c882a856e904f4f640ceeff17b49a8110ad83da6aa2f872552ba6af208
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237477046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54c89b983bc4c9d48aa4b5cf477715762a0b3d8a8719f0e67c18fc0c01e2f4db`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:28:56 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:28:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 01:28:57 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 01:28:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:28:57 GMT
WORKDIR /root
# Sat, 19 Sep 2026 01:29:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a5211b3d54b4a03e2564cee45d40c6672011835ee0294d94f566f31a788632a`  
		Last Modified: Sat, 19 Sep 2026 01:29:30 GMT  
		Size: 37.5 MB (37528241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d791d271289e6a09c266e270eb149a3df7a0efb482f5ba6dd51188a4a034bda`  
		Last Modified: Sat, 19 Sep 2026 01:29:28 GMT  
		Size: 1.3 MB (1273045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bff7ba75c7158c6f575434bf931d9079bddb08f42f49d22e3ba9851be07ab76`  
		Last Modified: Sat, 19 Sep 2026 01:29:32 GMT  
		Size: 172.4 MB (172426800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:c2d3745b0e36c3e2b1a94b47a8972195fd7b0802eb25e272b64d5136cb557b84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9748627da106e580698c391d00679143971e0870f06e40ac76d7ddfe2e850ec7`

```dockerfile
```

-	Layers:
	-	`sha256:2660e77d079e40112e6488b9e989886efaa05c2fabc2784c46c657580b723f7e`  
		Last Modified: Sat, 19 Sep 2026 01:29:28 GMT  
		Size: 19.0 KB (19028 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:54a44fe74190b0dc7a45a70730af0d5af2df08454aa2472fa26b54f5b25eea46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.2 MB (343228531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee8b54a5c999f702748cde8ea0401c3f090a66bfc1f2455bbc34680dad9f2ab7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:48:06 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 00:48:06 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 00:48:06 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:48:06 GMT
WORKDIR /root
# Sat, 19 Sep 2026 00:48:20 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc36cc49e311e81d4a88478844a3687c62b3c5b1e5956382c321cbbd5ee4db4b`  
		Last Modified: Sat, 19 Sep 2026 00:48:53 GMT  
		Size: 42.3 MB (42320210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a06f19f51ac4cf6f4e993cb2f4219b58537aecc963692e4f69da97facf5b8f3a`  
		Last Modified: Sat, 19 Sep 2026 00:48:51 GMT  
		Size: 1.6 MB (1564410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:187ed1bb13ac5fc0ac57e9f212ecc1fcb4637f6278708733f9cdec8c25b7d562`  
		Last Modified: Sat, 19 Sep 2026 00:48:57 GMT  
		Size: 269.2 MB (269154188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:c2cf08eb79e6803463bc2a13e58f7956a7232b0e1ab7717c594cf608237b58f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fb6211528973988a039c32689358cc1cd87562660ede9b35ec90576fdb73ddd`

```dockerfile
```

-	Layers:
	-	`sha256:24144230efeb625871e25e14e5599e2b3fe27f90acbeb2a525622072a0bb14fc`  
		Last Modified: Sat, 19 Sep 2026 00:48:51 GMT  
		Size: 19.1 KB (19057 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:eb78f7036b87366ac4a96b79e857111cffe1d0cc3a393b54f3de8ed7aff5d654
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271966358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e440b139973cd208c85359bb9496e8844fe54c0ba71a5d0f439301736ed5402`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 00:02:40 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 00:02:41 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Fri, 25 Sep 2026 00:02:41 GMT
ENV DART_SDK=/usr/lib/dart
# Fri, 25 Sep 2026 00:02:41 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 00:02:41 GMT
WORKDIR /root
# Fri, 25 Sep 2026 00:09:48 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3cf0197a69ba5d69d9f03c7d97786aaa146cd8fdfd45fb00f5109d193ccbe81e`  
		Last Modified: Sat, 19 Sep 2026 04:09:02 GMT  
		Size: 28.3 MB (28324384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f0e8d292374572e918be62ba5601e3eac12b6e7903b699fc96c22898fddf2d`  
		Last Modified: Fri, 25 Sep 2026 00:07:53 GMT  
		Size: 41.6 MB (41601304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c10aafa288e487e2bee9416288c98569b2574eb18f221617d5b924960803ece`  
		Last Modified: Fri, 25 Sep 2026 00:07:40 GMT  
		Size: 1.6 MB (1563911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6811e3fc37b7c3b820d02060ee35f5ab497ef50defe57b533132a5da7e650a91`  
		Last Modified: Fri, 25 Sep 2026 00:14:41 GMT  
		Size: 200.5 MB (200476727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:8f2c857d6e296e941f957a9c396b15e91301fe64b1e12f8dca54a11d28c8d798
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1451b8a2398fff10678cdb9c8f6b6c48ec9366113209c33a2bff6d4bb1fe0679`

```dockerfile
```

-	Layers:
	-	`sha256:50e48a7d9a2f9e51abbf23bf81213313074d6dfcc98890a0388d92bf48820ebc`  
		Last Modified: Fri, 25 Sep 2026 00:14:12 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json
