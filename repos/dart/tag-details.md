<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `dart`

-	[`dart:3`](#dart3)
-	[`dart:3-sdk`](#dart3-sdk)
-	[`dart:3.13`](#dart313)
-	[`dart:3.13-sdk`](#dart313-sdk)
-	[`dart:3.13.4`](#dart3134)
-	[`dart:3.13.4-sdk`](#dart3134-sdk)
-	[`dart:3.14.0-211.1.beta`](#dart3140-2111beta)
-	[`dart:3.14.0-211.1.beta-sdk`](#dart3140-2111beta-sdk)
-	[`dart:beta`](#dartbeta)
-	[`dart:beta-sdk`](#dartbeta-sdk)
-	[`dart:latest`](#dartlatest)
-	[`dart:sdk`](#dartsdk)
-	[`dart:stable`](#dartstable)
-	[`dart:stable-sdk`](#dartstable-sdk)

## `dart:3`

```console
$ docker pull dart@sha256:4d16dff097fa0a076adf68a4ee8efc740dc4d602177848c07684176a29217d58
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
$ docker pull dart@sha256:6bb0ac8da25faa4f9310612a20a76b9cc58326d00b516b152fd40ac4db8315cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.9 MB (321897610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e92407773ba6afa2d76a438a2efef39daa8c8e4a9228968b73ba8542317113ba`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 22:31:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:31:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 22:31:06 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 22:31:06 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:31:06 GMT
WORKDIR /root
# Tue, 15 Sep 2026 22:31:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7721c9bff41a945f507275fc1daf17b46e4db4695e03dc844c1e0ce7d0410d05`  
		Last Modified: Tue, 15 Sep 2026 22:31:45 GMT  
		Size: 47.9 MB (47867587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4488c42c649126f630919a33d11a3d5445d10b67209f373f50b874da092fec18`  
		Last Modified: Tue, 15 Sep 2026 22:31:43 GMT  
		Size: 1.9 MB (1869785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b5eafafad36970681a5b60f67a2b668af29c8660414388bddb0bf281f4ce56c`  
		Last Modified: Tue, 15 Sep 2026 22:31:49 GMT  
		Size: 242.4 MB (242367548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:0c2c86cbf3f20540f44a3d3fc4e63fd77f199d1c9a749dd3c04ea1a8f751be3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b249a1ec582a18a444dd66cd162afd090aa652a07061458e9a166a17603a48`

```dockerfile
```

-	Layers:
	-	`sha256:0d43c1ae7be98f0711b86ed05e0f555308be3bb7a96bd10745c257bf72655f5d`  
		Last Modified: Tue, 15 Sep 2026 22:31:42 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; arm variant v7

```console
$ docker pull dart@sha256:799daa316df1a91e4b558c4aacbc1606a5f5d30d00abe5a767cab722b7d31bba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234877106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df34a5139987f56d9f9dc0790278a9049433ec519e1c0dcd21ff637b9ea7b93`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 23:09:10 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 23:09:10 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 23:09:10 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 23:09:10 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 23:09:10 GMT
WORKDIR /root
# Tue, 15 Sep 2026 23:09:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1bf30aeb76cb00fa3ddc82173e9e51f836294bc146720f44fd47c61df1ba85f`  
		Last Modified: Tue, 15 Sep 2026 23:09:42 GMT  
		Size: 41.9 MB (41914638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9c5d80d8b5281721e8b4c1059811dc7f773e842c8261aaf91252184d97a195`  
		Last Modified: Tue, 15 Sep 2026 23:09:41 GMT  
		Size: 1.3 MB (1273150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac568f83463655c1346658ad94bb927ab73070c2dd173500b77fdb54b432936`  
		Last Modified: Tue, 15 Sep 2026 23:09:45 GMT  
		Size: 165.5 MB (165470145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:668eeca27d06b1a63f7eaf5335264dc59b65de5b32b1da9fe0550f1a57db42f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b8aae52469f23565e913fa67f0246a4ea105ecb7f7531451930d9df547bc40`

```dockerfile
```

-	Layers:
	-	`sha256:b588a24b105229752714a780d78263d6c0859cc77c4dd3be08f7a23da933e042`  
		Last Modified: Tue, 15 Sep 2026 23:09:40 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:a79830ce73fb96da10ec37eae240bface2af1faa57e87f8d5d9b20ca193e5dbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.9 MB (320905425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289207ae2857ad8160e17df9d26d926bf336b2dfb1c2630ef9a47b44e691dc3d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 22:37:29 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:37:30 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 22:37:30 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 22:37:30 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:37:30 GMT
WORKDIR /root
# Tue, 15 Sep 2026 22:37:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2ad386b9d84332bdfc34ec892e84cab75b0044470817c8e2a0e28817989459`  
		Last Modified: Tue, 15 Sep 2026 22:38:15 GMT  
		Size: 48.0 MB (47980601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7817ea29b65f20a000fe21d25d8d418a5f843a5bf554e2ca5fe113dd7b0287`  
		Last Modified: Tue, 15 Sep 2026 22:38:13 GMT  
		Size: 1.6 MB (1564388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a634f0d56bbc0bca88aa28567fed8dae6ebdceb31fdf1286b09a2b10416835a9`  
		Last Modified: Tue, 15 Sep 2026 22:38:19 GMT  
		Size: 241.2 MB (241200822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:6cac5453a66b4787a009ec07b8bfa1e0a26132676b8ca23c14ae00f6efd5c6bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f26f22431a0ee93b0584a67fa1283ee03a15139751d32198c99539635a2f26e2`

```dockerfile
```

-	Layers:
	-	`sha256:2a658c1cec74c93bb8ca1c0ac90d0c1ca64a69222782c6181b1f93a5d0ea4c18`  
		Last Modified: Tue, 15 Sep 2026 22:38:13 GMT  
		Size: 20.8 KB (20820 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; riscv64

```console
$ docker pull dart@sha256:5aca2c12b70c2e5f1a8b710b2ed9fcb189cf4f757ef5d5d1b6cc033d7cefbd2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255349306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8b5ea40caebed504ed5050a8ac08df844a5f41fd7f61670ea19e4d869d8d2e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 10 Sep 2026 18:46:06 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 18:46:08 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 10 Sep 2026 18:46:08 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 10 Sep 2026 18:46:08 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 18:46:08 GMT
WORKDIR /root
# Fri, 18 Sep 2026 16:02:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8123bfb505ded7faf13b6fd682eb752f0bddd946645927936a53bcc94c1d7d2b`  
		Last Modified: Thu, 10 Sep 2026 18:51:37 GMT  
		Size: 44.2 MB (44215927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84782f90a7e14c2cd54f6cd1558b26a3e9298c2315d2d44cf16301db3598d0af`  
		Last Modified: Thu, 10 Sep 2026 18:51:24 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d674d09e6285b2e29e496457deb0ec314d1bc4a43a1b548e7e3cc919fa58ba1`  
		Last Modified: Fri, 18 Sep 2026 16:07:00 GMT  
		Size: 181.3 MB (181272436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:e9c17cd1ea867765898feca5ba3cb70f18e0a102b16eec02cadeb6e2c2db1cb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568a156454ff903d48d79b71727660884187b5288912c437872206f7b93b30be`

```dockerfile
```

-	Layers:
	-	`sha256:df3439de640b918a282c81cb264a0bd056d3f0388891074fd6ca30d594386b38`  
		Last Modified: Fri, 18 Sep 2026 16:06:33 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3-sdk`

```console
$ docker pull dart@sha256:4d16dff097fa0a076adf68a4ee8efc740dc4d602177848c07684176a29217d58
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
$ docker pull dart@sha256:6bb0ac8da25faa4f9310612a20a76b9cc58326d00b516b152fd40ac4db8315cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.9 MB (321897610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e92407773ba6afa2d76a438a2efef39daa8c8e4a9228968b73ba8542317113ba`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 22:31:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:31:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 22:31:06 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 22:31:06 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:31:06 GMT
WORKDIR /root
# Tue, 15 Sep 2026 22:31:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7721c9bff41a945f507275fc1daf17b46e4db4695e03dc844c1e0ce7d0410d05`  
		Last Modified: Tue, 15 Sep 2026 22:31:45 GMT  
		Size: 47.9 MB (47867587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4488c42c649126f630919a33d11a3d5445d10b67209f373f50b874da092fec18`  
		Last Modified: Tue, 15 Sep 2026 22:31:43 GMT  
		Size: 1.9 MB (1869785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b5eafafad36970681a5b60f67a2b668af29c8660414388bddb0bf281f4ce56c`  
		Last Modified: Tue, 15 Sep 2026 22:31:49 GMT  
		Size: 242.4 MB (242367548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:0c2c86cbf3f20540f44a3d3fc4e63fd77f199d1c9a749dd3c04ea1a8f751be3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b249a1ec582a18a444dd66cd162afd090aa652a07061458e9a166a17603a48`

```dockerfile
```

-	Layers:
	-	`sha256:0d43c1ae7be98f0711b86ed05e0f555308be3bb7a96bd10745c257bf72655f5d`  
		Last Modified: Tue, 15 Sep 2026 22:31:42 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:799daa316df1a91e4b558c4aacbc1606a5f5d30d00abe5a767cab722b7d31bba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234877106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df34a5139987f56d9f9dc0790278a9049433ec519e1c0dcd21ff637b9ea7b93`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 23:09:10 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 23:09:10 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 23:09:10 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 23:09:10 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 23:09:10 GMT
WORKDIR /root
# Tue, 15 Sep 2026 23:09:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1bf30aeb76cb00fa3ddc82173e9e51f836294bc146720f44fd47c61df1ba85f`  
		Last Modified: Tue, 15 Sep 2026 23:09:42 GMT  
		Size: 41.9 MB (41914638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9c5d80d8b5281721e8b4c1059811dc7f773e842c8261aaf91252184d97a195`  
		Last Modified: Tue, 15 Sep 2026 23:09:41 GMT  
		Size: 1.3 MB (1273150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac568f83463655c1346658ad94bb927ab73070c2dd173500b77fdb54b432936`  
		Last Modified: Tue, 15 Sep 2026 23:09:45 GMT  
		Size: 165.5 MB (165470145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:668eeca27d06b1a63f7eaf5335264dc59b65de5b32b1da9fe0550f1a57db42f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b8aae52469f23565e913fa67f0246a4ea105ecb7f7531451930d9df547bc40`

```dockerfile
```

-	Layers:
	-	`sha256:b588a24b105229752714a780d78263d6c0859cc77c4dd3be08f7a23da933e042`  
		Last Modified: Tue, 15 Sep 2026 23:09:40 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:a79830ce73fb96da10ec37eae240bface2af1faa57e87f8d5d9b20ca193e5dbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.9 MB (320905425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289207ae2857ad8160e17df9d26d926bf336b2dfb1c2630ef9a47b44e691dc3d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 22:37:29 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:37:30 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 22:37:30 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 22:37:30 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:37:30 GMT
WORKDIR /root
# Tue, 15 Sep 2026 22:37:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2ad386b9d84332bdfc34ec892e84cab75b0044470817c8e2a0e28817989459`  
		Last Modified: Tue, 15 Sep 2026 22:38:15 GMT  
		Size: 48.0 MB (47980601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7817ea29b65f20a000fe21d25d8d418a5f843a5bf554e2ca5fe113dd7b0287`  
		Last Modified: Tue, 15 Sep 2026 22:38:13 GMT  
		Size: 1.6 MB (1564388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a634f0d56bbc0bca88aa28567fed8dae6ebdceb31fdf1286b09a2b10416835a9`  
		Last Modified: Tue, 15 Sep 2026 22:38:19 GMT  
		Size: 241.2 MB (241200822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:6cac5453a66b4787a009ec07b8bfa1e0a26132676b8ca23c14ae00f6efd5c6bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f26f22431a0ee93b0584a67fa1283ee03a15139751d32198c99539635a2f26e2`

```dockerfile
```

-	Layers:
	-	`sha256:2a658c1cec74c93bb8ca1c0ac90d0c1ca64a69222782c6181b1f93a5d0ea4c18`  
		Last Modified: Tue, 15 Sep 2026 22:38:13 GMT  
		Size: 20.8 KB (20820 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:5aca2c12b70c2e5f1a8b710b2ed9fcb189cf4f757ef5d5d1b6cc033d7cefbd2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255349306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8b5ea40caebed504ed5050a8ac08df844a5f41fd7f61670ea19e4d869d8d2e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 10 Sep 2026 18:46:06 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 18:46:08 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 10 Sep 2026 18:46:08 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 10 Sep 2026 18:46:08 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 18:46:08 GMT
WORKDIR /root
# Fri, 18 Sep 2026 16:02:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8123bfb505ded7faf13b6fd682eb752f0bddd946645927936a53bcc94c1d7d2b`  
		Last Modified: Thu, 10 Sep 2026 18:51:37 GMT  
		Size: 44.2 MB (44215927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84782f90a7e14c2cd54f6cd1558b26a3e9298c2315d2d44cf16301db3598d0af`  
		Last Modified: Thu, 10 Sep 2026 18:51:24 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d674d09e6285b2e29e496457deb0ec314d1bc4a43a1b548e7e3cc919fa58ba1`  
		Last Modified: Fri, 18 Sep 2026 16:07:00 GMT  
		Size: 181.3 MB (181272436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:e9c17cd1ea867765898feca5ba3cb70f18e0a102b16eec02cadeb6e2c2db1cb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568a156454ff903d48d79b71727660884187b5288912c437872206f7b93b30be`

```dockerfile
```

-	Layers:
	-	`sha256:df3439de640b918a282c81cb264a0bd056d3f0388891074fd6ca30d594386b38`  
		Last Modified: Fri, 18 Sep 2026 16:06:33 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13`

```console
$ docker pull dart@sha256:4d16dff097fa0a076adf68a4ee8efc740dc4d602177848c07684176a29217d58
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
$ docker pull dart@sha256:6bb0ac8da25faa4f9310612a20a76b9cc58326d00b516b152fd40ac4db8315cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.9 MB (321897610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e92407773ba6afa2d76a438a2efef39daa8c8e4a9228968b73ba8542317113ba`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 22:31:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:31:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 22:31:06 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 22:31:06 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:31:06 GMT
WORKDIR /root
# Tue, 15 Sep 2026 22:31:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7721c9bff41a945f507275fc1daf17b46e4db4695e03dc844c1e0ce7d0410d05`  
		Last Modified: Tue, 15 Sep 2026 22:31:45 GMT  
		Size: 47.9 MB (47867587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4488c42c649126f630919a33d11a3d5445d10b67209f373f50b874da092fec18`  
		Last Modified: Tue, 15 Sep 2026 22:31:43 GMT  
		Size: 1.9 MB (1869785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b5eafafad36970681a5b60f67a2b668af29c8660414388bddb0bf281f4ce56c`  
		Last Modified: Tue, 15 Sep 2026 22:31:49 GMT  
		Size: 242.4 MB (242367548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:0c2c86cbf3f20540f44a3d3fc4e63fd77f199d1c9a749dd3c04ea1a8f751be3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b249a1ec582a18a444dd66cd162afd090aa652a07061458e9a166a17603a48`

```dockerfile
```

-	Layers:
	-	`sha256:0d43c1ae7be98f0711b86ed05e0f555308be3bb7a96bd10745c257bf72655f5d`  
		Last Modified: Tue, 15 Sep 2026 22:31:42 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13` - linux; arm variant v7

```console
$ docker pull dart@sha256:799daa316df1a91e4b558c4aacbc1606a5f5d30d00abe5a767cab722b7d31bba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234877106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df34a5139987f56d9f9dc0790278a9049433ec519e1c0dcd21ff637b9ea7b93`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 23:09:10 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 23:09:10 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 23:09:10 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 23:09:10 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 23:09:10 GMT
WORKDIR /root
# Tue, 15 Sep 2026 23:09:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1bf30aeb76cb00fa3ddc82173e9e51f836294bc146720f44fd47c61df1ba85f`  
		Last Modified: Tue, 15 Sep 2026 23:09:42 GMT  
		Size: 41.9 MB (41914638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9c5d80d8b5281721e8b4c1059811dc7f773e842c8261aaf91252184d97a195`  
		Last Modified: Tue, 15 Sep 2026 23:09:41 GMT  
		Size: 1.3 MB (1273150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac568f83463655c1346658ad94bb927ab73070c2dd173500b77fdb54b432936`  
		Last Modified: Tue, 15 Sep 2026 23:09:45 GMT  
		Size: 165.5 MB (165470145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:668eeca27d06b1a63f7eaf5335264dc59b65de5b32b1da9fe0550f1a57db42f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b8aae52469f23565e913fa67f0246a4ea105ecb7f7531451930d9df547bc40`

```dockerfile
```

-	Layers:
	-	`sha256:b588a24b105229752714a780d78263d6c0859cc77c4dd3be08f7a23da933e042`  
		Last Modified: Tue, 15 Sep 2026 23:09:40 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:a79830ce73fb96da10ec37eae240bface2af1faa57e87f8d5d9b20ca193e5dbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.9 MB (320905425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289207ae2857ad8160e17df9d26d926bf336b2dfb1c2630ef9a47b44e691dc3d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 22:37:29 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:37:30 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 22:37:30 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 22:37:30 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:37:30 GMT
WORKDIR /root
# Tue, 15 Sep 2026 22:37:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2ad386b9d84332bdfc34ec892e84cab75b0044470817c8e2a0e28817989459`  
		Last Modified: Tue, 15 Sep 2026 22:38:15 GMT  
		Size: 48.0 MB (47980601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7817ea29b65f20a000fe21d25d8d418a5f843a5bf554e2ca5fe113dd7b0287`  
		Last Modified: Tue, 15 Sep 2026 22:38:13 GMT  
		Size: 1.6 MB (1564388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a634f0d56bbc0bca88aa28567fed8dae6ebdceb31fdf1286b09a2b10416835a9`  
		Last Modified: Tue, 15 Sep 2026 22:38:19 GMT  
		Size: 241.2 MB (241200822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:6cac5453a66b4787a009ec07b8bfa1e0a26132676b8ca23c14ae00f6efd5c6bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f26f22431a0ee93b0584a67fa1283ee03a15139751d32198c99539635a2f26e2`

```dockerfile
```

-	Layers:
	-	`sha256:2a658c1cec74c93bb8ca1c0ac90d0c1ca64a69222782c6181b1f93a5d0ea4c18`  
		Last Modified: Tue, 15 Sep 2026 22:38:13 GMT  
		Size: 20.8 KB (20820 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13` - linux; riscv64

```console
$ docker pull dart@sha256:5aca2c12b70c2e5f1a8b710b2ed9fcb189cf4f757ef5d5d1b6cc033d7cefbd2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255349306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8b5ea40caebed504ed5050a8ac08df844a5f41fd7f61670ea19e4d869d8d2e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 10 Sep 2026 18:46:06 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 18:46:08 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 10 Sep 2026 18:46:08 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 10 Sep 2026 18:46:08 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 18:46:08 GMT
WORKDIR /root
# Fri, 18 Sep 2026 16:02:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8123bfb505ded7faf13b6fd682eb752f0bddd946645927936a53bcc94c1d7d2b`  
		Last Modified: Thu, 10 Sep 2026 18:51:37 GMT  
		Size: 44.2 MB (44215927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84782f90a7e14c2cd54f6cd1558b26a3e9298c2315d2d44cf16301db3598d0af`  
		Last Modified: Thu, 10 Sep 2026 18:51:24 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d674d09e6285b2e29e496457deb0ec314d1bc4a43a1b548e7e3cc919fa58ba1`  
		Last Modified: Fri, 18 Sep 2026 16:07:00 GMT  
		Size: 181.3 MB (181272436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:e9c17cd1ea867765898feca5ba3cb70f18e0a102b16eec02cadeb6e2c2db1cb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568a156454ff903d48d79b71727660884187b5288912c437872206f7b93b30be`

```dockerfile
```

-	Layers:
	-	`sha256:df3439de640b918a282c81cb264a0bd056d3f0388891074fd6ca30d594386b38`  
		Last Modified: Fri, 18 Sep 2026 16:06:33 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13-sdk`

```console
$ docker pull dart@sha256:4d16dff097fa0a076adf68a4ee8efc740dc4d602177848c07684176a29217d58
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
$ docker pull dart@sha256:6bb0ac8da25faa4f9310612a20a76b9cc58326d00b516b152fd40ac4db8315cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.9 MB (321897610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e92407773ba6afa2d76a438a2efef39daa8c8e4a9228968b73ba8542317113ba`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 22:31:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:31:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 22:31:06 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 22:31:06 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:31:06 GMT
WORKDIR /root
# Tue, 15 Sep 2026 22:31:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7721c9bff41a945f507275fc1daf17b46e4db4695e03dc844c1e0ce7d0410d05`  
		Last Modified: Tue, 15 Sep 2026 22:31:45 GMT  
		Size: 47.9 MB (47867587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4488c42c649126f630919a33d11a3d5445d10b67209f373f50b874da092fec18`  
		Last Modified: Tue, 15 Sep 2026 22:31:43 GMT  
		Size: 1.9 MB (1869785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b5eafafad36970681a5b60f67a2b668af29c8660414388bddb0bf281f4ce56c`  
		Last Modified: Tue, 15 Sep 2026 22:31:49 GMT  
		Size: 242.4 MB (242367548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:0c2c86cbf3f20540f44a3d3fc4e63fd77f199d1c9a749dd3c04ea1a8f751be3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b249a1ec582a18a444dd66cd162afd090aa652a07061458e9a166a17603a48`

```dockerfile
```

-	Layers:
	-	`sha256:0d43c1ae7be98f0711b86ed05e0f555308be3bb7a96bd10745c257bf72655f5d`  
		Last Modified: Tue, 15 Sep 2026 22:31:42 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:799daa316df1a91e4b558c4aacbc1606a5f5d30d00abe5a767cab722b7d31bba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234877106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df34a5139987f56d9f9dc0790278a9049433ec519e1c0dcd21ff637b9ea7b93`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 23:09:10 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 23:09:10 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 23:09:10 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 23:09:10 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 23:09:10 GMT
WORKDIR /root
# Tue, 15 Sep 2026 23:09:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1bf30aeb76cb00fa3ddc82173e9e51f836294bc146720f44fd47c61df1ba85f`  
		Last Modified: Tue, 15 Sep 2026 23:09:42 GMT  
		Size: 41.9 MB (41914638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9c5d80d8b5281721e8b4c1059811dc7f773e842c8261aaf91252184d97a195`  
		Last Modified: Tue, 15 Sep 2026 23:09:41 GMT  
		Size: 1.3 MB (1273150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac568f83463655c1346658ad94bb927ab73070c2dd173500b77fdb54b432936`  
		Last Modified: Tue, 15 Sep 2026 23:09:45 GMT  
		Size: 165.5 MB (165470145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:668eeca27d06b1a63f7eaf5335264dc59b65de5b32b1da9fe0550f1a57db42f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b8aae52469f23565e913fa67f0246a4ea105ecb7f7531451930d9df547bc40`

```dockerfile
```

-	Layers:
	-	`sha256:b588a24b105229752714a780d78263d6c0859cc77c4dd3be08f7a23da933e042`  
		Last Modified: Tue, 15 Sep 2026 23:09:40 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:a79830ce73fb96da10ec37eae240bface2af1faa57e87f8d5d9b20ca193e5dbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.9 MB (320905425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289207ae2857ad8160e17df9d26d926bf336b2dfb1c2630ef9a47b44e691dc3d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 22:37:29 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:37:30 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 22:37:30 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 22:37:30 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:37:30 GMT
WORKDIR /root
# Tue, 15 Sep 2026 22:37:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2ad386b9d84332bdfc34ec892e84cab75b0044470817c8e2a0e28817989459`  
		Last Modified: Tue, 15 Sep 2026 22:38:15 GMT  
		Size: 48.0 MB (47980601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7817ea29b65f20a000fe21d25d8d418a5f843a5bf554e2ca5fe113dd7b0287`  
		Last Modified: Tue, 15 Sep 2026 22:38:13 GMT  
		Size: 1.6 MB (1564388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a634f0d56bbc0bca88aa28567fed8dae6ebdceb31fdf1286b09a2b10416835a9`  
		Last Modified: Tue, 15 Sep 2026 22:38:19 GMT  
		Size: 241.2 MB (241200822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:6cac5453a66b4787a009ec07b8bfa1e0a26132676b8ca23c14ae00f6efd5c6bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f26f22431a0ee93b0584a67fa1283ee03a15139751d32198c99539635a2f26e2`

```dockerfile
```

-	Layers:
	-	`sha256:2a658c1cec74c93bb8ca1c0ac90d0c1ca64a69222782c6181b1f93a5d0ea4c18`  
		Last Modified: Tue, 15 Sep 2026 22:38:13 GMT  
		Size: 20.8 KB (20820 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:5aca2c12b70c2e5f1a8b710b2ed9fcb189cf4f757ef5d5d1b6cc033d7cefbd2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255349306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8b5ea40caebed504ed5050a8ac08df844a5f41fd7f61670ea19e4d869d8d2e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 10 Sep 2026 18:46:06 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 18:46:08 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 10 Sep 2026 18:46:08 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 10 Sep 2026 18:46:08 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 18:46:08 GMT
WORKDIR /root
# Fri, 18 Sep 2026 16:02:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8123bfb505ded7faf13b6fd682eb752f0bddd946645927936a53bcc94c1d7d2b`  
		Last Modified: Thu, 10 Sep 2026 18:51:37 GMT  
		Size: 44.2 MB (44215927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84782f90a7e14c2cd54f6cd1558b26a3e9298c2315d2d44cf16301db3598d0af`  
		Last Modified: Thu, 10 Sep 2026 18:51:24 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d674d09e6285b2e29e496457deb0ec314d1bc4a43a1b548e7e3cc919fa58ba1`  
		Last Modified: Fri, 18 Sep 2026 16:07:00 GMT  
		Size: 181.3 MB (181272436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:e9c17cd1ea867765898feca5ba3cb70f18e0a102b16eec02cadeb6e2c2db1cb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568a156454ff903d48d79b71727660884187b5288912c437872206f7b93b30be`

```dockerfile
```

-	Layers:
	-	`sha256:df3439de640b918a282c81cb264a0bd056d3f0388891074fd6ca30d594386b38`  
		Last Modified: Fri, 18 Sep 2026 16:06:33 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13.4`

```console
$ docker pull dart@sha256:4d16dff097fa0a076adf68a4ee8efc740dc4d602177848c07684176a29217d58
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

### `dart:3.13.4` - linux; amd64

```console
$ docker pull dart@sha256:6bb0ac8da25faa4f9310612a20a76b9cc58326d00b516b152fd40ac4db8315cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.9 MB (321897610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e92407773ba6afa2d76a438a2efef39daa8c8e4a9228968b73ba8542317113ba`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 22:31:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:31:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 22:31:06 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 22:31:06 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:31:06 GMT
WORKDIR /root
# Tue, 15 Sep 2026 22:31:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7721c9bff41a945f507275fc1daf17b46e4db4695e03dc844c1e0ce7d0410d05`  
		Last Modified: Tue, 15 Sep 2026 22:31:45 GMT  
		Size: 47.9 MB (47867587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4488c42c649126f630919a33d11a3d5445d10b67209f373f50b874da092fec18`  
		Last Modified: Tue, 15 Sep 2026 22:31:43 GMT  
		Size: 1.9 MB (1869785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b5eafafad36970681a5b60f67a2b668af29c8660414388bddb0bf281f4ce56c`  
		Last Modified: Tue, 15 Sep 2026 22:31:49 GMT  
		Size: 242.4 MB (242367548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.4` - unknown; unknown

```console
$ docker pull dart@sha256:0c2c86cbf3f20540f44a3d3fc4e63fd77f199d1c9a749dd3c04ea1a8f751be3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b249a1ec582a18a444dd66cd162afd090aa652a07061458e9a166a17603a48`

```dockerfile
```

-	Layers:
	-	`sha256:0d43c1ae7be98f0711b86ed05e0f555308be3bb7a96bd10745c257bf72655f5d`  
		Last Modified: Tue, 15 Sep 2026 22:31:42 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.4` - linux; arm variant v7

```console
$ docker pull dart@sha256:799daa316df1a91e4b558c4aacbc1606a5f5d30d00abe5a767cab722b7d31bba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234877106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df34a5139987f56d9f9dc0790278a9049433ec519e1c0dcd21ff637b9ea7b93`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 23:09:10 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 23:09:10 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 23:09:10 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 23:09:10 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 23:09:10 GMT
WORKDIR /root
# Tue, 15 Sep 2026 23:09:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1bf30aeb76cb00fa3ddc82173e9e51f836294bc146720f44fd47c61df1ba85f`  
		Last Modified: Tue, 15 Sep 2026 23:09:42 GMT  
		Size: 41.9 MB (41914638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9c5d80d8b5281721e8b4c1059811dc7f773e842c8261aaf91252184d97a195`  
		Last Modified: Tue, 15 Sep 2026 23:09:41 GMT  
		Size: 1.3 MB (1273150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac568f83463655c1346658ad94bb927ab73070c2dd173500b77fdb54b432936`  
		Last Modified: Tue, 15 Sep 2026 23:09:45 GMT  
		Size: 165.5 MB (165470145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.4` - unknown; unknown

```console
$ docker pull dart@sha256:668eeca27d06b1a63f7eaf5335264dc59b65de5b32b1da9fe0550f1a57db42f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b8aae52469f23565e913fa67f0246a4ea105ecb7f7531451930d9df547bc40`

```dockerfile
```

-	Layers:
	-	`sha256:b588a24b105229752714a780d78263d6c0859cc77c4dd3be08f7a23da933e042`  
		Last Modified: Tue, 15 Sep 2026 23:09:40 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.4` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:a79830ce73fb96da10ec37eae240bface2af1faa57e87f8d5d9b20ca193e5dbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.9 MB (320905425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289207ae2857ad8160e17df9d26d926bf336b2dfb1c2630ef9a47b44e691dc3d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 22:37:29 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:37:30 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 22:37:30 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 22:37:30 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:37:30 GMT
WORKDIR /root
# Tue, 15 Sep 2026 22:37:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2ad386b9d84332bdfc34ec892e84cab75b0044470817c8e2a0e28817989459`  
		Last Modified: Tue, 15 Sep 2026 22:38:15 GMT  
		Size: 48.0 MB (47980601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7817ea29b65f20a000fe21d25d8d418a5f843a5bf554e2ca5fe113dd7b0287`  
		Last Modified: Tue, 15 Sep 2026 22:38:13 GMT  
		Size: 1.6 MB (1564388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a634f0d56bbc0bca88aa28567fed8dae6ebdceb31fdf1286b09a2b10416835a9`  
		Last Modified: Tue, 15 Sep 2026 22:38:19 GMT  
		Size: 241.2 MB (241200822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.4` - unknown; unknown

```console
$ docker pull dart@sha256:6cac5453a66b4787a009ec07b8bfa1e0a26132676b8ca23c14ae00f6efd5c6bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f26f22431a0ee93b0584a67fa1283ee03a15139751d32198c99539635a2f26e2`

```dockerfile
```

-	Layers:
	-	`sha256:2a658c1cec74c93bb8ca1c0ac90d0c1ca64a69222782c6181b1f93a5d0ea4c18`  
		Last Modified: Tue, 15 Sep 2026 22:38:13 GMT  
		Size: 20.8 KB (20820 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.4` - linux; riscv64

```console
$ docker pull dart@sha256:5aca2c12b70c2e5f1a8b710b2ed9fcb189cf4f757ef5d5d1b6cc033d7cefbd2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255349306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8b5ea40caebed504ed5050a8ac08df844a5f41fd7f61670ea19e4d869d8d2e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 10 Sep 2026 18:46:06 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 18:46:08 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 10 Sep 2026 18:46:08 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 10 Sep 2026 18:46:08 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 18:46:08 GMT
WORKDIR /root
# Fri, 18 Sep 2026 16:02:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8123bfb505ded7faf13b6fd682eb752f0bddd946645927936a53bcc94c1d7d2b`  
		Last Modified: Thu, 10 Sep 2026 18:51:37 GMT  
		Size: 44.2 MB (44215927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84782f90a7e14c2cd54f6cd1558b26a3e9298c2315d2d44cf16301db3598d0af`  
		Last Modified: Thu, 10 Sep 2026 18:51:24 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d674d09e6285b2e29e496457deb0ec314d1bc4a43a1b548e7e3cc919fa58ba1`  
		Last Modified: Fri, 18 Sep 2026 16:07:00 GMT  
		Size: 181.3 MB (181272436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.4` - unknown; unknown

```console
$ docker pull dart@sha256:e9c17cd1ea867765898feca5ba3cb70f18e0a102b16eec02cadeb6e2c2db1cb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568a156454ff903d48d79b71727660884187b5288912c437872206f7b93b30be`

```dockerfile
```

-	Layers:
	-	`sha256:df3439de640b918a282c81cb264a0bd056d3f0388891074fd6ca30d594386b38`  
		Last Modified: Fri, 18 Sep 2026 16:06:33 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13.4-sdk`

```console
$ docker pull dart@sha256:4d16dff097fa0a076adf68a4ee8efc740dc4d602177848c07684176a29217d58
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

### `dart:3.13.4-sdk` - linux; amd64

```console
$ docker pull dart@sha256:6bb0ac8da25faa4f9310612a20a76b9cc58326d00b516b152fd40ac4db8315cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.9 MB (321897610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e92407773ba6afa2d76a438a2efef39daa8c8e4a9228968b73ba8542317113ba`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 22:31:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:31:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 22:31:06 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 22:31:06 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:31:06 GMT
WORKDIR /root
# Tue, 15 Sep 2026 22:31:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7721c9bff41a945f507275fc1daf17b46e4db4695e03dc844c1e0ce7d0410d05`  
		Last Modified: Tue, 15 Sep 2026 22:31:45 GMT  
		Size: 47.9 MB (47867587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4488c42c649126f630919a33d11a3d5445d10b67209f373f50b874da092fec18`  
		Last Modified: Tue, 15 Sep 2026 22:31:43 GMT  
		Size: 1.9 MB (1869785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b5eafafad36970681a5b60f67a2b668af29c8660414388bddb0bf281f4ce56c`  
		Last Modified: Tue, 15 Sep 2026 22:31:49 GMT  
		Size: 242.4 MB (242367548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.4-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:0c2c86cbf3f20540f44a3d3fc4e63fd77f199d1c9a749dd3c04ea1a8f751be3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b249a1ec582a18a444dd66cd162afd090aa652a07061458e9a166a17603a48`

```dockerfile
```

-	Layers:
	-	`sha256:0d43c1ae7be98f0711b86ed05e0f555308be3bb7a96bd10745c257bf72655f5d`  
		Last Modified: Tue, 15 Sep 2026 22:31:42 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.4-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:799daa316df1a91e4b558c4aacbc1606a5f5d30d00abe5a767cab722b7d31bba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234877106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df34a5139987f56d9f9dc0790278a9049433ec519e1c0dcd21ff637b9ea7b93`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 23:09:10 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 23:09:10 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 23:09:10 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 23:09:10 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 23:09:10 GMT
WORKDIR /root
# Tue, 15 Sep 2026 23:09:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1bf30aeb76cb00fa3ddc82173e9e51f836294bc146720f44fd47c61df1ba85f`  
		Last Modified: Tue, 15 Sep 2026 23:09:42 GMT  
		Size: 41.9 MB (41914638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9c5d80d8b5281721e8b4c1059811dc7f773e842c8261aaf91252184d97a195`  
		Last Modified: Tue, 15 Sep 2026 23:09:41 GMT  
		Size: 1.3 MB (1273150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac568f83463655c1346658ad94bb927ab73070c2dd173500b77fdb54b432936`  
		Last Modified: Tue, 15 Sep 2026 23:09:45 GMT  
		Size: 165.5 MB (165470145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.4-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:668eeca27d06b1a63f7eaf5335264dc59b65de5b32b1da9fe0550f1a57db42f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b8aae52469f23565e913fa67f0246a4ea105ecb7f7531451930d9df547bc40`

```dockerfile
```

-	Layers:
	-	`sha256:b588a24b105229752714a780d78263d6c0859cc77c4dd3be08f7a23da933e042`  
		Last Modified: Tue, 15 Sep 2026 23:09:40 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.4-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:a79830ce73fb96da10ec37eae240bface2af1faa57e87f8d5d9b20ca193e5dbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.9 MB (320905425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289207ae2857ad8160e17df9d26d926bf336b2dfb1c2630ef9a47b44e691dc3d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 22:37:29 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:37:30 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 22:37:30 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 22:37:30 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:37:30 GMT
WORKDIR /root
# Tue, 15 Sep 2026 22:37:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2ad386b9d84332bdfc34ec892e84cab75b0044470817c8e2a0e28817989459`  
		Last Modified: Tue, 15 Sep 2026 22:38:15 GMT  
		Size: 48.0 MB (47980601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7817ea29b65f20a000fe21d25d8d418a5f843a5bf554e2ca5fe113dd7b0287`  
		Last Modified: Tue, 15 Sep 2026 22:38:13 GMT  
		Size: 1.6 MB (1564388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a634f0d56bbc0bca88aa28567fed8dae6ebdceb31fdf1286b09a2b10416835a9`  
		Last Modified: Tue, 15 Sep 2026 22:38:19 GMT  
		Size: 241.2 MB (241200822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.4-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:6cac5453a66b4787a009ec07b8bfa1e0a26132676b8ca23c14ae00f6efd5c6bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f26f22431a0ee93b0584a67fa1283ee03a15139751d32198c99539635a2f26e2`

```dockerfile
```

-	Layers:
	-	`sha256:2a658c1cec74c93bb8ca1c0ac90d0c1ca64a69222782c6181b1f93a5d0ea4c18`  
		Last Modified: Tue, 15 Sep 2026 22:38:13 GMT  
		Size: 20.8 KB (20820 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.4-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:5aca2c12b70c2e5f1a8b710b2ed9fcb189cf4f757ef5d5d1b6cc033d7cefbd2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255349306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8b5ea40caebed504ed5050a8ac08df844a5f41fd7f61670ea19e4d869d8d2e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 10 Sep 2026 18:46:06 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 18:46:08 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 10 Sep 2026 18:46:08 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 10 Sep 2026 18:46:08 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 18:46:08 GMT
WORKDIR /root
# Fri, 18 Sep 2026 16:02:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8123bfb505ded7faf13b6fd682eb752f0bddd946645927936a53bcc94c1d7d2b`  
		Last Modified: Thu, 10 Sep 2026 18:51:37 GMT  
		Size: 44.2 MB (44215927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84782f90a7e14c2cd54f6cd1558b26a3e9298c2315d2d44cf16301db3598d0af`  
		Last Modified: Thu, 10 Sep 2026 18:51:24 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d674d09e6285b2e29e496457deb0ec314d1bc4a43a1b548e7e3cc919fa58ba1`  
		Last Modified: Fri, 18 Sep 2026 16:07:00 GMT  
		Size: 181.3 MB (181272436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.4-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:e9c17cd1ea867765898feca5ba3cb70f18e0a102b16eec02cadeb6e2c2db1cb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568a156454ff903d48d79b71727660884187b5288912c437872206f7b93b30be`

```dockerfile
```

-	Layers:
	-	`sha256:df3439de640b918a282c81cb264a0bd056d3f0388891074fd6ca30d594386b38`  
		Last Modified: Fri, 18 Sep 2026 16:06:33 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.14.0-211.1.beta`

```console
$ docker pull dart@sha256:3afca6cdf526fe40156f477ef5b7e7879b98d1dc85d4e3ff77ac69c72f521725
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

### `dart:3.14.0-211.1.beta` - linux; amd64

```console
$ docker pull dart@sha256:090275a114d3436bfa21c53aa26d5776fa582694c1260bbc6608c07743d7f613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.9 MB (347879480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:650381c286c41ded650885071f6264ff2220565c9831e0dc4066e89807278025`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Thu, 10 Sep 2026 18:31:18 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 18:31:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 10 Sep 2026 18:31:19 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 10 Sep 2026 18:31:19 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 18:31:19 GMT
WORKDIR /root
# Thu, 10 Sep 2026 18:31:31 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:218478ed2172f7b0c51c197773f206f925c344d27ed9c5216b19ef7a67c6c196`  
		Last Modified: Thu, 10 Sep 2026 18:32:04 GMT  
		Size: 45.5 MB (45492001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:014346f96dae2b962ecbfba5d2347caac8a56553e5043c020f4f5bd79287baca`  
		Last Modified: Thu, 10 Sep 2026 18:32:02 GMT  
		Size: 1.9 MB (1869788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b21951ecb627ec75633b0e988eb70d7a8630a0b73562584ca0976bca3d960b`  
		Last Modified: Thu, 10 Sep 2026 18:32:08 GMT  
		Size: 270.7 MB (270725001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-211.1.beta` - unknown; unknown

```console
$ docker pull dart@sha256:6fa617942cb20dcf8380ef9b8d367f2af289e03cacf62cbf4878fe5956084975
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5085de76178ded569f95294d9360b832615af09744dcebabf6a27ddd20d120f`

```dockerfile
```

-	Layers:
	-	`sha256:740d7bb10f36bd56079b8a368be60ec1017e8c0aae1f010cd4ced995c71b0c68`  
		Last Modified: Thu, 10 Sep 2026 18:32:02 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-211.1.beta` - linux; arm variant v7

```console
$ docker pull dart@sha256:6c70ffdaa4a5a4653ead1daa986bfa34a4ab1545f711798d4b20ad989e1625b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.7 MB (239652103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47998ac1f88870759fa3d966709ea7bce9870a7eddca3f6ec18dac0943c1e9e5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Thu, 10 Sep 2026 18:31:06 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 18:31:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 10 Sep 2026 18:31:06 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 10 Sep 2026 18:31:06 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 18:31:06 GMT
WORKDIR /root
# Thu, 10 Sep 2026 18:31:15 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338bd7b8b13b2da4ef252ce4986f989f9f7074bf096c703d16a54672500242c2`  
		Last Modified: Thu, 10 Sep 2026 18:31:39 GMT  
		Size: 39.7 MB (39733225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4da712bdd748a7ad0824994604bbf12d04b772ba4f3b32d54d1a5d7afc8f7e68`  
		Last Modified: Thu, 10 Sep 2026 18:31:37 GMT  
		Size: 1.3 MB (1273155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057f9f45f4934c4c35cbac604803c2ed2bfa0464e6644f45c4e4d3ef36267a6a`  
		Last Modified: Thu, 10 Sep 2026 18:31:41 GMT  
		Size: 172.4 MB (172426550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-211.1.beta` - unknown; unknown

```console
$ docker pull dart@sha256:0c03726ffcbf86f9feb683dce97635edd5aba56e2475204a0af77d9365656a1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5ad92df7e7ab30eb04aae1089d75bae3ed3389240e721592302b1b322268f1c`

```dockerfile
```

-	Layers:
	-	`sha256:f95037dedec415f93d1ebafd646c346cf02d1fd7a79bfac1ff10c100e158dff7`  
		Last Modified: Thu, 10 Sep 2026 18:31:37 GMT  
		Size: 19.0 KB (19029 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-211.1.beta` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:f9c19aae230b513e34c94d58c53b45b50d2e5fadb3d8fdc8e2b8efc128134882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.5 MB (346520708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f615021616a41f9f2f15d5726b1a315141a89ecafa54a7c1c3664c52152825a8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Thu, 10 Sep 2026 18:30:55 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 18:30:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 10 Sep 2026 18:30:55 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 10 Sep 2026 18:30:55 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 18:30:55 GMT
WORKDIR /root
# Thu, 10 Sep 2026 18:31:10 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f67e2a6f80cd38a4e83c85f8fca6a862de410e4d5bea9e2493a2d0ae6ae120`  
		Last Modified: Thu, 10 Sep 2026 18:31:43 GMT  
		Size: 45.6 MB (45642648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02c84e6e93b7631bed71ae32a18880b1ac256d2d4fe50e70df572d917df7de1a`  
		Last Modified: Thu, 10 Sep 2026 18:31:41 GMT  
		Size: 1.6 MB (1564376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a121ff6c41792c04327db05502eefcff6dcdeeb67a10e81b395a99acd4a94207`  
		Last Modified: Thu, 10 Sep 2026 18:31:49 GMT  
		Size: 269.2 MB (269154070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-211.1.beta` - unknown; unknown

```console
$ docker pull dart@sha256:b5f929f6ff9a3462ade2ec5d9f3d9ef8881bf855d24fe6780059860fa79ccdad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:507044bb8ddee87c9024eb38fb0bfad2b10717e2984339951b4f714c500918b0`

```dockerfile
```

-	Layers:
	-	`sha256:d9f6b2d34f2f484ea8fdf867563ea569b7fbab092618c654b2a48003e8da192a`  
		Last Modified: Thu, 10 Sep 2026 18:31:40 GMT  
		Size: 19.1 KB (19057 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-211.1.beta` - linux; riscv64

```console
$ docker pull dart@sha256:e530a61e7fad6dca62d14bd8019c0660a1572fc22356807a1af0125433be7c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274553547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49649c4725248003158636bc94073fa2af51ebd037d47eefd5590342322a4422`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 10 Sep 2026 18:46:06 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 18:46:08 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 10 Sep 2026 18:46:08 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 10 Sep 2026 18:46:08 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 18:46:08 GMT
WORKDIR /root
# Thu, 10 Sep 2026 18:46:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8123bfb505ded7faf13b6fd682eb752f0bddd946645927936a53bcc94c1d7d2b`  
		Last Modified: Thu, 10 Sep 2026 18:51:37 GMT  
		Size: 44.2 MB (44215927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84782f90a7e14c2cd54f6cd1558b26a3e9298c2315d2d44cf16301db3598d0af`  
		Last Modified: Thu, 10 Sep 2026 18:51:24 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a5b69639fe0fabf1079b7edabf45f10bb43d7b769815721ce75151e16d1d4e0`  
		Last Modified: Thu, 10 Sep 2026 18:51:59 GMT  
		Size: 200.5 MB (200476677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-211.1.beta` - unknown; unknown

```console
$ docker pull dart@sha256:7d68bc2ff993c1f4c9a05cb6161307037dfc427c1cbe7cc67f60173b5863d706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad637b43bff7f9a123317f650b6bbcda1b6e70e8dee5c7cb12c869965e0da9bf`

```dockerfile
```

-	Layers:
	-	`sha256:1559bbc06677a83425124d807a29461caea4e81f6ee8f5bf070c0fbe24e7f398`  
		Last Modified: Thu, 10 Sep 2026 18:51:24 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.14.0-211.1.beta-sdk`

```console
$ docker pull dart@sha256:3afca6cdf526fe40156f477ef5b7e7879b98d1dc85d4e3ff77ac69c72f521725
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

### `dart:3.14.0-211.1.beta-sdk` - linux; amd64

```console
$ docker pull dart@sha256:090275a114d3436bfa21c53aa26d5776fa582694c1260bbc6608c07743d7f613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.9 MB (347879480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:650381c286c41ded650885071f6264ff2220565c9831e0dc4066e89807278025`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Thu, 10 Sep 2026 18:31:18 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 18:31:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 10 Sep 2026 18:31:19 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 10 Sep 2026 18:31:19 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 18:31:19 GMT
WORKDIR /root
# Thu, 10 Sep 2026 18:31:31 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:218478ed2172f7b0c51c197773f206f925c344d27ed9c5216b19ef7a67c6c196`  
		Last Modified: Thu, 10 Sep 2026 18:32:04 GMT  
		Size: 45.5 MB (45492001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:014346f96dae2b962ecbfba5d2347caac8a56553e5043c020f4f5bd79287baca`  
		Last Modified: Thu, 10 Sep 2026 18:32:02 GMT  
		Size: 1.9 MB (1869788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b21951ecb627ec75633b0e988eb70d7a8630a0b73562584ca0976bca3d960b`  
		Last Modified: Thu, 10 Sep 2026 18:32:08 GMT  
		Size: 270.7 MB (270725001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-211.1.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:6fa617942cb20dcf8380ef9b8d367f2af289e03cacf62cbf4878fe5956084975
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5085de76178ded569f95294d9360b832615af09744dcebabf6a27ddd20d120f`

```dockerfile
```

-	Layers:
	-	`sha256:740d7bb10f36bd56079b8a368be60ec1017e8c0aae1f010cd4ced995c71b0c68`  
		Last Modified: Thu, 10 Sep 2026 18:32:02 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-211.1.beta-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:6c70ffdaa4a5a4653ead1daa986bfa34a4ab1545f711798d4b20ad989e1625b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.7 MB (239652103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47998ac1f88870759fa3d966709ea7bce9870a7eddca3f6ec18dac0943c1e9e5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Thu, 10 Sep 2026 18:31:06 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 18:31:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 10 Sep 2026 18:31:06 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 10 Sep 2026 18:31:06 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 18:31:06 GMT
WORKDIR /root
# Thu, 10 Sep 2026 18:31:15 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338bd7b8b13b2da4ef252ce4986f989f9f7074bf096c703d16a54672500242c2`  
		Last Modified: Thu, 10 Sep 2026 18:31:39 GMT  
		Size: 39.7 MB (39733225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4da712bdd748a7ad0824994604bbf12d04b772ba4f3b32d54d1a5d7afc8f7e68`  
		Last Modified: Thu, 10 Sep 2026 18:31:37 GMT  
		Size: 1.3 MB (1273155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057f9f45f4934c4c35cbac604803c2ed2bfa0464e6644f45c4e4d3ef36267a6a`  
		Last Modified: Thu, 10 Sep 2026 18:31:41 GMT  
		Size: 172.4 MB (172426550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-211.1.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:0c03726ffcbf86f9feb683dce97635edd5aba56e2475204a0af77d9365656a1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5ad92df7e7ab30eb04aae1089d75bae3ed3389240e721592302b1b322268f1c`

```dockerfile
```

-	Layers:
	-	`sha256:f95037dedec415f93d1ebafd646c346cf02d1fd7a79bfac1ff10c100e158dff7`  
		Last Modified: Thu, 10 Sep 2026 18:31:37 GMT  
		Size: 19.0 KB (19029 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-211.1.beta-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:f9c19aae230b513e34c94d58c53b45b50d2e5fadb3d8fdc8e2b8efc128134882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.5 MB (346520708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f615021616a41f9f2f15d5726b1a315141a89ecafa54a7c1c3664c52152825a8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Thu, 10 Sep 2026 18:30:55 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 18:30:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 10 Sep 2026 18:30:55 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 10 Sep 2026 18:30:55 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 18:30:55 GMT
WORKDIR /root
# Thu, 10 Sep 2026 18:31:10 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f67e2a6f80cd38a4e83c85f8fca6a862de410e4d5bea9e2493a2d0ae6ae120`  
		Last Modified: Thu, 10 Sep 2026 18:31:43 GMT  
		Size: 45.6 MB (45642648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02c84e6e93b7631bed71ae32a18880b1ac256d2d4fe50e70df572d917df7de1a`  
		Last Modified: Thu, 10 Sep 2026 18:31:41 GMT  
		Size: 1.6 MB (1564376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a121ff6c41792c04327db05502eefcff6dcdeeb67a10e81b395a99acd4a94207`  
		Last Modified: Thu, 10 Sep 2026 18:31:49 GMT  
		Size: 269.2 MB (269154070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-211.1.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:b5f929f6ff9a3462ade2ec5d9f3d9ef8881bf855d24fe6780059860fa79ccdad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:507044bb8ddee87c9024eb38fb0bfad2b10717e2984339951b4f714c500918b0`

```dockerfile
```

-	Layers:
	-	`sha256:d9f6b2d34f2f484ea8fdf867563ea569b7fbab092618c654b2a48003e8da192a`  
		Last Modified: Thu, 10 Sep 2026 18:31:40 GMT  
		Size: 19.1 KB (19057 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-211.1.beta-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:e530a61e7fad6dca62d14bd8019c0660a1572fc22356807a1af0125433be7c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274553547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49649c4725248003158636bc94073fa2af51ebd037d47eefd5590342322a4422`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 10 Sep 2026 18:46:06 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 18:46:08 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 10 Sep 2026 18:46:08 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 10 Sep 2026 18:46:08 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 18:46:08 GMT
WORKDIR /root
# Thu, 10 Sep 2026 18:46:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8123bfb505ded7faf13b6fd682eb752f0bddd946645927936a53bcc94c1d7d2b`  
		Last Modified: Thu, 10 Sep 2026 18:51:37 GMT  
		Size: 44.2 MB (44215927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84782f90a7e14c2cd54f6cd1558b26a3e9298c2315d2d44cf16301db3598d0af`  
		Last Modified: Thu, 10 Sep 2026 18:51:24 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a5b69639fe0fabf1079b7edabf45f10bb43d7b769815721ce75151e16d1d4e0`  
		Last Modified: Thu, 10 Sep 2026 18:51:59 GMT  
		Size: 200.5 MB (200476677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-211.1.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:7d68bc2ff993c1f4c9a05cb6161307037dfc427c1cbe7cc67f60173b5863d706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad637b43bff7f9a123317f650b6bbcda1b6e70e8dee5c7cb12c869965e0da9bf`

```dockerfile
```

-	Layers:
	-	`sha256:1559bbc06677a83425124d807a29461caea4e81f6ee8f5bf070c0fbe24e7f398`  
		Last Modified: Thu, 10 Sep 2026 18:51:24 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:beta`

```console
$ docker pull dart@sha256:3afca6cdf526fe40156f477ef5b7e7879b98d1dc85d4e3ff77ac69c72f521725
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
$ docker pull dart@sha256:090275a114d3436bfa21c53aa26d5776fa582694c1260bbc6608c07743d7f613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.9 MB (347879480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:650381c286c41ded650885071f6264ff2220565c9831e0dc4066e89807278025`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Thu, 10 Sep 2026 18:31:18 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 18:31:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 10 Sep 2026 18:31:19 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 10 Sep 2026 18:31:19 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 18:31:19 GMT
WORKDIR /root
# Thu, 10 Sep 2026 18:31:31 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:218478ed2172f7b0c51c197773f206f925c344d27ed9c5216b19ef7a67c6c196`  
		Last Modified: Thu, 10 Sep 2026 18:32:04 GMT  
		Size: 45.5 MB (45492001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:014346f96dae2b962ecbfba5d2347caac8a56553e5043c020f4f5bd79287baca`  
		Last Modified: Thu, 10 Sep 2026 18:32:02 GMT  
		Size: 1.9 MB (1869788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b21951ecb627ec75633b0e988eb70d7a8630a0b73562584ca0976bca3d960b`  
		Last Modified: Thu, 10 Sep 2026 18:32:08 GMT  
		Size: 270.7 MB (270725001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:6fa617942cb20dcf8380ef9b8d367f2af289e03cacf62cbf4878fe5956084975
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5085de76178ded569f95294d9360b832615af09744dcebabf6a27ddd20d120f`

```dockerfile
```

-	Layers:
	-	`sha256:740d7bb10f36bd56079b8a368be60ec1017e8c0aae1f010cd4ced995c71b0c68`  
		Last Modified: Thu, 10 Sep 2026 18:32:02 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm variant v7

```console
$ docker pull dart@sha256:6c70ffdaa4a5a4653ead1daa986bfa34a4ab1545f711798d4b20ad989e1625b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.7 MB (239652103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47998ac1f88870759fa3d966709ea7bce9870a7eddca3f6ec18dac0943c1e9e5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Thu, 10 Sep 2026 18:31:06 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 18:31:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 10 Sep 2026 18:31:06 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 10 Sep 2026 18:31:06 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 18:31:06 GMT
WORKDIR /root
# Thu, 10 Sep 2026 18:31:15 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338bd7b8b13b2da4ef252ce4986f989f9f7074bf096c703d16a54672500242c2`  
		Last Modified: Thu, 10 Sep 2026 18:31:39 GMT  
		Size: 39.7 MB (39733225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4da712bdd748a7ad0824994604bbf12d04b772ba4f3b32d54d1a5d7afc8f7e68`  
		Last Modified: Thu, 10 Sep 2026 18:31:37 GMT  
		Size: 1.3 MB (1273155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057f9f45f4934c4c35cbac604803c2ed2bfa0464e6644f45c4e4d3ef36267a6a`  
		Last Modified: Thu, 10 Sep 2026 18:31:41 GMT  
		Size: 172.4 MB (172426550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:0c03726ffcbf86f9feb683dce97635edd5aba56e2475204a0af77d9365656a1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5ad92df7e7ab30eb04aae1089d75bae3ed3389240e721592302b1b322268f1c`

```dockerfile
```

-	Layers:
	-	`sha256:f95037dedec415f93d1ebafd646c346cf02d1fd7a79bfac1ff10c100e158dff7`  
		Last Modified: Thu, 10 Sep 2026 18:31:37 GMT  
		Size: 19.0 KB (19029 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:f9c19aae230b513e34c94d58c53b45b50d2e5fadb3d8fdc8e2b8efc128134882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.5 MB (346520708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f615021616a41f9f2f15d5726b1a315141a89ecafa54a7c1c3664c52152825a8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Thu, 10 Sep 2026 18:30:55 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 18:30:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 10 Sep 2026 18:30:55 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 10 Sep 2026 18:30:55 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 18:30:55 GMT
WORKDIR /root
# Thu, 10 Sep 2026 18:31:10 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f67e2a6f80cd38a4e83c85f8fca6a862de410e4d5bea9e2493a2d0ae6ae120`  
		Last Modified: Thu, 10 Sep 2026 18:31:43 GMT  
		Size: 45.6 MB (45642648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02c84e6e93b7631bed71ae32a18880b1ac256d2d4fe50e70df572d917df7de1a`  
		Last Modified: Thu, 10 Sep 2026 18:31:41 GMT  
		Size: 1.6 MB (1564376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a121ff6c41792c04327db05502eefcff6dcdeeb67a10e81b395a99acd4a94207`  
		Last Modified: Thu, 10 Sep 2026 18:31:49 GMT  
		Size: 269.2 MB (269154070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:b5f929f6ff9a3462ade2ec5d9f3d9ef8881bf855d24fe6780059860fa79ccdad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:507044bb8ddee87c9024eb38fb0bfad2b10717e2984339951b4f714c500918b0`

```dockerfile
```

-	Layers:
	-	`sha256:d9f6b2d34f2f484ea8fdf867563ea569b7fbab092618c654b2a48003e8da192a`  
		Last Modified: Thu, 10 Sep 2026 18:31:40 GMT  
		Size: 19.1 KB (19057 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; riscv64

```console
$ docker pull dart@sha256:e530a61e7fad6dca62d14bd8019c0660a1572fc22356807a1af0125433be7c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274553547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49649c4725248003158636bc94073fa2af51ebd037d47eefd5590342322a4422`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 10 Sep 2026 18:46:06 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 18:46:08 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 10 Sep 2026 18:46:08 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 10 Sep 2026 18:46:08 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 18:46:08 GMT
WORKDIR /root
# Thu, 10 Sep 2026 18:46:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8123bfb505ded7faf13b6fd682eb752f0bddd946645927936a53bcc94c1d7d2b`  
		Last Modified: Thu, 10 Sep 2026 18:51:37 GMT  
		Size: 44.2 MB (44215927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84782f90a7e14c2cd54f6cd1558b26a3e9298c2315d2d44cf16301db3598d0af`  
		Last Modified: Thu, 10 Sep 2026 18:51:24 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a5b69639fe0fabf1079b7edabf45f10bb43d7b769815721ce75151e16d1d4e0`  
		Last Modified: Thu, 10 Sep 2026 18:51:59 GMT  
		Size: 200.5 MB (200476677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:7d68bc2ff993c1f4c9a05cb6161307037dfc427c1cbe7cc67f60173b5863d706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad637b43bff7f9a123317f650b6bbcda1b6e70e8dee5c7cb12c869965e0da9bf`

```dockerfile
```

-	Layers:
	-	`sha256:1559bbc06677a83425124d807a29461caea4e81f6ee8f5bf070c0fbe24e7f398`  
		Last Modified: Thu, 10 Sep 2026 18:51:24 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:beta-sdk`

```console
$ docker pull dart@sha256:3afca6cdf526fe40156f477ef5b7e7879b98d1dc85d4e3ff77ac69c72f521725
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
$ docker pull dart@sha256:090275a114d3436bfa21c53aa26d5776fa582694c1260bbc6608c07743d7f613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.9 MB (347879480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:650381c286c41ded650885071f6264ff2220565c9831e0dc4066e89807278025`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Thu, 10 Sep 2026 18:31:18 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 18:31:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 10 Sep 2026 18:31:19 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 10 Sep 2026 18:31:19 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 18:31:19 GMT
WORKDIR /root
# Thu, 10 Sep 2026 18:31:31 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:218478ed2172f7b0c51c197773f206f925c344d27ed9c5216b19ef7a67c6c196`  
		Last Modified: Thu, 10 Sep 2026 18:32:04 GMT  
		Size: 45.5 MB (45492001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:014346f96dae2b962ecbfba5d2347caac8a56553e5043c020f4f5bd79287baca`  
		Last Modified: Thu, 10 Sep 2026 18:32:02 GMT  
		Size: 1.9 MB (1869788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b21951ecb627ec75633b0e988eb70d7a8630a0b73562584ca0976bca3d960b`  
		Last Modified: Thu, 10 Sep 2026 18:32:08 GMT  
		Size: 270.7 MB (270725001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:6fa617942cb20dcf8380ef9b8d367f2af289e03cacf62cbf4878fe5956084975
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5085de76178ded569f95294d9360b832615af09744dcebabf6a27ddd20d120f`

```dockerfile
```

-	Layers:
	-	`sha256:740d7bb10f36bd56079b8a368be60ec1017e8c0aae1f010cd4ced995c71b0c68`  
		Last Modified: Thu, 10 Sep 2026 18:32:02 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:6c70ffdaa4a5a4653ead1daa986bfa34a4ab1545f711798d4b20ad989e1625b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.7 MB (239652103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47998ac1f88870759fa3d966709ea7bce9870a7eddca3f6ec18dac0943c1e9e5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Thu, 10 Sep 2026 18:31:06 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 18:31:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 10 Sep 2026 18:31:06 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 10 Sep 2026 18:31:06 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 18:31:06 GMT
WORKDIR /root
# Thu, 10 Sep 2026 18:31:15 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338bd7b8b13b2da4ef252ce4986f989f9f7074bf096c703d16a54672500242c2`  
		Last Modified: Thu, 10 Sep 2026 18:31:39 GMT  
		Size: 39.7 MB (39733225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4da712bdd748a7ad0824994604bbf12d04b772ba4f3b32d54d1a5d7afc8f7e68`  
		Last Modified: Thu, 10 Sep 2026 18:31:37 GMT  
		Size: 1.3 MB (1273155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057f9f45f4934c4c35cbac604803c2ed2bfa0464e6644f45c4e4d3ef36267a6a`  
		Last Modified: Thu, 10 Sep 2026 18:31:41 GMT  
		Size: 172.4 MB (172426550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:0c03726ffcbf86f9feb683dce97635edd5aba56e2475204a0af77d9365656a1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5ad92df7e7ab30eb04aae1089d75bae3ed3389240e721592302b1b322268f1c`

```dockerfile
```

-	Layers:
	-	`sha256:f95037dedec415f93d1ebafd646c346cf02d1fd7a79bfac1ff10c100e158dff7`  
		Last Modified: Thu, 10 Sep 2026 18:31:37 GMT  
		Size: 19.0 KB (19029 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:f9c19aae230b513e34c94d58c53b45b50d2e5fadb3d8fdc8e2b8efc128134882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.5 MB (346520708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f615021616a41f9f2f15d5726b1a315141a89ecafa54a7c1c3664c52152825a8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Thu, 10 Sep 2026 18:30:55 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 18:30:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 10 Sep 2026 18:30:55 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 10 Sep 2026 18:30:55 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 18:30:55 GMT
WORKDIR /root
# Thu, 10 Sep 2026 18:31:10 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f67e2a6f80cd38a4e83c85f8fca6a862de410e4d5bea9e2493a2d0ae6ae120`  
		Last Modified: Thu, 10 Sep 2026 18:31:43 GMT  
		Size: 45.6 MB (45642648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02c84e6e93b7631bed71ae32a18880b1ac256d2d4fe50e70df572d917df7de1a`  
		Last Modified: Thu, 10 Sep 2026 18:31:41 GMT  
		Size: 1.6 MB (1564376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a121ff6c41792c04327db05502eefcff6dcdeeb67a10e81b395a99acd4a94207`  
		Last Modified: Thu, 10 Sep 2026 18:31:49 GMT  
		Size: 269.2 MB (269154070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:b5f929f6ff9a3462ade2ec5d9f3d9ef8881bf855d24fe6780059860fa79ccdad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:507044bb8ddee87c9024eb38fb0bfad2b10717e2984339951b4f714c500918b0`

```dockerfile
```

-	Layers:
	-	`sha256:d9f6b2d34f2f484ea8fdf867563ea569b7fbab092618c654b2a48003e8da192a`  
		Last Modified: Thu, 10 Sep 2026 18:31:40 GMT  
		Size: 19.1 KB (19057 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:e530a61e7fad6dca62d14bd8019c0660a1572fc22356807a1af0125433be7c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274553547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49649c4725248003158636bc94073fa2af51ebd037d47eefd5590342322a4422`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 10 Sep 2026 18:46:06 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 18:46:08 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 10 Sep 2026 18:46:08 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 10 Sep 2026 18:46:08 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 18:46:08 GMT
WORKDIR /root
# Thu, 10 Sep 2026 18:46:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8123bfb505ded7faf13b6fd682eb752f0bddd946645927936a53bcc94c1d7d2b`  
		Last Modified: Thu, 10 Sep 2026 18:51:37 GMT  
		Size: 44.2 MB (44215927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84782f90a7e14c2cd54f6cd1558b26a3e9298c2315d2d44cf16301db3598d0af`  
		Last Modified: Thu, 10 Sep 2026 18:51:24 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a5b69639fe0fabf1079b7edabf45f10bb43d7b769815721ce75151e16d1d4e0`  
		Last Modified: Thu, 10 Sep 2026 18:51:59 GMT  
		Size: 200.5 MB (200476677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:7d68bc2ff993c1f4c9a05cb6161307037dfc427c1cbe7cc67f60173b5863d706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad637b43bff7f9a123317f650b6bbcda1b6e70e8dee5c7cb12c869965e0da9bf`

```dockerfile
```

-	Layers:
	-	`sha256:1559bbc06677a83425124d807a29461caea4e81f6ee8f5bf070c0fbe24e7f398`  
		Last Modified: Thu, 10 Sep 2026 18:51:24 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:latest`

```console
$ docker pull dart@sha256:4d16dff097fa0a076adf68a4ee8efc740dc4d602177848c07684176a29217d58
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
$ docker pull dart@sha256:6bb0ac8da25faa4f9310612a20a76b9cc58326d00b516b152fd40ac4db8315cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.9 MB (321897610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e92407773ba6afa2d76a438a2efef39daa8c8e4a9228968b73ba8542317113ba`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 22:31:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:31:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 22:31:06 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 22:31:06 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:31:06 GMT
WORKDIR /root
# Tue, 15 Sep 2026 22:31:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7721c9bff41a945f507275fc1daf17b46e4db4695e03dc844c1e0ce7d0410d05`  
		Last Modified: Tue, 15 Sep 2026 22:31:45 GMT  
		Size: 47.9 MB (47867587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4488c42c649126f630919a33d11a3d5445d10b67209f373f50b874da092fec18`  
		Last Modified: Tue, 15 Sep 2026 22:31:43 GMT  
		Size: 1.9 MB (1869785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b5eafafad36970681a5b60f67a2b668af29c8660414388bddb0bf281f4ce56c`  
		Last Modified: Tue, 15 Sep 2026 22:31:49 GMT  
		Size: 242.4 MB (242367548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:0c2c86cbf3f20540f44a3d3fc4e63fd77f199d1c9a749dd3c04ea1a8f751be3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b249a1ec582a18a444dd66cd162afd090aa652a07061458e9a166a17603a48`

```dockerfile
```

-	Layers:
	-	`sha256:0d43c1ae7be98f0711b86ed05e0f555308be3bb7a96bd10745c257bf72655f5d`  
		Last Modified: Tue, 15 Sep 2026 22:31:42 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; arm variant v7

```console
$ docker pull dart@sha256:799daa316df1a91e4b558c4aacbc1606a5f5d30d00abe5a767cab722b7d31bba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234877106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df34a5139987f56d9f9dc0790278a9049433ec519e1c0dcd21ff637b9ea7b93`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 23:09:10 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 23:09:10 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 23:09:10 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 23:09:10 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 23:09:10 GMT
WORKDIR /root
# Tue, 15 Sep 2026 23:09:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1bf30aeb76cb00fa3ddc82173e9e51f836294bc146720f44fd47c61df1ba85f`  
		Last Modified: Tue, 15 Sep 2026 23:09:42 GMT  
		Size: 41.9 MB (41914638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9c5d80d8b5281721e8b4c1059811dc7f773e842c8261aaf91252184d97a195`  
		Last Modified: Tue, 15 Sep 2026 23:09:41 GMT  
		Size: 1.3 MB (1273150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac568f83463655c1346658ad94bb927ab73070c2dd173500b77fdb54b432936`  
		Last Modified: Tue, 15 Sep 2026 23:09:45 GMT  
		Size: 165.5 MB (165470145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:668eeca27d06b1a63f7eaf5335264dc59b65de5b32b1da9fe0550f1a57db42f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b8aae52469f23565e913fa67f0246a4ea105ecb7f7531451930d9df547bc40`

```dockerfile
```

-	Layers:
	-	`sha256:b588a24b105229752714a780d78263d6c0859cc77c4dd3be08f7a23da933e042`  
		Last Modified: Tue, 15 Sep 2026 23:09:40 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:a79830ce73fb96da10ec37eae240bface2af1faa57e87f8d5d9b20ca193e5dbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.9 MB (320905425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289207ae2857ad8160e17df9d26d926bf336b2dfb1c2630ef9a47b44e691dc3d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 22:37:29 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:37:30 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 22:37:30 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 22:37:30 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:37:30 GMT
WORKDIR /root
# Tue, 15 Sep 2026 22:37:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2ad386b9d84332bdfc34ec892e84cab75b0044470817c8e2a0e28817989459`  
		Last Modified: Tue, 15 Sep 2026 22:38:15 GMT  
		Size: 48.0 MB (47980601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7817ea29b65f20a000fe21d25d8d418a5f843a5bf554e2ca5fe113dd7b0287`  
		Last Modified: Tue, 15 Sep 2026 22:38:13 GMT  
		Size: 1.6 MB (1564388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a634f0d56bbc0bca88aa28567fed8dae6ebdceb31fdf1286b09a2b10416835a9`  
		Last Modified: Tue, 15 Sep 2026 22:38:19 GMT  
		Size: 241.2 MB (241200822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:6cac5453a66b4787a009ec07b8bfa1e0a26132676b8ca23c14ae00f6efd5c6bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f26f22431a0ee93b0584a67fa1283ee03a15139751d32198c99539635a2f26e2`

```dockerfile
```

-	Layers:
	-	`sha256:2a658c1cec74c93bb8ca1c0ac90d0c1ca64a69222782c6181b1f93a5d0ea4c18`  
		Last Modified: Tue, 15 Sep 2026 22:38:13 GMT  
		Size: 20.8 KB (20820 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; riscv64

```console
$ docker pull dart@sha256:5aca2c12b70c2e5f1a8b710b2ed9fcb189cf4f757ef5d5d1b6cc033d7cefbd2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255349306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8b5ea40caebed504ed5050a8ac08df844a5f41fd7f61670ea19e4d869d8d2e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 10 Sep 2026 18:46:06 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 18:46:08 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 10 Sep 2026 18:46:08 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 10 Sep 2026 18:46:08 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 18:46:08 GMT
WORKDIR /root
# Fri, 18 Sep 2026 16:02:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8123bfb505ded7faf13b6fd682eb752f0bddd946645927936a53bcc94c1d7d2b`  
		Last Modified: Thu, 10 Sep 2026 18:51:37 GMT  
		Size: 44.2 MB (44215927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84782f90a7e14c2cd54f6cd1558b26a3e9298c2315d2d44cf16301db3598d0af`  
		Last Modified: Thu, 10 Sep 2026 18:51:24 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d674d09e6285b2e29e496457deb0ec314d1bc4a43a1b548e7e3cc919fa58ba1`  
		Last Modified: Fri, 18 Sep 2026 16:07:00 GMT  
		Size: 181.3 MB (181272436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:e9c17cd1ea867765898feca5ba3cb70f18e0a102b16eec02cadeb6e2c2db1cb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568a156454ff903d48d79b71727660884187b5288912c437872206f7b93b30be`

```dockerfile
```

-	Layers:
	-	`sha256:df3439de640b918a282c81cb264a0bd056d3f0388891074fd6ca30d594386b38`  
		Last Modified: Fri, 18 Sep 2026 16:06:33 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:sdk`

```console
$ docker pull dart@sha256:4d16dff097fa0a076adf68a4ee8efc740dc4d602177848c07684176a29217d58
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
$ docker pull dart@sha256:6bb0ac8da25faa4f9310612a20a76b9cc58326d00b516b152fd40ac4db8315cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.9 MB (321897610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e92407773ba6afa2d76a438a2efef39daa8c8e4a9228968b73ba8542317113ba`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 22:31:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:31:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 22:31:06 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 22:31:06 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:31:06 GMT
WORKDIR /root
# Tue, 15 Sep 2026 22:31:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7721c9bff41a945f507275fc1daf17b46e4db4695e03dc844c1e0ce7d0410d05`  
		Last Modified: Tue, 15 Sep 2026 22:31:45 GMT  
		Size: 47.9 MB (47867587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4488c42c649126f630919a33d11a3d5445d10b67209f373f50b874da092fec18`  
		Last Modified: Tue, 15 Sep 2026 22:31:43 GMT  
		Size: 1.9 MB (1869785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b5eafafad36970681a5b60f67a2b668af29c8660414388bddb0bf281f4ce56c`  
		Last Modified: Tue, 15 Sep 2026 22:31:49 GMT  
		Size: 242.4 MB (242367548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:0c2c86cbf3f20540f44a3d3fc4e63fd77f199d1c9a749dd3c04ea1a8f751be3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b249a1ec582a18a444dd66cd162afd090aa652a07061458e9a166a17603a48`

```dockerfile
```

-	Layers:
	-	`sha256:0d43c1ae7be98f0711b86ed05e0f555308be3bb7a96bd10745c257bf72655f5d`  
		Last Modified: Tue, 15 Sep 2026 22:31:42 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:799daa316df1a91e4b558c4aacbc1606a5f5d30d00abe5a767cab722b7d31bba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234877106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df34a5139987f56d9f9dc0790278a9049433ec519e1c0dcd21ff637b9ea7b93`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 23:09:10 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 23:09:10 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 23:09:10 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 23:09:10 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 23:09:10 GMT
WORKDIR /root
# Tue, 15 Sep 2026 23:09:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1bf30aeb76cb00fa3ddc82173e9e51f836294bc146720f44fd47c61df1ba85f`  
		Last Modified: Tue, 15 Sep 2026 23:09:42 GMT  
		Size: 41.9 MB (41914638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9c5d80d8b5281721e8b4c1059811dc7f773e842c8261aaf91252184d97a195`  
		Last Modified: Tue, 15 Sep 2026 23:09:41 GMT  
		Size: 1.3 MB (1273150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac568f83463655c1346658ad94bb927ab73070c2dd173500b77fdb54b432936`  
		Last Modified: Tue, 15 Sep 2026 23:09:45 GMT  
		Size: 165.5 MB (165470145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:668eeca27d06b1a63f7eaf5335264dc59b65de5b32b1da9fe0550f1a57db42f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b8aae52469f23565e913fa67f0246a4ea105ecb7f7531451930d9df547bc40`

```dockerfile
```

-	Layers:
	-	`sha256:b588a24b105229752714a780d78263d6c0859cc77c4dd3be08f7a23da933e042`  
		Last Modified: Tue, 15 Sep 2026 23:09:40 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:a79830ce73fb96da10ec37eae240bface2af1faa57e87f8d5d9b20ca193e5dbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.9 MB (320905425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289207ae2857ad8160e17df9d26d926bf336b2dfb1c2630ef9a47b44e691dc3d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 22:37:29 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:37:30 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 22:37:30 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 22:37:30 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:37:30 GMT
WORKDIR /root
# Tue, 15 Sep 2026 22:37:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2ad386b9d84332bdfc34ec892e84cab75b0044470817c8e2a0e28817989459`  
		Last Modified: Tue, 15 Sep 2026 22:38:15 GMT  
		Size: 48.0 MB (47980601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7817ea29b65f20a000fe21d25d8d418a5f843a5bf554e2ca5fe113dd7b0287`  
		Last Modified: Tue, 15 Sep 2026 22:38:13 GMT  
		Size: 1.6 MB (1564388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a634f0d56bbc0bca88aa28567fed8dae6ebdceb31fdf1286b09a2b10416835a9`  
		Last Modified: Tue, 15 Sep 2026 22:38:19 GMT  
		Size: 241.2 MB (241200822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:6cac5453a66b4787a009ec07b8bfa1e0a26132676b8ca23c14ae00f6efd5c6bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f26f22431a0ee93b0584a67fa1283ee03a15139751d32198c99539635a2f26e2`

```dockerfile
```

-	Layers:
	-	`sha256:2a658c1cec74c93bb8ca1c0ac90d0c1ca64a69222782c6181b1f93a5d0ea4c18`  
		Last Modified: Tue, 15 Sep 2026 22:38:13 GMT  
		Size: 20.8 KB (20820 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; riscv64

```console
$ docker pull dart@sha256:5aca2c12b70c2e5f1a8b710b2ed9fcb189cf4f757ef5d5d1b6cc033d7cefbd2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255349306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8b5ea40caebed504ed5050a8ac08df844a5f41fd7f61670ea19e4d869d8d2e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 10 Sep 2026 18:46:06 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 18:46:08 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 10 Sep 2026 18:46:08 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 10 Sep 2026 18:46:08 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 18:46:08 GMT
WORKDIR /root
# Fri, 18 Sep 2026 16:02:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8123bfb505ded7faf13b6fd682eb752f0bddd946645927936a53bcc94c1d7d2b`  
		Last Modified: Thu, 10 Sep 2026 18:51:37 GMT  
		Size: 44.2 MB (44215927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84782f90a7e14c2cd54f6cd1558b26a3e9298c2315d2d44cf16301db3598d0af`  
		Last Modified: Thu, 10 Sep 2026 18:51:24 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d674d09e6285b2e29e496457deb0ec314d1bc4a43a1b548e7e3cc919fa58ba1`  
		Last Modified: Fri, 18 Sep 2026 16:07:00 GMT  
		Size: 181.3 MB (181272436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:e9c17cd1ea867765898feca5ba3cb70f18e0a102b16eec02cadeb6e2c2db1cb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568a156454ff903d48d79b71727660884187b5288912c437872206f7b93b30be`

```dockerfile
```

-	Layers:
	-	`sha256:df3439de640b918a282c81cb264a0bd056d3f0388891074fd6ca30d594386b38`  
		Last Modified: Fri, 18 Sep 2026 16:06:33 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:stable`

```console
$ docker pull dart@sha256:4d16dff097fa0a076adf68a4ee8efc740dc4d602177848c07684176a29217d58
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
$ docker pull dart@sha256:6bb0ac8da25faa4f9310612a20a76b9cc58326d00b516b152fd40ac4db8315cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.9 MB (321897610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e92407773ba6afa2d76a438a2efef39daa8c8e4a9228968b73ba8542317113ba`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 22:31:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:31:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 22:31:06 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 22:31:06 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:31:06 GMT
WORKDIR /root
# Tue, 15 Sep 2026 22:31:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7721c9bff41a945f507275fc1daf17b46e4db4695e03dc844c1e0ce7d0410d05`  
		Last Modified: Tue, 15 Sep 2026 22:31:45 GMT  
		Size: 47.9 MB (47867587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4488c42c649126f630919a33d11a3d5445d10b67209f373f50b874da092fec18`  
		Last Modified: Tue, 15 Sep 2026 22:31:43 GMT  
		Size: 1.9 MB (1869785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b5eafafad36970681a5b60f67a2b668af29c8660414388bddb0bf281f4ce56c`  
		Last Modified: Tue, 15 Sep 2026 22:31:49 GMT  
		Size: 242.4 MB (242367548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:0c2c86cbf3f20540f44a3d3fc4e63fd77f199d1c9a749dd3c04ea1a8f751be3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b249a1ec582a18a444dd66cd162afd090aa652a07061458e9a166a17603a48`

```dockerfile
```

-	Layers:
	-	`sha256:0d43c1ae7be98f0711b86ed05e0f555308be3bb7a96bd10745c257bf72655f5d`  
		Last Modified: Tue, 15 Sep 2026 22:31:42 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; arm variant v7

```console
$ docker pull dart@sha256:799daa316df1a91e4b558c4aacbc1606a5f5d30d00abe5a767cab722b7d31bba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234877106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df34a5139987f56d9f9dc0790278a9049433ec519e1c0dcd21ff637b9ea7b93`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 23:09:10 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 23:09:10 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 23:09:10 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 23:09:10 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 23:09:10 GMT
WORKDIR /root
# Tue, 15 Sep 2026 23:09:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1bf30aeb76cb00fa3ddc82173e9e51f836294bc146720f44fd47c61df1ba85f`  
		Last Modified: Tue, 15 Sep 2026 23:09:42 GMT  
		Size: 41.9 MB (41914638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9c5d80d8b5281721e8b4c1059811dc7f773e842c8261aaf91252184d97a195`  
		Last Modified: Tue, 15 Sep 2026 23:09:41 GMT  
		Size: 1.3 MB (1273150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac568f83463655c1346658ad94bb927ab73070c2dd173500b77fdb54b432936`  
		Last Modified: Tue, 15 Sep 2026 23:09:45 GMT  
		Size: 165.5 MB (165470145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:668eeca27d06b1a63f7eaf5335264dc59b65de5b32b1da9fe0550f1a57db42f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b8aae52469f23565e913fa67f0246a4ea105ecb7f7531451930d9df547bc40`

```dockerfile
```

-	Layers:
	-	`sha256:b588a24b105229752714a780d78263d6c0859cc77c4dd3be08f7a23da933e042`  
		Last Modified: Tue, 15 Sep 2026 23:09:40 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:a79830ce73fb96da10ec37eae240bface2af1faa57e87f8d5d9b20ca193e5dbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.9 MB (320905425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289207ae2857ad8160e17df9d26d926bf336b2dfb1c2630ef9a47b44e691dc3d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 22:37:29 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:37:30 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 22:37:30 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 22:37:30 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:37:30 GMT
WORKDIR /root
# Tue, 15 Sep 2026 22:37:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2ad386b9d84332bdfc34ec892e84cab75b0044470817c8e2a0e28817989459`  
		Last Modified: Tue, 15 Sep 2026 22:38:15 GMT  
		Size: 48.0 MB (47980601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7817ea29b65f20a000fe21d25d8d418a5f843a5bf554e2ca5fe113dd7b0287`  
		Last Modified: Tue, 15 Sep 2026 22:38:13 GMT  
		Size: 1.6 MB (1564388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a634f0d56bbc0bca88aa28567fed8dae6ebdceb31fdf1286b09a2b10416835a9`  
		Last Modified: Tue, 15 Sep 2026 22:38:19 GMT  
		Size: 241.2 MB (241200822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:6cac5453a66b4787a009ec07b8bfa1e0a26132676b8ca23c14ae00f6efd5c6bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f26f22431a0ee93b0584a67fa1283ee03a15139751d32198c99539635a2f26e2`

```dockerfile
```

-	Layers:
	-	`sha256:2a658c1cec74c93bb8ca1c0ac90d0c1ca64a69222782c6181b1f93a5d0ea4c18`  
		Last Modified: Tue, 15 Sep 2026 22:38:13 GMT  
		Size: 20.8 KB (20820 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; riscv64

```console
$ docker pull dart@sha256:5aca2c12b70c2e5f1a8b710b2ed9fcb189cf4f757ef5d5d1b6cc033d7cefbd2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255349306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8b5ea40caebed504ed5050a8ac08df844a5f41fd7f61670ea19e4d869d8d2e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 10 Sep 2026 18:46:06 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 18:46:08 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 10 Sep 2026 18:46:08 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 10 Sep 2026 18:46:08 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 18:46:08 GMT
WORKDIR /root
# Fri, 18 Sep 2026 16:02:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8123bfb505ded7faf13b6fd682eb752f0bddd946645927936a53bcc94c1d7d2b`  
		Last Modified: Thu, 10 Sep 2026 18:51:37 GMT  
		Size: 44.2 MB (44215927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84782f90a7e14c2cd54f6cd1558b26a3e9298c2315d2d44cf16301db3598d0af`  
		Last Modified: Thu, 10 Sep 2026 18:51:24 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d674d09e6285b2e29e496457deb0ec314d1bc4a43a1b548e7e3cc919fa58ba1`  
		Last Modified: Fri, 18 Sep 2026 16:07:00 GMT  
		Size: 181.3 MB (181272436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:e9c17cd1ea867765898feca5ba3cb70f18e0a102b16eec02cadeb6e2c2db1cb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568a156454ff903d48d79b71727660884187b5288912c437872206f7b93b30be`

```dockerfile
```

-	Layers:
	-	`sha256:df3439de640b918a282c81cb264a0bd056d3f0388891074fd6ca30d594386b38`  
		Last Modified: Fri, 18 Sep 2026 16:06:33 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:stable-sdk`

```console
$ docker pull dart@sha256:4d16dff097fa0a076adf68a4ee8efc740dc4d602177848c07684176a29217d58
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
$ docker pull dart@sha256:6bb0ac8da25faa4f9310612a20a76b9cc58326d00b516b152fd40ac4db8315cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.9 MB (321897610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e92407773ba6afa2d76a438a2efef39daa8c8e4a9228968b73ba8542317113ba`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 22:31:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:31:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 22:31:06 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 22:31:06 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:31:06 GMT
WORKDIR /root
# Tue, 15 Sep 2026 22:31:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7721c9bff41a945f507275fc1daf17b46e4db4695e03dc844c1e0ce7d0410d05`  
		Last Modified: Tue, 15 Sep 2026 22:31:45 GMT  
		Size: 47.9 MB (47867587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4488c42c649126f630919a33d11a3d5445d10b67209f373f50b874da092fec18`  
		Last Modified: Tue, 15 Sep 2026 22:31:43 GMT  
		Size: 1.9 MB (1869785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b5eafafad36970681a5b60f67a2b668af29c8660414388bddb0bf281f4ce56c`  
		Last Modified: Tue, 15 Sep 2026 22:31:49 GMT  
		Size: 242.4 MB (242367548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:0c2c86cbf3f20540f44a3d3fc4e63fd77f199d1c9a749dd3c04ea1a8f751be3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b249a1ec582a18a444dd66cd162afd090aa652a07061458e9a166a17603a48`

```dockerfile
```

-	Layers:
	-	`sha256:0d43c1ae7be98f0711b86ed05e0f555308be3bb7a96bd10745c257bf72655f5d`  
		Last Modified: Tue, 15 Sep 2026 22:31:42 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:799daa316df1a91e4b558c4aacbc1606a5f5d30d00abe5a767cab722b7d31bba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234877106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df34a5139987f56d9f9dc0790278a9049433ec519e1c0dcd21ff637b9ea7b93`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 23:09:10 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 23:09:10 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 23:09:10 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 23:09:10 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 23:09:10 GMT
WORKDIR /root
# Tue, 15 Sep 2026 23:09:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1bf30aeb76cb00fa3ddc82173e9e51f836294bc146720f44fd47c61df1ba85f`  
		Last Modified: Tue, 15 Sep 2026 23:09:42 GMT  
		Size: 41.9 MB (41914638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9c5d80d8b5281721e8b4c1059811dc7f773e842c8261aaf91252184d97a195`  
		Last Modified: Tue, 15 Sep 2026 23:09:41 GMT  
		Size: 1.3 MB (1273150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac568f83463655c1346658ad94bb927ab73070c2dd173500b77fdb54b432936`  
		Last Modified: Tue, 15 Sep 2026 23:09:45 GMT  
		Size: 165.5 MB (165470145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:668eeca27d06b1a63f7eaf5335264dc59b65de5b32b1da9fe0550f1a57db42f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b8aae52469f23565e913fa67f0246a4ea105ecb7f7531451930d9df547bc40`

```dockerfile
```

-	Layers:
	-	`sha256:b588a24b105229752714a780d78263d6c0859cc77c4dd3be08f7a23da933e042`  
		Last Modified: Tue, 15 Sep 2026 23:09:40 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:a79830ce73fb96da10ec37eae240bface2af1faa57e87f8d5d9b20ca193e5dbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.9 MB (320905425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289207ae2857ad8160e17df9d26d926bf336b2dfb1c2630ef9a47b44e691dc3d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 22:37:29 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:37:30 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 22:37:30 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 22:37:30 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:37:30 GMT
WORKDIR /root
# Tue, 15 Sep 2026 22:37:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2ad386b9d84332bdfc34ec892e84cab75b0044470817c8e2a0e28817989459`  
		Last Modified: Tue, 15 Sep 2026 22:38:15 GMT  
		Size: 48.0 MB (47980601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7817ea29b65f20a000fe21d25d8d418a5f843a5bf554e2ca5fe113dd7b0287`  
		Last Modified: Tue, 15 Sep 2026 22:38:13 GMT  
		Size: 1.6 MB (1564388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a634f0d56bbc0bca88aa28567fed8dae6ebdceb31fdf1286b09a2b10416835a9`  
		Last Modified: Tue, 15 Sep 2026 22:38:19 GMT  
		Size: 241.2 MB (241200822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:6cac5453a66b4787a009ec07b8bfa1e0a26132676b8ca23c14ae00f6efd5c6bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f26f22431a0ee93b0584a67fa1283ee03a15139751d32198c99539635a2f26e2`

```dockerfile
```

-	Layers:
	-	`sha256:2a658c1cec74c93bb8ca1c0ac90d0c1ca64a69222782c6181b1f93a5d0ea4c18`  
		Last Modified: Tue, 15 Sep 2026 22:38:13 GMT  
		Size: 20.8 KB (20820 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:5aca2c12b70c2e5f1a8b710b2ed9fcb189cf4f757ef5d5d1b6cc033d7cefbd2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255349306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8b5ea40caebed504ed5050a8ac08df844a5f41fd7f61670ea19e4d869d8d2e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 10 Sep 2026 18:46:06 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 18:46:08 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 10 Sep 2026 18:46:08 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 10 Sep 2026 18:46:08 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 18:46:08 GMT
WORKDIR /root
# Fri, 18 Sep 2026 16:02:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8123bfb505ded7faf13b6fd682eb752f0bddd946645927936a53bcc94c1d7d2b`  
		Last Modified: Thu, 10 Sep 2026 18:51:37 GMT  
		Size: 44.2 MB (44215927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84782f90a7e14c2cd54f6cd1558b26a3e9298c2315d2d44cf16301db3598d0af`  
		Last Modified: Thu, 10 Sep 2026 18:51:24 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d674d09e6285b2e29e496457deb0ec314d1bc4a43a1b548e7e3cc919fa58ba1`  
		Last Modified: Fri, 18 Sep 2026 16:07:00 GMT  
		Size: 181.3 MB (181272436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:e9c17cd1ea867765898feca5ba3cb70f18e0a102b16eec02cadeb6e2c2db1cb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568a156454ff903d48d79b71727660884187b5288912c437872206f7b93b30be`

```dockerfile
```

-	Layers:
	-	`sha256:df3439de640b918a282c81cb264a0bd056d3f0388891074fd6ca30d594386b38`  
		Last Modified: Fri, 18 Sep 2026 16:06:33 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json
