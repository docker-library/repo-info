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
$ docker pull dart@sha256:2d74fb22d7f8dba07862754953f5ebc50f3ac35a7b7ce18b6dd5629056c80f05
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
$ docker pull dart@sha256:e833be7efebe95d6bc714dd3d1fff279df6c2c813eb02d30f3067a8c8adc7ec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316594349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:414d3e645a7e3430d41395ba1e342031bbc97f9f616de0f0c91d300deda0724d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 00:45:26 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 00:45:26 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:45:26 GMT
WORKDIR /root
# Sat, 19 Sep 2026 00:45:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e291c49314bc9965f21220463afce881b680196e4062c1f7b0b3bcd300ecdb`  
		Last Modified: Sat, 19 Sep 2026 00:46:08 GMT  
		Size: 42.5 MB (42526151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24d728f251ab21d7e129124824a1775ec1be5b95f07af044a6e5a9dca181ec4`  
		Last Modified: Sat, 19 Sep 2026 00:46:06 GMT  
		Size: 1.9 MB (1869674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a43d2807a7f2a71c455632713d2ba92140d75428e241df8e54748a61c69dc2b`  
		Last Modified: Sat, 19 Sep 2026 00:46:12 GMT  
		Size: 242.4 MB (242368074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:3225acc10166cdc022e5395a66b2fc8010b5d0bb901403f887d03da167d87b95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4b8438a24c036c71cf233cc34b3c6df4c3ece4dc7203102c5db167ca6b8c58`

```dockerfile
```

-	Layers:
	-	`sha256:73ae51c88cbbd71e84d7c9bf34435aed1322f28dc447e3916c1f9c5c02afb119`  
		Last Modified: Sat, 19 Sep 2026 00:46:06 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; arm variant v7

```console
$ docker pull dart@sha256:d0755bd712465c58c84d1881a5b061988e247760ee18fa851abf2f7345f95aff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230520791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec439b55875ca6e1b76638b4e85374db951d2914b3da4f68399a851024efc38`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:28:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:29:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 01:29:00 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 01:29:00 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:29:00 GMT
WORKDIR /root
# Sat, 19 Sep 2026 01:29:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c96bccdc8848292320403d388cdb4f2703ebdb961c0081f0903ea6617d03b331`  
		Last Modified: Sat, 19 Sep 2026 01:29:32 GMT  
		Size: 37.5 MB (37528284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddac7901f0c2b98fa3c517108220263217209aa1156729b9ba8637438848e487`  
		Last Modified: Sat, 19 Sep 2026 01:29:31 GMT  
		Size: 1.3 MB (1273049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55eddb4d0dab9240a220ccfa84719d1471562a08cb0ef76c4963689c0c283b74`  
		Last Modified: Sat, 19 Sep 2026 01:29:35 GMT  
		Size: 165.5 MB (165470498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:005ba2ab83e5b7f48ff168ae0591c7b7004a52c2dcf787d211a013240b8877b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4d067a42b9af02ce8f6fa3d86c440461333476953e785856fc2d3834d0c915d`

```dockerfile
```

-	Layers:
	-	`sha256:d0db35e591b85ad3f9a02b0c89db7f6530d4f4f835f5f22ba6c8281f9f682a3e`  
		Last Modified: Sat, 19 Sep 2026 01:29:30 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:c0d35bbac0610e827a9d47d8fa309c18f6294fb39fc41796a4cb7be878c0318f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315274989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1471ea23f263f9d547857e501164a430976b1b62dc197c418dfdc17641a1a94d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:48:01 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 00:48:01 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 00:48:01 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:48:01 GMT
WORKDIR /root
# Sat, 19 Sep 2026 00:48:11 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bb905dcae686e80cfbcf8126408bac29dba99a7b02c493bba98efe7b102732`  
		Last Modified: Sat, 19 Sep 2026 00:48:43 GMT  
		Size: 42.3 MB (42320326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa459d936a45ac263b845f2f1d389d411ef3fde85546ae749d595eb9174174f`  
		Last Modified: Sat, 19 Sep 2026 00:48:42 GMT  
		Size: 1.6 MB (1564403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec3727fee406694e7dec192726c395fb3480d7a37b87465e5627d2187fbeb97`  
		Last Modified: Sat, 19 Sep 2026 00:48:47 GMT  
		Size: 241.2 MB (241200537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:693eeec2ce35d345c987d769d2333523183ab83f64465ee9308b493381730623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c955f29c749f8cf4c1042c65b00a34b79177ccfb426e291da398b7949ff46e77`

```dockerfile
```

-	Layers:
	-	`sha256:b7bd4572ee9397fb4505b67e7a2268e349d0e6f3aa028dff72167575af617021`  
		Last Modified: Sat, 19 Sep 2026 00:48:41 GMT  
		Size: 20.8 KB (20822 bytes)  
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
$ docker pull dart@sha256:2d74fb22d7f8dba07862754953f5ebc50f3ac35a7b7ce18b6dd5629056c80f05
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
$ docker pull dart@sha256:e833be7efebe95d6bc714dd3d1fff279df6c2c813eb02d30f3067a8c8adc7ec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316594349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:414d3e645a7e3430d41395ba1e342031bbc97f9f616de0f0c91d300deda0724d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 00:45:26 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 00:45:26 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:45:26 GMT
WORKDIR /root
# Sat, 19 Sep 2026 00:45:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e291c49314bc9965f21220463afce881b680196e4062c1f7b0b3bcd300ecdb`  
		Last Modified: Sat, 19 Sep 2026 00:46:08 GMT  
		Size: 42.5 MB (42526151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24d728f251ab21d7e129124824a1775ec1be5b95f07af044a6e5a9dca181ec4`  
		Last Modified: Sat, 19 Sep 2026 00:46:06 GMT  
		Size: 1.9 MB (1869674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a43d2807a7f2a71c455632713d2ba92140d75428e241df8e54748a61c69dc2b`  
		Last Modified: Sat, 19 Sep 2026 00:46:12 GMT  
		Size: 242.4 MB (242368074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:3225acc10166cdc022e5395a66b2fc8010b5d0bb901403f887d03da167d87b95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4b8438a24c036c71cf233cc34b3c6df4c3ece4dc7203102c5db167ca6b8c58`

```dockerfile
```

-	Layers:
	-	`sha256:73ae51c88cbbd71e84d7c9bf34435aed1322f28dc447e3916c1f9c5c02afb119`  
		Last Modified: Sat, 19 Sep 2026 00:46:06 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:d0755bd712465c58c84d1881a5b061988e247760ee18fa851abf2f7345f95aff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230520791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec439b55875ca6e1b76638b4e85374db951d2914b3da4f68399a851024efc38`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:28:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:29:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 01:29:00 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 01:29:00 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:29:00 GMT
WORKDIR /root
# Sat, 19 Sep 2026 01:29:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c96bccdc8848292320403d388cdb4f2703ebdb961c0081f0903ea6617d03b331`  
		Last Modified: Sat, 19 Sep 2026 01:29:32 GMT  
		Size: 37.5 MB (37528284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddac7901f0c2b98fa3c517108220263217209aa1156729b9ba8637438848e487`  
		Last Modified: Sat, 19 Sep 2026 01:29:31 GMT  
		Size: 1.3 MB (1273049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55eddb4d0dab9240a220ccfa84719d1471562a08cb0ef76c4963689c0c283b74`  
		Last Modified: Sat, 19 Sep 2026 01:29:35 GMT  
		Size: 165.5 MB (165470498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:005ba2ab83e5b7f48ff168ae0591c7b7004a52c2dcf787d211a013240b8877b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4d067a42b9af02ce8f6fa3d86c440461333476953e785856fc2d3834d0c915d`

```dockerfile
```

-	Layers:
	-	`sha256:d0db35e591b85ad3f9a02b0c89db7f6530d4f4f835f5f22ba6c8281f9f682a3e`  
		Last Modified: Sat, 19 Sep 2026 01:29:30 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:c0d35bbac0610e827a9d47d8fa309c18f6294fb39fc41796a4cb7be878c0318f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315274989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1471ea23f263f9d547857e501164a430976b1b62dc197c418dfdc17641a1a94d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:48:01 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 00:48:01 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 00:48:01 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:48:01 GMT
WORKDIR /root
# Sat, 19 Sep 2026 00:48:11 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bb905dcae686e80cfbcf8126408bac29dba99a7b02c493bba98efe7b102732`  
		Last Modified: Sat, 19 Sep 2026 00:48:43 GMT  
		Size: 42.3 MB (42320326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa459d936a45ac263b845f2f1d389d411ef3fde85546ae749d595eb9174174f`  
		Last Modified: Sat, 19 Sep 2026 00:48:42 GMT  
		Size: 1.6 MB (1564403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec3727fee406694e7dec192726c395fb3480d7a37b87465e5627d2187fbeb97`  
		Last Modified: Sat, 19 Sep 2026 00:48:47 GMT  
		Size: 241.2 MB (241200537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:693eeec2ce35d345c987d769d2333523183ab83f64465ee9308b493381730623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c955f29c749f8cf4c1042c65b00a34b79177ccfb426e291da398b7949ff46e77`

```dockerfile
```

-	Layers:
	-	`sha256:b7bd4572ee9397fb4505b67e7a2268e349d0e6f3aa028dff72167575af617021`  
		Last Modified: Sat, 19 Sep 2026 00:48:41 GMT  
		Size: 20.8 KB (20822 bytes)  
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
$ docker pull dart@sha256:2d74fb22d7f8dba07862754953f5ebc50f3ac35a7b7ce18b6dd5629056c80f05
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
$ docker pull dart@sha256:e833be7efebe95d6bc714dd3d1fff279df6c2c813eb02d30f3067a8c8adc7ec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316594349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:414d3e645a7e3430d41395ba1e342031bbc97f9f616de0f0c91d300deda0724d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 00:45:26 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 00:45:26 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:45:26 GMT
WORKDIR /root
# Sat, 19 Sep 2026 00:45:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e291c49314bc9965f21220463afce881b680196e4062c1f7b0b3bcd300ecdb`  
		Last Modified: Sat, 19 Sep 2026 00:46:08 GMT  
		Size: 42.5 MB (42526151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24d728f251ab21d7e129124824a1775ec1be5b95f07af044a6e5a9dca181ec4`  
		Last Modified: Sat, 19 Sep 2026 00:46:06 GMT  
		Size: 1.9 MB (1869674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a43d2807a7f2a71c455632713d2ba92140d75428e241df8e54748a61c69dc2b`  
		Last Modified: Sat, 19 Sep 2026 00:46:12 GMT  
		Size: 242.4 MB (242368074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:3225acc10166cdc022e5395a66b2fc8010b5d0bb901403f887d03da167d87b95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4b8438a24c036c71cf233cc34b3c6df4c3ece4dc7203102c5db167ca6b8c58`

```dockerfile
```

-	Layers:
	-	`sha256:73ae51c88cbbd71e84d7c9bf34435aed1322f28dc447e3916c1f9c5c02afb119`  
		Last Modified: Sat, 19 Sep 2026 00:46:06 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13` - linux; arm variant v7

```console
$ docker pull dart@sha256:d0755bd712465c58c84d1881a5b061988e247760ee18fa851abf2f7345f95aff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230520791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec439b55875ca6e1b76638b4e85374db951d2914b3da4f68399a851024efc38`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:28:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:29:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 01:29:00 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 01:29:00 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:29:00 GMT
WORKDIR /root
# Sat, 19 Sep 2026 01:29:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c96bccdc8848292320403d388cdb4f2703ebdb961c0081f0903ea6617d03b331`  
		Last Modified: Sat, 19 Sep 2026 01:29:32 GMT  
		Size: 37.5 MB (37528284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddac7901f0c2b98fa3c517108220263217209aa1156729b9ba8637438848e487`  
		Last Modified: Sat, 19 Sep 2026 01:29:31 GMT  
		Size: 1.3 MB (1273049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55eddb4d0dab9240a220ccfa84719d1471562a08cb0ef76c4963689c0c283b74`  
		Last Modified: Sat, 19 Sep 2026 01:29:35 GMT  
		Size: 165.5 MB (165470498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:005ba2ab83e5b7f48ff168ae0591c7b7004a52c2dcf787d211a013240b8877b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4d067a42b9af02ce8f6fa3d86c440461333476953e785856fc2d3834d0c915d`

```dockerfile
```

-	Layers:
	-	`sha256:d0db35e591b85ad3f9a02b0c89db7f6530d4f4f835f5f22ba6c8281f9f682a3e`  
		Last Modified: Sat, 19 Sep 2026 01:29:30 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:c0d35bbac0610e827a9d47d8fa309c18f6294fb39fc41796a4cb7be878c0318f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315274989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1471ea23f263f9d547857e501164a430976b1b62dc197c418dfdc17641a1a94d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:48:01 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 00:48:01 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 00:48:01 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:48:01 GMT
WORKDIR /root
# Sat, 19 Sep 2026 00:48:11 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bb905dcae686e80cfbcf8126408bac29dba99a7b02c493bba98efe7b102732`  
		Last Modified: Sat, 19 Sep 2026 00:48:43 GMT  
		Size: 42.3 MB (42320326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa459d936a45ac263b845f2f1d389d411ef3fde85546ae749d595eb9174174f`  
		Last Modified: Sat, 19 Sep 2026 00:48:42 GMT  
		Size: 1.6 MB (1564403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec3727fee406694e7dec192726c395fb3480d7a37b87465e5627d2187fbeb97`  
		Last Modified: Sat, 19 Sep 2026 00:48:47 GMT  
		Size: 241.2 MB (241200537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:693eeec2ce35d345c987d769d2333523183ab83f64465ee9308b493381730623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c955f29c749f8cf4c1042c65b00a34b79177ccfb426e291da398b7949ff46e77`

```dockerfile
```

-	Layers:
	-	`sha256:b7bd4572ee9397fb4505b67e7a2268e349d0e6f3aa028dff72167575af617021`  
		Last Modified: Sat, 19 Sep 2026 00:48:41 GMT  
		Size: 20.8 KB (20822 bytes)  
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
$ docker pull dart@sha256:2d74fb22d7f8dba07862754953f5ebc50f3ac35a7b7ce18b6dd5629056c80f05
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
$ docker pull dart@sha256:e833be7efebe95d6bc714dd3d1fff279df6c2c813eb02d30f3067a8c8adc7ec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316594349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:414d3e645a7e3430d41395ba1e342031bbc97f9f616de0f0c91d300deda0724d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 00:45:26 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 00:45:26 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:45:26 GMT
WORKDIR /root
# Sat, 19 Sep 2026 00:45:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e291c49314bc9965f21220463afce881b680196e4062c1f7b0b3bcd300ecdb`  
		Last Modified: Sat, 19 Sep 2026 00:46:08 GMT  
		Size: 42.5 MB (42526151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24d728f251ab21d7e129124824a1775ec1be5b95f07af044a6e5a9dca181ec4`  
		Last Modified: Sat, 19 Sep 2026 00:46:06 GMT  
		Size: 1.9 MB (1869674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a43d2807a7f2a71c455632713d2ba92140d75428e241df8e54748a61c69dc2b`  
		Last Modified: Sat, 19 Sep 2026 00:46:12 GMT  
		Size: 242.4 MB (242368074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:3225acc10166cdc022e5395a66b2fc8010b5d0bb901403f887d03da167d87b95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4b8438a24c036c71cf233cc34b3c6df4c3ece4dc7203102c5db167ca6b8c58`

```dockerfile
```

-	Layers:
	-	`sha256:73ae51c88cbbd71e84d7c9bf34435aed1322f28dc447e3916c1f9c5c02afb119`  
		Last Modified: Sat, 19 Sep 2026 00:46:06 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:d0755bd712465c58c84d1881a5b061988e247760ee18fa851abf2f7345f95aff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230520791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec439b55875ca6e1b76638b4e85374db951d2914b3da4f68399a851024efc38`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:28:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:29:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 01:29:00 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 01:29:00 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:29:00 GMT
WORKDIR /root
# Sat, 19 Sep 2026 01:29:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c96bccdc8848292320403d388cdb4f2703ebdb961c0081f0903ea6617d03b331`  
		Last Modified: Sat, 19 Sep 2026 01:29:32 GMT  
		Size: 37.5 MB (37528284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddac7901f0c2b98fa3c517108220263217209aa1156729b9ba8637438848e487`  
		Last Modified: Sat, 19 Sep 2026 01:29:31 GMT  
		Size: 1.3 MB (1273049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55eddb4d0dab9240a220ccfa84719d1471562a08cb0ef76c4963689c0c283b74`  
		Last Modified: Sat, 19 Sep 2026 01:29:35 GMT  
		Size: 165.5 MB (165470498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:005ba2ab83e5b7f48ff168ae0591c7b7004a52c2dcf787d211a013240b8877b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4d067a42b9af02ce8f6fa3d86c440461333476953e785856fc2d3834d0c915d`

```dockerfile
```

-	Layers:
	-	`sha256:d0db35e591b85ad3f9a02b0c89db7f6530d4f4f835f5f22ba6c8281f9f682a3e`  
		Last Modified: Sat, 19 Sep 2026 01:29:30 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:c0d35bbac0610e827a9d47d8fa309c18f6294fb39fc41796a4cb7be878c0318f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315274989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1471ea23f263f9d547857e501164a430976b1b62dc197c418dfdc17641a1a94d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:48:01 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 00:48:01 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 00:48:01 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:48:01 GMT
WORKDIR /root
# Sat, 19 Sep 2026 00:48:11 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bb905dcae686e80cfbcf8126408bac29dba99a7b02c493bba98efe7b102732`  
		Last Modified: Sat, 19 Sep 2026 00:48:43 GMT  
		Size: 42.3 MB (42320326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa459d936a45ac263b845f2f1d389d411ef3fde85546ae749d595eb9174174f`  
		Last Modified: Sat, 19 Sep 2026 00:48:42 GMT  
		Size: 1.6 MB (1564403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec3727fee406694e7dec192726c395fb3480d7a37b87465e5627d2187fbeb97`  
		Last Modified: Sat, 19 Sep 2026 00:48:47 GMT  
		Size: 241.2 MB (241200537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:693eeec2ce35d345c987d769d2333523183ab83f64465ee9308b493381730623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c955f29c749f8cf4c1042c65b00a34b79177ccfb426e291da398b7949ff46e77`

```dockerfile
```

-	Layers:
	-	`sha256:b7bd4572ee9397fb4505b67e7a2268e349d0e6f3aa028dff72167575af617021`  
		Last Modified: Sat, 19 Sep 2026 00:48:41 GMT  
		Size: 20.8 KB (20822 bytes)  
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
$ docker pull dart@sha256:2d74fb22d7f8dba07862754953f5ebc50f3ac35a7b7ce18b6dd5629056c80f05
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
$ docker pull dart@sha256:e833be7efebe95d6bc714dd3d1fff279df6c2c813eb02d30f3067a8c8adc7ec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316594349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:414d3e645a7e3430d41395ba1e342031bbc97f9f616de0f0c91d300deda0724d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 00:45:26 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 00:45:26 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:45:26 GMT
WORKDIR /root
# Sat, 19 Sep 2026 00:45:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e291c49314bc9965f21220463afce881b680196e4062c1f7b0b3bcd300ecdb`  
		Last Modified: Sat, 19 Sep 2026 00:46:08 GMT  
		Size: 42.5 MB (42526151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24d728f251ab21d7e129124824a1775ec1be5b95f07af044a6e5a9dca181ec4`  
		Last Modified: Sat, 19 Sep 2026 00:46:06 GMT  
		Size: 1.9 MB (1869674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a43d2807a7f2a71c455632713d2ba92140d75428e241df8e54748a61c69dc2b`  
		Last Modified: Sat, 19 Sep 2026 00:46:12 GMT  
		Size: 242.4 MB (242368074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.4` - unknown; unknown

```console
$ docker pull dart@sha256:3225acc10166cdc022e5395a66b2fc8010b5d0bb901403f887d03da167d87b95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4b8438a24c036c71cf233cc34b3c6df4c3ece4dc7203102c5db167ca6b8c58`

```dockerfile
```

-	Layers:
	-	`sha256:73ae51c88cbbd71e84d7c9bf34435aed1322f28dc447e3916c1f9c5c02afb119`  
		Last Modified: Sat, 19 Sep 2026 00:46:06 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.4` - linux; arm variant v7

```console
$ docker pull dart@sha256:d0755bd712465c58c84d1881a5b061988e247760ee18fa851abf2f7345f95aff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230520791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec439b55875ca6e1b76638b4e85374db951d2914b3da4f68399a851024efc38`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:28:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:29:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 01:29:00 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 01:29:00 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:29:00 GMT
WORKDIR /root
# Sat, 19 Sep 2026 01:29:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c96bccdc8848292320403d388cdb4f2703ebdb961c0081f0903ea6617d03b331`  
		Last Modified: Sat, 19 Sep 2026 01:29:32 GMT  
		Size: 37.5 MB (37528284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddac7901f0c2b98fa3c517108220263217209aa1156729b9ba8637438848e487`  
		Last Modified: Sat, 19 Sep 2026 01:29:31 GMT  
		Size: 1.3 MB (1273049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55eddb4d0dab9240a220ccfa84719d1471562a08cb0ef76c4963689c0c283b74`  
		Last Modified: Sat, 19 Sep 2026 01:29:35 GMT  
		Size: 165.5 MB (165470498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.4` - unknown; unknown

```console
$ docker pull dart@sha256:005ba2ab83e5b7f48ff168ae0591c7b7004a52c2dcf787d211a013240b8877b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4d067a42b9af02ce8f6fa3d86c440461333476953e785856fc2d3834d0c915d`

```dockerfile
```

-	Layers:
	-	`sha256:d0db35e591b85ad3f9a02b0c89db7f6530d4f4f835f5f22ba6c8281f9f682a3e`  
		Last Modified: Sat, 19 Sep 2026 01:29:30 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.4` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:c0d35bbac0610e827a9d47d8fa309c18f6294fb39fc41796a4cb7be878c0318f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315274989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1471ea23f263f9d547857e501164a430976b1b62dc197c418dfdc17641a1a94d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:48:01 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 00:48:01 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 00:48:01 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:48:01 GMT
WORKDIR /root
# Sat, 19 Sep 2026 00:48:11 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bb905dcae686e80cfbcf8126408bac29dba99a7b02c493bba98efe7b102732`  
		Last Modified: Sat, 19 Sep 2026 00:48:43 GMT  
		Size: 42.3 MB (42320326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa459d936a45ac263b845f2f1d389d411ef3fde85546ae749d595eb9174174f`  
		Last Modified: Sat, 19 Sep 2026 00:48:42 GMT  
		Size: 1.6 MB (1564403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec3727fee406694e7dec192726c395fb3480d7a37b87465e5627d2187fbeb97`  
		Last Modified: Sat, 19 Sep 2026 00:48:47 GMT  
		Size: 241.2 MB (241200537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.4` - unknown; unknown

```console
$ docker pull dart@sha256:693eeec2ce35d345c987d769d2333523183ab83f64465ee9308b493381730623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c955f29c749f8cf4c1042c65b00a34b79177ccfb426e291da398b7949ff46e77`

```dockerfile
```

-	Layers:
	-	`sha256:b7bd4572ee9397fb4505b67e7a2268e349d0e6f3aa028dff72167575af617021`  
		Last Modified: Sat, 19 Sep 2026 00:48:41 GMT  
		Size: 20.8 KB (20822 bytes)  
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
$ docker pull dart@sha256:2d74fb22d7f8dba07862754953f5ebc50f3ac35a7b7ce18b6dd5629056c80f05
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
$ docker pull dart@sha256:e833be7efebe95d6bc714dd3d1fff279df6c2c813eb02d30f3067a8c8adc7ec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316594349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:414d3e645a7e3430d41395ba1e342031bbc97f9f616de0f0c91d300deda0724d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 00:45:26 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 00:45:26 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:45:26 GMT
WORKDIR /root
# Sat, 19 Sep 2026 00:45:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e291c49314bc9965f21220463afce881b680196e4062c1f7b0b3bcd300ecdb`  
		Last Modified: Sat, 19 Sep 2026 00:46:08 GMT  
		Size: 42.5 MB (42526151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24d728f251ab21d7e129124824a1775ec1be5b95f07af044a6e5a9dca181ec4`  
		Last Modified: Sat, 19 Sep 2026 00:46:06 GMT  
		Size: 1.9 MB (1869674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a43d2807a7f2a71c455632713d2ba92140d75428e241df8e54748a61c69dc2b`  
		Last Modified: Sat, 19 Sep 2026 00:46:12 GMT  
		Size: 242.4 MB (242368074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.4-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:3225acc10166cdc022e5395a66b2fc8010b5d0bb901403f887d03da167d87b95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4b8438a24c036c71cf233cc34b3c6df4c3ece4dc7203102c5db167ca6b8c58`

```dockerfile
```

-	Layers:
	-	`sha256:73ae51c88cbbd71e84d7c9bf34435aed1322f28dc447e3916c1f9c5c02afb119`  
		Last Modified: Sat, 19 Sep 2026 00:46:06 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.4-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:d0755bd712465c58c84d1881a5b061988e247760ee18fa851abf2f7345f95aff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230520791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec439b55875ca6e1b76638b4e85374db951d2914b3da4f68399a851024efc38`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:28:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:29:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 01:29:00 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 01:29:00 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:29:00 GMT
WORKDIR /root
# Sat, 19 Sep 2026 01:29:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c96bccdc8848292320403d388cdb4f2703ebdb961c0081f0903ea6617d03b331`  
		Last Modified: Sat, 19 Sep 2026 01:29:32 GMT  
		Size: 37.5 MB (37528284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddac7901f0c2b98fa3c517108220263217209aa1156729b9ba8637438848e487`  
		Last Modified: Sat, 19 Sep 2026 01:29:31 GMT  
		Size: 1.3 MB (1273049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55eddb4d0dab9240a220ccfa84719d1471562a08cb0ef76c4963689c0c283b74`  
		Last Modified: Sat, 19 Sep 2026 01:29:35 GMT  
		Size: 165.5 MB (165470498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.4-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:005ba2ab83e5b7f48ff168ae0591c7b7004a52c2dcf787d211a013240b8877b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4d067a42b9af02ce8f6fa3d86c440461333476953e785856fc2d3834d0c915d`

```dockerfile
```

-	Layers:
	-	`sha256:d0db35e591b85ad3f9a02b0c89db7f6530d4f4f835f5f22ba6c8281f9f682a3e`  
		Last Modified: Sat, 19 Sep 2026 01:29:30 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.4-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:c0d35bbac0610e827a9d47d8fa309c18f6294fb39fc41796a4cb7be878c0318f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315274989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1471ea23f263f9d547857e501164a430976b1b62dc197c418dfdc17641a1a94d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:48:01 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 00:48:01 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 00:48:01 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:48:01 GMT
WORKDIR /root
# Sat, 19 Sep 2026 00:48:11 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bb905dcae686e80cfbcf8126408bac29dba99a7b02c493bba98efe7b102732`  
		Last Modified: Sat, 19 Sep 2026 00:48:43 GMT  
		Size: 42.3 MB (42320326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa459d936a45ac263b845f2f1d389d411ef3fde85546ae749d595eb9174174f`  
		Last Modified: Sat, 19 Sep 2026 00:48:42 GMT  
		Size: 1.6 MB (1564403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec3727fee406694e7dec192726c395fb3480d7a37b87465e5627d2187fbeb97`  
		Last Modified: Sat, 19 Sep 2026 00:48:47 GMT  
		Size: 241.2 MB (241200537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.4-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:693eeec2ce35d345c987d769d2333523183ab83f64465ee9308b493381730623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c955f29c749f8cf4c1042c65b00a34b79177ccfb426e291da398b7949ff46e77`

```dockerfile
```

-	Layers:
	-	`sha256:b7bd4572ee9397fb4505b67e7a2268e349d0e6f3aa028dff72167575af617021`  
		Last Modified: Sat, 19 Sep 2026 00:48:41 GMT  
		Size: 20.8 KB (20822 bytes)  
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
$ docker pull dart@sha256:e13295b7d1a97815cc059da93b803c60561784e33301a88adf5dc6b9d1d5f73a
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

### `dart:3.14.0-211.1.beta` - unknown; unknown

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

### `dart:3.14.0-211.1.beta` - linux; arm variant v7

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

### `dart:3.14.0-211.1.beta` - unknown; unknown

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

### `dart:3.14.0-211.1.beta` - linux; arm64 variant v8

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

### `dart:3.14.0-211.1.beta` - unknown; unknown

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
$ docker pull dart@sha256:e13295b7d1a97815cc059da93b803c60561784e33301a88adf5dc6b9d1d5f73a
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

### `dart:3.14.0-211.1.beta-sdk` - unknown; unknown

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

### `dart:3.14.0-211.1.beta-sdk` - linux; arm variant v7

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

### `dart:3.14.0-211.1.beta-sdk` - unknown; unknown

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

### `dart:3.14.0-211.1.beta-sdk` - linux; arm64 variant v8

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

### `dart:3.14.0-211.1.beta-sdk` - unknown; unknown

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
$ docker pull dart@sha256:e13295b7d1a97815cc059da93b803c60561784e33301a88adf5dc6b9d1d5f73a
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

### `dart:beta` - unknown; unknown

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

### `dart:beta` - linux; arm variant v7

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

### `dart:beta` - unknown; unknown

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

### `dart:beta` - linux; arm64 variant v8

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

### `dart:beta` - unknown; unknown

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
$ docker pull dart@sha256:e13295b7d1a97815cc059da93b803c60561784e33301a88adf5dc6b9d1d5f73a
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
$ docker pull dart@sha256:2d74fb22d7f8dba07862754953f5ebc50f3ac35a7b7ce18b6dd5629056c80f05
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
$ docker pull dart@sha256:e833be7efebe95d6bc714dd3d1fff279df6c2c813eb02d30f3067a8c8adc7ec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316594349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:414d3e645a7e3430d41395ba1e342031bbc97f9f616de0f0c91d300deda0724d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 00:45:26 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 00:45:26 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:45:26 GMT
WORKDIR /root
# Sat, 19 Sep 2026 00:45:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e291c49314bc9965f21220463afce881b680196e4062c1f7b0b3bcd300ecdb`  
		Last Modified: Sat, 19 Sep 2026 00:46:08 GMT  
		Size: 42.5 MB (42526151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24d728f251ab21d7e129124824a1775ec1be5b95f07af044a6e5a9dca181ec4`  
		Last Modified: Sat, 19 Sep 2026 00:46:06 GMT  
		Size: 1.9 MB (1869674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a43d2807a7f2a71c455632713d2ba92140d75428e241df8e54748a61c69dc2b`  
		Last Modified: Sat, 19 Sep 2026 00:46:12 GMT  
		Size: 242.4 MB (242368074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:3225acc10166cdc022e5395a66b2fc8010b5d0bb901403f887d03da167d87b95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4b8438a24c036c71cf233cc34b3c6df4c3ece4dc7203102c5db167ca6b8c58`

```dockerfile
```

-	Layers:
	-	`sha256:73ae51c88cbbd71e84d7c9bf34435aed1322f28dc447e3916c1f9c5c02afb119`  
		Last Modified: Sat, 19 Sep 2026 00:46:06 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; arm variant v7

```console
$ docker pull dart@sha256:d0755bd712465c58c84d1881a5b061988e247760ee18fa851abf2f7345f95aff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230520791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec439b55875ca6e1b76638b4e85374db951d2914b3da4f68399a851024efc38`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:28:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:29:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 01:29:00 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 01:29:00 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:29:00 GMT
WORKDIR /root
# Sat, 19 Sep 2026 01:29:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c96bccdc8848292320403d388cdb4f2703ebdb961c0081f0903ea6617d03b331`  
		Last Modified: Sat, 19 Sep 2026 01:29:32 GMT  
		Size: 37.5 MB (37528284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddac7901f0c2b98fa3c517108220263217209aa1156729b9ba8637438848e487`  
		Last Modified: Sat, 19 Sep 2026 01:29:31 GMT  
		Size: 1.3 MB (1273049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55eddb4d0dab9240a220ccfa84719d1471562a08cb0ef76c4963689c0c283b74`  
		Last Modified: Sat, 19 Sep 2026 01:29:35 GMT  
		Size: 165.5 MB (165470498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:005ba2ab83e5b7f48ff168ae0591c7b7004a52c2dcf787d211a013240b8877b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4d067a42b9af02ce8f6fa3d86c440461333476953e785856fc2d3834d0c915d`

```dockerfile
```

-	Layers:
	-	`sha256:d0db35e591b85ad3f9a02b0c89db7f6530d4f4f835f5f22ba6c8281f9f682a3e`  
		Last Modified: Sat, 19 Sep 2026 01:29:30 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:c0d35bbac0610e827a9d47d8fa309c18f6294fb39fc41796a4cb7be878c0318f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315274989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1471ea23f263f9d547857e501164a430976b1b62dc197c418dfdc17641a1a94d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:48:01 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 00:48:01 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 00:48:01 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:48:01 GMT
WORKDIR /root
# Sat, 19 Sep 2026 00:48:11 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bb905dcae686e80cfbcf8126408bac29dba99a7b02c493bba98efe7b102732`  
		Last Modified: Sat, 19 Sep 2026 00:48:43 GMT  
		Size: 42.3 MB (42320326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa459d936a45ac263b845f2f1d389d411ef3fde85546ae749d595eb9174174f`  
		Last Modified: Sat, 19 Sep 2026 00:48:42 GMT  
		Size: 1.6 MB (1564403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec3727fee406694e7dec192726c395fb3480d7a37b87465e5627d2187fbeb97`  
		Last Modified: Sat, 19 Sep 2026 00:48:47 GMT  
		Size: 241.2 MB (241200537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:693eeec2ce35d345c987d769d2333523183ab83f64465ee9308b493381730623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c955f29c749f8cf4c1042c65b00a34b79177ccfb426e291da398b7949ff46e77`

```dockerfile
```

-	Layers:
	-	`sha256:b7bd4572ee9397fb4505b67e7a2268e349d0e6f3aa028dff72167575af617021`  
		Last Modified: Sat, 19 Sep 2026 00:48:41 GMT  
		Size: 20.8 KB (20822 bytes)  
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
$ docker pull dart@sha256:2d74fb22d7f8dba07862754953f5ebc50f3ac35a7b7ce18b6dd5629056c80f05
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
$ docker pull dart@sha256:e833be7efebe95d6bc714dd3d1fff279df6c2c813eb02d30f3067a8c8adc7ec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316594349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:414d3e645a7e3430d41395ba1e342031bbc97f9f616de0f0c91d300deda0724d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 00:45:26 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 00:45:26 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:45:26 GMT
WORKDIR /root
# Sat, 19 Sep 2026 00:45:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e291c49314bc9965f21220463afce881b680196e4062c1f7b0b3bcd300ecdb`  
		Last Modified: Sat, 19 Sep 2026 00:46:08 GMT  
		Size: 42.5 MB (42526151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24d728f251ab21d7e129124824a1775ec1be5b95f07af044a6e5a9dca181ec4`  
		Last Modified: Sat, 19 Sep 2026 00:46:06 GMT  
		Size: 1.9 MB (1869674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a43d2807a7f2a71c455632713d2ba92140d75428e241df8e54748a61c69dc2b`  
		Last Modified: Sat, 19 Sep 2026 00:46:12 GMT  
		Size: 242.4 MB (242368074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:3225acc10166cdc022e5395a66b2fc8010b5d0bb901403f887d03da167d87b95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4b8438a24c036c71cf233cc34b3c6df4c3ece4dc7203102c5db167ca6b8c58`

```dockerfile
```

-	Layers:
	-	`sha256:73ae51c88cbbd71e84d7c9bf34435aed1322f28dc447e3916c1f9c5c02afb119`  
		Last Modified: Sat, 19 Sep 2026 00:46:06 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:d0755bd712465c58c84d1881a5b061988e247760ee18fa851abf2f7345f95aff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230520791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec439b55875ca6e1b76638b4e85374db951d2914b3da4f68399a851024efc38`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:28:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:29:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 01:29:00 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 01:29:00 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:29:00 GMT
WORKDIR /root
# Sat, 19 Sep 2026 01:29:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c96bccdc8848292320403d388cdb4f2703ebdb961c0081f0903ea6617d03b331`  
		Last Modified: Sat, 19 Sep 2026 01:29:32 GMT  
		Size: 37.5 MB (37528284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddac7901f0c2b98fa3c517108220263217209aa1156729b9ba8637438848e487`  
		Last Modified: Sat, 19 Sep 2026 01:29:31 GMT  
		Size: 1.3 MB (1273049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55eddb4d0dab9240a220ccfa84719d1471562a08cb0ef76c4963689c0c283b74`  
		Last Modified: Sat, 19 Sep 2026 01:29:35 GMT  
		Size: 165.5 MB (165470498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:005ba2ab83e5b7f48ff168ae0591c7b7004a52c2dcf787d211a013240b8877b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4d067a42b9af02ce8f6fa3d86c440461333476953e785856fc2d3834d0c915d`

```dockerfile
```

-	Layers:
	-	`sha256:d0db35e591b85ad3f9a02b0c89db7f6530d4f4f835f5f22ba6c8281f9f682a3e`  
		Last Modified: Sat, 19 Sep 2026 01:29:30 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:c0d35bbac0610e827a9d47d8fa309c18f6294fb39fc41796a4cb7be878c0318f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315274989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1471ea23f263f9d547857e501164a430976b1b62dc197c418dfdc17641a1a94d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:48:01 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 00:48:01 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 00:48:01 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:48:01 GMT
WORKDIR /root
# Sat, 19 Sep 2026 00:48:11 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bb905dcae686e80cfbcf8126408bac29dba99a7b02c493bba98efe7b102732`  
		Last Modified: Sat, 19 Sep 2026 00:48:43 GMT  
		Size: 42.3 MB (42320326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa459d936a45ac263b845f2f1d389d411ef3fde85546ae749d595eb9174174f`  
		Last Modified: Sat, 19 Sep 2026 00:48:42 GMT  
		Size: 1.6 MB (1564403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec3727fee406694e7dec192726c395fb3480d7a37b87465e5627d2187fbeb97`  
		Last Modified: Sat, 19 Sep 2026 00:48:47 GMT  
		Size: 241.2 MB (241200537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:693eeec2ce35d345c987d769d2333523183ab83f64465ee9308b493381730623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c955f29c749f8cf4c1042c65b00a34b79177ccfb426e291da398b7949ff46e77`

```dockerfile
```

-	Layers:
	-	`sha256:b7bd4572ee9397fb4505b67e7a2268e349d0e6f3aa028dff72167575af617021`  
		Last Modified: Sat, 19 Sep 2026 00:48:41 GMT  
		Size: 20.8 KB (20822 bytes)  
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
$ docker pull dart@sha256:2d74fb22d7f8dba07862754953f5ebc50f3ac35a7b7ce18b6dd5629056c80f05
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
$ docker pull dart@sha256:e833be7efebe95d6bc714dd3d1fff279df6c2c813eb02d30f3067a8c8adc7ec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316594349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:414d3e645a7e3430d41395ba1e342031bbc97f9f616de0f0c91d300deda0724d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 00:45:26 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 00:45:26 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:45:26 GMT
WORKDIR /root
# Sat, 19 Sep 2026 00:45:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e291c49314bc9965f21220463afce881b680196e4062c1f7b0b3bcd300ecdb`  
		Last Modified: Sat, 19 Sep 2026 00:46:08 GMT  
		Size: 42.5 MB (42526151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24d728f251ab21d7e129124824a1775ec1be5b95f07af044a6e5a9dca181ec4`  
		Last Modified: Sat, 19 Sep 2026 00:46:06 GMT  
		Size: 1.9 MB (1869674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a43d2807a7f2a71c455632713d2ba92140d75428e241df8e54748a61c69dc2b`  
		Last Modified: Sat, 19 Sep 2026 00:46:12 GMT  
		Size: 242.4 MB (242368074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:3225acc10166cdc022e5395a66b2fc8010b5d0bb901403f887d03da167d87b95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4b8438a24c036c71cf233cc34b3c6df4c3ece4dc7203102c5db167ca6b8c58`

```dockerfile
```

-	Layers:
	-	`sha256:73ae51c88cbbd71e84d7c9bf34435aed1322f28dc447e3916c1f9c5c02afb119`  
		Last Modified: Sat, 19 Sep 2026 00:46:06 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; arm variant v7

```console
$ docker pull dart@sha256:d0755bd712465c58c84d1881a5b061988e247760ee18fa851abf2f7345f95aff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230520791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec439b55875ca6e1b76638b4e85374db951d2914b3da4f68399a851024efc38`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:28:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:29:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 01:29:00 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 01:29:00 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:29:00 GMT
WORKDIR /root
# Sat, 19 Sep 2026 01:29:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c96bccdc8848292320403d388cdb4f2703ebdb961c0081f0903ea6617d03b331`  
		Last Modified: Sat, 19 Sep 2026 01:29:32 GMT  
		Size: 37.5 MB (37528284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddac7901f0c2b98fa3c517108220263217209aa1156729b9ba8637438848e487`  
		Last Modified: Sat, 19 Sep 2026 01:29:31 GMT  
		Size: 1.3 MB (1273049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55eddb4d0dab9240a220ccfa84719d1471562a08cb0ef76c4963689c0c283b74`  
		Last Modified: Sat, 19 Sep 2026 01:29:35 GMT  
		Size: 165.5 MB (165470498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:005ba2ab83e5b7f48ff168ae0591c7b7004a52c2dcf787d211a013240b8877b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4d067a42b9af02ce8f6fa3d86c440461333476953e785856fc2d3834d0c915d`

```dockerfile
```

-	Layers:
	-	`sha256:d0db35e591b85ad3f9a02b0c89db7f6530d4f4f835f5f22ba6c8281f9f682a3e`  
		Last Modified: Sat, 19 Sep 2026 01:29:30 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:c0d35bbac0610e827a9d47d8fa309c18f6294fb39fc41796a4cb7be878c0318f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315274989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1471ea23f263f9d547857e501164a430976b1b62dc197c418dfdc17641a1a94d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:48:01 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 00:48:01 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 00:48:01 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:48:01 GMT
WORKDIR /root
# Sat, 19 Sep 2026 00:48:11 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bb905dcae686e80cfbcf8126408bac29dba99a7b02c493bba98efe7b102732`  
		Last Modified: Sat, 19 Sep 2026 00:48:43 GMT  
		Size: 42.3 MB (42320326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa459d936a45ac263b845f2f1d389d411ef3fde85546ae749d595eb9174174f`  
		Last Modified: Sat, 19 Sep 2026 00:48:42 GMT  
		Size: 1.6 MB (1564403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec3727fee406694e7dec192726c395fb3480d7a37b87465e5627d2187fbeb97`  
		Last Modified: Sat, 19 Sep 2026 00:48:47 GMT  
		Size: 241.2 MB (241200537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:693eeec2ce35d345c987d769d2333523183ab83f64465ee9308b493381730623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c955f29c749f8cf4c1042c65b00a34b79177ccfb426e291da398b7949ff46e77`

```dockerfile
```

-	Layers:
	-	`sha256:b7bd4572ee9397fb4505b67e7a2268e349d0e6f3aa028dff72167575af617021`  
		Last Modified: Sat, 19 Sep 2026 00:48:41 GMT  
		Size: 20.8 KB (20822 bytes)  
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
$ docker pull dart@sha256:2d74fb22d7f8dba07862754953f5ebc50f3ac35a7b7ce18b6dd5629056c80f05
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
$ docker pull dart@sha256:e833be7efebe95d6bc714dd3d1fff279df6c2c813eb02d30f3067a8c8adc7ec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316594349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:414d3e645a7e3430d41395ba1e342031bbc97f9f616de0f0c91d300deda0724d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 00:45:26 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 00:45:26 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:45:26 GMT
WORKDIR /root
# Sat, 19 Sep 2026 00:45:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e291c49314bc9965f21220463afce881b680196e4062c1f7b0b3bcd300ecdb`  
		Last Modified: Sat, 19 Sep 2026 00:46:08 GMT  
		Size: 42.5 MB (42526151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24d728f251ab21d7e129124824a1775ec1be5b95f07af044a6e5a9dca181ec4`  
		Last Modified: Sat, 19 Sep 2026 00:46:06 GMT  
		Size: 1.9 MB (1869674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a43d2807a7f2a71c455632713d2ba92140d75428e241df8e54748a61c69dc2b`  
		Last Modified: Sat, 19 Sep 2026 00:46:12 GMT  
		Size: 242.4 MB (242368074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:3225acc10166cdc022e5395a66b2fc8010b5d0bb901403f887d03da167d87b95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4b8438a24c036c71cf233cc34b3c6df4c3ece4dc7203102c5db167ca6b8c58`

```dockerfile
```

-	Layers:
	-	`sha256:73ae51c88cbbd71e84d7c9bf34435aed1322f28dc447e3916c1f9c5c02afb119`  
		Last Modified: Sat, 19 Sep 2026 00:46:06 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:d0755bd712465c58c84d1881a5b061988e247760ee18fa851abf2f7345f95aff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230520791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec439b55875ca6e1b76638b4e85374db951d2914b3da4f68399a851024efc38`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:28:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:29:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 01:29:00 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 01:29:00 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:29:00 GMT
WORKDIR /root
# Sat, 19 Sep 2026 01:29:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c96bccdc8848292320403d388cdb4f2703ebdb961c0081f0903ea6617d03b331`  
		Last Modified: Sat, 19 Sep 2026 01:29:32 GMT  
		Size: 37.5 MB (37528284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddac7901f0c2b98fa3c517108220263217209aa1156729b9ba8637438848e487`  
		Last Modified: Sat, 19 Sep 2026 01:29:31 GMT  
		Size: 1.3 MB (1273049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55eddb4d0dab9240a220ccfa84719d1471562a08cb0ef76c4963689c0c283b74`  
		Last Modified: Sat, 19 Sep 2026 01:29:35 GMT  
		Size: 165.5 MB (165470498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:005ba2ab83e5b7f48ff168ae0591c7b7004a52c2dcf787d211a013240b8877b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4d067a42b9af02ce8f6fa3d86c440461333476953e785856fc2d3834d0c915d`

```dockerfile
```

-	Layers:
	-	`sha256:d0db35e591b85ad3f9a02b0c89db7f6530d4f4f835f5f22ba6c8281f9f682a3e`  
		Last Modified: Sat, 19 Sep 2026 01:29:30 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:c0d35bbac0610e827a9d47d8fa309c18f6294fb39fc41796a4cb7be878c0318f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315274989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1471ea23f263f9d547857e501164a430976b1b62dc197c418dfdc17641a1a94d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:48:01 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Sat, 19 Sep 2026 00:48:01 GMT
ENV DART_SDK=/usr/lib/dart
# Sat, 19 Sep 2026 00:48:01 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:48:01 GMT
WORKDIR /root
# Sat, 19 Sep 2026 00:48:11 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bb905dcae686e80cfbcf8126408bac29dba99a7b02c493bba98efe7b102732`  
		Last Modified: Sat, 19 Sep 2026 00:48:43 GMT  
		Size: 42.3 MB (42320326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa459d936a45ac263b845f2f1d389d411ef3fde85546ae749d595eb9174174f`  
		Last Modified: Sat, 19 Sep 2026 00:48:42 GMT  
		Size: 1.6 MB (1564403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec3727fee406694e7dec192726c395fb3480d7a37b87465e5627d2187fbeb97`  
		Last Modified: Sat, 19 Sep 2026 00:48:47 GMT  
		Size: 241.2 MB (241200537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:693eeec2ce35d345c987d769d2333523183ab83f64465ee9308b493381730623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c955f29c749f8cf4c1042c65b00a34b79177ccfb426e291da398b7949ff46e77`

```dockerfile
```

-	Layers:
	-	`sha256:b7bd4572ee9397fb4505b67e7a2268e349d0e6f3aa028dff72167575af617021`  
		Last Modified: Sat, 19 Sep 2026 00:48:41 GMT  
		Size: 20.8 KB (20822 bytes)  
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
