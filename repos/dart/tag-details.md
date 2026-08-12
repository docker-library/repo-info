<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `dart`

-	[`dart:3`](#dart3)
-	[`dart:3-sdk`](#dart3-sdk)
-	[`dart:3.13`](#dart313)
-	[`dart:3.13-sdk`](#dart313-sdk)
-	[`dart:3.13.0`](#dart3130)
-	[`dart:3.13.0-sdk`](#dart3130-sdk)
-	[`dart:3.14.0-95.1.beta`](#dart3140-951beta)
-	[`dart:3.14.0-95.1.beta-sdk`](#dart3140-951beta-sdk)
-	[`dart:beta`](#dartbeta)
-	[`dart:beta-sdk`](#dartbeta-sdk)
-	[`dart:latest`](#dartlatest)
-	[`dart:sdk`](#dartsdk)
-	[`dart:stable`](#dartstable)
-	[`dart:stable-sdk`](#dartstable-sdk)

## `dart:3`

```console
$ docker pull dart@sha256:10d0c5a6bc35abde6ac2beaf2e5cadfd4e54ff52cbe9f7cd5cd37fc3d68e34c3
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
$ docker pull dart@sha256:e76b27eb060d2b0767f04ca696e6e8c1ef949131f306c74706444724599c930e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316552345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daf7a20fa172af29b373f8fae0a01be57ebde9eaf1be39acd340308f761a37cf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:38 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:48 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73dcb6323f12a0b48fed2e432820b03e25d9bf8f5509438cdf7d45cb5b62c4b8`  
		Last Modified: Wed, 12 Aug 2026 17:27:21 GMT  
		Size: 42.5 MB (42523653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeae3b9f6b39a22961d631218c9b497347e927e88c57954336752f27de90b908`  
		Last Modified: Wed, 12 Aug 2026 17:27:19 GMT  
		Size: 1.9 MB (1869784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b816517b2389e8a9b0a835d06a01f2903130e2b91cf366baa0cc3bfb929b1f8`  
		Last Modified: Wed, 12 Aug 2026 17:27:24 GMT  
		Size: 242.4 MB (242378111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:6ba19c394fdf6f62c1d92c2a4e50e5c85926c2074e2e610dfc7a79b8edc46cfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21724829cc4872a6bfe8aa133aa49f6ac3b318eb2a34c4bed5cce74d7f131acb`

```dockerfile
```

-	Layers:
	-	`sha256:6f776b3cd20c25af3a9046baf90e2bb9c758608c1c9c4b278750a3cc52033f1e`  
		Last Modified: Wed, 12 Aug 2026 17:27:19 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; arm variant v7

```console
$ docker pull dart@sha256:40a527930b7ad93f134972b5c351e0688a189fe4c7989e69400bb52a039fa3f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230472627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302dc4c9be3f3a2a9389721fcaec8f030b49bac7557f41a30b7051e0ed60cc84`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:22 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:23 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:23 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:23 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:23 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:31 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a36a443f8197cdc938f39b607b69394c734df8188f78c21ffd01a55974a454d`  
		Last Modified: Wed, 12 Aug 2026 17:26:55 GMT  
		Size: 37.5 MB (37513732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5389c8deb7272b0b792c5de7d78236bbed9e2f0192c6ed07c05151b754db39ab`  
		Last Modified: Wed, 12 Aug 2026 17:26:53 GMT  
		Size: 1.3 MB (1273149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9149394bb83d004aa21f6181f20a10a6ab5cf1b63759218fb6b3d39ff221dd`  
		Last Modified: Wed, 12 Aug 2026 17:26:57 GMT  
		Size: 165.5 MB (165479342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:825354d1af5edd4ca8d9eca78097903dfd6cd4478414d27d3fcf7ad15daca443
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:908da6caf4643ec4021d92401039333d4c95a8f3d9a3197de9a356256407e544`

```dockerfile
```

-	Layers:
	-	`sha256:bd830c6dcbc7602c2c9c9157f233aab779f0102993c509b4be619a5dc6ac9943`  
		Last Modified: Wed, 12 Aug 2026 17:26:53 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:17e958524c285c2fba342aa8c153120021da167625f23cebe07c75d5e90e2832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315229450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8fc78d38e039209a01f27c1801bc9107f7e846c6039f34a70a132f427ddcae1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:33:54 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:33:55 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:33:55 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:34:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2507d2692dadf5be8a99905ab2e63b9569eeed948180647b6957afc098a826`  
		Last Modified: Wed, 12 Aug 2026 17:34:38 GMT  
		Size: 42.3 MB (42310155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9044d926f2e01701890eb755121f3770d19af847a6590c2e678a0febb35852`  
		Last Modified: Wed, 12 Aug 2026 17:34:36 GMT  
		Size: 1.6 MB (1564385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:663ea7482cb4a1365ec25347cce9ac3a5fa59d6be18cbf0c86c0171fb85e876e`  
		Last Modified: Wed, 12 Aug 2026 17:34:42 GMT  
		Size: 241.2 MB (241211269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:1f59fb75aff6b4bb5cedc990161ab809ff6e625e2867b89420ce1ca267c941ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323d90d8cdcca5745fa946544f913f06a04e095f90b0a4c207cc3b28295686d9`

```dockerfile
```

-	Layers:
	-	`sha256:86f35254867ea10cad29ecbce0330f8be2d65028fc5c9d559582a130b67a50b0`  
		Last Modified: Wed, 12 Aug 2026 17:34:36 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; riscv64

```console
$ docker pull dart@sha256:91b0c2fa21678b450f7dfd5525f02aa3a5d54782b08b9b8511914ed5fba26b76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248349574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79eb0bfd93dc70b0fb544ee098488c3887c7e978b778d4e716556cbe0c14becb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Thu, 06 Aug 2026 19:48:08 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 06 Aug 2026 19:48:10 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 06 Aug 2026 19:48:10 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 06 Aug 2026 19:48:10 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Aug 2026 19:48:10 GMT
WORKDIR /root
# Thu, 06 Aug 2026 19:48:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc43f4f08994c759e9a243eb2bf12f50793c3f3b5a0cec1faf43a46cec2386c`  
		Last Modified: Thu, 06 Aug 2026 19:53:22 GMT  
		Size: 41.6 MB (41594114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d7e1938fd117a0ae3e00263ce44c82a48c8ed824a2fa88c04dc9b1028c7879d`  
		Last Modified: Thu, 06 Aug 2026 19:53:09 GMT  
		Size: 1.6 MB (1564445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a6a73062d38045f3cd50821fbc46f5074e132288867bb0554af4288232ea447`  
		Last Modified: Thu, 06 Aug 2026 19:53:42 GMT  
		Size: 176.9 MB (176912865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:37b122278675777148655a366f9eca8a21b70c75e5c4f98539321c8c4b61c109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:660cc55dcdb38239179f7371caec01d4c1c6bb0a544b08c8d3bc40c3eb20deb3`

```dockerfile
```

-	Layers:
	-	`sha256:b0c8cd0c1589290938ba6fe0478ee92712ff0030535614d282a5989f5a93bdf3`  
		Last Modified: Thu, 06 Aug 2026 19:53:09 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3-sdk`

```console
$ docker pull dart@sha256:10d0c5a6bc35abde6ac2beaf2e5cadfd4e54ff52cbe9f7cd5cd37fc3d68e34c3
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
$ docker pull dart@sha256:e76b27eb060d2b0767f04ca696e6e8c1ef949131f306c74706444724599c930e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316552345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daf7a20fa172af29b373f8fae0a01be57ebde9eaf1be39acd340308f761a37cf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:38 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:48 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73dcb6323f12a0b48fed2e432820b03e25d9bf8f5509438cdf7d45cb5b62c4b8`  
		Last Modified: Wed, 12 Aug 2026 17:27:21 GMT  
		Size: 42.5 MB (42523653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeae3b9f6b39a22961d631218c9b497347e927e88c57954336752f27de90b908`  
		Last Modified: Wed, 12 Aug 2026 17:27:19 GMT  
		Size: 1.9 MB (1869784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b816517b2389e8a9b0a835d06a01f2903130e2b91cf366baa0cc3bfb929b1f8`  
		Last Modified: Wed, 12 Aug 2026 17:27:24 GMT  
		Size: 242.4 MB (242378111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:6ba19c394fdf6f62c1d92c2a4e50e5c85926c2074e2e610dfc7a79b8edc46cfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21724829cc4872a6bfe8aa133aa49f6ac3b318eb2a34c4bed5cce74d7f131acb`

```dockerfile
```

-	Layers:
	-	`sha256:6f776b3cd20c25af3a9046baf90e2bb9c758608c1c9c4b278750a3cc52033f1e`  
		Last Modified: Wed, 12 Aug 2026 17:27:19 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:40a527930b7ad93f134972b5c351e0688a189fe4c7989e69400bb52a039fa3f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230472627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302dc4c9be3f3a2a9389721fcaec8f030b49bac7557f41a30b7051e0ed60cc84`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:22 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:23 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:23 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:23 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:23 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:31 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a36a443f8197cdc938f39b607b69394c734df8188f78c21ffd01a55974a454d`  
		Last Modified: Wed, 12 Aug 2026 17:26:55 GMT  
		Size: 37.5 MB (37513732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5389c8deb7272b0b792c5de7d78236bbed9e2f0192c6ed07c05151b754db39ab`  
		Last Modified: Wed, 12 Aug 2026 17:26:53 GMT  
		Size: 1.3 MB (1273149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9149394bb83d004aa21f6181f20a10a6ab5cf1b63759218fb6b3d39ff221dd`  
		Last Modified: Wed, 12 Aug 2026 17:26:57 GMT  
		Size: 165.5 MB (165479342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:825354d1af5edd4ca8d9eca78097903dfd6cd4478414d27d3fcf7ad15daca443
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:908da6caf4643ec4021d92401039333d4c95a8f3d9a3197de9a356256407e544`

```dockerfile
```

-	Layers:
	-	`sha256:bd830c6dcbc7602c2c9c9157f233aab779f0102993c509b4be619a5dc6ac9943`  
		Last Modified: Wed, 12 Aug 2026 17:26:53 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:17e958524c285c2fba342aa8c153120021da167625f23cebe07c75d5e90e2832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315229450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8fc78d38e039209a01f27c1801bc9107f7e846c6039f34a70a132f427ddcae1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:33:54 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:33:55 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:33:55 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:34:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2507d2692dadf5be8a99905ab2e63b9569eeed948180647b6957afc098a826`  
		Last Modified: Wed, 12 Aug 2026 17:34:38 GMT  
		Size: 42.3 MB (42310155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9044d926f2e01701890eb755121f3770d19af847a6590c2e678a0febb35852`  
		Last Modified: Wed, 12 Aug 2026 17:34:36 GMT  
		Size: 1.6 MB (1564385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:663ea7482cb4a1365ec25347cce9ac3a5fa59d6be18cbf0c86c0171fb85e876e`  
		Last Modified: Wed, 12 Aug 2026 17:34:42 GMT  
		Size: 241.2 MB (241211269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:1f59fb75aff6b4bb5cedc990161ab809ff6e625e2867b89420ce1ca267c941ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323d90d8cdcca5745fa946544f913f06a04e095f90b0a4c207cc3b28295686d9`

```dockerfile
```

-	Layers:
	-	`sha256:86f35254867ea10cad29ecbce0330f8be2d65028fc5c9d559582a130b67a50b0`  
		Last Modified: Wed, 12 Aug 2026 17:34:36 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:91b0c2fa21678b450f7dfd5525f02aa3a5d54782b08b9b8511914ed5fba26b76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248349574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79eb0bfd93dc70b0fb544ee098488c3887c7e978b778d4e716556cbe0c14becb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Thu, 06 Aug 2026 19:48:08 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 06 Aug 2026 19:48:10 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 06 Aug 2026 19:48:10 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 06 Aug 2026 19:48:10 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Aug 2026 19:48:10 GMT
WORKDIR /root
# Thu, 06 Aug 2026 19:48:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc43f4f08994c759e9a243eb2bf12f50793c3f3b5a0cec1faf43a46cec2386c`  
		Last Modified: Thu, 06 Aug 2026 19:53:22 GMT  
		Size: 41.6 MB (41594114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d7e1938fd117a0ae3e00263ce44c82a48c8ed824a2fa88c04dc9b1028c7879d`  
		Last Modified: Thu, 06 Aug 2026 19:53:09 GMT  
		Size: 1.6 MB (1564445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a6a73062d38045f3cd50821fbc46f5074e132288867bb0554af4288232ea447`  
		Last Modified: Thu, 06 Aug 2026 19:53:42 GMT  
		Size: 176.9 MB (176912865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:37b122278675777148655a366f9eca8a21b70c75e5c4f98539321c8c4b61c109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:660cc55dcdb38239179f7371caec01d4c1c6bb0a544b08c8d3bc40c3eb20deb3`

```dockerfile
```

-	Layers:
	-	`sha256:b0c8cd0c1589290938ba6fe0478ee92712ff0030535614d282a5989f5a93bdf3`  
		Last Modified: Thu, 06 Aug 2026 19:53:09 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13`

```console
$ docker pull dart@sha256:41394fa3ef862dc59d70a4e2dc975472c97594d3dd9e925400ac722aae131bd4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `dart:3.13` - linux; amd64

```console
$ docker pull dart@sha256:e76b27eb060d2b0767f04ca696e6e8c1ef949131f306c74706444724599c930e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316552345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daf7a20fa172af29b373f8fae0a01be57ebde9eaf1be39acd340308f761a37cf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:38 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:48 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73dcb6323f12a0b48fed2e432820b03e25d9bf8f5509438cdf7d45cb5b62c4b8`  
		Last Modified: Wed, 12 Aug 2026 17:27:21 GMT  
		Size: 42.5 MB (42523653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeae3b9f6b39a22961d631218c9b497347e927e88c57954336752f27de90b908`  
		Last Modified: Wed, 12 Aug 2026 17:27:19 GMT  
		Size: 1.9 MB (1869784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b816517b2389e8a9b0a835d06a01f2903130e2b91cf366baa0cc3bfb929b1f8`  
		Last Modified: Wed, 12 Aug 2026 17:27:24 GMT  
		Size: 242.4 MB (242378111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:6ba19c394fdf6f62c1d92c2a4e50e5c85926c2074e2e610dfc7a79b8edc46cfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21724829cc4872a6bfe8aa133aa49f6ac3b318eb2a34c4bed5cce74d7f131acb`

```dockerfile
```

-	Layers:
	-	`sha256:6f776b3cd20c25af3a9046baf90e2bb9c758608c1c9c4b278750a3cc52033f1e`  
		Last Modified: Wed, 12 Aug 2026 17:27:19 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13` - linux; arm variant v7

```console
$ docker pull dart@sha256:40a527930b7ad93f134972b5c351e0688a189fe4c7989e69400bb52a039fa3f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230472627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302dc4c9be3f3a2a9389721fcaec8f030b49bac7557f41a30b7051e0ed60cc84`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:22 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:23 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:23 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:23 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:23 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:31 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a36a443f8197cdc938f39b607b69394c734df8188f78c21ffd01a55974a454d`  
		Last Modified: Wed, 12 Aug 2026 17:26:55 GMT  
		Size: 37.5 MB (37513732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5389c8deb7272b0b792c5de7d78236bbed9e2f0192c6ed07c05151b754db39ab`  
		Last Modified: Wed, 12 Aug 2026 17:26:53 GMT  
		Size: 1.3 MB (1273149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9149394bb83d004aa21f6181f20a10a6ab5cf1b63759218fb6b3d39ff221dd`  
		Last Modified: Wed, 12 Aug 2026 17:26:57 GMT  
		Size: 165.5 MB (165479342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:825354d1af5edd4ca8d9eca78097903dfd6cd4478414d27d3fcf7ad15daca443
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:908da6caf4643ec4021d92401039333d4c95a8f3d9a3197de9a356256407e544`

```dockerfile
```

-	Layers:
	-	`sha256:bd830c6dcbc7602c2c9c9157f233aab779f0102993c509b4be619a5dc6ac9943`  
		Last Modified: Wed, 12 Aug 2026 17:26:53 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:17e958524c285c2fba342aa8c153120021da167625f23cebe07c75d5e90e2832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315229450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8fc78d38e039209a01f27c1801bc9107f7e846c6039f34a70a132f427ddcae1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:33:54 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:33:55 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:33:55 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:34:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2507d2692dadf5be8a99905ab2e63b9569eeed948180647b6957afc098a826`  
		Last Modified: Wed, 12 Aug 2026 17:34:38 GMT  
		Size: 42.3 MB (42310155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9044d926f2e01701890eb755121f3770d19af847a6590c2e678a0febb35852`  
		Last Modified: Wed, 12 Aug 2026 17:34:36 GMT  
		Size: 1.6 MB (1564385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:663ea7482cb4a1365ec25347cce9ac3a5fa59d6be18cbf0c86c0171fb85e876e`  
		Last Modified: Wed, 12 Aug 2026 17:34:42 GMT  
		Size: 241.2 MB (241211269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:1f59fb75aff6b4bb5cedc990161ab809ff6e625e2867b89420ce1ca267c941ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323d90d8cdcca5745fa946544f913f06a04e095f90b0a4c207cc3b28295686d9`

```dockerfile
```

-	Layers:
	-	`sha256:86f35254867ea10cad29ecbce0330f8be2d65028fc5c9d559582a130b67a50b0`  
		Last Modified: Wed, 12 Aug 2026 17:34:36 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13-sdk`

```console
$ docker pull dart@sha256:41394fa3ef862dc59d70a4e2dc975472c97594d3dd9e925400ac722aae131bd4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `dart:3.13-sdk` - linux; amd64

```console
$ docker pull dart@sha256:e76b27eb060d2b0767f04ca696e6e8c1ef949131f306c74706444724599c930e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316552345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daf7a20fa172af29b373f8fae0a01be57ebde9eaf1be39acd340308f761a37cf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:38 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:48 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73dcb6323f12a0b48fed2e432820b03e25d9bf8f5509438cdf7d45cb5b62c4b8`  
		Last Modified: Wed, 12 Aug 2026 17:27:21 GMT  
		Size: 42.5 MB (42523653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeae3b9f6b39a22961d631218c9b497347e927e88c57954336752f27de90b908`  
		Last Modified: Wed, 12 Aug 2026 17:27:19 GMT  
		Size: 1.9 MB (1869784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b816517b2389e8a9b0a835d06a01f2903130e2b91cf366baa0cc3bfb929b1f8`  
		Last Modified: Wed, 12 Aug 2026 17:27:24 GMT  
		Size: 242.4 MB (242378111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:6ba19c394fdf6f62c1d92c2a4e50e5c85926c2074e2e610dfc7a79b8edc46cfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21724829cc4872a6bfe8aa133aa49f6ac3b318eb2a34c4bed5cce74d7f131acb`

```dockerfile
```

-	Layers:
	-	`sha256:6f776b3cd20c25af3a9046baf90e2bb9c758608c1c9c4b278750a3cc52033f1e`  
		Last Modified: Wed, 12 Aug 2026 17:27:19 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:40a527930b7ad93f134972b5c351e0688a189fe4c7989e69400bb52a039fa3f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230472627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302dc4c9be3f3a2a9389721fcaec8f030b49bac7557f41a30b7051e0ed60cc84`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:22 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:23 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:23 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:23 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:23 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:31 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a36a443f8197cdc938f39b607b69394c734df8188f78c21ffd01a55974a454d`  
		Last Modified: Wed, 12 Aug 2026 17:26:55 GMT  
		Size: 37.5 MB (37513732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5389c8deb7272b0b792c5de7d78236bbed9e2f0192c6ed07c05151b754db39ab`  
		Last Modified: Wed, 12 Aug 2026 17:26:53 GMT  
		Size: 1.3 MB (1273149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9149394bb83d004aa21f6181f20a10a6ab5cf1b63759218fb6b3d39ff221dd`  
		Last Modified: Wed, 12 Aug 2026 17:26:57 GMT  
		Size: 165.5 MB (165479342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:825354d1af5edd4ca8d9eca78097903dfd6cd4478414d27d3fcf7ad15daca443
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:908da6caf4643ec4021d92401039333d4c95a8f3d9a3197de9a356256407e544`

```dockerfile
```

-	Layers:
	-	`sha256:bd830c6dcbc7602c2c9c9157f233aab779f0102993c509b4be619a5dc6ac9943`  
		Last Modified: Wed, 12 Aug 2026 17:26:53 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:17e958524c285c2fba342aa8c153120021da167625f23cebe07c75d5e90e2832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315229450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8fc78d38e039209a01f27c1801bc9107f7e846c6039f34a70a132f427ddcae1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:33:54 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:33:55 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:33:55 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:34:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2507d2692dadf5be8a99905ab2e63b9569eeed948180647b6957afc098a826`  
		Last Modified: Wed, 12 Aug 2026 17:34:38 GMT  
		Size: 42.3 MB (42310155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9044d926f2e01701890eb755121f3770d19af847a6590c2e678a0febb35852`  
		Last Modified: Wed, 12 Aug 2026 17:34:36 GMT  
		Size: 1.6 MB (1564385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:663ea7482cb4a1365ec25347cce9ac3a5fa59d6be18cbf0c86c0171fb85e876e`  
		Last Modified: Wed, 12 Aug 2026 17:34:42 GMT  
		Size: 241.2 MB (241211269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:1f59fb75aff6b4bb5cedc990161ab809ff6e625e2867b89420ce1ca267c941ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323d90d8cdcca5745fa946544f913f06a04e095f90b0a4c207cc3b28295686d9`

```dockerfile
```

-	Layers:
	-	`sha256:86f35254867ea10cad29ecbce0330f8be2d65028fc5c9d559582a130b67a50b0`  
		Last Modified: Wed, 12 Aug 2026 17:34:36 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13.0`

```console
$ docker pull dart@sha256:41394fa3ef862dc59d70a4e2dc975472c97594d3dd9e925400ac722aae131bd4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `dart:3.13.0` - linux; amd64

```console
$ docker pull dart@sha256:e76b27eb060d2b0767f04ca696e6e8c1ef949131f306c74706444724599c930e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316552345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daf7a20fa172af29b373f8fae0a01be57ebde9eaf1be39acd340308f761a37cf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:38 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:48 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73dcb6323f12a0b48fed2e432820b03e25d9bf8f5509438cdf7d45cb5b62c4b8`  
		Last Modified: Wed, 12 Aug 2026 17:27:21 GMT  
		Size: 42.5 MB (42523653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeae3b9f6b39a22961d631218c9b497347e927e88c57954336752f27de90b908`  
		Last Modified: Wed, 12 Aug 2026 17:27:19 GMT  
		Size: 1.9 MB (1869784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b816517b2389e8a9b0a835d06a01f2903130e2b91cf366baa0cc3bfb929b1f8`  
		Last Modified: Wed, 12 Aug 2026 17:27:24 GMT  
		Size: 242.4 MB (242378111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.0` - unknown; unknown

```console
$ docker pull dart@sha256:6ba19c394fdf6f62c1d92c2a4e50e5c85926c2074e2e610dfc7a79b8edc46cfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21724829cc4872a6bfe8aa133aa49f6ac3b318eb2a34c4bed5cce74d7f131acb`

```dockerfile
```

-	Layers:
	-	`sha256:6f776b3cd20c25af3a9046baf90e2bb9c758608c1c9c4b278750a3cc52033f1e`  
		Last Modified: Wed, 12 Aug 2026 17:27:19 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.0` - linux; arm variant v7

```console
$ docker pull dart@sha256:40a527930b7ad93f134972b5c351e0688a189fe4c7989e69400bb52a039fa3f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230472627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302dc4c9be3f3a2a9389721fcaec8f030b49bac7557f41a30b7051e0ed60cc84`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:22 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:23 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:23 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:23 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:23 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:31 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a36a443f8197cdc938f39b607b69394c734df8188f78c21ffd01a55974a454d`  
		Last Modified: Wed, 12 Aug 2026 17:26:55 GMT  
		Size: 37.5 MB (37513732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5389c8deb7272b0b792c5de7d78236bbed9e2f0192c6ed07c05151b754db39ab`  
		Last Modified: Wed, 12 Aug 2026 17:26:53 GMT  
		Size: 1.3 MB (1273149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9149394bb83d004aa21f6181f20a10a6ab5cf1b63759218fb6b3d39ff221dd`  
		Last Modified: Wed, 12 Aug 2026 17:26:57 GMT  
		Size: 165.5 MB (165479342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.0` - unknown; unknown

```console
$ docker pull dart@sha256:825354d1af5edd4ca8d9eca78097903dfd6cd4478414d27d3fcf7ad15daca443
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:908da6caf4643ec4021d92401039333d4c95a8f3d9a3197de9a356256407e544`

```dockerfile
```

-	Layers:
	-	`sha256:bd830c6dcbc7602c2c9c9157f233aab779f0102993c509b4be619a5dc6ac9943`  
		Last Modified: Wed, 12 Aug 2026 17:26:53 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.0` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:17e958524c285c2fba342aa8c153120021da167625f23cebe07c75d5e90e2832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315229450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8fc78d38e039209a01f27c1801bc9107f7e846c6039f34a70a132f427ddcae1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:33:54 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:33:55 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:33:55 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:34:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2507d2692dadf5be8a99905ab2e63b9569eeed948180647b6957afc098a826`  
		Last Modified: Wed, 12 Aug 2026 17:34:38 GMT  
		Size: 42.3 MB (42310155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9044d926f2e01701890eb755121f3770d19af847a6590c2e678a0febb35852`  
		Last Modified: Wed, 12 Aug 2026 17:34:36 GMT  
		Size: 1.6 MB (1564385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:663ea7482cb4a1365ec25347cce9ac3a5fa59d6be18cbf0c86c0171fb85e876e`  
		Last Modified: Wed, 12 Aug 2026 17:34:42 GMT  
		Size: 241.2 MB (241211269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.0` - unknown; unknown

```console
$ docker pull dart@sha256:1f59fb75aff6b4bb5cedc990161ab809ff6e625e2867b89420ce1ca267c941ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323d90d8cdcca5745fa946544f913f06a04e095f90b0a4c207cc3b28295686d9`

```dockerfile
```

-	Layers:
	-	`sha256:86f35254867ea10cad29ecbce0330f8be2d65028fc5c9d559582a130b67a50b0`  
		Last Modified: Wed, 12 Aug 2026 17:34:36 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13.0-sdk`

```console
$ docker pull dart@sha256:41394fa3ef862dc59d70a4e2dc975472c97594d3dd9e925400ac722aae131bd4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `dart:3.13.0-sdk` - linux; amd64

```console
$ docker pull dart@sha256:e76b27eb060d2b0767f04ca696e6e8c1ef949131f306c74706444724599c930e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316552345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daf7a20fa172af29b373f8fae0a01be57ebde9eaf1be39acd340308f761a37cf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:38 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:48 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73dcb6323f12a0b48fed2e432820b03e25d9bf8f5509438cdf7d45cb5b62c4b8`  
		Last Modified: Wed, 12 Aug 2026 17:27:21 GMT  
		Size: 42.5 MB (42523653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeae3b9f6b39a22961d631218c9b497347e927e88c57954336752f27de90b908`  
		Last Modified: Wed, 12 Aug 2026 17:27:19 GMT  
		Size: 1.9 MB (1869784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b816517b2389e8a9b0a835d06a01f2903130e2b91cf366baa0cc3bfb929b1f8`  
		Last Modified: Wed, 12 Aug 2026 17:27:24 GMT  
		Size: 242.4 MB (242378111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.0-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:6ba19c394fdf6f62c1d92c2a4e50e5c85926c2074e2e610dfc7a79b8edc46cfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21724829cc4872a6bfe8aa133aa49f6ac3b318eb2a34c4bed5cce74d7f131acb`

```dockerfile
```

-	Layers:
	-	`sha256:6f776b3cd20c25af3a9046baf90e2bb9c758608c1c9c4b278750a3cc52033f1e`  
		Last Modified: Wed, 12 Aug 2026 17:27:19 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.0-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:40a527930b7ad93f134972b5c351e0688a189fe4c7989e69400bb52a039fa3f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230472627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302dc4c9be3f3a2a9389721fcaec8f030b49bac7557f41a30b7051e0ed60cc84`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:22 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:23 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:23 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:23 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:23 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:31 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a36a443f8197cdc938f39b607b69394c734df8188f78c21ffd01a55974a454d`  
		Last Modified: Wed, 12 Aug 2026 17:26:55 GMT  
		Size: 37.5 MB (37513732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5389c8deb7272b0b792c5de7d78236bbed9e2f0192c6ed07c05151b754db39ab`  
		Last Modified: Wed, 12 Aug 2026 17:26:53 GMT  
		Size: 1.3 MB (1273149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9149394bb83d004aa21f6181f20a10a6ab5cf1b63759218fb6b3d39ff221dd`  
		Last Modified: Wed, 12 Aug 2026 17:26:57 GMT  
		Size: 165.5 MB (165479342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.0-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:825354d1af5edd4ca8d9eca78097903dfd6cd4478414d27d3fcf7ad15daca443
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:908da6caf4643ec4021d92401039333d4c95a8f3d9a3197de9a356256407e544`

```dockerfile
```

-	Layers:
	-	`sha256:bd830c6dcbc7602c2c9c9157f233aab779f0102993c509b4be619a5dc6ac9943`  
		Last Modified: Wed, 12 Aug 2026 17:26:53 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.0-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:17e958524c285c2fba342aa8c153120021da167625f23cebe07c75d5e90e2832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315229450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8fc78d38e039209a01f27c1801bc9107f7e846c6039f34a70a132f427ddcae1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:33:54 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:33:55 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:33:55 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:34:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2507d2692dadf5be8a99905ab2e63b9569eeed948180647b6957afc098a826`  
		Last Modified: Wed, 12 Aug 2026 17:34:38 GMT  
		Size: 42.3 MB (42310155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9044d926f2e01701890eb755121f3770d19af847a6590c2e678a0febb35852`  
		Last Modified: Wed, 12 Aug 2026 17:34:36 GMT  
		Size: 1.6 MB (1564385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:663ea7482cb4a1365ec25347cce9ac3a5fa59d6be18cbf0c86c0171fb85e876e`  
		Last Modified: Wed, 12 Aug 2026 17:34:42 GMT  
		Size: 241.2 MB (241211269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.0-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:1f59fb75aff6b4bb5cedc990161ab809ff6e625e2867b89420ce1ca267c941ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323d90d8cdcca5745fa946544f913f06a04e095f90b0a4c207cc3b28295686d9`

```dockerfile
```

-	Layers:
	-	`sha256:86f35254867ea10cad29ecbce0330f8be2d65028fc5c9d559582a130b67a50b0`  
		Last Modified: Wed, 12 Aug 2026 17:34:36 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.14.0-95.1.beta`

```console
$ docker pull dart@sha256:d206c5c31450922e5eebc0cedab2e9b31f2fb500d04186e58dedbcfd7c217b38
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `dart:3.14.0-95.1.beta` - linux; amd64

```console
$ docker pull dart@sha256:cd77d42f6e676246d26d4d8ad7a03d9e35177d12f3db5c6fd254113718b81279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.2 MB (435150126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb719455f28a7e5a42245082de5f05ff01f1cd2e43ed05339b80501b904127a8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:40 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:40 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:40 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:40 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:40 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=19ca9b7d5ac0276f94997c554b4602e38bb24ab0e2fc0163d04fe8e15d347f44;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5f1d8170894ef98fd1f7675531bda768ba4b5d4cc429ffefdd2bdee361cf90d7;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4cc6d71c1bada7718e67f4d47107cd2b44c7ed5ced997499bc0494344e15b926;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=6d2cfc00ac45a7df49f8977a2ebdb88ce7ebc75957e577bd525f739b9a49b49e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5921a72263cb7f17d91fa3cfd15aa70a6b37426e4ef089862cedf410c289219`  
		Last Modified: Wed, 12 Aug 2026 17:27:36 GMT  
		Size: 42.5 MB (42523639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbdfbe13ef8e555dbb144605ec9ec596292bcee3ccc0368fc4b0e95824af1954`  
		Last Modified: Wed, 12 Aug 2026 17:27:34 GMT  
		Size: 1.9 MB (1869788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b643ed4a67112ac7f46a029f797160fcb9884e7fdfbf3fa67f7320719491ce`  
		Last Modified: Wed, 12 Aug 2026 17:27:41 GMT  
		Size: 361.0 MB (360975902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-95.1.beta` - unknown; unknown

```console
$ docker pull dart@sha256:5934f365de6770feb2240e27127a4e0194f17dc0f6ea3cd30d7057c4b2772e67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb890461904074878aba555d9ec62e17f12a04877735b1dc270f0acddfcc1781`

```dockerfile
```

-	Layers:
	-	`sha256:ed39aba97aa1c0c046ec8bbbf41e64edba70c66a23ef56f93d9096fdcfb6a4c8`  
		Last Modified: Wed, 12 Aug 2026 17:27:34 GMT  
		Size: 18.9 KB (18918 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-95.1.beta` - linux; arm variant v7

```console
$ docker pull dart@sha256:a4f6718813250b0d6ca82065037dcac4ae569c5eef1080d5d06ee2b58b3f495c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254886352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3893fc7935c0951d9af4606820c8c32b34e9aa31500e4ab54238053d04e016b6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:11 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:11 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:11 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:11 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:11 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:21 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=19ca9b7d5ac0276f94997c554b4602e38bb24ab0e2fc0163d04fe8e15d347f44;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5f1d8170894ef98fd1f7675531bda768ba4b5d4cc429ffefdd2bdee361cf90d7;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4cc6d71c1bada7718e67f4d47107cd2b44c7ed5ced997499bc0494344e15b926;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=6d2cfc00ac45a7df49f8977a2ebdb88ce7ebc75957e577bd525f739b9a49b49e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30e8567e23203b335a7713ddbe2820db846424543776fdcd3ab73c29bca71eb`  
		Last Modified: Wed, 12 Aug 2026 17:26:49 GMT  
		Size: 37.5 MB (37513709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d39a9c2b13adb13cae07cac5ea4eaae2a1f80d750e35eda7317610e5b93cb8db`  
		Last Modified: Wed, 12 Aug 2026 17:26:47 GMT  
		Size: 1.3 MB (1273152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8eb2af7185654f468259fc61ef74bc3769f4552b54a1746f17471e2cde7d5b4`  
		Last Modified: Wed, 12 Aug 2026 17:26:52 GMT  
		Size: 189.9 MB (189893087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-95.1.beta` - unknown; unknown

```console
$ docker pull dart@sha256:5f5435c44b11307a00fdc12a9645e05cd9c08ef064307ff0f0f3fc545a65719b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:470810ea2d21030c9d6477ca25480d630f45a9a590c474c93434e2bdea24ac2c`

```dockerfile
```

-	Layers:
	-	`sha256:dabdfdc275d4ad20788a99c28f2d4ab6549e9ecd7cafa26e342caec82b76a4a9`  
		Last Modified: Wed, 12 Aug 2026 17:26:47 GMT  
		Size: 19.0 KB (19023 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-95.1.beta` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:745247c66e78c06ae75bf9176198521c3939dbf918a1d9be5d4373ba3ad951c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.2 MB (432153800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b38b24e982beecbf291aeeb5f0af050437f9077fc307fea2d79373cd436d0f7a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:33:54 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:33:55 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:33:55 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:35:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=19ca9b7d5ac0276f94997c554b4602e38bb24ab0e2fc0163d04fe8e15d347f44;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5f1d8170894ef98fd1f7675531bda768ba4b5d4cc429ffefdd2bdee361cf90d7;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4cc6d71c1bada7718e67f4d47107cd2b44c7ed5ced997499bc0494344e15b926;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=6d2cfc00ac45a7df49f8977a2ebdb88ce7ebc75957e577bd525f739b9a49b49e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2507d2692dadf5be8a99905ab2e63b9569eeed948180647b6957afc098a826`  
		Last Modified: Wed, 12 Aug 2026 17:34:38 GMT  
		Size: 42.3 MB (42310155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9044d926f2e01701890eb755121f3770d19af847a6590c2e678a0febb35852`  
		Last Modified: Wed, 12 Aug 2026 17:34:36 GMT  
		Size: 1.6 MB (1564385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:014bdaa547bc5d4091602fc4cf7a188c25d4db2c32c872372fe4ff93b7283f1f`  
		Last Modified: Wed, 12 Aug 2026 17:35:55 GMT  
		Size: 358.1 MB (358135619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-95.1.beta` - unknown; unknown

```console
$ docker pull dart@sha256:46643672b9ac284d5726231c82f29ef4028cf3594bfb9b9ac8560fd5fedf246f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b69bbbf8ddf93b64bac41e3f187ccd20709b5a9a71b2796b525710433399be6`

```dockerfile
```

-	Layers:
	-	`sha256:754c706ed45d7ee492989d2e493246a2ae5985c120caf44233d47e7f4310e606`  
		Last Modified: Wed, 12 Aug 2026 17:35:48 GMT  
		Size: 19.1 KB (19052 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.14.0-95.1.beta-sdk`

```console
$ docker pull dart@sha256:d206c5c31450922e5eebc0cedab2e9b31f2fb500d04186e58dedbcfd7c217b38
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `dart:3.14.0-95.1.beta-sdk` - linux; amd64

```console
$ docker pull dart@sha256:cd77d42f6e676246d26d4d8ad7a03d9e35177d12f3db5c6fd254113718b81279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.2 MB (435150126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb719455f28a7e5a42245082de5f05ff01f1cd2e43ed05339b80501b904127a8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:40 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:40 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:40 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:40 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:40 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=19ca9b7d5ac0276f94997c554b4602e38bb24ab0e2fc0163d04fe8e15d347f44;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5f1d8170894ef98fd1f7675531bda768ba4b5d4cc429ffefdd2bdee361cf90d7;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4cc6d71c1bada7718e67f4d47107cd2b44c7ed5ced997499bc0494344e15b926;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=6d2cfc00ac45a7df49f8977a2ebdb88ce7ebc75957e577bd525f739b9a49b49e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5921a72263cb7f17d91fa3cfd15aa70a6b37426e4ef089862cedf410c289219`  
		Last Modified: Wed, 12 Aug 2026 17:27:36 GMT  
		Size: 42.5 MB (42523639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbdfbe13ef8e555dbb144605ec9ec596292bcee3ccc0368fc4b0e95824af1954`  
		Last Modified: Wed, 12 Aug 2026 17:27:34 GMT  
		Size: 1.9 MB (1869788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b643ed4a67112ac7f46a029f797160fcb9884e7fdfbf3fa67f7320719491ce`  
		Last Modified: Wed, 12 Aug 2026 17:27:41 GMT  
		Size: 361.0 MB (360975902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-95.1.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:5934f365de6770feb2240e27127a4e0194f17dc0f6ea3cd30d7057c4b2772e67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb890461904074878aba555d9ec62e17f12a04877735b1dc270f0acddfcc1781`

```dockerfile
```

-	Layers:
	-	`sha256:ed39aba97aa1c0c046ec8bbbf41e64edba70c66a23ef56f93d9096fdcfb6a4c8`  
		Last Modified: Wed, 12 Aug 2026 17:27:34 GMT  
		Size: 18.9 KB (18918 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-95.1.beta-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:a4f6718813250b0d6ca82065037dcac4ae569c5eef1080d5d06ee2b58b3f495c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254886352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3893fc7935c0951d9af4606820c8c32b34e9aa31500e4ab54238053d04e016b6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:11 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:11 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:11 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:11 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:11 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:21 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=19ca9b7d5ac0276f94997c554b4602e38bb24ab0e2fc0163d04fe8e15d347f44;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5f1d8170894ef98fd1f7675531bda768ba4b5d4cc429ffefdd2bdee361cf90d7;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4cc6d71c1bada7718e67f4d47107cd2b44c7ed5ced997499bc0494344e15b926;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=6d2cfc00ac45a7df49f8977a2ebdb88ce7ebc75957e577bd525f739b9a49b49e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30e8567e23203b335a7713ddbe2820db846424543776fdcd3ab73c29bca71eb`  
		Last Modified: Wed, 12 Aug 2026 17:26:49 GMT  
		Size: 37.5 MB (37513709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d39a9c2b13adb13cae07cac5ea4eaae2a1f80d750e35eda7317610e5b93cb8db`  
		Last Modified: Wed, 12 Aug 2026 17:26:47 GMT  
		Size: 1.3 MB (1273152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8eb2af7185654f468259fc61ef74bc3769f4552b54a1746f17471e2cde7d5b4`  
		Last Modified: Wed, 12 Aug 2026 17:26:52 GMT  
		Size: 189.9 MB (189893087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-95.1.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:5f5435c44b11307a00fdc12a9645e05cd9c08ef064307ff0f0f3fc545a65719b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:470810ea2d21030c9d6477ca25480d630f45a9a590c474c93434e2bdea24ac2c`

```dockerfile
```

-	Layers:
	-	`sha256:dabdfdc275d4ad20788a99c28f2d4ab6549e9ecd7cafa26e342caec82b76a4a9`  
		Last Modified: Wed, 12 Aug 2026 17:26:47 GMT  
		Size: 19.0 KB (19023 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-95.1.beta-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:745247c66e78c06ae75bf9176198521c3939dbf918a1d9be5d4373ba3ad951c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.2 MB (432153800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b38b24e982beecbf291aeeb5f0af050437f9077fc307fea2d79373cd436d0f7a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:33:54 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:33:55 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:33:55 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:35:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=19ca9b7d5ac0276f94997c554b4602e38bb24ab0e2fc0163d04fe8e15d347f44;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5f1d8170894ef98fd1f7675531bda768ba4b5d4cc429ffefdd2bdee361cf90d7;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4cc6d71c1bada7718e67f4d47107cd2b44c7ed5ced997499bc0494344e15b926;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=6d2cfc00ac45a7df49f8977a2ebdb88ce7ebc75957e577bd525f739b9a49b49e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2507d2692dadf5be8a99905ab2e63b9569eeed948180647b6957afc098a826`  
		Last Modified: Wed, 12 Aug 2026 17:34:38 GMT  
		Size: 42.3 MB (42310155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9044d926f2e01701890eb755121f3770d19af847a6590c2e678a0febb35852`  
		Last Modified: Wed, 12 Aug 2026 17:34:36 GMT  
		Size: 1.6 MB (1564385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:014bdaa547bc5d4091602fc4cf7a188c25d4db2c32c872372fe4ff93b7283f1f`  
		Last Modified: Wed, 12 Aug 2026 17:35:55 GMT  
		Size: 358.1 MB (358135619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-95.1.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:46643672b9ac284d5726231c82f29ef4028cf3594bfb9b9ac8560fd5fedf246f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b69bbbf8ddf93b64bac41e3f187ccd20709b5a9a71b2796b525710433399be6`

```dockerfile
```

-	Layers:
	-	`sha256:754c706ed45d7ee492989d2e493246a2ae5985c120caf44233d47e7f4310e606`  
		Last Modified: Wed, 12 Aug 2026 17:35:48 GMT  
		Size: 19.1 KB (19052 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:beta`

```console
$ docker pull dart@sha256:1446a46f3cfd3c6882ee11634e53b108a8b598be59aa223e62a0456a1a23c353
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
$ docker pull dart@sha256:cd77d42f6e676246d26d4d8ad7a03d9e35177d12f3db5c6fd254113718b81279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.2 MB (435150126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb719455f28a7e5a42245082de5f05ff01f1cd2e43ed05339b80501b904127a8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:40 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:40 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:40 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:40 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:40 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=19ca9b7d5ac0276f94997c554b4602e38bb24ab0e2fc0163d04fe8e15d347f44;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5f1d8170894ef98fd1f7675531bda768ba4b5d4cc429ffefdd2bdee361cf90d7;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4cc6d71c1bada7718e67f4d47107cd2b44c7ed5ced997499bc0494344e15b926;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=6d2cfc00ac45a7df49f8977a2ebdb88ce7ebc75957e577bd525f739b9a49b49e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5921a72263cb7f17d91fa3cfd15aa70a6b37426e4ef089862cedf410c289219`  
		Last Modified: Wed, 12 Aug 2026 17:27:36 GMT  
		Size: 42.5 MB (42523639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbdfbe13ef8e555dbb144605ec9ec596292bcee3ccc0368fc4b0e95824af1954`  
		Last Modified: Wed, 12 Aug 2026 17:27:34 GMT  
		Size: 1.9 MB (1869788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b643ed4a67112ac7f46a029f797160fcb9884e7fdfbf3fa67f7320719491ce`  
		Last Modified: Wed, 12 Aug 2026 17:27:41 GMT  
		Size: 361.0 MB (360975902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:5934f365de6770feb2240e27127a4e0194f17dc0f6ea3cd30d7057c4b2772e67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb890461904074878aba555d9ec62e17f12a04877735b1dc270f0acddfcc1781`

```dockerfile
```

-	Layers:
	-	`sha256:ed39aba97aa1c0c046ec8bbbf41e64edba70c66a23ef56f93d9096fdcfb6a4c8`  
		Last Modified: Wed, 12 Aug 2026 17:27:34 GMT  
		Size: 18.9 KB (18918 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm variant v7

```console
$ docker pull dart@sha256:a4f6718813250b0d6ca82065037dcac4ae569c5eef1080d5d06ee2b58b3f495c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254886352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3893fc7935c0951d9af4606820c8c32b34e9aa31500e4ab54238053d04e016b6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:11 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:11 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:11 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:11 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:11 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:21 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=19ca9b7d5ac0276f94997c554b4602e38bb24ab0e2fc0163d04fe8e15d347f44;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5f1d8170894ef98fd1f7675531bda768ba4b5d4cc429ffefdd2bdee361cf90d7;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4cc6d71c1bada7718e67f4d47107cd2b44c7ed5ced997499bc0494344e15b926;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=6d2cfc00ac45a7df49f8977a2ebdb88ce7ebc75957e577bd525f739b9a49b49e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30e8567e23203b335a7713ddbe2820db846424543776fdcd3ab73c29bca71eb`  
		Last Modified: Wed, 12 Aug 2026 17:26:49 GMT  
		Size: 37.5 MB (37513709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d39a9c2b13adb13cae07cac5ea4eaae2a1f80d750e35eda7317610e5b93cb8db`  
		Last Modified: Wed, 12 Aug 2026 17:26:47 GMT  
		Size: 1.3 MB (1273152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8eb2af7185654f468259fc61ef74bc3769f4552b54a1746f17471e2cde7d5b4`  
		Last Modified: Wed, 12 Aug 2026 17:26:52 GMT  
		Size: 189.9 MB (189893087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:5f5435c44b11307a00fdc12a9645e05cd9c08ef064307ff0f0f3fc545a65719b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:470810ea2d21030c9d6477ca25480d630f45a9a590c474c93434e2bdea24ac2c`

```dockerfile
```

-	Layers:
	-	`sha256:dabdfdc275d4ad20788a99c28f2d4ab6549e9ecd7cafa26e342caec82b76a4a9`  
		Last Modified: Wed, 12 Aug 2026 17:26:47 GMT  
		Size: 19.0 KB (19023 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:745247c66e78c06ae75bf9176198521c3939dbf918a1d9be5d4373ba3ad951c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.2 MB (432153800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b38b24e982beecbf291aeeb5f0af050437f9077fc307fea2d79373cd436d0f7a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:33:54 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:33:55 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:33:55 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:35:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=19ca9b7d5ac0276f94997c554b4602e38bb24ab0e2fc0163d04fe8e15d347f44;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5f1d8170894ef98fd1f7675531bda768ba4b5d4cc429ffefdd2bdee361cf90d7;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4cc6d71c1bada7718e67f4d47107cd2b44c7ed5ced997499bc0494344e15b926;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=6d2cfc00ac45a7df49f8977a2ebdb88ce7ebc75957e577bd525f739b9a49b49e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2507d2692dadf5be8a99905ab2e63b9569eeed948180647b6957afc098a826`  
		Last Modified: Wed, 12 Aug 2026 17:34:38 GMT  
		Size: 42.3 MB (42310155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9044d926f2e01701890eb755121f3770d19af847a6590c2e678a0febb35852`  
		Last Modified: Wed, 12 Aug 2026 17:34:36 GMT  
		Size: 1.6 MB (1564385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:014bdaa547bc5d4091602fc4cf7a188c25d4db2c32c872372fe4ff93b7283f1f`  
		Last Modified: Wed, 12 Aug 2026 17:35:55 GMT  
		Size: 358.1 MB (358135619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:46643672b9ac284d5726231c82f29ef4028cf3594bfb9b9ac8560fd5fedf246f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b69bbbf8ddf93b64bac41e3f187ccd20709b5a9a71b2796b525710433399be6`

```dockerfile
```

-	Layers:
	-	`sha256:754c706ed45d7ee492989d2e493246a2ae5985c120caf44233d47e7f4310e606`  
		Last Modified: Wed, 12 Aug 2026 17:35:48 GMT  
		Size: 19.1 KB (19052 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; riscv64

```console
$ docker pull dart@sha256:45dc6294984b9790f34dd3c7128b539d9a180152326316d8e913a13b2db51c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252701874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82f25b6d43d67147bd722b323b480280b5fd008c5d2706b817e21fba587cda17`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Thu, 06 Aug 2026 19:48:08 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 06 Aug 2026 19:48:10 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 06 Aug 2026 19:48:10 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 06 Aug 2026 19:48:10 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Aug 2026 19:48:10 GMT
WORKDIR /root
# Thu, 06 Aug 2026 19:55:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ae426a461fde77e78e4a2fed380c694a88500a720465d45c6720c1051d443397;             SDK_ARCH="x64";;         armhf)             DART_SHA256=273dd080170b6a86474908117583e58e4dde2850d4784a021ca51b34c12696b4;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d4658eaae87b582899f6802a5d6a4ffa5ec510971a22f51c5bb3547b3030adfe;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=640103641c219c0075f8a19a58b39caac4da6ef21d5fe27fbd010993de4bca8f;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.4.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc43f4f08994c759e9a243eb2bf12f50793c3f3b5a0cec1faf43a46cec2386c`  
		Last Modified: Thu, 06 Aug 2026 19:53:22 GMT  
		Size: 41.6 MB (41594114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d7e1938fd117a0ae3e00263ce44c82a48c8ed824a2fa88c04dc9b1028c7879d`  
		Last Modified: Thu, 06 Aug 2026 19:53:09 GMT  
		Size: 1.6 MB (1564445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448556e1a3c2060b198fbfc1fc33fc6913bb2cbe18664a45b77bc5dd9a980d2a`  
		Last Modified: Thu, 06 Aug 2026 19:59:45 GMT  
		Size: 181.3 MB (181265165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:143a26068f2aa07420c65d65931bad6cf779a52189d46fb2da2c413934fd3e79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fa6071701001b713e8b9cc4fd7b0d7cbdfdf5499f5aa65563f31dacd81635d4`

```dockerfile
```

-	Layers:
	-	`sha256:a08c725fa5b026ed450285a24bc8ce1b322afbb9b73cb6d81d5401cbf20b278a`  
		Last Modified: Thu, 06 Aug 2026 19:59:18 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:beta-sdk`

```console
$ docker pull dart@sha256:1446a46f3cfd3c6882ee11634e53b108a8b598be59aa223e62a0456a1a23c353
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
$ docker pull dart@sha256:cd77d42f6e676246d26d4d8ad7a03d9e35177d12f3db5c6fd254113718b81279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.2 MB (435150126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb719455f28a7e5a42245082de5f05ff01f1cd2e43ed05339b80501b904127a8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:40 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:40 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:40 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:40 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:40 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=19ca9b7d5ac0276f94997c554b4602e38bb24ab0e2fc0163d04fe8e15d347f44;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5f1d8170894ef98fd1f7675531bda768ba4b5d4cc429ffefdd2bdee361cf90d7;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4cc6d71c1bada7718e67f4d47107cd2b44c7ed5ced997499bc0494344e15b926;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=6d2cfc00ac45a7df49f8977a2ebdb88ce7ebc75957e577bd525f739b9a49b49e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5921a72263cb7f17d91fa3cfd15aa70a6b37426e4ef089862cedf410c289219`  
		Last Modified: Wed, 12 Aug 2026 17:27:36 GMT  
		Size: 42.5 MB (42523639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbdfbe13ef8e555dbb144605ec9ec596292bcee3ccc0368fc4b0e95824af1954`  
		Last Modified: Wed, 12 Aug 2026 17:27:34 GMT  
		Size: 1.9 MB (1869788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b643ed4a67112ac7f46a029f797160fcb9884e7fdfbf3fa67f7320719491ce`  
		Last Modified: Wed, 12 Aug 2026 17:27:41 GMT  
		Size: 361.0 MB (360975902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:5934f365de6770feb2240e27127a4e0194f17dc0f6ea3cd30d7057c4b2772e67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb890461904074878aba555d9ec62e17f12a04877735b1dc270f0acddfcc1781`

```dockerfile
```

-	Layers:
	-	`sha256:ed39aba97aa1c0c046ec8bbbf41e64edba70c66a23ef56f93d9096fdcfb6a4c8`  
		Last Modified: Wed, 12 Aug 2026 17:27:34 GMT  
		Size: 18.9 KB (18918 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:a4f6718813250b0d6ca82065037dcac4ae569c5eef1080d5d06ee2b58b3f495c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254886352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3893fc7935c0951d9af4606820c8c32b34e9aa31500e4ab54238053d04e016b6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:11 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:11 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:11 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:11 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:11 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:21 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=19ca9b7d5ac0276f94997c554b4602e38bb24ab0e2fc0163d04fe8e15d347f44;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5f1d8170894ef98fd1f7675531bda768ba4b5d4cc429ffefdd2bdee361cf90d7;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4cc6d71c1bada7718e67f4d47107cd2b44c7ed5ced997499bc0494344e15b926;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=6d2cfc00ac45a7df49f8977a2ebdb88ce7ebc75957e577bd525f739b9a49b49e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30e8567e23203b335a7713ddbe2820db846424543776fdcd3ab73c29bca71eb`  
		Last Modified: Wed, 12 Aug 2026 17:26:49 GMT  
		Size: 37.5 MB (37513709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d39a9c2b13adb13cae07cac5ea4eaae2a1f80d750e35eda7317610e5b93cb8db`  
		Last Modified: Wed, 12 Aug 2026 17:26:47 GMT  
		Size: 1.3 MB (1273152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8eb2af7185654f468259fc61ef74bc3769f4552b54a1746f17471e2cde7d5b4`  
		Last Modified: Wed, 12 Aug 2026 17:26:52 GMT  
		Size: 189.9 MB (189893087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:5f5435c44b11307a00fdc12a9645e05cd9c08ef064307ff0f0f3fc545a65719b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:470810ea2d21030c9d6477ca25480d630f45a9a590c474c93434e2bdea24ac2c`

```dockerfile
```

-	Layers:
	-	`sha256:dabdfdc275d4ad20788a99c28f2d4ab6549e9ecd7cafa26e342caec82b76a4a9`  
		Last Modified: Wed, 12 Aug 2026 17:26:47 GMT  
		Size: 19.0 KB (19023 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:745247c66e78c06ae75bf9176198521c3939dbf918a1d9be5d4373ba3ad951c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.2 MB (432153800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b38b24e982beecbf291aeeb5f0af050437f9077fc307fea2d79373cd436d0f7a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:33:54 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:33:55 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:33:55 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:35:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=19ca9b7d5ac0276f94997c554b4602e38bb24ab0e2fc0163d04fe8e15d347f44;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5f1d8170894ef98fd1f7675531bda768ba4b5d4cc429ffefdd2bdee361cf90d7;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4cc6d71c1bada7718e67f4d47107cd2b44c7ed5ced997499bc0494344e15b926;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=6d2cfc00ac45a7df49f8977a2ebdb88ce7ebc75957e577bd525f739b9a49b49e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2507d2692dadf5be8a99905ab2e63b9569eeed948180647b6957afc098a826`  
		Last Modified: Wed, 12 Aug 2026 17:34:38 GMT  
		Size: 42.3 MB (42310155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9044d926f2e01701890eb755121f3770d19af847a6590c2e678a0febb35852`  
		Last Modified: Wed, 12 Aug 2026 17:34:36 GMT  
		Size: 1.6 MB (1564385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:014bdaa547bc5d4091602fc4cf7a188c25d4db2c32c872372fe4ff93b7283f1f`  
		Last Modified: Wed, 12 Aug 2026 17:35:55 GMT  
		Size: 358.1 MB (358135619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:46643672b9ac284d5726231c82f29ef4028cf3594bfb9b9ac8560fd5fedf246f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b69bbbf8ddf93b64bac41e3f187ccd20709b5a9a71b2796b525710433399be6`

```dockerfile
```

-	Layers:
	-	`sha256:754c706ed45d7ee492989d2e493246a2ae5985c120caf44233d47e7f4310e606`  
		Last Modified: Wed, 12 Aug 2026 17:35:48 GMT  
		Size: 19.1 KB (19052 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:45dc6294984b9790f34dd3c7128b539d9a180152326316d8e913a13b2db51c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252701874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82f25b6d43d67147bd722b323b480280b5fd008c5d2706b817e21fba587cda17`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Thu, 06 Aug 2026 19:48:08 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 06 Aug 2026 19:48:10 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 06 Aug 2026 19:48:10 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 06 Aug 2026 19:48:10 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Aug 2026 19:48:10 GMT
WORKDIR /root
# Thu, 06 Aug 2026 19:55:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ae426a461fde77e78e4a2fed380c694a88500a720465d45c6720c1051d443397;             SDK_ARCH="x64";;         armhf)             DART_SHA256=273dd080170b6a86474908117583e58e4dde2850d4784a021ca51b34c12696b4;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d4658eaae87b582899f6802a5d6a4ffa5ec510971a22f51c5bb3547b3030adfe;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=640103641c219c0075f8a19a58b39caac4da6ef21d5fe27fbd010993de4bca8f;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.4.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc43f4f08994c759e9a243eb2bf12f50793c3f3b5a0cec1faf43a46cec2386c`  
		Last Modified: Thu, 06 Aug 2026 19:53:22 GMT  
		Size: 41.6 MB (41594114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d7e1938fd117a0ae3e00263ce44c82a48c8ed824a2fa88c04dc9b1028c7879d`  
		Last Modified: Thu, 06 Aug 2026 19:53:09 GMT  
		Size: 1.6 MB (1564445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448556e1a3c2060b198fbfc1fc33fc6913bb2cbe18664a45b77bc5dd9a980d2a`  
		Last Modified: Thu, 06 Aug 2026 19:59:45 GMT  
		Size: 181.3 MB (181265165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:143a26068f2aa07420c65d65931bad6cf779a52189d46fb2da2c413934fd3e79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fa6071701001b713e8b9cc4fd7b0d7cbdfdf5499f5aa65563f31dacd81635d4`

```dockerfile
```

-	Layers:
	-	`sha256:a08c725fa5b026ed450285a24bc8ce1b322afbb9b73cb6d81d5401cbf20b278a`  
		Last Modified: Thu, 06 Aug 2026 19:59:18 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:latest`

```console
$ docker pull dart@sha256:10d0c5a6bc35abde6ac2beaf2e5cadfd4e54ff52cbe9f7cd5cd37fc3d68e34c3
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
$ docker pull dart@sha256:e76b27eb060d2b0767f04ca696e6e8c1ef949131f306c74706444724599c930e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316552345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daf7a20fa172af29b373f8fae0a01be57ebde9eaf1be39acd340308f761a37cf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:38 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:48 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73dcb6323f12a0b48fed2e432820b03e25d9bf8f5509438cdf7d45cb5b62c4b8`  
		Last Modified: Wed, 12 Aug 2026 17:27:21 GMT  
		Size: 42.5 MB (42523653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeae3b9f6b39a22961d631218c9b497347e927e88c57954336752f27de90b908`  
		Last Modified: Wed, 12 Aug 2026 17:27:19 GMT  
		Size: 1.9 MB (1869784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b816517b2389e8a9b0a835d06a01f2903130e2b91cf366baa0cc3bfb929b1f8`  
		Last Modified: Wed, 12 Aug 2026 17:27:24 GMT  
		Size: 242.4 MB (242378111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:6ba19c394fdf6f62c1d92c2a4e50e5c85926c2074e2e610dfc7a79b8edc46cfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21724829cc4872a6bfe8aa133aa49f6ac3b318eb2a34c4bed5cce74d7f131acb`

```dockerfile
```

-	Layers:
	-	`sha256:6f776b3cd20c25af3a9046baf90e2bb9c758608c1c9c4b278750a3cc52033f1e`  
		Last Modified: Wed, 12 Aug 2026 17:27:19 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; arm variant v7

```console
$ docker pull dart@sha256:40a527930b7ad93f134972b5c351e0688a189fe4c7989e69400bb52a039fa3f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230472627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302dc4c9be3f3a2a9389721fcaec8f030b49bac7557f41a30b7051e0ed60cc84`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:22 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:23 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:23 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:23 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:23 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:31 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a36a443f8197cdc938f39b607b69394c734df8188f78c21ffd01a55974a454d`  
		Last Modified: Wed, 12 Aug 2026 17:26:55 GMT  
		Size: 37.5 MB (37513732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5389c8deb7272b0b792c5de7d78236bbed9e2f0192c6ed07c05151b754db39ab`  
		Last Modified: Wed, 12 Aug 2026 17:26:53 GMT  
		Size: 1.3 MB (1273149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9149394bb83d004aa21f6181f20a10a6ab5cf1b63759218fb6b3d39ff221dd`  
		Last Modified: Wed, 12 Aug 2026 17:26:57 GMT  
		Size: 165.5 MB (165479342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:825354d1af5edd4ca8d9eca78097903dfd6cd4478414d27d3fcf7ad15daca443
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:908da6caf4643ec4021d92401039333d4c95a8f3d9a3197de9a356256407e544`

```dockerfile
```

-	Layers:
	-	`sha256:bd830c6dcbc7602c2c9c9157f233aab779f0102993c509b4be619a5dc6ac9943`  
		Last Modified: Wed, 12 Aug 2026 17:26:53 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:17e958524c285c2fba342aa8c153120021da167625f23cebe07c75d5e90e2832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315229450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8fc78d38e039209a01f27c1801bc9107f7e846c6039f34a70a132f427ddcae1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:33:54 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:33:55 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:33:55 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:34:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2507d2692dadf5be8a99905ab2e63b9569eeed948180647b6957afc098a826`  
		Last Modified: Wed, 12 Aug 2026 17:34:38 GMT  
		Size: 42.3 MB (42310155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9044d926f2e01701890eb755121f3770d19af847a6590c2e678a0febb35852`  
		Last Modified: Wed, 12 Aug 2026 17:34:36 GMT  
		Size: 1.6 MB (1564385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:663ea7482cb4a1365ec25347cce9ac3a5fa59d6be18cbf0c86c0171fb85e876e`  
		Last Modified: Wed, 12 Aug 2026 17:34:42 GMT  
		Size: 241.2 MB (241211269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:1f59fb75aff6b4bb5cedc990161ab809ff6e625e2867b89420ce1ca267c941ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323d90d8cdcca5745fa946544f913f06a04e095f90b0a4c207cc3b28295686d9`

```dockerfile
```

-	Layers:
	-	`sha256:86f35254867ea10cad29ecbce0330f8be2d65028fc5c9d559582a130b67a50b0`  
		Last Modified: Wed, 12 Aug 2026 17:34:36 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; riscv64

```console
$ docker pull dart@sha256:91b0c2fa21678b450f7dfd5525f02aa3a5d54782b08b9b8511914ed5fba26b76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248349574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79eb0bfd93dc70b0fb544ee098488c3887c7e978b778d4e716556cbe0c14becb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Thu, 06 Aug 2026 19:48:08 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 06 Aug 2026 19:48:10 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 06 Aug 2026 19:48:10 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 06 Aug 2026 19:48:10 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Aug 2026 19:48:10 GMT
WORKDIR /root
# Thu, 06 Aug 2026 19:48:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc43f4f08994c759e9a243eb2bf12f50793c3f3b5a0cec1faf43a46cec2386c`  
		Last Modified: Thu, 06 Aug 2026 19:53:22 GMT  
		Size: 41.6 MB (41594114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d7e1938fd117a0ae3e00263ce44c82a48c8ed824a2fa88c04dc9b1028c7879d`  
		Last Modified: Thu, 06 Aug 2026 19:53:09 GMT  
		Size: 1.6 MB (1564445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a6a73062d38045f3cd50821fbc46f5074e132288867bb0554af4288232ea447`  
		Last Modified: Thu, 06 Aug 2026 19:53:42 GMT  
		Size: 176.9 MB (176912865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:37b122278675777148655a366f9eca8a21b70c75e5c4f98539321c8c4b61c109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:660cc55dcdb38239179f7371caec01d4c1c6bb0a544b08c8d3bc40c3eb20deb3`

```dockerfile
```

-	Layers:
	-	`sha256:b0c8cd0c1589290938ba6fe0478ee92712ff0030535614d282a5989f5a93bdf3`  
		Last Modified: Thu, 06 Aug 2026 19:53:09 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:sdk`

```console
$ docker pull dart@sha256:10d0c5a6bc35abde6ac2beaf2e5cadfd4e54ff52cbe9f7cd5cd37fc3d68e34c3
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
$ docker pull dart@sha256:e76b27eb060d2b0767f04ca696e6e8c1ef949131f306c74706444724599c930e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316552345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daf7a20fa172af29b373f8fae0a01be57ebde9eaf1be39acd340308f761a37cf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:38 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:48 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73dcb6323f12a0b48fed2e432820b03e25d9bf8f5509438cdf7d45cb5b62c4b8`  
		Last Modified: Wed, 12 Aug 2026 17:27:21 GMT  
		Size: 42.5 MB (42523653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeae3b9f6b39a22961d631218c9b497347e927e88c57954336752f27de90b908`  
		Last Modified: Wed, 12 Aug 2026 17:27:19 GMT  
		Size: 1.9 MB (1869784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b816517b2389e8a9b0a835d06a01f2903130e2b91cf366baa0cc3bfb929b1f8`  
		Last Modified: Wed, 12 Aug 2026 17:27:24 GMT  
		Size: 242.4 MB (242378111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:6ba19c394fdf6f62c1d92c2a4e50e5c85926c2074e2e610dfc7a79b8edc46cfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21724829cc4872a6bfe8aa133aa49f6ac3b318eb2a34c4bed5cce74d7f131acb`

```dockerfile
```

-	Layers:
	-	`sha256:6f776b3cd20c25af3a9046baf90e2bb9c758608c1c9c4b278750a3cc52033f1e`  
		Last Modified: Wed, 12 Aug 2026 17:27:19 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:40a527930b7ad93f134972b5c351e0688a189fe4c7989e69400bb52a039fa3f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230472627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302dc4c9be3f3a2a9389721fcaec8f030b49bac7557f41a30b7051e0ed60cc84`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:22 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:23 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:23 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:23 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:23 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:31 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a36a443f8197cdc938f39b607b69394c734df8188f78c21ffd01a55974a454d`  
		Last Modified: Wed, 12 Aug 2026 17:26:55 GMT  
		Size: 37.5 MB (37513732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5389c8deb7272b0b792c5de7d78236bbed9e2f0192c6ed07c05151b754db39ab`  
		Last Modified: Wed, 12 Aug 2026 17:26:53 GMT  
		Size: 1.3 MB (1273149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9149394bb83d004aa21f6181f20a10a6ab5cf1b63759218fb6b3d39ff221dd`  
		Last Modified: Wed, 12 Aug 2026 17:26:57 GMT  
		Size: 165.5 MB (165479342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:825354d1af5edd4ca8d9eca78097903dfd6cd4478414d27d3fcf7ad15daca443
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:908da6caf4643ec4021d92401039333d4c95a8f3d9a3197de9a356256407e544`

```dockerfile
```

-	Layers:
	-	`sha256:bd830c6dcbc7602c2c9c9157f233aab779f0102993c509b4be619a5dc6ac9943`  
		Last Modified: Wed, 12 Aug 2026 17:26:53 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:17e958524c285c2fba342aa8c153120021da167625f23cebe07c75d5e90e2832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315229450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8fc78d38e039209a01f27c1801bc9107f7e846c6039f34a70a132f427ddcae1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:33:54 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:33:55 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:33:55 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:34:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2507d2692dadf5be8a99905ab2e63b9569eeed948180647b6957afc098a826`  
		Last Modified: Wed, 12 Aug 2026 17:34:38 GMT  
		Size: 42.3 MB (42310155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9044d926f2e01701890eb755121f3770d19af847a6590c2e678a0febb35852`  
		Last Modified: Wed, 12 Aug 2026 17:34:36 GMT  
		Size: 1.6 MB (1564385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:663ea7482cb4a1365ec25347cce9ac3a5fa59d6be18cbf0c86c0171fb85e876e`  
		Last Modified: Wed, 12 Aug 2026 17:34:42 GMT  
		Size: 241.2 MB (241211269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:1f59fb75aff6b4bb5cedc990161ab809ff6e625e2867b89420ce1ca267c941ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323d90d8cdcca5745fa946544f913f06a04e095f90b0a4c207cc3b28295686d9`

```dockerfile
```

-	Layers:
	-	`sha256:86f35254867ea10cad29ecbce0330f8be2d65028fc5c9d559582a130b67a50b0`  
		Last Modified: Wed, 12 Aug 2026 17:34:36 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; riscv64

```console
$ docker pull dart@sha256:91b0c2fa21678b450f7dfd5525f02aa3a5d54782b08b9b8511914ed5fba26b76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248349574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79eb0bfd93dc70b0fb544ee098488c3887c7e978b778d4e716556cbe0c14becb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Thu, 06 Aug 2026 19:48:08 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 06 Aug 2026 19:48:10 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 06 Aug 2026 19:48:10 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 06 Aug 2026 19:48:10 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Aug 2026 19:48:10 GMT
WORKDIR /root
# Thu, 06 Aug 2026 19:48:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc43f4f08994c759e9a243eb2bf12f50793c3f3b5a0cec1faf43a46cec2386c`  
		Last Modified: Thu, 06 Aug 2026 19:53:22 GMT  
		Size: 41.6 MB (41594114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d7e1938fd117a0ae3e00263ce44c82a48c8ed824a2fa88c04dc9b1028c7879d`  
		Last Modified: Thu, 06 Aug 2026 19:53:09 GMT  
		Size: 1.6 MB (1564445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a6a73062d38045f3cd50821fbc46f5074e132288867bb0554af4288232ea447`  
		Last Modified: Thu, 06 Aug 2026 19:53:42 GMT  
		Size: 176.9 MB (176912865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:37b122278675777148655a366f9eca8a21b70c75e5c4f98539321c8c4b61c109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:660cc55dcdb38239179f7371caec01d4c1c6bb0a544b08c8d3bc40c3eb20deb3`

```dockerfile
```

-	Layers:
	-	`sha256:b0c8cd0c1589290938ba6fe0478ee92712ff0030535614d282a5989f5a93bdf3`  
		Last Modified: Thu, 06 Aug 2026 19:53:09 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:stable`

```console
$ docker pull dart@sha256:10d0c5a6bc35abde6ac2beaf2e5cadfd4e54ff52cbe9f7cd5cd37fc3d68e34c3
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
$ docker pull dart@sha256:e76b27eb060d2b0767f04ca696e6e8c1ef949131f306c74706444724599c930e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316552345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daf7a20fa172af29b373f8fae0a01be57ebde9eaf1be39acd340308f761a37cf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:38 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:48 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73dcb6323f12a0b48fed2e432820b03e25d9bf8f5509438cdf7d45cb5b62c4b8`  
		Last Modified: Wed, 12 Aug 2026 17:27:21 GMT  
		Size: 42.5 MB (42523653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeae3b9f6b39a22961d631218c9b497347e927e88c57954336752f27de90b908`  
		Last Modified: Wed, 12 Aug 2026 17:27:19 GMT  
		Size: 1.9 MB (1869784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b816517b2389e8a9b0a835d06a01f2903130e2b91cf366baa0cc3bfb929b1f8`  
		Last Modified: Wed, 12 Aug 2026 17:27:24 GMT  
		Size: 242.4 MB (242378111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:6ba19c394fdf6f62c1d92c2a4e50e5c85926c2074e2e610dfc7a79b8edc46cfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21724829cc4872a6bfe8aa133aa49f6ac3b318eb2a34c4bed5cce74d7f131acb`

```dockerfile
```

-	Layers:
	-	`sha256:6f776b3cd20c25af3a9046baf90e2bb9c758608c1c9c4b278750a3cc52033f1e`  
		Last Modified: Wed, 12 Aug 2026 17:27:19 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; arm variant v7

```console
$ docker pull dart@sha256:40a527930b7ad93f134972b5c351e0688a189fe4c7989e69400bb52a039fa3f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230472627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302dc4c9be3f3a2a9389721fcaec8f030b49bac7557f41a30b7051e0ed60cc84`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:22 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:23 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:23 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:23 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:23 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:31 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a36a443f8197cdc938f39b607b69394c734df8188f78c21ffd01a55974a454d`  
		Last Modified: Wed, 12 Aug 2026 17:26:55 GMT  
		Size: 37.5 MB (37513732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5389c8deb7272b0b792c5de7d78236bbed9e2f0192c6ed07c05151b754db39ab`  
		Last Modified: Wed, 12 Aug 2026 17:26:53 GMT  
		Size: 1.3 MB (1273149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9149394bb83d004aa21f6181f20a10a6ab5cf1b63759218fb6b3d39ff221dd`  
		Last Modified: Wed, 12 Aug 2026 17:26:57 GMT  
		Size: 165.5 MB (165479342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:825354d1af5edd4ca8d9eca78097903dfd6cd4478414d27d3fcf7ad15daca443
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:908da6caf4643ec4021d92401039333d4c95a8f3d9a3197de9a356256407e544`

```dockerfile
```

-	Layers:
	-	`sha256:bd830c6dcbc7602c2c9c9157f233aab779f0102993c509b4be619a5dc6ac9943`  
		Last Modified: Wed, 12 Aug 2026 17:26:53 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:17e958524c285c2fba342aa8c153120021da167625f23cebe07c75d5e90e2832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315229450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8fc78d38e039209a01f27c1801bc9107f7e846c6039f34a70a132f427ddcae1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:33:54 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:33:55 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:33:55 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:34:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2507d2692dadf5be8a99905ab2e63b9569eeed948180647b6957afc098a826`  
		Last Modified: Wed, 12 Aug 2026 17:34:38 GMT  
		Size: 42.3 MB (42310155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9044d926f2e01701890eb755121f3770d19af847a6590c2e678a0febb35852`  
		Last Modified: Wed, 12 Aug 2026 17:34:36 GMT  
		Size: 1.6 MB (1564385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:663ea7482cb4a1365ec25347cce9ac3a5fa59d6be18cbf0c86c0171fb85e876e`  
		Last Modified: Wed, 12 Aug 2026 17:34:42 GMT  
		Size: 241.2 MB (241211269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:1f59fb75aff6b4bb5cedc990161ab809ff6e625e2867b89420ce1ca267c941ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323d90d8cdcca5745fa946544f913f06a04e095f90b0a4c207cc3b28295686d9`

```dockerfile
```

-	Layers:
	-	`sha256:86f35254867ea10cad29ecbce0330f8be2d65028fc5c9d559582a130b67a50b0`  
		Last Modified: Wed, 12 Aug 2026 17:34:36 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; riscv64

```console
$ docker pull dart@sha256:91b0c2fa21678b450f7dfd5525f02aa3a5d54782b08b9b8511914ed5fba26b76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248349574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79eb0bfd93dc70b0fb544ee098488c3887c7e978b778d4e716556cbe0c14becb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Thu, 06 Aug 2026 19:48:08 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 06 Aug 2026 19:48:10 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 06 Aug 2026 19:48:10 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 06 Aug 2026 19:48:10 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Aug 2026 19:48:10 GMT
WORKDIR /root
# Thu, 06 Aug 2026 19:48:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc43f4f08994c759e9a243eb2bf12f50793c3f3b5a0cec1faf43a46cec2386c`  
		Last Modified: Thu, 06 Aug 2026 19:53:22 GMT  
		Size: 41.6 MB (41594114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d7e1938fd117a0ae3e00263ce44c82a48c8ed824a2fa88c04dc9b1028c7879d`  
		Last Modified: Thu, 06 Aug 2026 19:53:09 GMT  
		Size: 1.6 MB (1564445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a6a73062d38045f3cd50821fbc46f5074e132288867bb0554af4288232ea447`  
		Last Modified: Thu, 06 Aug 2026 19:53:42 GMT  
		Size: 176.9 MB (176912865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:37b122278675777148655a366f9eca8a21b70c75e5c4f98539321c8c4b61c109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:660cc55dcdb38239179f7371caec01d4c1c6bb0a544b08c8d3bc40c3eb20deb3`

```dockerfile
```

-	Layers:
	-	`sha256:b0c8cd0c1589290938ba6fe0478ee92712ff0030535614d282a5989f5a93bdf3`  
		Last Modified: Thu, 06 Aug 2026 19:53:09 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:stable-sdk`

```console
$ docker pull dart@sha256:10d0c5a6bc35abde6ac2beaf2e5cadfd4e54ff52cbe9f7cd5cd37fc3d68e34c3
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
$ docker pull dart@sha256:e76b27eb060d2b0767f04ca696e6e8c1ef949131f306c74706444724599c930e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316552345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daf7a20fa172af29b373f8fae0a01be57ebde9eaf1be39acd340308f761a37cf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:38 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:48 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73dcb6323f12a0b48fed2e432820b03e25d9bf8f5509438cdf7d45cb5b62c4b8`  
		Last Modified: Wed, 12 Aug 2026 17:27:21 GMT  
		Size: 42.5 MB (42523653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeae3b9f6b39a22961d631218c9b497347e927e88c57954336752f27de90b908`  
		Last Modified: Wed, 12 Aug 2026 17:27:19 GMT  
		Size: 1.9 MB (1869784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b816517b2389e8a9b0a835d06a01f2903130e2b91cf366baa0cc3bfb929b1f8`  
		Last Modified: Wed, 12 Aug 2026 17:27:24 GMT  
		Size: 242.4 MB (242378111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:6ba19c394fdf6f62c1d92c2a4e50e5c85926c2074e2e610dfc7a79b8edc46cfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21724829cc4872a6bfe8aa133aa49f6ac3b318eb2a34c4bed5cce74d7f131acb`

```dockerfile
```

-	Layers:
	-	`sha256:6f776b3cd20c25af3a9046baf90e2bb9c758608c1c9c4b278750a3cc52033f1e`  
		Last Modified: Wed, 12 Aug 2026 17:27:19 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:40a527930b7ad93f134972b5c351e0688a189fe4c7989e69400bb52a039fa3f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230472627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302dc4c9be3f3a2a9389721fcaec8f030b49bac7557f41a30b7051e0ed60cc84`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:22 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:23 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:23 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:23 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:23 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:31 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a36a443f8197cdc938f39b607b69394c734df8188f78c21ffd01a55974a454d`  
		Last Modified: Wed, 12 Aug 2026 17:26:55 GMT  
		Size: 37.5 MB (37513732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5389c8deb7272b0b792c5de7d78236bbed9e2f0192c6ed07c05151b754db39ab`  
		Last Modified: Wed, 12 Aug 2026 17:26:53 GMT  
		Size: 1.3 MB (1273149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9149394bb83d004aa21f6181f20a10a6ab5cf1b63759218fb6b3d39ff221dd`  
		Last Modified: Wed, 12 Aug 2026 17:26:57 GMT  
		Size: 165.5 MB (165479342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:825354d1af5edd4ca8d9eca78097903dfd6cd4478414d27d3fcf7ad15daca443
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:908da6caf4643ec4021d92401039333d4c95a8f3d9a3197de9a356256407e544`

```dockerfile
```

-	Layers:
	-	`sha256:bd830c6dcbc7602c2c9c9157f233aab779f0102993c509b4be619a5dc6ac9943`  
		Last Modified: Wed, 12 Aug 2026 17:26:53 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:17e958524c285c2fba342aa8c153120021da167625f23cebe07c75d5e90e2832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315229450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8fc78d38e039209a01f27c1801bc9107f7e846c6039f34a70a132f427ddcae1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:33:54 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:33:55 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:33:55 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:34:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=87902573facd8acacac7ee1fe73fa8d0668e06065016068e2ed6c5c99c6b1ee0;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d75787da6fcba9362ddcf0643443b04962e280ab09dc48b05ab49e6538e013ee;             SDK_ARCH="arm";;         arm64)             DART_SHA256=20141a0653327939bb20c4b87b231226beba1128d8a9aedbb30cb5af1a2790d4;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=566bea687095b17bfd5bcf987609d601a5be4c7b8371cf39d4effa733c7b5851;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2507d2692dadf5be8a99905ab2e63b9569eeed948180647b6957afc098a826`  
		Last Modified: Wed, 12 Aug 2026 17:34:38 GMT  
		Size: 42.3 MB (42310155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9044d926f2e01701890eb755121f3770d19af847a6590c2e678a0febb35852`  
		Last Modified: Wed, 12 Aug 2026 17:34:36 GMT  
		Size: 1.6 MB (1564385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:663ea7482cb4a1365ec25347cce9ac3a5fa59d6be18cbf0c86c0171fb85e876e`  
		Last Modified: Wed, 12 Aug 2026 17:34:42 GMT  
		Size: 241.2 MB (241211269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:1f59fb75aff6b4bb5cedc990161ab809ff6e625e2867b89420ce1ca267c941ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323d90d8cdcca5745fa946544f913f06a04e095f90b0a4c207cc3b28295686d9`

```dockerfile
```

-	Layers:
	-	`sha256:86f35254867ea10cad29ecbce0330f8be2d65028fc5c9d559582a130b67a50b0`  
		Last Modified: Wed, 12 Aug 2026 17:34:36 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:91b0c2fa21678b450f7dfd5525f02aa3a5d54782b08b9b8511914ed5fba26b76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248349574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79eb0bfd93dc70b0fb544ee098488c3887c7e978b778d4e716556cbe0c14becb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Thu, 06 Aug 2026 19:48:08 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 06 Aug 2026 19:48:10 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 06 Aug 2026 19:48:10 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 06 Aug 2026 19:48:10 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Aug 2026 19:48:10 GMT
WORKDIR /root
# Thu, 06 Aug 2026 19:48:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc43f4f08994c759e9a243eb2bf12f50793c3f3b5a0cec1faf43a46cec2386c`  
		Last Modified: Thu, 06 Aug 2026 19:53:22 GMT  
		Size: 41.6 MB (41594114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d7e1938fd117a0ae3e00263ce44c82a48c8ed824a2fa88c04dc9b1028c7879d`  
		Last Modified: Thu, 06 Aug 2026 19:53:09 GMT  
		Size: 1.6 MB (1564445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a6a73062d38045f3cd50821fbc46f5074e132288867bb0554af4288232ea447`  
		Last Modified: Thu, 06 Aug 2026 19:53:42 GMT  
		Size: 176.9 MB (176912865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:37b122278675777148655a366f9eca8a21b70c75e5c4f98539321c8c4b61c109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:660cc55dcdb38239179f7371caec01d4c1c6bb0a544b08c8d3bc40c3eb20deb3`

```dockerfile
```

-	Layers:
	-	`sha256:b0c8cd0c1589290938ba6fe0478ee92712ff0030535614d282a5989f5a93bdf3`  
		Last Modified: Thu, 06 Aug 2026 19:53:09 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json
