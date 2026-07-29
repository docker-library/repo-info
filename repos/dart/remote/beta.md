## `dart:beta`

```console
$ docker pull dart@sha256:b763db629e229ed91b1bfd7c49a1c2a9caed61741c8ae773bc0991431a2e7936
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
$ docker pull dart@sha256:4c6036718d8f3d79b1fd358ffca054e3e30b8e4fab5d417ee13ae8a57208e1c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.5 MB (316506530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44647d3b452ecee106dc035ee9b78a4831e3bce9b4d13e1cfc0a1f1b1c888c9b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:00:46 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 29 Jul 2026 18:00:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 29 Jul 2026 18:00:47 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 29 Jul 2026 18:00:47 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:00:47 GMT
WORKDIR /root
# Wed, 29 Jul 2026 18:00:58 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=65b8452103f0b238923603c74ad4760d28a99d07455923837c018c3b96b4fd69;             SDK_ARCH="x64";;         armhf)             DART_SHA256=de9af74b072ade0e5d61a1065df8b0c04dc58907805352f50ddd1715731270a2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=9aeb16aebd0e8395d25d5ebec5ccb2acc0792af0e6f8e22b73ad65652e447ef3;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=bfcaae0c68a8547884a352bf5ca4839e7feb9bcc2c92aa6978525ab3a1e63895;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0163a8368e88992578bad3e8bf8d804d5e3f0b74106bbf5ad91971d7cc7d04dc`  
		Last Modified: Wed, 29 Jul 2026 18:01:30 GMT  
		Size: 42.5 MB (42516947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2221830bfaeeae913e0b29ae9661addd0d3e806b24439bca5a57ffda1a0adf46`  
		Last Modified: Wed, 29 Jul 2026 18:01:28 GMT  
		Size: 1.9 MB (1869788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a79c63fadac38ece551632db43749745fb888b6354cd36f98a32bbb2b97f5839`  
		Last Modified: Wed, 29 Jul 2026 18:01:34 GMT  
		Size: 242.3 MB (242338858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:01d9500ae51c774d09cb93e7934f3983690fa97ef6db320ab4cd26bb2966e1c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b4c7fb5275a5ebf65dfc7d0c86e1c5d4b5c6af0bcd19f05da1c1934f95ff759`

```dockerfile
```

-	Layers:
	-	`sha256:091731d01628c32e71f17b1fd3f660d210d1acd86bdc62bbcb653cf04bc905e2`  
		Last Modified: Wed, 29 Jul 2026 18:01:28 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm variant v7

```console
$ docker pull dart@sha256:4c3af9dd04389ec20259e06c0bd1af62b5588fd41bff12b622d1f87168f58512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.4 MB (230423651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d07f94d93ec0c9fd91f7576c8aaf1d59f7f365880f47302868a3d1670233dbe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:04:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 29 Jul 2026 18:04:13 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 29 Jul 2026 18:04:13 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 29 Jul 2026 18:04:13 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:04:13 GMT
WORKDIR /root
# Wed, 29 Jul 2026 18:04:21 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=65b8452103f0b238923603c74ad4760d28a99d07455923837c018c3b96b4fd69;             SDK_ARCH="x64";;         armhf)             DART_SHA256=de9af74b072ade0e5d61a1065df8b0c04dc58907805352f50ddd1715731270a2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=9aeb16aebd0e8395d25d5ebec5ccb2acc0792af0e6f8e22b73ad65652e447ef3;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=bfcaae0c68a8547884a352bf5ca4839e7feb9bcc2c92aa6978525ab3a1e63895;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ef8884a5cf74015b068c42cf30e0da92f3c4f5acf16773d120cb17dad30b758`  
		Last Modified: Wed, 29 Jul 2026 18:04:45 GMT  
		Size: 37.5 MB (37516324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77edf825fd65d0dc3aa526afba2ebf42e904127057d48455960f47259d6f3185`  
		Last Modified: Wed, 29 Jul 2026 18:04:43 GMT  
		Size: 1.3 MB (1273148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae2d7f2028554bba2c2edcb6c93d6f6e24d8c64b76bdcce1dbd1a0ea2fe8cedf`  
		Last Modified: Wed, 29 Jul 2026 18:04:47 GMT  
		Size: 165.4 MB (165427680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:0c68741b1f8906dfcaf9ef55d4c356e213be7c4bb168a694ad6b0c104e552e23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca4854c4188d24afbd5a4b126cc39282f57b4181903c09d8664ed96c5612c9d2`

```dockerfile
```

-	Layers:
	-	`sha256:3df4ee89ccb8c90cdc6629a32afc9ad4f3f0e9712d4c3c56ba6ff65ce110c0e3`  
		Last Modified: Wed, 29 Jul 2026 18:04:43 GMT  
		Size: 19.0 KB (19028 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:bfa29cf56c8973cd524b8cf0aa147a4dfd2caf8280033945cf377d41a8808d76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315188197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7e85af8304c24f9db843196805825e55511d5a78e787e5ae23dee7832d20aa9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 17:59:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 29 Jul 2026 17:59:33 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 29 Jul 2026 17:59:33 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 29 Jul 2026 17:59:33 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:59:33 GMT
WORKDIR /root
# Wed, 29 Jul 2026 17:59:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=65b8452103f0b238923603c74ad4760d28a99d07455923837c018c3b96b4fd69;             SDK_ARCH="x64";;         armhf)             DART_SHA256=de9af74b072ade0e5d61a1065df8b0c04dc58907805352f50ddd1715731270a2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=9aeb16aebd0e8395d25d5ebec5ccb2acc0792af0e6f8e22b73ad65652e447ef3;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=bfcaae0c68a8547884a352bf5ca4839e7feb9bcc2c92aa6978525ab3a1e63895;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637c916a3d615ca6198efc6a4caa63a488bd61871ad53a822eb7471d428b5746`  
		Last Modified: Wed, 29 Jul 2026 18:00:19 GMT  
		Size: 42.3 MB (42310422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f41b3c7e424820b9196cdf1cadc834e38c42ac3318f8f1d57fae6fd7ae2e939a`  
		Last Modified: Wed, 29 Jul 2026 18:00:17 GMT  
		Size: 1.6 MB (1564382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:179592d61d29f526a3d7cf676e4b4b1d1b9a4202993199c47f50637993613314`  
		Last Modified: Wed, 29 Jul 2026 18:00:24 GMT  
		Size: 241.2 MB (241169656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:1c04309641008f1f8edde40f8494568b17ffdb788fc9f26d5524900cd762ef4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a5893fdf6fea550a1f6d2af004d8918545c73039205add5fd64fbb2ee71f8e8`

```dockerfile
```

-	Layers:
	-	`sha256:2b071bafc14ace641f609f5b3bed9aa21b5c0c602e43ad7c94f3781537f122fe`  
		Last Modified: Wed, 29 Jul 2026 18:00:17 GMT  
		Size: 19.1 KB (19057 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; riscv64

```console
$ docker pull dart@sha256:1bf76046bb87edfe59f0e5d19509abb5adee09844a2343270ce363075cba4bf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252646824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:947ba0e067a0e768674a10f5b89fc7a7a243fb46d860be420bb55a1f06e16451`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 17:35:55 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 15 Jul 2026 17:35:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 15 Jul 2026 17:35:57 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 15 Jul 2026 17:35:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 15 Jul 2026 17:35:57 GMT
WORKDIR /root
# Thu, 16 Jul 2026 22:56:54 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=285beac28ebc4a31dfaf3d46bfedd6502d01bb3ac16c3d69daf73d44d367cf89;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d74cb8c8aaf4f75f9eb75fc1f3e7adff48cffa63ed1a0074cddb54836049193f;             SDK_ARCH="arm";;         arm64)             DART_SHA256=3c80a4d4b1a5dcd042eacadf8668b42d05889a05462f409e967035cb0ba3ed3c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=89818cef3122d07ac9321a70a85cda17f07324ae733373e03c6545225bbf7cac;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a79242e9ee8e02c54c19cc387b7e5caaa22cd4ef33321868873943970c3903e`  
		Last Modified: Wed, 15 Jul 2026 17:40:54 GMT  
		Size: 41.6 MB (41581218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7fa4e699718ce7ae8eb2ae9174d993519062296061f614e6456a3e9adec03a`  
		Last Modified: Wed, 15 Jul 2026 17:40:41 GMT  
		Size: 1.6 MB (1564444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:843e93982a2f06c38e782d8b22eddb0c367f8186db31a97ea95f704ded0361c8`  
		Last Modified: Thu, 16 Jul 2026 23:01:20 GMT  
		Size: 181.2 MB (181222927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:2223f6e59a0f391f2fd0a4413b182382eb730df5c0945032da8c4261758bd8f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc91694d2976e36a22187ed454272ed5315e27325ddd7d1f205371f7c88dfb44`

```dockerfile
```

-	Layers:
	-	`sha256:aef8617fcb66f5fb4d8e2cfbab07f914d1f2f904bbc72680d67bbc457a9256d8`  
		Last Modified: Thu, 16 Jul 2026 23:00:53 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json
