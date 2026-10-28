<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `dart`

-	[`dart:3`](#dart3)
-	[`dart:3-sdk`](#dart3-sdk)
-	[`dart:3.13`](#dart313)
-	[`dart:3.13-sdk`](#dart313-sdk)
-	[`dart:3.13.7`](#dart3137)
-	[`dart:3.13.7-sdk`](#dart3137-sdk)
-	[`dart:3.14.0-315.3.beta`](#dart3140-3153beta)
-	[`dart:3.14.0-315.3.beta-sdk`](#dart3140-3153beta-sdk)
-	[`dart:beta`](#dartbeta)
-	[`dart:beta-sdk`](#dartbeta-sdk)
-	[`dart:latest`](#dartlatest)
-	[`dart:sdk`](#dartsdk)
-	[`dart:stable`](#dartstable)
-	[`dart:stable-sdk`](#dartstable-sdk)

## `dart:3`

```console
$ docker pull dart@sha256:ca3ef5fe9194012074a24b03515b2c5b58dd7d4ae8c87bf463d61b5d0647f426
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
$ docker pull dart@sha256:94401ef63af60004afea439249c5b1c62264dc7ad62c487e0b30991322773d95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.8 MB (316755470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:272ddefa609b1dce2126ab7f51a818ee89c504fd0d84714c4562518fe0778f0d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:40:07 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:08 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 01:40:08 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 01:40:08 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:40:08 GMT
WORKDIR /root
# Wed, 28 Oct 2026 01:40:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c5166c2953609fd9f58d6907bcce613d030ffb7d7c7b844bab5ac5f1848d5a`  
		Last Modified: Wed, 28 Oct 2026 01:40:51 GMT  
		Size: 42.5 MB (42525871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa55e040b04655e2a07dfec9b6c01efa235ff56ba231616cd3d806522667372`  
		Last Modified: Wed, 28 Oct 2026 01:40:49 GMT  
		Size: 1.9 MB (1867112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da0c2e19ae4c3211f00dcdfea21c0d8941f6ec069edd676cd2643fc72b83925`  
		Last Modified: Wed, 28 Oct 2026 01:40:54 GMT  
		Size: 242.5 MB (242507219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:4259f4f68cdc273b00955a68d36f10dec6bddeb503c76cd825dc7c9128fb6c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96cb085f2e2b8e4a6755781885336ccf5fb65068cb33f904fd637002a4c05355`

```dockerfile
```

-	Layers:
	-	`sha256:3d20782b62d8f4258074e7e2b3c2da60bfe43b8ec9b8f26218d6a0e3aadb2e27`  
		Last Modified: Wed, 28 Oct 2026 01:40:49 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; arm variant v7

```console
$ docker pull dart@sha256:12f52d16f01fff54869b42715642ae91ebc4413d0f32e0ce84877451b5321527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.6 MB (230576198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:932ec51356ea079866ca01327cd42a7ef073f4d6ff9a2aae442766e3196e9f45`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:21:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 02:21:50 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 02:21:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:21:50 GMT
WORKDIR /root
# Wed, 28 Oct 2026 02:21:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c60382a8058af15ce13c41b2e069a3b2349ad12ef8bae32113c58545608e16b`  
		Last Modified: Wed, 28 Oct 2026 02:22:20 GMT  
		Size: 37.5 MB (37529429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:244a510a507c9d9c4ecdeac18dd0d08c061104432d8885695dd63efa2667740a`  
		Last Modified: Wed, 28 Oct 2026 02:22:19 GMT  
		Size: 1.3 MB (1271964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9253ded57c1ce15a80ca10783f8058b257f931f27bccefd05d7f8868c04559e2`  
		Last Modified: Wed, 28 Oct 2026 02:22:22 GMT  
		Size: 165.5 MB (165502605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:5b5c639cb9ef150b2f6a28e32be401b07fcfcd32d0ed728fabe6ba483dc5276f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2aef6e16ee15bbb8cbe3c0f3c6ae9fea93ee9894581e42f99dc3ed8bcdd0cdc`

```dockerfile
```

-	Layers:
	-	`sha256:fe35920b6b66f223a55f9a204355653023cb86b2a707db5181388b6277aa4a60`  
		Last Modified: Wed, 28 Oct 2026 02:22:19 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:56f6a8c04ff0672a5ffebd839d5d4225bbfe2a49d29999239eba65e9698bc688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315460921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5903e747420a3a16ccc463a9f749c6bb7a3ce1b044c60c6449bbb8b49788581`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 01:43:36 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 01:43:36 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:43:36 GMT
WORKDIR /root
# Wed, 28 Oct 2026 01:43:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409e8ce70355884c845c1d6d2ca670e50c19002ca9d0eafceec6a81d40334099`  
		Last Modified: Wed, 28 Oct 2026 01:44:19 GMT  
		Size: 42.3 MB (42326812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e58ba05fe918c137054bc06b5f17fa629bf124aeabf9ecb71eb7ffec1168b3f`  
		Last Modified: Wed, 28 Oct 2026 01:44:17 GMT  
		Size: 1.6 MB (1561926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2692114c39f3b7e78b5607bb183a75f6220aa081f8b48399952f0a0f0b574dd`  
		Last Modified: Wed, 28 Oct 2026 01:44:23 GMT  
		Size: 241.4 MB (241358655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:ecc2001ec18de2eecdaebbb96f9235f878f0d4585914c404d197d5bb54c3d199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6bf1a91f659ddeb9aee3ff4013dfd2d8464906d9927db5bc5ec5bcd2374d71a`

```dockerfile
```

-	Layers:
	-	`sha256:bc46c34dd6b6fef9d022eea5acce62fd9802e02ce4eb9b64f2ae354a23a1b3d7`  
		Last Modified: Wed, 28 Oct 2026 01:44:17 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; riscv64

```console
$ docker pull dart@sha256:f53c4069463f23a16840ff46a6555ecdff7b516be9b46975e8c8a23511d8c38b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252909692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04e96a706918c48f21804ca9a1bf68b5461c410fe32b05426198276bc55d914c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 20:11:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 20:11:14 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Mon, 26 Oct 2026 20:11:14 GMT
ENV DART_SDK=/usr/lib/dart
# Mon, 26 Oct 2026 20:11:14 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 20:11:14 GMT
WORKDIR /root
# Mon, 26 Oct 2026 20:12:02 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da8d6b50bc9d775a82c281eea6a245a5ea9bfb04c9cd289d6ab48b5e32c11e9`  
		Last Modified: Mon, 26 Oct 2026 20:16:39 GMT  
		Size: 41.6 MB (41600566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e89a2ce3fb2521f4c363d00ec15c3e68e421885349ed5733ee1943a31a4466`  
		Last Modified: Mon, 26 Oct 2026 20:16:27 GMT  
		Size: 1.6 MB (1560321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36fab50ff98f86ded8c28fa353393d007f8aacbbe2736904ac5b7e7409a8c6a7`  
		Last Modified: Mon, 26 Oct 2026 20:16:59 GMT  
		Size: 181.4 MB (181414902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:23140d57ffc5b989e28c5e8dbc79abf5fdfb5bfaf2aff432291a07fbca4cd734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e41df9037381f535900002b66c4e8a2dc74dd5d6163bba71830d49b3f3759326`

```dockerfile
```

-	Layers:
	-	`sha256:77c6bdf1a05405b30c95eeb53a0635bb1173f6872ae5ae473e1660448df39d70`  
		Last Modified: Mon, 26 Oct 2026 20:16:26 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3-sdk`

```console
$ docker pull dart@sha256:ca3ef5fe9194012074a24b03515b2c5b58dd7d4ae8c87bf463d61b5d0647f426
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
$ docker pull dart@sha256:94401ef63af60004afea439249c5b1c62264dc7ad62c487e0b30991322773d95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.8 MB (316755470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:272ddefa609b1dce2126ab7f51a818ee89c504fd0d84714c4562518fe0778f0d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:40:07 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:08 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 01:40:08 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 01:40:08 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:40:08 GMT
WORKDIR /root
# Wed, 28 Oct 2026 01:40:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c5166c2953609fd9f58d6907bcce613d030ffb7d7c7b844bab5ac5f1848d5a`  
		Last Modified: Wed, 28 Oct 2026 01:40:51 GMT  
		Size: 42.5 MB (42525871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa55e040b04655e2a07dfec9b6c01efa235ff56ba231616cd3d806522667372`  
		Last Modified: Wed, 28 Oct 2026 01:40:49 GMT  
		Size: 1.9 MB (1867112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da0c2e19ae4c3211f00dcdfea21c0d8941f6ec069edd676cd2643fc72b83925`  
		Last Modified: Wed, 28 Oct 2026 01:40:54 GMT  
		Size: 242.5 MB (242507219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:4259f4f68cdc273b00955a68d36f10dec6bddeb503c76cd825dc7c9128fb6c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96cb085f2e2b8e4a6755781885336ccf5fb65068cb33f904fd637002a4c05355`

```dockerfile
```

-	Layers:
	-	`sha256:3d20782b62d8f4258074e7e2b3c2da60bfe43b8ec9b8f26218d6a0e3aadb2e27`  
		Last Modified: Wed, 28 Oct 2026 01:40:49 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:12f52d16f01fff54869b42715642ae91ebc4413d0f32e0ce84877451b5321527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.6 MB (230576198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:932ec51356ea079866ca01327cd42a7ef073f4d6ff9a2aae442766e3196e9f45`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:21:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 02:21:50 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 02:21:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:21:50 GMT
WORKDIR /root
# Wed, 28 Oct 2026 02:21:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c60382a8058af15ce13c41b2e069a3b2349ad12ef8bae32113c58545608e16b`  
		Last Modified: Wed, 28 Oct 2026 02:22:20 GMT  
		Size: 37.5 MB (37529429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:244a510a507c9d9c4ecdeac18dd0d08c061104432d8885695dd63efa2667740a`  
		Last Modified: Wed, 28 Oct 2026 02:22:19 GMT  
		Size: 1.3 MB (1271964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9253ded57c1ce15a80ca10783f8058b257f931f27bccefd05d7f8868c04559e2`  
		Last Modified: Wed, 28 Oct 2026 02:22:22 GMT  
		Size: 165.5 MB (165502605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:5b5c639cb9ef150b2f6a28e32be401b07fcfcd32d0ed728fabe6ba483dc5276f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2aef6e16ee15bbb8cbe3c0f3c6ae9fea93ee9894581e42f99dc3ed8bcdd0cdc`

```dockerfile
```

-	Layers:
	-	`sha256:fe35920b6b66f223a55f9a204355653023cb86b2a707db5181388b6277aa4a60`  
		Last Modified: Wed, 28 Oct 2026 02:22:19 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:56f6a8c04ff0672a5ffebd839d5d4225bbfe2a49d29999239eba65e9698bc688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315460921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5903e747420a3a16ccc463a9f749c6bb7a3ce1b044c60c6449bbb8b49788581`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 01:43:36 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 01:43:36 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:43:36 GMT
WORKDIR /root
# Wed, 28 Oct 2026 01:43:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409e8ce70355884c845c1d6d2ca670e50c19002ca9d0eafceec6a81d40334099`  
		Last Modified: Wed, 28 Oct 2026 01:44:19 GMT  
		Size: 42.3 MB (42326812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e58ba05fe918c137054bc06b5f17fa629bf124aeabf9ecb71eb7ffec1168b3f`  
		Last Modified: Wed, 28 Oct 2026 01:44:17 GMT  
		Size: 1.6 MB (1561926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2692114c39f3b7e78b5607bb183a75f6220aa081f8b48399952f0a0f0b574dd`  
		Last Modified: Wed, 28 Oct 2026 01:44:23 GMT  
		Size: 241.4 MB (241358655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:ecc2001ec18de2eecdaebbb96f9235f878f0d4585914c404d197d5bb54c3d199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6bf1a91f659ddeb9aee3ff4013dfd2d8464906d9927db5bc5ec5bcd2374d71a`

```dockerfile
```

-	Layers:
	-	`sha256:bc46c34dd6b6fef9d022eea5acce62fd9802e02ce4eb9b64f2ae354a23a1b3d7`  
		Last Modified: Wed, 28 Oct 2026 01:44:17 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:f53c4069463f23a16840ff46a6555ecdff7b516be9b46975e8c8a23511d8c38b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252909692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04e96a706918c48f21804ca9a1bf68b5461c410fe32b05426198276bc55d914c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 20:11:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 20:11:14 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Mon, 26 Oct 2026 20:11:14 GMT
ENV DART_SDK=/usr/lib/dart
# Mon, 26 Oct 2026 20:11:14 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 20:11:14 GMT
WORKDIR /root
# Mon, 26 Oct 2026 20:12:02 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da8d6b50bc9d775a82c281eea6a245a5ea9bfb04c9cd289d6ab48b5e32c11e9`  
		Last Modified: Mon, 26 Oct 2026 20:16:39 GMT  
		Size: 41.6 MB (41600566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e89a2ce3fb2521f4c363d00ec15c3e68e421885349ed5733ee1943a31a4466`  
		Last Modified: Mon, 26 Oct 2026 20:16:27 GMT  
		Size: 1.6 MB (1560321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36fab50ff98f86ded8c28fa353393d007f8aacbbe2736904ac5b7e7409a8c6a7`  
		Last Modified: Mon, 26 Oct 2026 20:16:59 GMT  
		Size: 181.4 MB (181414902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:23140d57ffc5b989e28c5e8dbc79abf5fdfb5bfaf2aff432291a07fbca4cd734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e41df9037381f535900002b66c4e8a2dc74dd5d6163bba71830d49b3f3759326`

```dockerfile
```

-	Layers:
	-	`sha256:77c6bdf1a05405b30c95eeb53a0635bb1173f6872ae5ae473e1660448df39d70`  
		Last Modified: Mon, 26 Oct 2026 20:16:26 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13`

```console
$ docker pull dart@sha256:ca3ef5fe9194012074a24b03515b2c5b58dd7d4ae8c87bf463d61b5d0647f426
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
$ docker pull dart@sha256:94401ef63af60004afea439249c5b1c62264dc7ad62c487e0b30991322773d95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.8 MB (316755470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:272ddefa609b1dce2126ab7f51a818ee89c504fd0d84714c4562518fe0778f0d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:40:07 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:08 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 01:40:08 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 01:40:08 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:40:08 GMT
WORKDIR /root
# Wed, 28 Oct 2026 01:40:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c5166c2953609fd9f58d6907bcce613d030ffb7d7c7b844bab5ac5f1848d5a`  
		Last Modified: Wed, 28 Oct 2026 01:40:51 GMT  
		Size: 42.5 MB (42525871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa55e040b04655e2a07dfec9b6c01efa235ff56ba231616cd3d806522667372`  
		Last Modified: Wed, 28 Oct 2026 01:40:49 GMT  
		Size: 1.9 MB (1867112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da0c2e19ae4c3211f00dcdfea21c0d8941f6ec069edd676cd2643fc72b83925`  
		Last Modified: Wed, 28 Oct 2026 01:40:54 GMT  
		Size: 242.5 MB (242507219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:4259f4f68cdc273b00955a68d36f10dec6bddeb503c76cd825dc7c9128fb6c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96cb085f2e2b8e4a6755781885336ccf5fb65068cb33f904fd637002a4c05355`

```dockerfile
```

-	Layers:
	-	`sha256:3d20782b62d8f4258074e7e2b3c2da60bfe43b8ec9b8f26218d6a0e3aadb2e27`  
		Last Modified: Wed, 28 Oct 2026 01:40:49 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13` - linux; arm variant v7

```console
$ docker pull dart@sha256:12f52d16f01fff54869b42715642ae91ebc4413d0f32e0ce84877451b5321527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.6 MB (230576198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:932ec51356ea079866ca01327cd42a7ef073f4d6ff9a2aae442766e3196e9f45`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:21:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 02:21:50 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 02:21:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:21:50 GMT
WORKDIR /root
# Wed, 28 Oct 2026 02:21:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c60382a8058af15ce13c41b2e069a3b2349ad12ef8bae32113c58545608e16b`  
		Last Modified: Wed, 28 Oct 2026 02:22:20 GMT  
		Size: 37.5 MB (37529429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:244a510a507c9d9c4ecdeac18dd0d08c061104432d8885695dd63efa2667740a`  
		Last Modified: Wed, 28 Oct 2026 02:22:19 GMT  
		Size: 1.3 MB (1271964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9253ded57c1ce15a80ca10783f8058b257f931f27bccefd05d7f8868c04559e2`  
		Last Modified: Wed, 28 Oct 2026 02:22:22 GMT  
		Size: 165.5 MB (165502605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:5b5c639cb9ef150b2f6a28e32be401b07fcfcd32d0ed728fabe6ba483dc5276f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2aef6e16ee15bbb8cbe3c0f3c6ae9fea93ee9894581e42f99dc3ed8bcdd0cdc`

```dockerfile
```

-	Layers:
	-	`sha256:fe35920b6b66f223a55f9a204355653023cb86b2a707db5181388b6277aa4a60`  
		Last Modified: Wed, 28 Oct 2026 02:22:19 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:56f6a8c04ff0672a5ffebd839d5d4225bbfe2a49d29999239eba65e9698bc688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315460921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5903e747420a3a16ccc463a9f749c6bb7a3ce1b044c60c6449bbb8b49788581`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 01:43:36 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 01:43:36 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:43:36 GMT
WORKDIR /root
# Wed, 28 Oct 2026 01:43:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409e8ce70355884c845c1d6d2ca670e50c19002ca9d0eafceec6a81d40334099`  
		Last Modified: Wed, 28 Oct 2026 01:44:19 GMT  
		Size: 42.3 MB (42326812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e58ba05fe918c137054bc06b5f17fa629bf124aeabf9ecb71eb7ffec1168b3f`  
		Last Modified: Wed, 28 Oct 2026 01:44:17 GMT  
		Size: 1.6 MB (1561926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2692114c39f3b7e78b5607bb183a75f6220aa081f8b48399952f0a0f0b574dd`  
		Last Modified: Wed, 28 Oct 2026 01:44:23 GMT  
		Size: 241.4 MB (241358655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:ecc2001ec18de2eecdaebbb96f9235f878f0d4585914c404d197d5bb54c3d199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6bf1a91f659ddeb9aee3ff4013dfd2d8464906d9927db5bc5ec5bcd2374d71a`

```dockerfile
```

-	Layers:
	-	`sha256:bc46c34dd6b6fef9d022eea5acce62fd9802e02ce4eb9b64f2ae354a23a1b3d7`  
		Last Modified: Wed, 28 Oct 2026 01:44:17 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13` - linux; riscv64

```console
$ docker pull dart@sha256:f53c4069463f23a16840ff46a6555ecdff7b516be9b46975e8c8a23511d8c38b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252909692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04e96a706918c48f21804ca9a1bf68b5461c410fe32b05426198276bc55d914c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 20:11:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 20:11:14 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Mon, 26 Oct 2026 20:11:14 GMT
ENV DART_SDK=/usr/lib/dart
# Mon, 26 Oct 2026 20:11:14 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 20:11:14 GMT
WORKDIR /root
# Mon, 26 Oct 2026 20:12:02 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da8d6b50bc9d775a82c281eea6a245a5ea9bfb04c9cd289d6ab48b5e32c11e9`  
		Last Modified: Mon, 26 Oct 2026 20:16:39 GMT  
		Size: 41.6 MB (41600566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e89a2ce3fb2521f4c363d00ec15c3e68e421885349ed5733ee1943a31a4466`  
		Last Modified: Mon, 26 Oct 2026 20:16:27 GMT  
		Size: 1.6 MB (1560321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36fab50ff98f86ded8c28fa353393d007f8aacbbe2736904ac5b7e7409a8c6a7`  
		Last Modified: Mon, 26 Oct 2026 20:16:59 GMT  
		Size: 181.4 MB (181414902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:23140d57ffc5b989e28c5e8dbc79abf5fdfb5bfaf2aff432291a07fbca4cd734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e41df9037381f535900002b66c4e8a2dc74dd5d6163bba71830d49b3f3759326`

```dockerfile
```

-	Layers:
	-	`sha256:77c6bdf1a05405b30c95eeb53a0635bb1173f6872ae5ae473e1660448df39d70`  
		Last Modified: Mon, 26 Oct 2026 20:16:26 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13-sdk`

```console
$ docker pull dart@sha256:ca3ef5fe9194012074a24b03515b2c5b58dd7d4ae8c87bf463d61b5d0647f426
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
$ docker pull dart@sha256:94401ef63af60004afea439249c5b1c62264dc7ad62c487e0b30991322773d95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.8 MB (316755470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:272ddefa609b1dce2126ab7f51a818ee89c504fd0d84714c4562518fe0778f0d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:40:07 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:08 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 01:40:08 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 01:40:08 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:40:08 GMT
WORKDIR /root
# Wed, 28 Oct 2026 01:40:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c5166c2953609fd9f58d6907bcce613d030ffb7d7c7b844bab5ac5f1848d5a`  
		Last Modified: Wed, 28 Oct 2026 01:40:51 GMT  
		Size: 42.5 MB (42525871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa55e040b04655e2a07dfec9b6c01efa235ff56ba231616cd3d806522667372`  
		Last Modified: Wed, 28 Oct 2026 01:40:49 GMT  
		Size: 1.9 MB (1867112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da0c2e19ae4c3211f00dcdfea21c0d8941f6ec069edd676cd2643fc72b83925`  
		Last Modified: Wed, 28 Oct 2026 01:40:54 GMT  
		Size: 242.5 MB (242507219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:4259f4f68cdc273b00955a68d36f10dec6bddeb503c76cd825dc7c9128fb6c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96cb085f2e2b8e4a6755781885336ccf5fb65068cb33f904fd637002a4c05355`

```dockerfile
```

-	Layers:
	-	`sha256:3d20782b62d8f4258074e7e2b3c2da60bfe43b8ec9b8f26218d6a0e3aadb2e27`  
		Last Modified: Wed, 28 Oct 2026 01:40:49 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:12f52d16f01fff54869b42715642ae91ebc4413d0f32e0ce84877451b5321527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.6 MB (230576198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:932ec51356ea079866ca01327cd42a7ef073f4d6ff9a2aae442766e3196e9f45`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:21:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 02:21:50 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 02:21:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:21:50 GMT
WORKDIR /root
# Wed, 28 Oct 2026 02:21:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c60382a8058af15ce13c41b2e069a3b2349ad12ef8bae32113c58545608e16b`  
		Last Modified: Wed, 28 Oct 2026 02:22:20 GMT  
		Size: 37.5 MB (37529429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:244a510a507c9d9c4ecdeac18dd0d08c061104432d8885695dd63efa2667740a`  
		Last Modified: Wed, 28 Oct 2026 02:22:19 GMT  
		Size: 1.3 MB (1271964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9253ded57c1ce15a80ca10783f8058b257f931f27bccefd05d7f8868c04559e2`  
		Last Modified: Wed, 28 Oct 2026 02:22:22 GMT  
		Size: 165.5 MB (165502605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:5b5c639cb9ef150b2f6a28e32be401b07fcfcd32d0ed728fabe6ba483dc5276f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2aef6e16ee15bbb8cbe3c0f3c6ae9fea93ee9894581e42f99dc3ed8bcdd0cdc`

```dockerfile
```

-	Layers:
	-	`sha256:fe35920b6b66f223a55f9a204355653023cb86b2a707db5181388b6277aa4a60`  
		Last Modified: Wed, 28 Oct 2026 02:22:19 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:56f6a8c04ff0672a5ffebd839d5d4225bbfe2a49d29999239eba65e9698bc688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315460921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5903e747420a3a16ccc463a9f749c6bb7a3ce1b044c60c6449bbb8b49788581`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 01:43:36 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 01:43:36 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:43:36 GMT
WORKDIR /root
# Wed, 28 Oct 2026 01:43:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409e8ce70355884c845c1d6d2ca670e50c19002ca9d0eafceec6a81d40334099`  
		Last Modified: Wed, 28 Oct 2026 01:44:19 GMT  
		Size: 42.3 MB (42326812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e58ba05fe918c137054bc06b5f17fa629bf124aeabf9ecb71eb7ffec1168b3f`  
		Last Modified: Wed, 28 Oct 2026 01:44:17 GMT  
		Size: 1.6 MB (1561926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2692114c39f3b7e78b5607bb183a75f6220aa081f8b48399952f0a0f0b574dd`  
		Last Modified: Wed, 28 Oct 2026 01:44:23 GMT  
		Size: 241.4 MB (241358655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:ecc2001ec18de2eecdaebbb96f9235f878f0d4585914c404d197d5bb54c3d199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6bf1a91f659ddeb9aee3ff4013dfd2d8464906d9927db5bc5ec5bcd2374d71a`

```dockerfile
```

-	Layers:
	-	`sha256:bc46c34dd6b6fef9d022eea5acce62fd9802e02ce4eb9b64f2ae354a23a1b3d7`  
		Last Modified: Wed, 28 Oct 2026 01:44:17 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:f53c4069463f23a16840ff46a6555ecdff7b516be9b46975e8c8a23511d8c38b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252909692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04e96a706918c48f21804ca9a1bf68b5461c410fe32b05426198276bc55d914c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 20:11:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 20:11:14 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Mon, 26 Oct 2026 20:11:14 GMT
ENV DART_SDK=/usr/lib/dart
# Mon, 26 Oct 2026 20:11:14 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 20:11:14 GMT
WORKDIR /root
# Mon, 26 Oct 2026 20:12:02 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da8d6b50bc9d775a82c281eea6a245a5ea9bfb04c9cd289d6ab48b5e32c11e9`  
		Last Modified: Mon, 26 Oct 2026 20:16:39 GMT  
		Size: 41.6 MB (41600566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e89a2ce3fb2521f4c363d00ec15c3e68e421885349ed5733ee1943a31a4466`  
		Last Modified: Mon, 26 Oct 2026 20:16:27 GMT  
		Size: 1.6 MB (1560321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36fab50ff98f86ded8c28fa353393d007f8aacbbe2736904ac5b7e7409a8c6a7`  
		Last Modified: Mon, 26 Oct 2026 20:16:59 GMT  
		Size: 181.4 MB (181414902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:23140d57ffc5b989e28c5e8dbc79abf5fdfb5bfaf2aff432291a07fbca4cd734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e41df9037381f535900002b66c4e8a2dc74dd5d6163bba71830d49b3f3759326`

```dockerfile
```

-	Layers:
	-	`sha256:77c6bdf1a05405b30c95eeb53a0635bb1173f6872ae5ae473e1660448df39d70`  
		Last Modified: Mon, 26 Oct 2026 20:16:26 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13.7`

```console
$ docker pull dart@sha256:ca3ef5fe9194012074a24b03515b2c5b58dd7d4ae8c87bf463d61b5d0647f426
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

### `dart:3.13.7` - linux; amd64

```console
$ docker pull dart@sha256:94401ef63af60004afea439249c5b1c62264dc7ad62c487e0b30991322773d95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.8 MB (316755470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:272ddefa609b1dce2126ab7f51a818ee89c504fd0d84714c4562518fe0778f0d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:40:07 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:08 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 01:40:08 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 01:40:08 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:40:08 GMT
WORKDIR /root
# Wed, 28 Oct 2026 01:40:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c5166c2953609fd9f58d6907bcce613d030ffb7d7c7b844bab5ac5f1848d5a`  
		Last Modified: Wed, 28 Oct 2026 01:40:51 GMT  
		Size: 42.5 MB (42525871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa55e040b04655e2a07dfec9b6c01efa235ff56ba231616cd3d806522667372`  
		Last Modified: Wed, 28 Oct 2026 01:40:49 GMT  
		Size: 1.9 MB (1867112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da0c2e19ae4c3211f00dcdfea21c0d8941f6ec069edd676cd2643fc72b83925`  
		Last Modified: Wed, 28 Oct 2026 01:40:54 GMT  
		Size: 242.5 MB (242507219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.7` - unknown; unknown

```console
$ docker pull dart@sha256:4259f4f68cdc273b00955a68d36f10dec6bddeb503c76cd825dc7c9128fb6c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96cb085f2e2b8e4a6755781885336ccf5fb65068cb33f904fd637002a4c05355`

```dockerfile
```

-	Layers:
	-	`sha256:3d20782b62d8f4258074e7e2b3c2da60bfe43b8ec9b8f26218d6a0e3aadb2e27`  
		Last Modified: Wed, 28 Oct 2026 01:40:49 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.7` - linux; arm variant v7

```console
$ docker pull dart@sha256:12f52d16f01fff54869b42715642ae91ebc4413d0f32e0ce84877451b5321527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.6 MB (230576198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:932ec51356ea079866ca01327cd42a7ef073f4d6ff9a2aae442766e3196e9f45`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:21:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 02:21:50 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 02:21:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:21:50 GMT
WORKDIR /root
# Wed, 28 Oct 2026 02:21:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c60382a8058af15ce13c41b2e069a3b2349ad12ef8bae32113c58545608e16b`  
		Last Modified: Wed, 28 Oct 2026 02:22:20 GMT  
		Size: 37.5 MB (37529429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:244a510a507c9d9c4ecdeac18dd0d08c061104432d8885695dd63efa2667740a`  
		Last Modified: Wed, 28 Oct 2026 02:22:19 GMT  
		Size: 1.3 MB (1271964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9253ded57c1ce15a80ca10783f8058b257f931f27bccefd05d7f8868c04559e2`  
		Last Modified: Wed, 28 Oct 2026 02:22:22 GMT  
		Size: 165.5 MB (165502605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.7` - unknown; unknown

```console
$ docker pull dart@sha256:5b5c639cb9ef150b2f6a28e32be401b07fcfcd32d0ed728fabe6ba483dc5276f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2aef6e16ee15bbb8cbe3c0f3c6ae9fea93ee9894581e42f99dc3ed8bcdd0cdc`

```dockerfile
```

-	Layers:
	-	`sha256:fe35920b6b66f223a55f9a204355653023cb86b2a707db5181388b6277aa4a60`  
		Last Modified: Wed, 28 Oct 2026 02:22:19 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.7` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:56f6a8c04ff0672a5ffebd839d5d4225bbfe2a49d29999239eba65e9698bc688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315460921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5903e747420a3a16ccc463a9f749c6bb7a3ce1b044c60c6449bbb8b49788581`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 01:43:36 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 01:43:36 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:43:36 GMT
WORKDIR /root
# Wed, 28 Oct 2026 01:43:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409e8ce70355884c845c1d6d2ca670e50c19002ca9d0eafceec6a81d40334099`  
		Last Modified: Wed, 28 Oct 2026 01:44:19 GMT  
		Size: 42.3 MB (42326812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e58ba05fe918c137054bc06b5f17fa629bf124aeabf9ecb71eb7ffec1168b3f`  
		Last Modified: Wed, 28 Oct 2026 01:44:17 GMT  
		Size: 1.6 MB (1561926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2692114c39f3b7e78b5607bb183a75f6220aa081f8b48399952f0a0f0b574dd`  
		Last Modified: Wed, 28 Oct 2026 01:44:23 GMT  
		Size: 241.4 MB (241358655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.7` - unknown; unknown

```console
$ docker pull dart@sha256:ecc2001ec18de2eecdaebbb96f9235f878f0d4585914c404d197d5bb54c3d199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6bf1a91f659ddeb9aee3ff4013dfd2d8464906d9927db5bc5ec5bcd2374d71a`

```dockerfile
```

-	Layers:
	-	`sha256:bc46c34dd6b6fef9d022eea5acce62fd9802e02ce4eb9b64f2ae354a23a1b3d7`  
		Last Modified: Wed, 28 Oct 2026 01:44:17 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.7` - linux; riscv64

```console
$ docker pull dart@sha256:f53c4069463f23a16840ff46a6555ecdff7b516be9b46975e8c8a23511d8c38b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252909692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04e96a706918c48f21804ca9a1bf68b5461c410fe32b05426198276bc55d914c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 20:11:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 20:11:14 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Mon, 26 Oct 2026 20:11:14 GMT
ENV DART_SDK=/usr/lib/dart
# Mon, 26 Oct 2026 20:11:14 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 20:11:14 GMT
WORKDIR /root
# Mon, 26 Oct 2026 20:12:02 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da8d6b50bc9d775a82c281eea6a245a5ea9bfb04c9cd289d6ab48b5e32c11e9`  
		Last Modified: Mon, 26 Oct 2026 20:16:39 GMT  
		Size: 41.6 MB (41600566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e89a2ce3fb2521f4c363d00ec15c3e68e421885349ed5733ee1943a31a4466`  
		Last Modified: Mon, 26 Oct 2026 20:16:27 GMT  
		Size: 1.6 MB (1560321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36fab50ff98f86ded8c28fa353393d007f8aacbbe2736904ac5b7e7409a8c6a7`  
		Last Modified: Mon, 26 Oct 2026 20:16:59 GMT  
		Size: 181.4 MB (181414902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.7` - unknown; unknown

```console
$ docker pull dart@sha256:23140d57ffc5b989e28c5e8dbc79abf5fdfb5bfaf2aff432291a07fbca4cd734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e41df9037381f535900002b66c4e8a2dc74dd5d6163bba71830d49b3f3759326`

```dockerfile
```

-	Layers:
	-	`sha256:77c6bdf1a05405b30c95eeb53a0635bb1173f6872ae5ae473e1660448df39d70`  
		Last Modified: Mon, 26 Oct 2026 20:16:26 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13.7-sdk`

```console
$ docker pull dart@sha256:ca3ef5fe9194012074a24b03515b2c5b58dd7d4ae8c87bf463d61b5d0647f426
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

### `dart:3.13.7-sdk` - linux; amd64

```console
$ docker pull dart@sha256:94401ef63af60004afea439249c5b1c62264dc7ad62c487e0b30991322773d95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.8 MB (316755470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:272ddefa609b1dce2126ab7f51a818ee89c504fd0d84714c4562518fe0778f0d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:40:07 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:08 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 01:40:08 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 01:40:08 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:40:08 GMT
WORKDIR /root
# Wed, 28 Oct 2026 01:40:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c5166c2953609fd9f58d6907bcce613d030ffb7d7c7b844bab5ac5f1848d5a`  
		Last Modified: Wed, 28 Oct 2026 01:40:51 GMT  
		Size: 42.5 MB (42525871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa55e040b04655e2a07dfec9b6c01efa235ff56ba231616cd3d806522667372`  
		Last Modified: Wed, 28 Oct 2026 01:40:49 GMT  
		Size: 1.9 MB (1867112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da0c2e19ae4c3211f00dcdfea21c0d8941f6ec069edd676cd2643fc72b83925`  
		Last Modified: Wed, 28 Oct 2026 01:40:54 GMT  
		Size: 242.5 MB (242507219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.7-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:4259f4f68cdc273b00955a68d36f10dec6bddeb503c76cd825dc7c9128fb6c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96cb085f2e2b8e4a6755781885336ccf5fb65068cb33f904fd637002a4c05355`

```dockerfile
```

-	Layers:
	-	`sha256:3d20782b62d8f4258074e7e2b3c2da60bfe43b8ec9b8f26218d6a0e3aadb2e27`  
		Last Modified: Wed, 28 Oct 2026 01:40:49 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.7-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:12f52d16f01fff54869b42715642ae91ebc4413d0f32e0ce84877451b5321527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.6 MB (230576198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:932ec51356ea079866ca01327cd42a7ef073f4d6ff9a2aae442766e3196e9f45`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:21:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 02:21:50 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 02:21:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:21:50 GMT
WORKDIR /root
# Wed, 28 Oct 2026 02:21:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c60382a8058af15ce13c41b2e069a3b2349ad12ef8bae32113c58545608e16b`  
		Last Modified: Wed, 28 Oct 2026 02:22:20 GMT  
		Size: 37.5 MB (37529429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:244a510a507c9d9c4ecdeac18dd0d08c061104432d8885695dd63efa2667740a`  
		Last Modified: Wed, 28 Oct 2026 02:22:19 GMT  
		Size: 1.3 MB (1271964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9253ded57c1ce15a80ca10783f8058b257f931f27bccefd05d7f8868c04559e2`  
		Last Modified: Wed, 28 Oct 2026 02:22:22 GMT  
		Size: 165.5 MB (165502605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.7-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:5b5c639cb9ef150b2f6a28e32be401b07fcfcd32d0ed728fabe6ba483dc5276f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2aef6e16ee15bbb8cbe3c0f3c6ae9fea93ee9894581e42f99dc3ed8bcdd0cdc`

```dockerfile
```

-	Layers:
	-	`sha256:fe35920b6b66f223a55f9a204355653023cb86b2a707db5181388b6277aa4a60`  
		Last Modified: Wed, 28 Oct 2026 02:22:19 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.7-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:56f6a8c04ff0672a5ffebd839d5d4225bbfe2a49d29999239eba65e9698bc688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315460921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5903e747420a3a16ccc463a9f749c6bb7a3ce1b044c60c6449bbb8b49788581`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 01:43:36 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 01:43:36 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:43:36 GMT
WORKDIR /root
# Wed, 28 Oct 2026 01:43:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409e8ce70355884c845c1d6d2ca670e50c19002ca9d0eafceec6a81d40334099`  
		Last Modified: Wed, 28 Oct 2026 01:44:19 GMT  
		Size: 42.3 MB (42326812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e58ba05fe918c137054bc06b5f17fa629bf124aeabf9ecb71eb7ffec1168b3f`  
		Last Modified: Wed, 28 Oct 2026 01:44:17 GMT  
		Size: 1.6 MB (1561926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2692114c39f3b7e78b5607bb183a75f6220aa081f8b48399952f0a0f0b574dd`  
		Last Modified: Wed, 28 Oct 2026 01:44:23 GMT  
		Size: 241.4 MB (241358655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.7-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:ecc2001ec18de2eecdaebbb96f9235f878f0d4585914c404d197d5bb54c3d199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6bf1a91f659ddeb9aee3ff4013dfd2d8464906d9927db5bc5ec5bcd2374d71a`

```dockerfile
```

-	Layers:
	-	`sha256:bc46c34dd6b6fef9d022eea5acce62fd9802e02ce4eb9b64f2ae354a23a1b3d7`  
		Last Modified: Wed, 28 Oct 2026 01:44:17 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.7-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:f53c4069463f23a16840ff46a6555ecdff7b516be9b46975e8c8a23511d8c38b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252909692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04e96a706918c48f21804ca9a1bf68b5461c410fe32b05426198276bc55d914c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 20:11:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 20:11:14 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Mon, 26 Oct 2026 20:11:14 GMT
ENV DART_SDK=/usr/lib/dart
# Mon, 26 Oct 2026 20:11:14 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 20:11:14 GMT
WORKDIR /root
# Mon, 26 Oct 2026 20:12:02 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da8d6b50bc9d775a82c281eea6a245a5ea9bfb04c9cd289d6ab48b5e32c11e9`  
		Last Modified: Mon, 26 Oct 2026 20:16:39 GMT  
		Size: 41.6 MB (41600566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e89a2ce3fb2521f4c363d00ec15c3e68e421885349ed5733ee1943a31a4466`  
		Last Modified: Mon, 26 Oct 2026 20:16:27 GMT  
		Size: 1.6 MB (1560321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36fab50ff98f86ded8c28fa353393d007f8aacbbe2736904ac5b7e7409a8c6a7`  
		Last Modified: Mon, 26 Oct 2026 20:16:59 GMT  
		Size: 181.4 MB (181414902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.7-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:23140d57ffc5b989e28c5e8dbc79abf5fdfb5bfaf2aff432291a07fbca4cd734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e41df9037381f535900002b66c4e8a2dc74dd5d6163bba71830d49b3f3759326`

```dockerfile
```

-	Layers:
	-	`sha256:77c6bdf1a05405b30c95eeb53a0635bb1173f6872ae5ae473e1660448df39d70`  
		Last Modified: Mon, 26 Oct 2026 20:16:26 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.14.0-315.3.beta`

```console
$ docker pull dart@sha256:bf86cec360b387b14581bd243ea3cae63e9df7abbf0401f2f5626d356bcf8672
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

### `dart:3.14.0-315.3.beta` - linux; amd64

```console
$ docker pull dart@sha256:aa0eb8907627135c2700e4e9733ee5e57aebb49a4de51c73928e4e083337ada6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345875040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21a130a67f204230b0836e4cc96bc5554eb6fda14811fd2e612531201188ea18`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:40:13 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:14 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 01:40:14 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 01:40:14 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:40:14 GMT
WORKDIR /root
# Wed, 28 Oct 2026 01:40:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=4e54a80eeaf04055501ac91708de4a915d61c5c0e1a4e06da4da1d1f511f38ed;             SDK_ARCH="x64";;         armhf)             DART_SHA256=6eb269a079eccd8cafc72e25b183d1037437f597fd8119ec06558ac3b6179cd2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f9b6819da79893a371b0580395f462a7c4d76e20cb3476eb7f78da4663064414;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=92a0599b5e5223511ba7c29f4f6d5c9fe356d80a2c27f36e5a715fddf35f1bdf;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f95e38d01bbb4321a0e48917eb8c35730c6b2dd805fbb76c1bf2313261229755`  
		Last Modified: Wed, 28 Oct 2026 01:40:58 GMT  
		Size: 42.5 MB (42525858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b48a3a4bdfca105ae6cdb43c37b77c5f2e72ac28667967cbf74ef38713fbab`  
		Last Modified: Wed, 28 Oct 2026 01:40:56 GMT  
		Size: 1.9 MB (1867122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2908300155eff603f985be0f8a0c8d69b553463a5945f61b8a3d35e4da18f988`  
		Last Modified: Wed, 28 Oct 2026 01:41:02 GMT  
		Size: 271.6 MB (271626792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-315.3.beta` - unknown; unknown

```console
$ docker pull dart@sha256:29fb3722cb185b55781b71e8fdfdf710d675af7839977c0a160537613701562c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b3b23b1b0f5fcae9701258e1bd413c7ffd5b661256e6235ad3ea17dbac773cf`

```dockerfile
```

-	Layers:
	-	`sha256:81698758fc8f359fbd27a86e1bb83065ce6691e05751f7d574edf774c05f593f`  
		Last Modified: Wed, 28 Oct 2026 01:40:56 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-315.3.beta` - linux; arm variant v7

```console
$ docker pull dart@sha256:caba0e371babc8e6590751fc21b355df2a32fc99859c9e303181e8a2431fb4da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238600014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7da6245058d1bda489de809bede38049fdf1560c2f1220afe91ea2086d1a6bf`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:58 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:21:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 02:21:59 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 02:21:59 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:21:59 GMT
WORKDIR /root
# Wed, 28 Oct 2026 02:22:07 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=4e54a80eeaf04055501ac91708de4a915d61c5c0e1a4e06da4da1d1f511f38ed;             SDK_ARCH="x64";;         armhf)             DART_SHA256=6eb269a079eccd8cafc72e25b183d1037437f597fd8119ec06558ac3b6179cd2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f9b6819da79893a371b0580395f462a7c4d76e20cb3476eb7f78da4663064414;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=92a0599b5e5223511ba7c29f4f6d5c9fe356d80a2c27f36e5a715fddf35f1bdf;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a46ec97f6ed356d1e66a89108d98d281be809e8a5f93010de28cc856d8006a23`  
		Last Modified: Wed, 28 Oct 2026 02:22:31 GMT  
		Size: 37.5 MB (37529245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4f1c2eb93d138d2079a1cbd56328cfeb715ccb5f9cb6eb2102214e6fe12c753`  
		Last Modified: Wed, 28 Oct 2026 02:22:29 GMT  
		Size: 1.3 MB (1271971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8fdaf5dfae7d37020a090a03e501ca57ec3ac6488b5fb32fad101a157e6031`  
		Last Modified: Wed, 28 Oct 2026 02:22:33 GMT  
		Size: 173.5 MB (173526598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-315.3.beta` - unknown; unknown

```console
$ docker pull dart@sha256:32ca5499eb99f474152c5ead4181d6de578703b945fa41c03284d31a81449779
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46b036a9aa99ebc2973f0a33ae7cbd7a306fe2e9ff88ba1b7201d7fb3323ed8b`

```dockerfile
```

-	Layers:
	-	`sha256:482bde6380812711eea1751223c4fcf92b8769fb9c6fb916c798e08f7188bf14`  
		Last Modified: Wed, 28 Oct 2026 02:22:29 GMT  
		Size: 19.0 KB (19028 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-315.3.beta` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:b7f3b60df29da28f0946f574f68c9f3bf10bc78a4f741e2de5dd604748a61aaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (343974267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ac5bdbe0165576a95db00acea3748d3fb8dde28731635e634932a7984fa4a29`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 01:43:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 01:43:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:43:38 GMT
WORKDIR /root
# Wed, 28 Oct 2026 01:43:52 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=4e54a80eeaf04055501ac91708de4a915d61c5c0e1a4e06da4da1d1f511f38ed;             SDK_ARCH="x64";;         armhf)             DART_SHA256=6eb269a079eccd8cafc72e25b183d1037437f597fd8119ec06558ac3b6179cd2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f9b6819da79893a371b0580395f462a7c4d76e20cb3476eb7f78da4663064414;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=92a0599b5e5223511ba7c29f4f6d5c9fe356d80a2c27f36e5a715fddf35f1bdf;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:431703fb563f604a2cb47e2e5c9eee2975495ec2aee517d66bc436f88a0857bf`  
		Last Modified: Wed, 28 Oct 2026 01:44:25 GMT  
		Size: 42.3 MB (42327876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84ab08ef2ef2c3d0416dbefdeff67557c3a5e7bcc30c4e95829d9ba1e6a17dd`  
		Last Modified: Wed, 28 Oct 2026 01:44:23 GMT  
		Size: 1.6 MB (1561924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce6cfa142604ae84a4b1ff22529f03fbf0af5adea3dbe7e4c6b335e1a238fcc`  
		Last Modified: Wed, 28 Oct 2026 01:44:29 GMT  
		Size: 269.9 MB (269870939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-315.3.beta` - unknown; unknown

```console
$ docker pull dart@sha256:06a995cf714c9be1d49795265b5bab7b37b021993a89176cc6844ba9c189263a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23f86f4ae5c01b38cf0939cc34bb48a681b0459c764b18cd96ed2a776c143a7c`

```dockerfile
```

-	Layers:
	-	`sha256:3f9c0ae6bc5bb643d24f9aa5db8d3d781f9433ff559daeba09523f369f173a28`  
		Last Modified: Wed, 28 Oct 2026 01:44:23 GMT  
		Size: 19.1 KB (19056 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-315.3.beta` - linux; riscv64

```console
$ docker pull dart@sha256:d325bff9bca47d6ac393e661df8ceb53388338224be0771891f0a4174f834296
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (273023960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43cb24ddf115678bd9179728d3f0e8b270ebb6966674e619c75e160805790d4c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 20:20:03 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 20:20:05 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Mon, 26 Oct 2026 20:20:05 GMT
ENV DART_SDK=/usr/lib/dart
# Mon, 26 Oct 2026 20:20:05 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 20:20:05 GMT
WORKDIR /root
# Mon, 26 Oct 2026 20:20:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=4e54a80eeaf04055501ac91708de4a915d61c5c0e1a4e06da4da1d1f511f38ed;             SDK_ARCH="x64";;         armhf)             DART_SHA256=6eb269a079eccd8cafc72e25b183d1037437f597fd8119ec06558ac3b6179cd2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f9b6819da79893a371b0580395f462a7c4d76e20cb3476eb7f78da4663064414;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=92a0599b5e5223511ba7c29f4f6d5c9fe356d80a2c27f36e5a715fddf35f1bdf;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a952b0a1f114f5536367d7da41962b525710dc82ae1674c2576f86a9095d6e76`  
		Last Modified: Mon, 26 Oct 2026 20:26:09 GMT  
		Size: 41.6 MB (41600687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d38c287908dba127aab6a634fc612bfc02fae5b779f92272e0207adf8e846ce`  
		Last Modified: Mon, 26 Oct 2026 20:25:57 GMT  
		Size: 1.6 MB (1560326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c446ae95c51c0a28c11ddbe71d493bffbc81d15d390f62fa307495316dcea7a`  
		Last Modified: Mon, 26 Oct 2026 20:26:34 GMT  
		Size: 201.5 MB (201529044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-315.3.beta` - unknown; unknown

```console
$ docker pull dart@sha256:f05f308c6e143e9a2fcea68a298ab1eac6dd4a563a65a82d75718980453739cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c5c77a9d1c2df22a6f027ebc85469f61ca625074013cf0136d51b2c9b605f83`

```dockerfile
```

-	Layers:
	-	`sha256:412ea35df15c6e9cb8a52cb9dc51226be14d821159fdcc8a6801b49095419213`  
		Last Modified: Mon, 26 Oct 2026 20:25:57 GMT  
		Size: 19.0 KB (18970 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.14.0-315.3.beta-sdk`

```console
$ docker pull dart@sha256:bf86cec360b387b14581bd243ea3cae63e9df7abbf0401f2f5626d356bcf8672
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

### `dart:3.14.0-315.3.beta-sdk` - linux; amd64

```console
$ docker pull dart@sha256:aa0eb8907627135c2700e4e9733ee5e57aebb49a4de51c73928e4e083337ada6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345875040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21a130a67f204230b0836e4cc96bc5554eb6fda14811fd2e612531201188ea18`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:40:13 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:14 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 01:40:14 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 01:40:14 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:40:14 GMT
WORKDIR /root
# Wed, 28 Oct 2026 01:40:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=4e54a80eeaf04055501ac91708de4a915d61c5c0e1a4e06da4da1d1f511f38ed;             SDK_ARCH="x64";;         armhf)             DART_SHA256=6eb269a079eccd8cafc72e25b183d1037437f597fd8119ec06558ac3b6179cd2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f9b6819da79893a371b0580395f462a7c4d76e20cb3476eb7f78da4663064414;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=92a0599b5e5223511ba7c29f4f6d5c9fe356d80a2c27f36e5a715fddf35f1bdf;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f95e38d01bbb4321a0e48917eb8c35730c6b2dd805fbb76c1bf2313261229755`  
		Last Modified: Wed, 28 Oct 2026 01:40:58 GMT  
		Size: 42.5 MB (42525858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b48a3a4bdfca105ae6cdb43c37b77c5f2e72ac28667967cbf74ef38713fbab`  
		Last Modified: Wed, 28 Oct 2026 01:40:56 GMT  
		Size: 1.9 MB (1867122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2908300155eff603f985be0f8a0c8d69b553463a5945f61b8a3d35e4da18f988`  
		Last Modified: Wed, 28 Oct 2026 01:41:02 GMT  
		Size: 271.6 MB (271626792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-315.3.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:29fb3722cb185b55781b71e8fdfdf710d675af7839977c0a160537613701562c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b3b23b1b0f5fcae9701258e1bd413c7ffd5b661256e6235ad3ea17dbac773cf`

```dockerfile
```

-	Layers:
	-	`sha256:81698758fc8f359fbd27a86e1bb83065ce6691e05751f7d574edf774c05f593f`  
		Last Modified: Wed, 28 Oct 2026 01:40:56 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-315.3.beta-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:caba0e371babc8e6590751fc21b355df2a32fc99859c9e303181e8a2431fb4da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238600014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7da6245058d1bda489de809bede38049fdf1560c2f1220afe91ea2086d1a6bf`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:58 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:21:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 02:21:59 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 02:21:59 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:21:59 GMT
WORKDIR /root
# Wed, 28 Oct 2026 02:22:07 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=4e54a80eeaf04055501ac91708de4a915d61c5c0e1a4e06da4da1d1f511f38ed;             SDK_ARCH="x64";;         armhf)             DART_SHA256=6eb269a079eccd8cafc72e25b183d1037437f597fd8119ec06558ac3b6179cd2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f9b6819da79893a371b0580395f462a7c4d76e20cb3476eb7f78da4663064414;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=92a0599b5e5223511ba7c29f4f6d5c9fe356d80a2c27f36e5a715fddf35f1bdf;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a46ec97f6ed356d1e66a89108d98d281be809e8a5f93010de28cc856d8006a23`  
		Last Modified: Wed, 28 Oct 2026 02:22:31 GMT  
		Size: 37.5 MB (37529245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4f1c2eb93d138d2079a1cbd56328cfeb715ccb5f9cb6eb2102214e6fe12c753`  
		Last Modified: Wed, 28 Oct 2026 02:22:29 GMT  
		Size: 1.3 MB (1271971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8fdaf5dfae7d37020a090a03e501ca57ec3ac6488b5fb32fad101a157e6031`  
		Last Modified: Wed, 28 Oct 2026 02:22:33 GMT  
		Size: 173.5 MB (173526598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-315.3.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:32ca5499eb99f474152c5ead4181d6de578703b945fa41c03284d31a81449779
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46b036a9aa99ebc2973f0a33ae7cbd7a306fe2e9ff88ba1b7201d7fb3323ed8b`

```dockerfile
```

-	Layers:
	-	`sha256:482bde6380812711eea1751223c4fcf92b8769fb9c6fb916c798e08f7188bf14`  
		Last Modified: Wed, 28 Oct 2026 02:22:29 GMT  
		Size: 19.0 KB (19028 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-315.3.beta-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:b7f3b60df29da28f0946f574f68c9f3bf10bc78a4f741e2de5dd604748a61aaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (343974267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ac5bdbe0165576a95db00acea3748d3fb8dde28731635e634932a7984fa4a29`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 01:43:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 01:43:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:43:38 GMT
WORKDIR /root
# Wed, 28 Oct 2026 01:43:52 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=4e54a80eeaf04055501ac91708de4a915d61c5c0e1a4e06da4da1d1f511f38ed;             SDK_ARCH="x64";;         armhf)             DART_SHA256=6eb269a079eccd8cafc72e25b183d1037437f597fd8119ec06558ac3b6179cd2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f9b6819da79893a371b0580395f462a7c4d76e20cb3476eb7f78da4663064414;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=92a0599b5e5223511ba7c29f4f6d5c9fe356d80a2c27f36e5a715fddf35f1bdf;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:431703fb563f604a2cb47e2e5c9eee2975495ec2aee517d66bc436f88a0857bf`  
		Last Modified: Wed, 28 Oct 2026 01:44:25 GMT  
		Size: 42.3 MB (42327876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84ab08ef2ef2c3d0416dbefdeff67557c3a5e7bcc30c4e95829d9ba1e6a17dd`  
		Last Modified: Wed, 28 Oct 2026 01:44:23 GMT  
		Size: 1.6 MB (1561924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce6cfa142604ae84a4b1ff22529f03fbf0af5adea3dbe7e4c6b335e1a238fcc`  
		Last Modified: Wed, 28 Oct 2026 01:44:29 GMT  
		Size: 269.9 MB (269870939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-315.3.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:06a995cf714c9be1d49795265b5bab7b37b021993a89176cc6844ba9c189263a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23f86f4ae5c01b38cf0939cc34bb48a681b0459c764b18cd96ed2a776c143a7c`

```dockerfile
```

-	Layers:
	-	`sha256:3f9c0ae6bc5bb643d24f9aa5db8d3d781f9433ff559daeba09523f369f173a28`  
		Last Modified: Wed, 28 Oct 2026 01:44:23 GMT  
		Size: 19.1 KB (19056 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-315.3.beta-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:d325bff9bca47d6ac393e661df8ceb53388338224be0771891f0a4174f834296
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (273023960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43cb24ddf115678bd9179728d3f0e8b270ebb6966674e619c75e160805790d4c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 20:20:03 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 20:20:05 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Mon, 26 Oct 2026 20:20:05 GMT
ENV DART_SDK=/usr/lib/dart
# Mon, 26 Oct 2026 20:20:05 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 20:20:05 GMT
WORKDIR /root
# Mon, 26 Oct 2026 20:20:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=4e54a80eeaf04055501ac91708de4a915d61c5c0e1a4e06da4da1d1f511f38ed;             SDK_ARCH="x64";;         armhf)             DART_SHA256=6eb269a079eccd8cafc72e25b183d1037437f597fd8119ec06558ac3b6179cd2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f9b6819da79893a371b0580395f462a7c4d76e20cb3476eb7f78da4663064414;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=92a0599b5e5223511ba7c29f4f6d5c9fe356d80a2c27f36e5a715fddf35f1bdf;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a952b0a1f114f5536367d7da41962b525710dc82ae1674c2576f86a9095d6e76`  
		Last Modified: Mon, 26 Oct 2026 20:26:09 GMT  
		Size: 41.6 MB (41600687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d38c287908dba127aab6a634fc612bfc02fae5b779f92272e0207adf8e846ce`  
		Last Modified: Mon, 26 Oct 2026 20:25:57 GMT  
		Size: 1.6 MB (1560326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c446ae95c51c0a28c11ddbe71d493bffbc81d15d390f62fa307495316dcea7a`  
		Last Modified: Mon, 26 Oct 2026 20:26:34 GMT  
		Size: 201.5 MB (201529044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-315.3.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:f05f308c6e143e9a2fcea68a298ab1eac6dd4a563a65a82d75718980453739cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c5c77a9d1c2df22a6f027ebc85469f61ca625074013cf0136d51b2c9b605f83`

```dockerfile
```

-	Layers:
	-	`sha256:412ea35df15c6e9cb8a52cb9dc51226be14d821159fdcc8a6801b49095419213`  
		Last Modified: Mon, 26 Oct 2026 20:25:57 GMT  
		Size: 19.0 KB (18970 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:beta`

```console
$ docker pull dart@sha256:bf86cec360b387b14581bd243ea3cae63e9df7abbf0401f2f5626d356bcf8672
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
$ docker pull dart@sha256:aa0eb8907627135c2700e4e9733ee5e57aebb49a4de51c73928e4e083337ada6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345875040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21a130a67f204230b0836e4cc96bc5554eb6fda14811fd2e612531201188ea18`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:40:13 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:14 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 01:40:14 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 01:40:14 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:40:14 GMT
WORKDIR /root
# Wed, 28 Oct 2026 01:40:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=4e54a80eeaf04055501ac91708de4a915d61c5c0e1a4e06da4da1d1f511f38ed;             SDK_ARCH="x64";;         armhf)             DART_SHA256=6eb269a079eccd8cafc72e25b183d1037437f597fd8119ec06558ac3b6179cd2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f9b6819da79893a371b0580395f462a7c4d76e20cb3476eb7f78da4663064414;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=92a0599b5e5223511ba7c29f4f6d5c9fe356d80a2c27f36e5a715fddf35f1bdf;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f95e38d01bbb4321a0e48917eb8c35730c6b2dd805fbb76c1bf2313261229755`  
		Last Modified: Wed, 28 Oct 2026 01:40:58 GMT  
		Size: 42.5 MB (42525858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b48a3a4bdfca105ae6cdb43c37b77c5f2e72ac28667967cbf74ef38713fbab`  
		Last Modified: Wed, 28 Oct 2026 01:40:56 GMT  
		Size: 1.9 MB (1867122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2908300155eff603f985be0f8a0c8d69b553463a5945f61b8a3d35e4da18f988`  
		Last Modified: Wed, 28 Oct 2026 01:41:02 GMT  
		Size: 271.6 MB (271626792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:29fb3722cb185b55781b71e8fdfdf710d675af7839977c0a160537613701562c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b3b23b1b0f5fcae9701258e1bd413c7ffd5b661256e6235ad3ea17dbac773cf`

```dockerfile
```

-	Layers:
	-	`sha256:81698758fc8f359fbd27a86e1bb83065ce6691e05751f7d574edf774c05f593f`  
		Last Modified: Wed, 28 Oct 2026 01:40:56 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm variant v7

```console
$ docker pull dart@sha256:caba0e371babc8e6590751fc21b355df2a32fc99859c9e303181e8a2431fb4da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238600014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7da6245058d1bda489de809bede38049fdf1560c2f1220afe91ea2086d1a6bf`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:58 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:21:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 02:21:59 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 02:21:59 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:21:59 GMT
WORKDIR /root
# Wed, 28 Oct 2026 02:22:07 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=4e54a80eeaf04055501ac91708de4a915d61c5c0e1a4e06da4da1d1f511f38ed;             SDK_ARCH="x64";;         armhf)             DART_SHA256=6eb269a079eccd8cafc72e25b183d1037437f597fd8119ec06558ac3b6179cd2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f9b6819da79893a371b0580395f462a7c4d76e20cb3476eb7f78da4663064414;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=92a0599b5e5223511ba7c29f4f6d5c9fe356d80a2c27f36e5a715fddf35f1bdf;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a46ec97f6ed356d1e66a89108d98d281be809e8a5f93010de28cc856d8006a23`  
		Last Modified: Wed, 28 Oct 2026 02:22:31 GMT  
		Size: 37.5 MB (37529245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4f1c2eb93d138d2079a1cbd56328cfeb715ccb5f9cb6eb2102214e6fe12c753`  
		Last Modified: Wed, 28 Oct 2026 02:22:29 GMT  
		Size: 1.3 MB (1271971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8fdaf5dfae7d37020a090a03e501ca57ec3ac6488b5fb32fad101a157e6031`  
		Last Modified: Wed, 28 Oct 2026 02:22:33 GMT  
		Size: 173.5 MB (173526598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:32ca5499eb99f474152c5ead4181d6de578703b945fa41c03284d31a81449779
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46b036a9aa99ebc2973f0a33ae7cbd7a306fe2e9ff88ba1b7201d7fb3323ed8b`

```dockerfile
```

-	Layers:
	-	`sha256:482bde6380812711eea1751223c4fcf92b8769fb9c6fb916c798e08f7188bf14`  
		Last Modified: Wed, 28 Oct 2026 02:22:29 GMT  
		Size: 19.0 KB (19028 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:b7f3b60df29da28f0946f574f68c9f3bf10bc78a4f741e2de5dd604748a61aaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (343974267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ac5bdbe0165576a95db00acea3748d3fb8dde28731635e634932a7984fa4a29`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 01:43:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 01:43:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:43:38 GMT
WORKDIR /root
# Wed, 28 Oct 2026 01:43:52 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=4e54a80eeaf04055501ac91708de4a915d61c5c0e1a4e06da4da1d1f511f38ed;             SDK_ARCH="x64";;         armhf)             DART_SHA256=6eb269a079eccd8cafc72e25b183d1037437f597fd8119ec06558ac3b6179cd2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f9b6819da79893a371b0580395f462a7c4d76e20cb3476eb7f78da4663064414;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=92a0599b5e5223511ba7c29f4f6d5c9fe356d80a2c27f36e5a715fddf35f1bdf;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:431703fb563f604a2cb47e2e5c9eee2975495ec2aee517d66bc436f88a0857bf`  
		Last Modified: Wed, 28 Oct 2026 01:44:25 GMT  
		Size: 42.3 MB (42327876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84ab08ef2ef2c3d0416dbefdeff67557c3a5e7bcc30c4e95829d9ba1e6a17dd`  
		Last Modified: Wed, 28 Oct 2026 01:44:23 GMT  
		Size: 1.6 MB (1561924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce6cfa142604ae84a4b1ff22529f03fbf0af5adea3dbe7e4c6b335e1a238fcc`  
		Last Modified: Wed, 28 Oct 2026 01:44:29 GMT  
		Size: 269.9 MB (269870939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:06a995cf714c9be1d49795265b5bab7b37b021993a89176cc6844ba9c189263a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23f86f4ae5c01b38cf0939cc34bb48a681b0459c764b18cd96ed2a776c143a7c`

```dockerfile
```

-	Layers:
	-	`sha256:3f9c0ae6bc5bb643d24f9aa5db8d3d781f9433ff559daeba09523f369f173a28`  
		Last Modified: Wed, 28 Oct 2026 01:44:23 GMT  
		Size: 19.1 KB (19056 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; riscv64

```console
$ docker pull dart@sha256:d325bff9bca47d6ac393e661df8ceb53388338224be0771891f0a4174f834296
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (273023960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43cb24ddf115678bd9179728d3f0e8b270ebb6966674e619c75e160805790d4c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 20:20:03 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 20:20:05 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Mon, 26 Oct 2026 20:20:05 GMT
ENV DART_SDK=/usr/lib/dart
# Mon, 26 Oct 2026 20:20:05 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 20:20:05 GMT
WORKDIR /root
# Mon, 26 Oct 2026 20:20:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=4e54a80eeaf04055501ac91708de4a915d61c5c0e1a4e06da4da1d1f511f38ed;             SDK_ARCH="x64";;         armhf)             DART_SHA256=6eb269a079eccd8cafc72e25b183d1037437f597fd8119ec06558ac3b6179cd2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f9b6819da79893a371b0580395f462a7c4d76e20cb3476eb7f78da4663064414;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=92a0599b5e5223511ba7c29f4f6d5c9fe356d80a2c27f36e5a715fddf35f1bdf;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a952b0a1f114f5536367d7da41962b525710dc82ae1674c2576f86a9095d6e76`  
		Last Modified: Mon, 26 Oct 2026 20:26:09 GMT  
		Size: 41.6 MB (41600687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d38c287908dba127aab6a634fc612bfc02fae5b779f92272e0207adf8e846ce`  
		Last Modified: Mon, 26 Oct 2026 20:25:57 GMT  
		Size: 1.6 MB (1560326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c446ae95c51c0a28c11ddbe71d493bffbc81d15d390f62fa307495316dcea7a`  
		Last Modified: Mon, 26 Oct 2026 20:26:34 GMT  
		Size: 201.5 MB (201529044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:f05f308c6e143e9a2fcea68a298ab1eac6dd4a563a65a82d75718980453739cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c5c77a9d1c2df22a6f027ebc85469f61ca625074013cf0136d51b2c9b605f83`

```dockerfile
```

-	Layers:
	-	`sha256:412ea35df15c6e9cb8a52cb9dc51226be14d821159fdcc8a6801b49095419213`  
		Last Modified: Mon, 26 Oct 2026 20:25:57 GMT  
		Size: 19.0 KB (18970 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:beta-sdk`

```console
$ docker pull dart@sha256:bf86cec360b387b14581bd243ea3cae63e9df7abbf0401f2f5626d356bcf8672
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
$ docker pull dart@sha256:aa0eb8907627135c2700e4e9733ee5e57aebb49a4de51c73928e4e083337ada6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345875040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21a130a67f204230b0836e4cc96bc5554eb6fda14811fd2e612531201188ea18`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:40:13 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:14 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 01:40:14 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 01:40:14 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:40:14 GMT
WORKDIR /root
# Wed, 28 Oct 2026 01:40:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=4e54a80eeaf04055501ac91708de4a915d61c5c0e1a4e06da4da1d1f511f38ed;             SDK_ARCH="x64";;         armhf)             DART_SHA256=6eb269a079eccd8cafc72e25b183d1037437f597fd8119ec06558ac3b6179cd2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f9b6819da79893a371b0580395f462a7c4d76e20cb3476eb7f78da4663064414;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=92a0599b5e5223511ba7c29f4f6d5c9fe356d80a2c27f36e5a715fddf35f1bdf;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f95e38d01bbb4321a0e48917eb8c35730c6b2dd805fbb76c1bf2313261229755`  
		Last Modified: Wed, 28 Oct 2026 01:40:58 GMT  
		Size: 42.5 MB (42525858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b48a3a4bdfca105ae6cdb43c37b77c5f2e72ac28667967cbf74ef38713fbab`  
		Last Modified: Wed, 28 Oct 2026 01:40:56 GMT  
		Size: 1.9 MB (1867122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2908300155eff603f985be0f8a0c8d69b553463a5945f61b8a3d35e4da18f988`  
		Last Modified: Wed, 28 Oct 2026 01:41:02 GMT  
		Size: 271.6 MB (271626792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:29fb3722cb185b55781b71e8fdfdf710d675af7839977c0a160537613701562c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b3b23b1b0f5fcae9701258e1bd413c7ffd5b661256e6235ad3ea17dbac773cf`

```dockerfile
```

-	Layers:
	-	`sha256:81698758fc8f359fbd27a86e1bb83065ce6691e05751f7d574edf774c05f593f`  
		Last Modified: Wed, 28 Oct 2026 01:40:56 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:caba0e371babc8e6590751fc21b355df2a32fc99859c9e303181e8a2431fb4da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238600014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7da6245058d1bda489de809bede38049fdf1560c2f1220afe91ea2086d1a6bf`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:58 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:21:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 02:21:59 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 02:21:59 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:21:59 GMT
WORKDIR /root
# Wed, 28 Oct 2026 02:22:07 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=4e54a80eeaf04055501ac91708de4a915d61c5c0e1a4e06da4da1d1f511f38ed;             SDK_ARCH="x64";;         armhf)             DART_SHA256=6eb269a079eccd8cafc72e25b183d1037437f597fd8119ec06558ac3b6179cd2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f9b6819da79893a371b0580395f462a7c4d76e20cb3476eb7f78da4663064414;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=92a0599b5e5223511ba7c29f4f6d5c9fe356d80a2c27f36e5a715fddf35f1bdf;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a46ec97f6ed356d1e66a89108d98d281be809e8a5f93010de28cc856d8006a23`  
		Last Modified: Wed, 28 Oct 2026 02:22:31 GMT  
		Size: 37.5 MB (37529245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4f1c2eb93d138d2079a1cbd56328cfeb715ccb5f9cb6eb2102214e6fe12c753`  
		Last Modified: Wed, 28 Oct 2026 02:22:29 GMT  
		Size: 1.3 MB (1271971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8fdaf5dfae7d37020a090a03e501ca57ec3ac6488b5fb32fad101a157e6031`  
		Last Modified: Wed, 28 Oct 2026 02:22:33 GMT  
		Size: 173.5 MB (173526598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:32ca5499eb99f474152c5ead4181d6de578703b945fa41c03284d31a81449779
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46b036a9aa99ebc2973f0a33ae7cbd7a306fe2e9ff88ba1b7201d7fb3323ed8b`

```dockerfile
```

-	Layers:
	-	`sha256:482bde6380812711eea1751223c4fcf92b8769fb9c6fb916c798e08f7188bf14`  
		Last Modified: Wed, 28 Oct 2026 02:22:29 GMT  
		Size: 19.0 KB (19028 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:b7f3b60df29da28f0946f574f68c9f3bf10bc78a4f741e2de5dd604748a61aaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (343974267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ac5bdbe0165576a95db00acea3748d3fb8dde28731635e634932a7984fa4a29`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 01:43:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 01:43:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:43:38 GMT
WORKDIR /root
# Wed, 28 Oct 2026 01:43:52 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=4e54a80eeaf04055501ac91708de4a915d61c5c0e1a4e06da4da1d1f511f38ed;             SDK_ARCH="x64";;         armhf)             DART_SHA256=6eb269a079eccd8cafc72e25b183d1037437f597fd8119ec06558ac3b6179cd2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f9b6819da79893a371b0580395f462a7c4d76e20cb3476eb7f78da4663064414;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=92a0599b5e5223511ba7c29f4f6d5c9fe356d80a2c27f36e5a715fddf35f1bdf;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:431703fb563f604a2cb47e2e5c9eee2975495ec2aee517d66bc436f88a0857bf`  
		Last Modified: Wed, 28 Oct 2026 01:44:25 GMT  
		Size: 42.3 MB (42327876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84ab08ef2ef2c3d0416dbefdeff67557c3a5e7bcc30c4e95829d9ba1e6a17dd`  
		Last Modified: Wed, 28 Oct 2026 01:44:23 GMT  
		Size: 1.6 MB (1561924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce6cfa142604ae84a4b1ff22529f03fbf0af5adea3dbe7e4c6b335e1a238fcc`  
		Last Modified: Wed, 28 Oct 2026 01:44:29 GMT  
		Size: 269.9 MB (269870939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:06a995cf714c9be1d49795265b5bab7b37b021993a89176cc6844ba9c189263a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23f86f4ae5c01b38cf0939cc34bb48a681b0459c764b18cd96ed2a776c143a7c`

```dockerfile
```

-	Layers:
	-	`sha256:3f9c0ae6bc5bb643d24f9aa5db8d3d781f9433ff559daeba09523f369f173a28`  
		Last Modified: Wed, 28 Oct 2026 01:44:23 GMT  
		Size: 19.1 KB (19056 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:d325bff9bca47d6ac393e661df8ceb53388338224be0771891f0a4174f834296
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (273023960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43cb24ddf115678bd9179728d3f0e8b270ebb6966674e619c75e160805790d4c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 20:20:03 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 20:20:05 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Mon, 26 Oct 2026 20:20:05 GMT
ENV DART_SDK=/usr/lib/dart
# Mon, 26 Oct 2026 20:20:05 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 20:20:05 GMT
WORKDIR /root
# Mon, 26 Oct 2026 20:20:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=4e54a80eeaf04055501ac91708de4a915d61c5c0e1a4e06da4da1d1f511f38ed;             SDK_ARCH="x64";;         armhf)             DART_SHA256=6eb269a079eccd8cafc72e25b183d1037437f597fd8119ec06558ac3b6179cd2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f9b6819da79893a371b0580395f462a7c4d76e20cb3476eb7f78da4663064414;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=92a0599b5e5223511ba7c29f4f6d5c9fe356d80a2c27f36e5a715fddf35f1bdf;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a952b0a1f114f5536367d7da41962b525710dc82ae1674c2576f86a9095d6e76`  
		Last Modified: Mon, 26 Oct 2026 20:26:09 GMT  
		Size: 41.6 MB (41600687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d38c287908dba127aab6a634fc612bfc02fae5b779f92272e0207adf8e846ce`  
		Last Modified: Mon, 26 Oct 2026 20:25:57 GMT  
		Size: 1.6 MB (1560326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c446ae95c51c0a28c11ddbe71d493bffbc81d15d390f62fa307495316dcea7a`  
		Last Modified: Mon, 26 Oct 2026 20:26:34 GMT  
		Size: 201.5 MB (201529044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:f05f308c6e143e9a2fcea68a298ab1eac6dd4a563a65a82d75718980453739cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c5c77a9d1c2df22a6f027ebc85469f61ca625074013cf0136d51b2c9b605f83`

```dockerfile
```

-	Layers:
	-	`sha256:412ea35df15c6e9cb8a52cb9dc51226be14d821159fdcc8a6801b49095419213`  
		Last Modified: Mon, 26 Oct 2026 20:25:57 GMT  
		Size: 19.0 KB (18970 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:latest`

```console
$ docker pull dart@sha256:ca3ef5fe9194012074a24b03515b2c5b58dd7d4ae8c87bf463d61b5d0647f426
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
$ docker pull dart@sha256:94401ef63af60004afea439249c5b1c62264dc7ad62c487e0b30991322773d95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.8 MB (316755470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:272ddefa609b1dce2126ab7f51a818ee89c504fd0d84714c4562518fe0778f0d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:40:07 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:08 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 01:40:08 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 01:40:08 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:40:08 GMT
WORKDIR /root
# Wed, 28 Oct 2026 01:40:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c5166c2953609fd9f58d6907bcce613d030ffb7d7c7b844bab5ac5f1848d5a`  
		Last Modified: Wed, 28 Oct 2026 01:40:51 GMT  
		Size: 42.5 MB (42525871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa55e040b04655e2a07dfec9b6c01efa235ff56ba231616cd3d806522667372`  
		Last Modified: Wed, 28 Oct 2026 01:40:49 GMT  
		Size: 1.9 MB (1867112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da0c2e19ae4c3211f00dcdfea21c0d8941f6ec069edd676cd2643fc72b83925`  
		Last Modified: Wed, 28 Oct 2026 01:40:54 GMT  
		Size: 242.5 MB (242507219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:4259f4f68cdc273b00955a68d36f10dec6bddeb503c76cd825dc7c9128fb6c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96cb085f2e2b8e4a6755781885336ccf5fb65068cb33f904fd637002a4c05355`

```dockerfile
```

-	Layers:
	-	`sha256:3d20782b62d8f4258074e7e2b3c2da60bfe43b8ec9b8f26218d6a0e3aadb2e27`  
		Last Modified: Wed, 28 Oct 2026 01:40:49 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; arm variant v7

```console
$ docker pull dart@sha256:12f52d16f01fff54869b42715642ae91ebc4413d0f32e0ce84877451b5321527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.6 MB (230576198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:932ec51356ea079866ca01327cd42a7ef073f4d6ff9a2aae442766e3196e9f45`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:21:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 02:21:50 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 02:21:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:21:50 GMT
WORKDIR /root
# Wed, 28 Oct 2026 02:21:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c60382a8058af15ce13c41b2e069a3b2349ad12ef8bae32113c58545608e16b`  
		Last Modified: Wed, 28 Oct 2026 02:22:20 GMT  
		Size: 37.5 MB (37529429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:244a510a507c9d9c4ecdeac18dd0d08c061104432d8885695dd63efa2667740a`  
		Last Modified: Wed, 28 Oct 2026 02:22:19 GMT  
		Size: 1.3 MB (1271964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9253ded57c1ce15a80ca10783f8058b257f931f27bccefd05d7f8868c04559e2`  
		Last Modified: Wed, 28 Oct 2026 02:22:22 GMT  
		Size: 165.5 MB (165502605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:5b5c639cb9ef150b2f6a28e32be401b07fcfcd32d0ed728fabe6ba483dc5276f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2aef6e16ee15bbb8cbe3c0f3c6ae9fea93ee9894581e42f99dc3ed8bcdd0cdc`

```dockerfile
```

-	Layers:
	-	`sha256:fe35920b6b66f223a55f9a204355653023cb86b2a707db5181388b6277aa4a60`  
		Last Modified: Wed, 28 Oct 2026 02:22:19 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:56f6a8c04ff0672a5ffebd839d5d4225bbfe2a49d29999239eba65e9698bc688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315460921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5903e747420a3a16ccc463a9f749c6bb7a3ce1b044c60c6449bbb8b49788581`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 01:43:36 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 01:43:36 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:43:36 GMT
WORKDIR /root
# Wed, 28 Oct 2026 01:43:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409e8ce70355884c845c1d6d2ca670e50c19002ca9d0eafceec6a81d40334099`  
		Last Modified: Wed, 28 Oct 2026 01:44:19 GMT  
		Size: 42.3 MB (42326812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e58ba05fe918c137054bc06b5f17fa629bf124aeabf9ecb71eb7ffec1168b3f`  
		Last Modified: Wed, 28 Oct 2026 01:44:17 GMT  
		Size: 1.6 MB (1561926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2692114c39f3b7e78b5607bb183a75f6220aa081f8b48399952f0a0f0b574dd`  
		Last Modified: Wed, 28 Oct 2026 01:44:23 GMT  
		Size: 241.4 MB (241358655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:ecc2001ec18de2eecdaebbb96f9235f878f0d4585914c404d197d5bb54c3d199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6bf1a91f659ddeb9aee3ff4013dfd2d8464906d9927db5bc5ec5bcd2374d71a`

```dockerfile
```

-	Layers:
	-	`sha256:bc46c34dd6b6fef9d022eea5acce62fd9802e02ce4eb9b64f2ae354a23a1b3d7`  
		Last Modified: Wed, 28 Oct 2026 01:44:17 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; riscv64

```console
$ docker pull dart@sha256:f53c4069463f23a16840ff46a6555ecdff7b516be9b46975e8c8a23511d8c38b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252909692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04e96a706918c48f21804ca9a1bf68b5461c410fe32b05426198276bc55d914c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 20:11:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 20:11:14 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Mon, 26 Oct 2026 20:11:14 GMT
ENV DART_SDK=/usr/lib/dart
# Mon, 26 Oct 2026 20:11:14 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 20:11:14 GMT
WORKDIR /root
# Mon, 26 Oct 2026 20:12:02 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da8d6b50bc9d775a82c281eea6a245a5ea9bfb04c9cd289d6ab48b5e32c11e9`  
		Last Modified: Mon, 26 Oct 2026 20:16:39 GMT  
		Size: 41.6 MB (41600566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e89a2ce3fb2521f4c363d00ec15c3e68e421885349ed5733ee1943a31a4466`  
		Last Modified: Mon, 26 Oct 2026 20:16:27 GMT  
		Size: 1.6 MB (1560321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36fab50ff98f86ded8c28fa353393d007f8aacbbe2736904ac5b7e7409a8c6a7`  
		Last Modified: Mon, 26 Oct 2026 20:16:59 GMT  
		Size: 181.4 MB (181414902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:23140d57ffc5b989e28c5e8dbc79abf5fdfb5bfaf2aff432291a07fbca4cd734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e41df9037381f535900002b66c4e8a2dc74dd5d6163bba71830d49b3f3759326`

```dockerfile
```

-	Layers:
	-	`sha256:77c6bdf1a05405b30c95eeb53a0635bb1173f6872ae5ae473e1660448df39d70`  
		Last Modified: Mon, 26 Oct 2026 20:16:26 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:sdk`

```console
$ docker pull dart@sha256:ca3ef5fe9194012074a24b03515b2c5b58dd7d4ae8c87bf463d61b5d0647f426
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
$ docker pull dart@sha256:94401ef63af60004afea439249c5b1c62264dc7ad62c487e0b30991322773d95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.8 MB (316755470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:272ddefa609b1dce2126ab7f51a818ee89c504fd0d84714c4562518fe0778f0d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:40:07 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:08 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 01:40:08 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 01:40:08 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:40:08 GMT
WORKDIR /root
# Wed, 28 Oct 2026 01:40:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c5166c2953609fd9f58d6907bcce613d030ffb7d7c7b844bab5ac5f1848d5a`  
		Last Modified: Wed, 28 Oct 2026 01:40:51 GMT  
		Size: 42.5 MB (42525871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa55e040b04655e2a07dfec9b6c01efa235ff56ba231616cd3d806522667372`  
		Last Modified: Wed, 28 Oct 2026 01:40:49 GMT  
		Size: 1.9 MB (1867112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da0c2e19ae4c3211f00dcdfea21c0d8941f6ec069edd676cd2643fc72b83925`  
		Last Modified: Wed, 28 Oct 2026 01:40:54 GMT  
		Size: 242.5 MB (242507219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:4259f4f68cdc273b00955a68d36f10dec6bddeb503c76cd825dc7c9128fb6c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96cb085f2e2b8e4a6755781885336ccf5fb65068cb33f904fd637002a4c05355`

```dockerfile
```

-	Layers:
	-	`sha256:3d20782b62d8f4258074e7e2b3c2da60bfe43b8ec9b8f26218d6a0e3aadb2e27`  
		Last Modified: Wed, 28 Oct 2026 01:40:49 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:12f52d16f01fff54869b42715642ae91ebc4413d0f32e0ce84877451b5321527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.6 MB (230576198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:932ec51356ea079866ca01327cd42a7ef073f4d6ff9a2aae442766e3196e9f45`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:21:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 02:21:50 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 02:21:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:21:50 GMT
WORKDIR /root
# Wed, 28 Oct 2026 02:21:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c60382a8058af15ce13c41b2e069a3b2349ad12ef8bae32113c58545608e16b`  
		Last Modified: Wed, 28 Oct 2026 02:22:20 GMT  
		Size: 37.5 MB (37529429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:244a510a507c9d9c4ecdeac18dd0d08c061104432d8885695dd63efa2667740a`  
		Last Modified: Wed, 28 Oct 2026 02:22:19 GMT  
		Size: 1.3 MB (1271964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9253ded57c1ce15a80ca10783f8058b257f931f27bccefd05d7f8868c04559e2`  
		Last Modified: Wed, 28 Oct 2026 02:22:22 GMT  
		Size: 165.5 MB (165502605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:5b5c639cb9ef150b2f6a28e32be401b07fcfcd32d0ed728fabe6ba483dc5276f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2aef6e16ee15bbb8cbe3c0f3c6ae9fea93ee9894581e42f99dc3ed8bcdd0cdc`

```dockerfile
```

-	Layers:
	-	`sha256:fe35920b6b66f223a55f9a204355653023cb86b2a707db5181388b6277aa4a60`  
		Last Modified: Wed, 28 Oct 2026 02:22:19 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:56f6a8c04ff0672a5ffebd839d5d4225bbfe2a49d29999239eba65e9698bc688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315460921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5903e747420a3a16ccc463a9f749c6bb7a3ce1b044c60c6449bbb8b49788581`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 01:43:36 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 01:43:36 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:43:36 GMT
WORKDIR /root
# Wed, 28 Oct 2026 01:43:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409e8ce70355884c845c1d6d2ca670e50c19002ca9d0eafceec6a81d40334099`  
		Last Modified: Wed, 28 Oct 2026 01:44:19 GMT  
		Size: 42.3 MB (42326812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e58ba05fe918c137054bc06b5f17fa629bf124aeabf9ecb71eb7ffec1168b3f`  
		Last Modified: Wed, 28 Oct 2026 01:44:17 GMT  
		Size: 1.6 MB (1561926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2692114c39f3b7e78b5607bb183a75f6220aa081f8b48399952f0a0f0b574dd`  
		Last Modified: Wed, 28 Oct 2026 01:44:23 GMT  
		Size: 241.4 MB (241358655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:ecc2001ec18de2eecdaebbb96f9235f878f0d4585914c404d197d5bb54c3d199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6bf1a91f659ddeb9aee3ff4013dfd2d8464906d9927db5bc5ec5bcd2374d71a`

```dockerfile
```

-	Layers:
	-	`sha256:bc46c34dd6b6fef9d022eea5acce62fd9802e02ce4eb9b64f2ae354a23a1b3d7`  
		Last Modified: Wed, 28 Oct 2026 01:44:17 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; riscv64

```console
$ docker pull dart@sha256:f53c4069463f23a16840ff46a6555ecdff7b516be9b46975e8c8a23511d8c38b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252909692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04e96a706918c48f21804ca9a1bf68b5461c410fe32b05426198276bc55d914c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 20:11:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 20:11:14 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Mon, 26 Oct 2026 20:11:14 GMT
ENV DART_SDK=/usr/lib/dart
# Mon, 26 Oct 2026 20:11:14 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 20:11:14 GMT
WORKDIR /root
# Mon, 26 Oct 2026 20:12:02 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da8d6b50bc9d775a82c281eea6a245a5ea9bfb04c9cd289d6ab48b5e32c11e9`  
		Last Modified: Mon, 26 Oct 2026 20:16:39 GMT  
		Size: 41.6 MB (41600566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e89a2ce3fb2521f4c363d00ec15c3e68e421885349ed5733ee1943a31a4466`  
		Last Modified: Mon, 26 Oct 2026 20:16:27 GMT  
		Size: 1.6 MB (1560321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36fab50ff98f86ded8c28fa353393d007f8aacbbe2736904ac5b7e7409a8c6a7`  
		Last Modified: Mon, 26 Oct 2026 20:16:59 GMT  
		Size: 181.4 MB (181414902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:23140d57ffc5b989e28c5e8dbc79abf5fdfb5bfaf2aff432291a07fbca4cd734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e41df9037381f535900002b66c4e8a2dc74dd5d6163bba71830d49b3f3759326`

```dockerfile
```

-	Layers:
	-	`sha256:77c6bdf1a05405b30c95eeb53a0635bb1173f6872ae5ae473e1660448df39d70`  
		Last Modified: Mon, 26 Oct 2026 20:16:26 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:stable`

```console
$ docker pull dart@sha256:ca3ef5fe9194012074a24b03515b2c5b58dd7d4ae8c87bf463d61b5d0647f426
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
$ docker pull dart@sha256:94401ef63af60004afea439249c5b1c62264dc7ad62c487e0b30991322773d95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.8 MB (316755470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:272ddefa609b1dce2126ab7f51a818ee89c504fd0d84714c4562518fe0778f0d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:40:07 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:08 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 01:40:08 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 01:40:08 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:40:08 GMT
WORKDIR /root
# Wed, 28 Oct 2026 01:40:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c5166c2953609fd9f58d6907bcce613d030ffb7d7c7b844bab5ac5f1848d5a`  
		Last Modified: Wed, 28 Oct 2026 01:40:51 GMT  
		Size: 42.5 MB (42525871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa55e040b04655e2a07dfec9b6c01efa235ff56ba231616cd3d806522667372`  
		Last Modified: Wed, 28 Oct 2026 01:40:49 GMT  
		Size: 1.9 MB (1867112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da0c2e19ae4c3211f00dcdfea21c0d8941f6ec069edd676cd2643fc72b83925`  
		Last Modified: Wed, 28 Oct 2026 01:40:54 GMT  
		Size: 242.5 MB (242507219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:4259f4f68cdc273b00955a68d36f10dec6bddeb503c76cd825dc7c9128fb6c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96cb085f2e2b8e4a6755781885336ccf5fb65068cb33f904fd637002a4c05355`

```dockerfile
```

-	Layers:
	-	`sha256:3d20782b62d8f4258074e7e2b3c2da60bfe43b8ec9b8f26218d6a0e3aadb2e27`  
		Last Modified: Wed, 28 Oct 2026 01:40:49 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; arm variant v7

```console
$ docker pull dart@sha256:12f52d16f01fff54869b42715642ae91ebc4413d0f32e0ce84877451b5321527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.6 MB (230576198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:932ec51356ea079866ca01327cd42a7ef073f4d6ff9a2aae442766e3196e9f45`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:21:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 02:21:50 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 02:21:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:21:50 GMT
WORKDIR /root
# Wed, 28 Oct 2026 02:21:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c60382a8058af15ce13c41b2e069a3b2349ad12ef8bae32113c58545608e16b`  
		Last Modified: Wed, 28 Oct 2026 02:22:20 GMT  
		Size: 37.5 MB (37529429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:244a510a507c9d9c4ecdeac18dd0d08c061104432d8885695dd63efa2667740a`  
		Last Modified: Wed, 28 Oct 2026 02:22:19 GMT  
		Size: 1.3 MB (1271964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9253ded57c1ce15a80ca10783f8058b257f931f27bccefd05d7f8868c04559e2`  
		Last Modified: Wed, 28 Oct 2026 02:22:22 GMT  
		Size: 165.5 MB (165502605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:5b5c639cb9ef150b2f6a28e32be401b07fcfcd32d0ed728fabe6ba483dc5276f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2aef6e16ee15bbb8cbe3c0f3c6ae9fea93ee9894581e42f99dc3ed8bcdd0cdc`

```dockerfile
```

-	Layers:
	-	`sha256:fe35920b6b66f223a55f9a204355653023cb86b2a707db5181388b6277aa4a60`  
		Last Modified: Wed, 28 Oct 2026 02:22:19 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:56f6a8c04ff0672a5ffebd839d5d4225bbfe2a49d29999239eba65e9698bc688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315460921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5903e747420a3a16ccc463a9f749c6bb7a3ce1b044c60c6449bbb8b49788581`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 01:43:36 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 01:43:36 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:43:36 GMT
WORKDIR /root
# Wed, 28 Oct 2026 01:43:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409e8ce70355884c845c1d6d2ca670e50c19002ca9d0eafceec6a81d40334099`  
		Last Modified: Wed, 28 Oct 2026 01:44:19 GMT  
		Size: 42.3 MB (42326812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e58ba05fe918c137054bc06b5f17fa629bf124aeabf9ecb71eb7ffec1168b3f`  
		Last Modified: Wed, 28 Oct 2026 01:44:17 GMT  
		Size: 1.6 MB (1561926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2692114c39f3b7e78b5607bb183a75f6220aa081f8b48399952f0a0f0b574dd`  
		Last Modified: Wed, 28 Oct 2026 01:44:23 GMT  
		Size: 241.4 MB (241358655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:ecc2001ec18de2eecdaebbb96f9235f878f0d4585914c404d197d5bb54c3d199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6bf1a91f659ddeb9aee3ff4013dfd2d8464906d9927db5bc5ec5bcd2374d71a`

```dockerfile
```

-	Layers:
	-	`sha256:bc46c34dd6b6fef9d022eea5acce62fd9802e02ce4eb9b64f2ae354a23a1b3d7`  
		Last Modified: Wed, 28 Oct 2026 01:44:17 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; riscv64

```console
$ docker pull dart@sha256:f53c4069463f23a16840ff46a6555ecdff7b516be9b46975e8c8a23511d8c38b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252909692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04e96a706918c48f21804ca9a1bf68b5461c410fe32b05426198276bc55d914c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 20:11:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 20:11:14 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Mon, 26 Oct 2026 20:11:14 GMT
ENV DART_SDK=/usr/lib/dart
# Mon, 26 Oct 2026 20:11:14 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 20:11:14 GMT
WORKDIR /root
# Mon, 26 Oct 2026 20:12:02 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da8d6b50bc9d775a82c281eea6a245a5ea9bfb04c9cd289d6ab48b5e32c11e9`  
		Last Modified: Mon, 26 Oct 2026 20:16:39 GMT  
		Size: 41.6 MB (41600566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e89a2ce3fb2521f4c363d00ec15c3e68e421885349ed5733ee1943a31a4466`  
		Last Modified: Mon, 26 Oct 2026 20:16:27 GMT  
		Size: 1.6 MB (1560321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36fab50ff98f86ded8c28fa353393d007f8aacbbe2736904ac5b7e7409a8c6a7`  
		Last Modified: Mon, 26 Oct 2026 20:16:59 GMT  
		Size: 181.4 MB (181414902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:23140d57ffc5b989e28c5e8dbc79abf5fdfb5bfaf2aff432291a07fbca4cd734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e41df9037381f535900002b66c4e8a2dc74dd5d6163bba71830d49b3f3759326`

```dockerfile
```

-	Layers:
	-	`sha256:77c6bdf1a05405b30c95eeb53a0635bb1173f6872ae5ae473e1660448df39d70`  
		Last Modified: Mon, 26 Oct 2026 20:16:26 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:stable-sdk`

```console
$ docker pull dart@sha256:ca3ef5fe9194012074a24b03515b2c5b58dd7d4ae8c87bf463d61b5d0647f426
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
$ docker pull dart@sha256:94401ef63af60004afea439249c5b1c62264dc7ad62c487e0b30991322773d95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.8 MB (316755470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:272ddefa609b1dce2126ab7f51a818ee89c504fd0d84714c4562518fe0778f0d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:40:07 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:08 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 01:40:08 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 01:40:08 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:40:08 GMT
WORKDIR /root
# Wed, 28 Oct 2026 01:40:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c5166c2953609fd9f58d6907bcce613d030ffb7d7c7b844bab5ac5f1848d5a`  
		Last Modified: Wed, 28 Oct 2026 01:40:51 GMT  
		Size: 42.5 MB (42525871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa55e040b04655e2a07dfec9b6c01efa235ff56ba231616cd3d806522667372`  
		Last Modified: Wed, 28 Oct 2026 01:40:49 GMT  
		Size: 1.9 MB (1867112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da0c2e19ae4c3211f00dcdfea21c0d8941f6ec069edd676cd2643fc72b83925`  
		Last Modified: Wed, 28 Oct 2026 01:40:54 GMT  
		Size: 242.5 MB (242507219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:4259f4f68cdc273b00955a68d36f10dec6bddeb503c76cd825dc7c9128fb6c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96cb085f2e2b8e4a6755781885336ccf5fb65068cb33f904fd637002a4c05355`

```dockerfile
```

-	Layers:
	-	`sha256:3d20782b62d8f4258074e7e2b3c2da60bfe43b8ec9b8f26218d6a0e3aadb2e27`  
		Last Modified: Wed, 28 Oct 2026 01:40:49 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:12f52d16f01fff54869b42715642ae91ebc4413d0f32e0ce84877451b5321527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.6 MB (230576198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:932ec51356ea079866ca01327cd42a7ef073f4d6ff9a2aae442766e3196e9f45`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:21:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 02:21:50 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 02:21:50 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:21:50 GMT
WORKDIR /root
# Wed, 28 Oct 2026 02:21:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c60382a8058af15ce13c41b2e069a3b2349ad12ef8bae32113c58545608e16b`  
		Last Modified: Wed, 28 Oct 2026 02:22:20 GMT  
		Size: 37.5 MB (37529429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:244a510a507c9d9c4ecdeac18dd0d08c061104432d8885695dd63efa2667740a`  
		Last Modified: Wed, 28 Oct 2026 02:22:19 GMT  
		Size: 1.3 MB (1271964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9253ded57c1ce15a80ca10783f8058b257f931f27bccefd05d7f8868c04559e2`  
		Last Modified: Wed, 28 Oct 2026 02:22:22 GMT  
		Size: 165.5 MB (165502605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:5b5c639cb9ef150b2f6a28e32be401b07fcfcd32d0ed728fabe6ba483dc5276f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2aef6e16ee15bbb8cbe3c0f3c6ae9fea93ee9894581e42f99dc3ed8bcdd0cdc`

```dockerfile
```

-	Layers:
	-	`sha256:fe35920b6b66f223a55f9a204355653023cb86b2a707db5181388b6277aa4a60`  
		Last Modified: Wed, 28 Oct 2026 02:22:19 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:56f6a8c04ff0672a5ffebd839d5d4225bbfe2a49d29999239eba65e9698bc688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315460921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5903e747420a3a16ccc463a9f749c6bb7a3ce1b044c60c6449bbb8b49788581`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 28 Oct 2026 01:43:36 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 28 Oct 2026 01:43:36 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:43:36 GMT
WORKDIR /root
# Wed, 28 Oct 2026 01:43:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409e8ce70355884c845c1d6d2ca670e50c19002ca9d0eafceec6a81d40334099`  
		Last Modified: Wed, 28 Oct 2026 01:44:19 GMT  
		Size: 42.3 MB (42326812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e58ba05fe918c137054bc06b5f17fa629bf124aeabf9ecb71eb7ffec1168b3f`  
		Last Modified: Wed, 28 Oct 2026 01:44:17 GMT  
		Size: 1.6 MB (1561926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2692114c39f3b7e78b5607bb183a75f6220aa081f8b48399952f0a0f0b574dd`  
		Last Modified: Wed, 28 Oct 2026 01:44:23 GMT  
		Size: 241.4 MB (241358655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:ecc2001ec18de2eecdaebbb96f9235f878f0d4585914c404d197d5bb54c3d199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6bf1a91f659ddeb9aee3ff4013dfd2d8464906d9927db5bc5ec5bcd2374d71a`

```dockerfile
```

-	Layers:
	-	`sha256:bc46c34dd6b6fef9d022eea5acce62fd9802e02ce4eb9b64f2ae354a23a1b3d7`  
		Last Modified: Wed, 28 Oct 2026 01:44:17 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:f53c4069463f23a16840ff46a6555ecdff7b516be9b46975e8c8a23511d8c38b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252909692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04e96a706918c48f21804ca9a1bf68b5461c410fe32b05426198276bc55d914c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 20:11:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 20:11:14 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Mon, 26 Oct 2026 20:11:14 GMT
ENV DART_SDK=/usr/lib/dart
# Mon, 26 Oct 2026 20:11:14 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 20:11:14 GMT
WORKDIR /root
# Mon, 26 Oct 2026 20:12:02 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da8d6b50bc9d775a82c281eea6a245a5ea9bfb04c9cd289d6ab48b5e32c11e9`  
		Last Modified: Mon, 26 Oct 2026 20:16:39 GMT  
		Size: 41.6 MB (41600566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e89a2ce3fb2521f4c363d00ec15c3e68e421885349ed5733ee1943a31a4466`  
		Last Modified: Mon, 26 Oct 2026 20:16:27 GMT  
		Size: 1.6 MB (1560321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36fab50ff98f86ded8c28fa353393d007f8aacbbe2736904ac5b7e7409a8c6a7`  
		Last Modified: Mon, 26 Oct 2026 20:16:59 GMT  
		Size: 181.4 MB (181414902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:23140d57ffc5b989e28c5e8dbc79abf5fdfb5bfaf2aff432291a07fbca4cd734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e41df9037381f535900002b66c4e8a2dc74dd5d6163bba71830d49b3f3759326`

```dockerfile
```

-	Layers:
	-	`sha256:77c6bdf1a05405b30c95eeb53a0635bb1173f6872ae5ae473e1660448df39d70`  
		Last Modified: Mon, 26 Oct 2026 20:16:26 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json
