<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `dart`

-	[`dart:3`](#dart3)
-	[`dart:3-sdk`](#dart3-sdk)
-	[`dart:3.13`](#dart313)
-	[`dart:3.13-sdk`](#dart313-sdk)
-	[`dart:3.13.6`](#dart3136)
-	[`dart:3.13.6-sdk`](#dart3136-sdk)
-	[`dart:3.14.0-315.2.beta`](#dart3140-3152beta)
-	[`dart:3.14.0-315.2.beta-sdk`](#dart3140-3152beta-sdk)
-	[`dart:beta`](#dartbeta)
-	[`dart:beta-sdk`](#dartbeta-sdk)
-	[`dart:latest`](#dartlatest)
-	[`dart:sdk`](#dartsdk)
-	[`dart:stable`](#dartstable)
-	[`dart:stable-sdk`](#dartstable-sdk)

## `dart:3`

```console
$ docker pull dart@sha256:8dafcab3a8e474b49a2591b1db3b9d5d3915f1f36a396ec68d7726923ceb114f
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
$ docker pull dart@sha256:e3e430f1141efb1e4986986a734ecea7c19f2aed5047c246ff0246a330aea4c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316623112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a56ce91c76ef414157b4200a2c49b88e4f1adbf045dadf36f0ee82320676a13`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:46:46 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:46:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:46:46 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:46:46 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:46:46 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:46:56 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8206c70183f56da7140b02c25630b9bb7d5373e0e2205e3de39bf0284057baf0`  
		Last Modified: Tue, 20 Oct 2026 17:47:25 GMT  
		Size: 42.5 MB (42532005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750a555f858e43419943e5933558e54998cf005bb9ea818b07970227bdce9a7a`  
		Last Modified: Tue, 20 Oct 2026 17:47:23 GMT  
		Size: 1.9 MB (1869668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5bbae304844934c93ad2d5f45d43b85dad65cfba8ef073e198efc4464f4ecbe`  
		Last Modified: Tue, 20 Oct 2026 17:47:29 GMT  
		Size: 242.4 MB (242378057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:8fe0aa797c502b2b147b2bb3817388458772b1c3548196aa56056289cb767351
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e26db12a750b3b6b3e89bb6e5f369979e89b3fa2f720d0e2b878cc70b3835c06`

```dockerfile
```

-	Layers:
	-	`sha256:83eaece113cadcf1a74c28b196cd29fb243d69cd97968dc7067a1dd28390a9b4`  
		Last Modified: Tue, 20 Oct 2026 17:47:22 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; arm variant v7

```console
$ docker pull dart@sha256:bd1c105746d94a700aff29750e55a45931716af3369314d4b1c0946e47935d8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230534037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15254be7f76beaa365eacaf0ee6d522a06cbc82b43c30ebbdb6cb44700030d3f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:47:04 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:47:04 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:47:04 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:47:04 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:47:04 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:47:12 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402c5a8f8d60b90dc3b14462fe71edf39f1702d3eef18a9bea4ea9e004cc438e`  
		Last Modified: Tue, 20 Oct 2026 17:47:36 GMT  
		Size: 37.5 MB (37531850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5bb561d5d1d636ddbde1f5d91c33224ea4c2d6c2bdd886b5809e16396678232`  
		Last Modified: Tue, 20 Oct 2026 17:47:35 GMT  
		Size: 1.3 MB (1273043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718e3ad6e6871f1f4d8272413ef4d4e4096a369e11c2b53f662cec21888c0114`  
		Last Modified: Tue, 20 Oct 2026 17:47:40 GMT  
		Size: 165.5 MB (165470934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:baa80d06e89d694c95b3e25dcaaea0c9219ebd55c1187bfc141292bed4f9d0e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fa1c7ca4be94efb2adb08f5b9a4f82c8b18c6553ac60089b71ad324914c0980`

```dockerfile
```

-	Layers:
	-	`sha256:94f1a065046b40f4397fa9b4b4b122603b4d4e2f923488f72abab820f79ce7f8`  
		Last Modified: Tue, 20 Oct 2026 17:47:34 GMT  
		Size: 20.8 KB (20769 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee2a13da971e5ff297517a5c407292b52136ef7fbcc1c7b192e885208a752dfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315318668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93bbb4f37f261e8474a84cafe7b4df6e48cff7640ecf7e8426978090abb50ef`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:46:57 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:46:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:46:57 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:46:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:46:57 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:47:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:256baba212573177e68316f791c402c66827c1f5921f7b95d7374e3941eedbd7`  
		Last Modified: Tue, 20 Oct 2026 17:47:42 GMT  
		Size: 42.3 MB (42338414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbdd0037ee2214ba2de54302ef83e434653f552f7a49e1431be6358e6eae700`  
		Last Modified: Tue, 20 Oct 2026 17:47:40 GMT  
		Size: 1.6 MB (1564400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8088b466da17df5dbdaf320611723c82f997909dbf7c02462ecd6bd22ee53058`  
		Last Modified: Tue, 20 Oct 2026 17:48:00 GMT  
		Size: 241.2 MB (241215540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:75166df427646b58f25aafac80085386337fa65d86f9fb279657f6ca2eaa13c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee539d23959980161e8d18843702c156f1a1458d9a24af9142e6f382968070b9`

```dockerfile
```

-	Layers:
	-	`sha256:78b4e2dac12eec1fabd8bf2250ad334803f1f330f782674aa2491ae73348d89f`  
		Last Modified: Tue, 20 Oct 2026 17:47:39 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; riscv64

```console
$ docker pull dart@sha256:e072533a579551e026db3fd7b74b6a3a1a5f9bb23be56f1eb4d9e05896288844
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252772829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36adce5abde40dead005f4d30a8490d673126519495a587848696bd27315e384`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:48:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:48:41 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:48:41 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:48:41 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:48:41 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:49:30 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8cc052fde60a7a6964734c9160d9e5b6bcb90a74766513300e3156590e007f2`  
		Last Modified: Tue, 20 Oct 2026 17:53:57 GMT  
		Size: 41.6 MB (41600589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e82001fd895bcb4d7572df02e77c6a9efc3262773646e35f74fa95566ba3d26`  
		Last Modified: Tue, 20 Oct 2026 17:53:45 GMT  
		Size: 1.6 MB (1563908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283608222c0e75b179e41232471ca01d44619045715fd544a18e488fe0ae1671`  
		Last Modified: Tue, 20 Oct 2026 17:54:17 GMT  
		Size: 181.3 MB (181274537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:ba1ff18fe0977deaa30093ae0af18307aa03eed9d3a43efbe939294390fa248d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb2de183a85d5cac4d1fc87332e0051165551fcc26d6fa76f42975c030b7e16`

```dockerfile
```

-	Layers:
	-	`sha256:2ea8ac65b87a36e4cbf23fc6626af69bb966a83497f6e84c3f57c6eec86390a9`  
		Last Modified: Tue, 20 Oct 2026 17:53:44 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3-sdk`

```console
$ docker pull dart@sha256:8dafcab3a8e474b49a2591b1db3b9d5d3915f1f36a396ec68d7726923ceb114f
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
$ docker pull dart@sha256:e3e430f1141efb1e4986986a734ecea7c19f2aed5047c246ff0246a330aea4c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316623112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a56ce91c76ef414157b4200a2c49b88e4f1adbf045dadf36f0ee82320676a13`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:46:46 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:46:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:46:46 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:46:46 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:46:46 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:46:56 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8206c70183f56da7140b02c25630b9bb7d5373e0e2205e3de39bf0284057baf0`  
		Last Modified: Tue, 20 Oct 2026 17:47:25 GMT  
		Size: 42.5 MB (42532005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750a555f858e43419943e5933558e54998cf005bb9ea818b07970227bdce9a7a`  
		Last Modified: Tue, 20 Oct 2026 17:47:23 GMT  
		Size: 1.9 MB (1869668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5bbae304844934c93ad2d5f45d43b85dad65cfba8ef073e198efc4464f4ecbe`  
		Last Modified: Tue, 20 Oct 2026 17:47:29 GMT  
		Size: 242.4 MB (242378057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:8fe0aa797c502b2b147b2bb3817388458772b1c3548196aa56056289cb767351
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e26db12a750b3b6b3e89bb6e5f369979e89b3fa2f720d0e2b878cc70b3835c06`

```dockerfile
```

-	Layers:
	-	`sha256:83eaece113cadcf1a74c28b196cd29fb243d69cd97968dc7067a1dd28390a9b4`  
		Last Modified: Tue, 20 Oct 2026 17:47:22 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:bd1c105746d94a700aff29750e55a45931716af3369314d4b1c0946e47935d8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230534037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15254be7f76beaa365eacaf0ee6d522a06cbc82b43c30ebbdb6cb44700030d3f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:47:04 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:47:04 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:47:04 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:47:04 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:47:04 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:47:12 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402c5a8f8d60b90dc3b14462fe71edf39f1702d3eef18a9bea4ea9e004cc438e`  
		Last Modified: Tue, 20 Oct 2026 17:47:36 GMT  
		Size: 37.5 MB (37531850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5bb561d5d1d636ddbde1f5d91c33224ea4c2d6c2bdd886b5809e16396678232`  
		Last Modified: Tue, 20 Oct 2026 17:47:35 GMT  
		Size: 1.3 MB (1273043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718e3ad6e6871f1f4d8272413ef4d4e4096a369e11c2b53f662cec21888c0114`  
		Last Modified: Tue, 20 Oct 2026 17:47:40 GMT  
		Size: 165.5 MB (165470934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:baa80d06e89d694c95b3e25dcaaea0c9219ebd55c1187bfc141292bed4f9d0e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fa1c7ca4be94efb2adb08f5b9a4f82c8b18c6553ac60089b71ad324914c0980`

```dockerfile
```

-	Layers:
	-	`sha256:94f1a065046b40f4397fa9b4b4b122603b4d4e2f923488f72abab820f79ce7f8`  
		Last Modified: Tue, 20 Oct 2026 17:47:34 GMT  
		Size: 20.8 KB (20769 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee2a13da971e5ff297517a5c407292b52136ef7fbcc1c7b192e885208a752dfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315318668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93bbb4f37f261e8474a84cafe7b4df6e48cff7640ecf7e8426978090abb50ef`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:46:57 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:46:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:46:57 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:46:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:46:57 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:47:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:256baba212573177e68316f791c402c66827c1f5921f7b95d7374e3941eedbd7`  
		Last Modified: Tue, 20 Oct 2026 17:47:42 GMT  
		Size: 42.3 MB (42338414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbdd0037ee2214ba2de54302ef83e434653f552f7a49e1431be6358e6eae700`  
		Last Modified: Tue, 20 Oct 2026 17:47:40 GMT  
		Size: 1.6 MB (1564400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8088b466da17df5dbdaf320611723c82f997909dbf7c02462ecd6bd22ee53058`  
		Last Modified: Tue, 20 Oct 2026 17:48:00 GMT  
		Size: 241.2 MB (241215540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:75166df427646b58f25aafac80085386337fa65d86f9fb279657f6ca2eaa13c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee539d23959980161e8d18843702c156f1a1458d9a24af9142e6f382968070b9`

```dockerfile
```

-	Layers:
	-	`sha256:78b4e2dac12eec1fabd8bf2250ad334803f1f330f782674aa2491ae73348d89f`  
		Last Modified: Tue, 20 Oct 2026 17:47:39 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:e072533a579551e026db3fd7b74b6a3a1a5f9bb23be56f1eb4d9e05896288844
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252772829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36adce5abde40dead005f4d30a8490d673126519495a587848696bd27315e384`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:48:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:48:41 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:48:41 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:48:41 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:48:41 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:49:30 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8cc052fde60a7a6964734c9160d9e5b6bcb90a74766513300e3156590e007f2`  
		Last Modified: Tue, 20 Oct 2026 17:53:57 GMT  
		Size: 41.6 MB (41600589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e82001fd895bcb4d7572df02e77c6a9efc3262773646e35f74fa95566ba3d26`  
		Last Modified: Tue, 20 Oct 2026 17:53:45 GMT  
		Size: 1.6 MB (1563908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283608222c0e75b179e41232471ca01d44619045715fd544a18e488fe0ae1671`  
		Last Modified: Tue, 20 Oct 2026 17:54:17 GMT  
		Size: 181.3 MB (181274537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:ba1ff18fe0977deaa30093ae0af18307aa03eed9d3a43efbe939294390fa248d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb2de183a85d5cac4d1fc87332e0051165551fcc26d6fa76f42975c030b7e16`

```dockerfile
```

-	Layers:
	-	`sha256:2ea8ac65b87a36e4cbf23fc6626af69bb966a83497f6e84c3f57c6eec86390a9`  
		Last Modified: Tue, 20 Oct 2026 17:53:44 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13`

```console
$ docker pull dart@sha256:8dafcab3a8e474b49a2591b1db3b9d5d3915f1f36a396ec68d7726923ceb114f
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
$ docker pull dart@sha256:e3e430f1141efb1e4986986a734ecea7c19f2aed5047c246ff0246a330aea4c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316623112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a56ce91c76ef414157b4200a2c49b88e4f1adbf045dadf36f0ee82320676a13`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:46:46 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:46:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:46:46 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:46:46 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:46:46 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:46:56 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8206c70183f56da7140b02c25630b9bb7d5373e0e2205e3de39bf0284057baf0`  
		Last Modified: Tue, 20 Oct 2026 17:47:25 GMT  
		Size: 42.5 MB (42532005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750a555f858e43419943e5933558e54998cf005bb9ea818b07970227bdce9a7a`  
		Last Modified: Tue, 20 Oct 2026 17:47:23 GMT  
		Size: 1.9 MB (1869668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5bbae304844934c93ad2d5f45d43b85dad65cfba8ef073e198efc4464f4ecbe`  
		Last Modified: Tue, 20 Oct 2026 17:47:29 GMT  
		Size: 242.4 MB (242378057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:8fe0aa797c502b2b147b2bb3817388458772b1c3548196aa56056289cb767351
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e26db12a750b3b6b3e89bb6e5f369979e89b3fa2f720d0e2b878cc70b3835c06`

```dockerfile
```

-	Layers:
	-	`sha256:83eaece113cadcf1a74c28b196cd29fb243d69cd97968dc7067a1dd28390a9b4`  
		Last Modified: Tue, 20 Oct 2026 17:47:22 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13` - linux; arm variant v7

```console
$ docker pull dart@sha256:bd1c105746d94a700aff29750e55a45931716af3369314d4b1c0946e47935d8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230534037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15254be7f76beaa365eacaf0ee6d522a06cbc82b43c30ebbdb6cb44700030d3f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:47:04 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:47:04 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:47:04 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:47:04 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:47:04 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:47:12 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402c5a8f8d60b90dc3b14462fe71edf39f1702d3eef18a9bea4ea9e004cc438e`  
		Last Modified: Tue, 20 Oct 2026 17:47:36 GMT  
		Size: 37.5 MB (37531850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5bb561d5d1d636ddbde1f5d91c33224ea4c2d6c2bdd886b5809e16396678232`  
		Last Modified: Tue, 20 Oct 2026 17:47:35 GMT  
		Size: 1.3 MB (1273043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718e3ad6e6871f1f4d8272413ef4d4e4096a369e11c2b53f662cec21888c0114`  
		Last Modified: Tue, 20 Oct 2026 17:47:40 GMT  
		Size: 165.5 MB (165470934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:baa80d06e89d694c95b3e25dcaaea0c9219ebd55c1187bfc141292bed4f9d0e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fa1c7ca4be94efb2adb08f5b9a4f82c8b18c6553ac60089b71ad324914c0980`

```dockerfile
```

-	Layers:
	-	`sha256:94f1a065046b40f4397fa9b4b4b122603b4d4e2f923488f72abab820f79ce7f8`  
		Last Modified: Tue, 20 Oct 2026 17:47:34 GMT  
		Size: 20.8 KB (20769 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee2a13da971e5ff297517a5c407292b52136ef7fbcc1c7b192e885208a752dfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315318668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93bbb4f37f261e8474a84cafe7b4df6e48cff7640ecf7e8426978090abb50ef`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:46:57 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:46:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:46:57 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:46:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:46:57 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:47:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:256baba212573177e68316f791c402c66827c1f5921f7b95d7374e3941eedbd7`  
		Last Modified: Tue, 20 Oct 2026 17:47:42 GMT  
		Size: 42.3 MB (42338414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbdd0037ee2214ba2de54302ef83e434653f552f7a49e1431be6358e6eae700`  
		Last Modified: Tue, 20 Oct 2026 17:47:40 GMT  
		Size: 1.6 MB (1564400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8088b466da17df5dbdaf320611723c82f997909dbf7c02462ecd6bd22ee53058`  
		Last Modified: Tue, 20 Oct 2026 17:48:00 GMT  
		Size: 241.2 MB (241215540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:75166df427646b58f25aafac80085386337fa65d86f9fb279657f6ca2eaa13c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee539d23959980161e8d18843702c156f1a1458d9a24af9142e6f382968070b9`

```dockerfile
```

-	Layers:
	-	`sha256:78b4e2dac12eec1fabd8bf2250ad334803f1f330f782674aa2491ae73348d89f`  
		Last Modified: Tue, 20 Oct 2026 17:47:39 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13` - linux; riscv64

```console
$ docker pull dart@sha256:e072533a579551e026db3fd7b74b6a3a1a5f9bb23be56f1eb4d9e05896288844
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252772829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36adce5abde40dead005f4d30a8490d673126519495a587848696bd27315e384`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:48:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:48:41 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:48:41 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:48:41 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:48:41 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:49:30 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8cc052fde60a7a6964734c9160d9e5b6bcb90a74766513300e3156590e007f2`  
		Last Modified: Tue, 20 Oct 2026 17:53:57 GMT  
		Size: 41.6 MB (41600589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e82001fd895bcb4d7572df02e77c6a9efc3262773646e35f74fa95566ba3d26`  
		Last Modified: Tue, 20 Oct 2026 17:53:45 GMT  
		Size: 1.6 MB (1563908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283608222c0e75b179e41232471ca01d44619045715fd544a18e488fe0ae1671`  
		Last Modified: Tue, 20 Oct 2026 17:54:17 GMT  
		Size: 181.3 MB (181274537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:ba1ff18fe0977deaa30093ae0af18307aa03eed9d3a43efbe939294390fa248d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb2de183a85d5cac4d1fc87332e0051165551fcc26d6fa76f42975c030b7e16`

```dockerfile
```

-	Layers:
	-	`sha256:2ea8ac65b87a36e4cbf23fc6626af69bb966a83497f6e84c3f57c6eec86390a9`  
		Last Modified: Tue, 20 Oct 2026 17:53:44 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13-sdk`

```console
$ docker pull dart@sha256:8dafcab3a8e474b49a2591b1db3b9d5d3915f1f36a396ec68d7726923ceb114f
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
$ docker pull dart@sha256:e3e430f1141efb1e4986986a734ecea7c19f2aed5047c246ff0246a330aea4c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316623112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a56ce91c76ef414157b4200a2c49b88e4f1adbf045dadf36f0ee82320676a13`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:46:46 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:46:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:46:46 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:46:46 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:46:46 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:46:56 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8206c70183f56da7140b02c25630b9bb7d5373e0e2205e3de39bf0284057baf0`  
		Last Modified: Tue, 20 Oct 2026 17:47:25 GMT  
		Size: 42.5 MB (42532005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750a555f858e43419943e5933558e54998cf005bb9ea818b07970227bdce9a7a`  
		Last Modified: Tue, 20 Oct 2026 17:47:23 GMT  
		Size: 1.9 MB (1869668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5bbae304844934c93ad2d5f45d43b85dad65cfba8ef073e198efc4464f4ecbe`  
		Last Modified: Tue, 20 Oct 2026 17:47:29 GMT  
		Size: 242.4 MB (242378057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:8fe0aa797c502b2b147b2bb3817388458772b1c3548196aa56056289cb767351
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e26db12a750b3b6b3e89bb6e5f369979e89b3fa2f720d0e2b878cc70b3835c06`

```dockerfile
```

-	Layers:
	-	`sha256:83eaece113cadcf1a74c28b196cd29fb243d69cd97968dc7067a1dd28390a9b4`  
		Last Modified: Tue, 20 Oct 2026 17:47:22 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:bd1c105746d94a700aff29750e55a45931716af3369314d4b1c0946e47935d8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230534037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15254be7f76beaa365eacaf0ee6d522a06cbc82b43c30ebbdb6cb44700030d3f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:47:04 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:47:04 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:47:04 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:47:04 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:47:04 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:47:12 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402c5a8f8d60b90dc3b14462fe71edf39f1702d3eef18a9bea4ea9e004cc438e`  
		Last Modified: Tue, 20 Oct 2026 17:47:36 GMT  
		Size: 37.5 MB (37531850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5bb561d5d1d636ddbde1f5d91c33224ea4c2d6c2bdd886b5809e16396678232`  
		Last Modified: Tue, 20 Oct 2026 17:47:35 GMT  
		Size: 1.3 MB (1273043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718e3ad6e6871f1f4d8272413ef4d4e4096a369e11c2b53f662cec21888c0114`  
		Last Modified: Tue, 20 Oct 2026 17:47:40 GMT  
		Size: 165.5 MB (165470934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:baa80d06e89d694c95b3e25dcaaea0c9219ebd55c1187bfc141292bed4f9d0e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fa1c7ca4be94efb2adb08f5b9a4f82c8b18c6553ac60089b71ad324914c0980`

```dockerfile
```

-	Layers:
	-	`sha256:94f1a065046b40f4397fa9b4b4b122603b4d4e2f923488f72abab820f79ce7f8`  
		Last Modified: Tue, 20 Oct 2026 17:47:34 GMT  
		Size: 20.8 KB (20769 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee2a13da971e5ff297517a5c407292b52136ef7fbcc1c7b192e885208a752dfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315318668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93bbb4f37f261e8474a84cafe7b4df6e48cff7640ecf7e8426978090abb50ef`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:46:57 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:46:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:46:57 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:46:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:46:57 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:47:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:256baba212573177e68316f791c402c66827c1f5921f7b95d7374e3941eedbd7`  
		Last Modified: Tue, 20 Oct 2026 17:47:42 GMT  
		Size: 42.3 MB (42338414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbdd0037ee2214ba2de54302ef83e434653f552f7a49e1431be6358e6eae700`  
		Last Modified: Tue, 20 Oct 2026 17:47:40 GMT  
		Size: 1.6 MB (1564400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8088b466da17df5dbdaf320611723c82f997909dbf7c02462ecd6bd22ee53058`  
		Last Modified: Tue, 20 Oct 2026 17:48:00 GMT  
		Size: 241.2 MB (241215540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:75166df427646b58f25aafac80085386337fa65d86f9fb279657f6ca2eaa13c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee539d23959980161e8d18843702c156f1a1458d9a24af9142e6f382968070b9`

```dockerfile
```

-	Layers:
	-	`sha256:78b4e2dac12eec1fabd8bf2250ad334803f1f330f782674aa2491ae73348d89f`  
		Last Modified: Tue, 20 Oct 2026 17:47:39 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:e072533a579551e026db3fd7b74b6a3a1a5f9bb23be56f1eb4d9e05896288844
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252772829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36adce5abde40dead005f4d30a8490d673126519495a587848696bd27315e384`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:48:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:48:41 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:48:41 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:48:41 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:48:41 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:49:30 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8cc052fde60a7a6964734c9160d9e5b6bcb90a74766513300e3156590e007f2`  
		Last Modified: Tue, 20 Oct 2026 17:53:57 GMT  
		Size: 41.6 MB (41600589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e82001fd895bcb4d7572df02e77c6a9efc3262773646e35f74fa95566ba3d26`  
		Last Modified: Tue, 20 Oct 2026 17:53:45 GMT  
		Size: 1.6 MB (1563908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283608222c0e75b179e41232471ca01d44619045715fd544a18e488fe0ae1671`  
		Last Modified: Tue, 20 Oct 2026 17:54:17 GMT  
		Size: 181.3 MB (181274537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:ba1ff18fe0977deaa30093ae0af18307aa03eed9d3a43efbe939294390fa248d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb2de183a85d5cac4d1fc87332e0051165551fcc26d6fa76f42975c030b7e16`

```dockerfile
```

-	Layers:
	-	`sha256:2ea8ac65b87a36e4cbf23fc6626af69bb966a83497f6e84c3f57c6eec86390a9`  
		Last Modified: Tue, 20 Oct 2026 17:53:44 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13.6`

```console
$ docker pull dart@sha256:8dafcab3a8e474b49a2591b1db3b9d5d3915f1f36a396ec68d7726923ceb114f
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

### `dart:3.13.6` - linux; amd64

```console
$ docker pull dart@sha256:e3e430f1141efb1e4986986a734ecea7c19f2aed5047c246ff0246a330aea4c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316623112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a56ce91c76ef414157b4200a2c49b88e4f1adbf045dadf36f0ee82320676a13`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:46:46 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:46:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:46:46 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:46:46 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:46:46 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:46:56 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8206c70183f56da7140b02c25630b9bb7d5373e0e2205e3de39bf0284057baf0`  
		Last Modified: Tue, 20 Oct 2026 17:47:25 GMT  
		Size: 42.5 MB (42532005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750a555f858e43419943e5933558e54998cf005bb9ea818b07970227bdce9a7a`  
		Last Modified: Tue, 20 Oct 2026 17:47:23 GMT  
		Size: 1.9 MB (1869668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5bbae304844934c93ad2d5f45d43b85dad65cfba8ef073e198efc4464f4ecbe`  
		Last Modified: Tue, 20 Oct 2026 17:47:29 GMT  
		Size: 242.4 MB (242378057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.6` - unknown; unknown

```console
$ docker pull dart@sha256:8fe0aa797c502b2b147b2bb3817388458772b1c3548196aa56056289cb767351
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e26db12a750b3b6b3e89bb6e5f369979e89b3fa2f720d0e2b878cc70b3835c06`

```dockerfile
```

-	Layers:
	-	`sha256:83eaece113cadcf1a74c28b196cd29fb243d69cd97968dc7067a1dd28390a9b4`  
		Last Modified: Tue, 20 Oct 2026 17:47:22 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.6` - linux; arm variant v7

```console
$ docker pull dart@sha256:bd1c105746d94a700aff29750e55a45931716af3369314d4b1c0946e47935d8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230534037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15254be7f76beaa365eacaf0ee6d522a06cbc82b43c30ebbdb6cb44700030d3f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:47:04 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:47:04 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:47:04 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:47:04 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:47:04 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:47:12 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402c5a8f8d60b90dc3b14462fe71edf39f1702d3eef18a9bea4ea9e004cc438e`  
		Last Modified: Tue, 20 Oct 2026 17:47:36 GMT  
		Size: 37.5 MB (37531850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5bb561d5d1d636ddbde1f5d91c33224ea4c2d6c2bdd886b5809e16396678232`  
		Last Modified: Tue, 20 Oct 2026 17:47:35 GMT  
		Size: 1.3 MB (1273043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718e3ad6e6871f1f4d8272413ef4d4e4096a369e11c2b53f662cec21888c0114`  
		Last Modified: Tue, 20 Oct 2026 17:47:40 GMT  
		Size: 165.5 MB (165470934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.6` - unknown; unknown

```console
$ docker pull dart@sha256:baa80d06e89d694c95b3e25dcaaea0c9219ebd55c1187bfc141292bed4f9d0e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fa1c7ca4be94efb2adb08f5b9a4f82c8b18c6553ac60089b71ad324914c0980`

```dockerfile
```

-	Layers:
	-	`sha256:94f1a065046b40f4397fa9b4b4b122603b4d4e2f923488f72abab820f79ce7f8`  
		Last Modified: Tue, 20 Oct 2026 17:47:34 GMT  
		Size: 20.8 KB (20769 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.6` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee2a13da971e5ff297517a5c407292b52136ef7fbcc1c7b192e885208a752dfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315318668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93bbb4f37f261e8474a84cafe7b4df6e48cff7640ecf7e8426978090abb50ef`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:46:57 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:46:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:46:57 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:46:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:46:57 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:47:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:256baba212573177e68316f791c402c66827c1f5921f7b95d7374e3941eedbd7`  
		Last Modified: Tue, 20 Oct 2026 17:47:42 GMT  
		Size: 42.3 MB (42338414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbdd0037ee2214ba2de54302ef83e434653f552f7a49e1431be6358e6eae700`  
		Last Modified: Tue, 20 Oct 2026 17:47:40 GMT  
		Size: 1.6 MB (1564400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8088b466da17df5dbdaf320611723c82f997909dbf7c02462ecd6bd22ee53058`  
		Last Modified: Tue, 20 Oct 2026 17:48:00 GMT  
		Size: 241.2 MB (241215540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.6` - unknown; unknown

```console
$ docker pull dart@sha256:75166df427646b58f25aafac80085386337fa65d86f9fb279657f6ca2eaa13c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee539d23959980161e8d18843702c156f1a1458d9a24af9142e6f382968070b9`

```dockerfile
```

-	Layers:
	-	`sha256:78b4e2dac12eec1fabd8bf2250ad334803f1f330f782674aa2491ae73348d89f`  
		Last Modified: Tue, 20 Oct 2026 17:47:39 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.6` - linux; riscv64

```console
$ docker pull dart@sha256:e072533a579551e026db3fd7b74b6a3a1a5f9bb23be56f1eb4d9e05896288844
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252772829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36adce5abde40dead005f4d30a8490d673126519495a587848696bd27315e384`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:48:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:48:41 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:48:41 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:48:41 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:48:41 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:49:30 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8cc052fde60a7a6964734c9160d9e5b6bcb90a74766513300e3156590e007f2`  
		Last Modified: Tue, 20 Oct 2026 17:53:57 GMT  
		Size: 41.6 MB (41600589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e82001fd895bcb4d7572df02e77c6a9efc3262773646e35f74fa95566ba3d26`  
		Last Modified: Tue, 20 Oct 2026 17:53:45 GMT  
		Size: 1.6 MB (1563908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283608222c0e75b179e41232471ca01d44619045715fd544a18e488fe0ae1671`  
		Last Modified: Tue, 20 Oct 2026 17:54:17 GMT  
		Size: 181.3 MB (181274537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.6` - unknown; unknown

```console
$ docker pull dart@sha256:ba1ff18fe0977deaa30093ae0af18307aa03eed9d3a43efbe939294390fa248d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb2de183a85d5cac4d1fc87332e0051165551fcc26d6fa76f42975c030b7e16`

```dockerfile
```

-	Layers:
	-	`sha256:2ea8ac65b87a36e4cbf23fc6626af69bb966a83497f6e84c3f57c6eec86390a9`  
		Last Modified: Tue, 20 Oct 2026 17:53:44 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13.6-sdk`

```console
$ docker pull dart@sha256:8dafcab3a8e474b49a2591b1db3b9d5d3915f1f36a396ec68d7726923ceb114f
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

### `dart:3.13.6-sdk` - linux; amd64

```console
$ docker pull dart@sha256:e3e430f1141efb1e4986986a734ecea7c19f2aed5047c246ff0246a330aea4c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316623112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a56ce91c76ef414157b4200a2c49b88e4f1adbf045dadf36f0ee82320676a13`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:46:46 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:46:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:46:46 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:46:46 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:46:46 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:46:56 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8206c70183f56da7140b02c25630b9bb7d5373e0e2205e3de39bf0284057baf0`  
		Last Modified: Tue, 20 Oct 2026 17:47:25 GMT  
		Size: 42.5 MB (42532005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750a555f858e43419943e5933558e54998cf005bb9ea818b07970227bdce9a7a`  
		Last Modified: Tue, 20 Oct 2026 17:47:23 GMT  
		Size: 1.9 MB (1869668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5bbae304844934c93ad2d5f45d43b85dad65cfba8ef073e198efc4464f4ecbe`  
		Last Modified: Tue, 20 Oct 2026 17:47:29 GMT  
		Size: 242.4 MB (242378057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.6-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:8fe0aa797c502b2b147b2bb3817388458772b1c3548196aa56056289cb767351
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e26db12a750b3b6b3e89bb6e5f369979e89b3fa2f720d0e2b878cc70b3835c06`

```dockerfile
```

-	Layers:
	-	`sha256:83eaece113cadcf1a74c28b196cd29fb243d69cd97968dc7067a1dd28390a9b4`  
		Last Modified: Tue, 20 Oct 2026 17:47:22 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.6-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:bd1c105746d94a700aff29750e55a45931716af3369314d4b1c0946e47935d8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230534037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15254be7f76beaa365eacaf0ee6d522a06cbc82b43c30ebbdb6cb44700030d3f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:47:04 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:47:04 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:47:04 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:47:04 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:47:04 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:47:12 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402c5a8f8d60b90dc3b14462fe71edf39f1702d3eef18a9bea4ea9e004cc438e`  
		Last Modified: Tue, 20 Oct 2026 17:47:36 GMT  
		Size: 37.5 MB (37531850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5bb561d5d1d636ddbde1f5d91c33224ea4c2d6c2bdd886b5809e16396678232`  
		Last Modified: Tue, 20 Oct 2026 17:47:35 GMT  
		Size: 1.3 MB (1273043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718e3ad6e6871f1f4d8272413ef4d4e4096a369e11c2b53f662cec21888c0114`  
		Last Modified: Tue, 20 Oct 2026 17:47:40 GMT  
		Size: 165.5 MB (165470934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.6-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:baa80d06e89d694c95b3e25dcaaea0c9219ebd55c1187bfc141292bed4f9d0e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fa1c7ca4be94efb2adb08f5b9a4f82c8b18c6553ac60089b71ad324914c0980`

```dockerfile
```

-	Layers:
	-	`sha256:94f1a065046b40f4397fa9b4b4b122603b4d4e2f923488f72abab820f79ce7f8`  
		Last Modified: Tue, 20 Oct 2026 17:47:34 GMT  
		Size: 20.8 KB (20769 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.6-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee2a13da971e5ff297517a5c407292b52136ef7fbcc1c7b192e885208a752dfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315318668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93bbb4f37f261e8474a84cafe7b4df6e48cff7640ecf7e8426978090abb50ef`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:46:57 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:46:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:46:57 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:46:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:46:57 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:47:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:256baba212573177e68316f791c402c66827c1f5921f7b95d7374e3941eedbd7`  
		Last Modified: Tue, 20 Oct 2026 17:47:42 GMT  
		Size: 42.3 MB (42338414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbdd0037ee2214ba2de54302ef83e434653f552f7a49e1431be6358e6eae700`  
		Last Modified: Tue, 20 Oct 2026 17:47:40 GMT  
		Size: 1.6 MB (1564400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8088b466da17df5dbdaf320611723c82f997909dbf7c02462ecd6bd22ee53058`  
		Last Modified: Tue, 20 Oct 2026 17:48:00 GMT  
		Size: 241.2 MB (241215540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.6-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:75166df427646b58f25aafac80085386337fa65d86f9fb279657f6ca2eaa13c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee539d23959980161e8d18843702c156f1a1458d9a24af9142e6f382968070b9`

```dockerfile
```

-	Layers:
	-	`sha256:78b4e2dac12eec1fabd8bf2250ad334803f1f330f782674aa2491ae73348d89f`  
		Last Modified: Tue, 20 Oct 2026 17:47:39 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.6-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:e072533a579551e026db3fd7b74b6a3a1a5f9bb23be56f1eb4d9e05896288844
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252772829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36adce5abde40dead005f4d30a8490d673126519495a587848696bd27315e384`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:48:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:48:41 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:48:41 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:48:41 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:48:41 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:49:30 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8cc052fde60a7a6964734c9160d9e5b6bcb90a74766513300e3156590e007f2`  
		Last Modified: Tue, 20 Oct 2026 17:53:57 GMT  
		Size: 41.6 MB (41600589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e82001fd895bcb4d7572df02e77c6a9efc3262773646e35f74fa95566ba3d26`  
		Last Modified: Tue, 20 Oct 2026 17:53:45 GMT  
		Size: 1.6 MB (1563908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283608222c0e75b179e41232471ca01d44619045715fd544a18e488fe0ae1671`  
		Last Modified: Tue, 20 Oct 2026 17:54:17 GMT  
		Size: 181.3 MB (181274537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.6-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:ba1ff18fe0977deaa30093ae0af18307aa03eed9d3a43efbe939294390fa248d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb2de183a85d5cac4d1fc87332e0051165551fcc26d6fa76f42975c030b7e16`

```dockerfile
```

-	Layers:
	-	`sha256:2ea8ac65b87a36e4cbf23fc6626af69bb966a83497f6e84c3f57c6eec86390a9`  
		Last Modified: Tue, 20 Oct 2026 17:53:44 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.14.0-315.2.beta`

```console
$ docker pull dart@sha256:4e961302fde660d1a616acde8a8eab58de9f650ea4358090532df934c6cd00b5
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

### `dart:3.14.0-315.2.beta` - linux; amd64

```console
$ docker pull dart@sha256:3b4da94f19fcaf01ffd22f3e079dd37b96efe3ccf3f5684090c424e8d42b916f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.7 MB (345749971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fb5a3818f992a6304ef23c0f67f3c8cf7bfa563fe11916aeb1e5f2e633a9253`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:46:46 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:46:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:46:46 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:46:46 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:46:46 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:47:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6168ede8e1b2520ca3ae1e0c94c36bc1a07ac68f44d54adc245ef0dedc443ebe;             SDK_ARCH="x64";;         armhf)             DART_SHA256=39bc4a9f219366a434e8439e182f6c29e3e2589323a6693c14db03cc6f90a89a;             SDK_ARCH="arm";;         arm64)             DART_SHA256=aa2d893e5a231520764d3c80eba3ccf3fe45045d740a6c2f8853d98cd0f882cf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=45774c32ec2e425457cf9dec262ed166f587c2f90f233fe09a18c6dd6f8718ea;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8206c70183f56da7140b02c25630b9bb7d5373e0e2205e3de39bf0284057baf0`  
		Last Modified: Tue, 20 Oct 2026 17:47:25 GMT  
		Size: 42.5 MB (42532005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750a555f858e43419943e5933558e54998cf005bb9ea818b07970227bdce9a7a`  
		Last Modified: Tue, 20 Oct 2026 17:47:23 GMT  
		Size: 1.9 MB (1869668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263f6e0885e4b97466a1356790f7039e99e4e5c05ae89a478314eaab192a0aea`  
		Last Modified: Tue, 20 Oct 2026 17:48:24 GMT  
		Size: 271.5 MB (271504916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-315.2.beta` - unknown; unknown

```console
$ docker pull dart@sha256:581119658a425e19589533a92127585b6e4915ff5d84d11daa697c87dfdc2776
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ced9a5fd88bb299bd2042b2d437ced5e30e23ccffee6610f1ca150a0e29b11`

```dockerfile
```

-	Layers:
	-	`sha256:91995bb3b52db127c453e698346fda1debb8b5a0ee5f14e4b1ed3a611552e0d6`  
		Last Modified: Tue, 20 Oct 2026 17:48:18 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-315.2.beta` - linux; arm variant v7

```console
$ docker pull dart@sha256:0b71bc459921bcd57b90fd832e6e90ac64269a36e6b986119867fc115569d218
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238555709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8d16184d63f475102ad9c8c6d5494cae8b57decc2bd7723d7aa994841018db0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:47:04 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:47:04 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:47:04 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:47:04 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:47:04 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:47:56 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6168ede8e1b2520ca3ae1e0c94c36bc1a07ac68f44d54adc245ef0dedc443ebe;             SDK_ARCH="x64";;         armhf)             DART_SHA256=39bc4a9f219366a434e8439e182f6c29e3e2589323a6693c14db03cc6f90a89a;             SDK_ARCH="arm";;         arm64)             DART_SHA256=aa2d893e5a231520764d3c80eba3ccf3fe45045d740a6c2f8853d98cd0f882cf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=45774c32ec2e425457cf9dec262ed166f587c2f90f233fe09a18c6dd6f8718ea;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402c5a8f8d60b90dc3b14462fe71edf39f1702d3eef18a9bea4ea9e004cc438e`  
		Last Modified: Tue, 20 Oct 2026 17:47:36 GMT  
		Size: 37.5 MB (37531850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5bb561d5d1d636ddbde1f5d91c33224ea4c2d6c2bdd886b5809e16396678232`  
		Last Modified: Tue, 20 Oct 2026 17:47:35 GMT  
		Size: 1.3 MB (1273043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:033ae79a030e5fbe24939e0c3805d74a69381da56a21febd163174f3aba293a4`  
		Last Modified: Tue, 20 Oct 2026 17:48:22 GMT  
		Size: 173.5 MB (173492606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-315.2.beta` - unknown; unknown

```console
$ docker pull dart@sha256:88a8d7d92372de7d9156faf922feb6b61e80a3677b20797c3965495b39acb821
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:430d33bf7c65e1e08a8680ccc2045cfe4dc9c23e28fe5159bc8f2ccb7e7ea44e`

```dockerfile
```

-	Layers:
	-	`sha256:60d4982db8e826d60569e1ca4891246d922336bb5896adc488ff3882751275d2`  
		Last Modified: Tue, 20 Oct 2026 17:48:18 GMT  
		Size: 19.0 KB (19028 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-315.2.beta` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:377f93d2b110d6958279527b10ed54c945b4dd7056f7bb392e5d051a77080cf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.8 MB (343842942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f9bd42bc289ec0000928bd5a5097f44343a6ba49cab3c1dd78ad6e5d7d0a08`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:46:57 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:46:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:46:57 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:46:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:46:57 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:48:23 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6168ede8e1b2520ca3ae1e0c94c36bc1a07ac68f44d54adc245ef0dedc443ebe;             SDK_ARCH="x64";;         armhf)             DART_SHA256=39bc4a9f219366a434e8439e182f6c29e3e2589323a6693c14db03cc6f90a89a;             SDK_ARCH="arm";;         arm64)             DART_SHA256=aa2d893e5a231520764d3c80eba3ccf3fe45045d740a6c2f8853d98cd0f882cf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=45774c32ec2e425457cf9dec262ed166f587c2f90f233fe09a18c6dd6f8718ea;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:256baba212573177e68316f791c402c66827c1f5921f7b95d7374e3941eedbd7`  
		Last Modified: Tue, 20 Oct 2026 17:47:42 GMT  
		Size: 42.3 MB (42338414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbdd0037ee2214ba2de54302ef83e434653f552f7a49e1431be6358e6eae700`  
		Last Modified: Tue, 20 Oct 2026 17:47:40 GMT  
		Size: 1.6 MB (1564400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22c7cca0712fca19383790d83fed0a1e3cd6ae2fd02c71f9a755383082779b71`  
		Last Modified: Tue, 20 Oct 2026 17:49:04 GMT  
		Size: 269.7 MB (269739814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-315.2.beta` - unknown; unknown

```console
$ docker pull dart@sha256:ff1fd018d3ac5f497f0e9d424748128d888021846743e96f9e9fce6d75d5c761
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ec245cf31a921cf9a521cc11e00abd046b1cdd5ff081fdaf436a401d105cb44`

```dockerfile
```

-	Layers:
	-	`sha256:ee9b2f1a2c5ae10bcc00311410fb03fa9cbb46e9532ea3f2c0696bfb224e02ec`  
		Last Modified: Tue, 20 Oct 2026 17:48:59 GMT  
		Size: 19.1 KB (19057 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-315.2.beta` - linux; riscv64

```console
$ docker pull dart@sha256:63d0986399cba70f260a0986fd908493b89767d06a58999f52c992dabac9d668
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (272990494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a9c1810de60257ccd531191cae69c8e1155d43e555fe1c73c5b51f01d1c93c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:57:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:57:39 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:57:39 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:57:39 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:57:39 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:58:31 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6168ede8e1b2520ca3ae1e0c94c36bc1a07ac68f44d54adc245ef0dedc443ebe;             SDK_ARCH="x64";;         armhf)             DART_SHA256=39bc4a9f219366a434e8439e182f6c29e3e2589323a6693c14db03cc6f90a89a;             SDK_ARCH="arm";;         arm64)             DART_SHA256=aa2d893e5a231520764d3c80eba3ccf3fe45045d740a6c2f8853d98cd0f882cf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=45774c32ec2e425457cf9dec262ed166f587c2f90f233fe09a18c6dd6f8718ea;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e5a1eea27fbd96d4212a5a4a87caa95813072447963c615fb47369415b95ab`  
		Last Modified: Tue, 20 Oct 2026 18:03:20 GMT  
		Size: 41.6 MB (41600848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65473973d2dd91aba2c5ed8899b3659f89ef8476596418b62ae88682ff29ee6c`  
		Last Modified: Tue, 20 Oct 2026 18:03:09 GMT  
		Size: 1.6 MB (1563900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70eb3660820e45d9004c3ab3d9c46b97d99a01d3006486e776dc54e898eed327`  
		Last Modified: Tue, 20 Oct 2026 18:03:44 GMT  
		Size: 201.5 MB (201491951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-315.2.beta` - unknown; unknown

```console
$ docker pull dart@sha256:c706d2e6497ea69b043d18a553d8259ebdcd1b873af22ef0490e62d8e222e6a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f1ced9bd1851373c4bb73c7b82196a7b16b86feb0658b4a9a8cc9053a98e280`

```dockerfile
```

-	Layers:
	-	`sha256:786d53057d12c33dadfefe139054bc7a832b928457142bd99adeb5ea035322e3`  
		Last Modified: Tue, 20 Oct 2026 18:03:08 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.14.0-315.2.beta-sdk`

```console
$ docker pull dart@sha256:4e961302fde660d1a616acde8a8eab58de9f650ea4358090532df934c6cd00b5
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

### `dart:3.14.0-315.2.beta-sdk` - linux; amd64

```console
$ docker pull dart@sha256:3b4da94f19fcaf01ffd22f3e079dd37b96efe3ccf3f5684090c424e8d42b916f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.7 MB (345749971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fb5a3818f992a6304ef23c0f67f3c8cf7bfa563fe11916aeb1e5f2e633a9253`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:46:46 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:46:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:46:46 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:46:46 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:46:46 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:47:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6168ede8e1b2520ca3ae1e0c94c36bc1a07ac68f44d54adc245ef0dedc443ebe;             SDK_ARCH="x64";;         armhf)             DART_SHA256=39bc4a9f219366a434e8439e182f6c29e3e2589323a6693c14db03cc6f90a89a;             SDK_ARCH="arm";;         arm64)             DART_SHA256=aa2d893e5a231520764d3c80eba3ccf3fe45045d740a6c2f8853d98cd0f882cf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=45774c32ec2e425457cf9dec262ed166f587c2f90f233fe09a18c6dd6f8718ea;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8206c70183f56da7140b02c25630b9bb7d5373e0e2205e3de39bf0284057baf0`  
		Last Modified: Tue, 20 Oct 2026 17:47:25 GMT  
		Size: 42.5 MB (42532005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750a555f858e43419943e5933558e54998cf005bb9ea818b07970227bdce9a7a`  
		Last Modified: Tue, 20 Oct 2026 17:47:23 GMT  
		Size: 1.9 MB (1869668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263f6e0885e4b97466a1356790f7039e99e4e5c05ae89a478314eaab192a0aea`  
		Last Modified: Tue, 20 Oct 2026 17:48:24 GMT  
		Size: 271.5 MB (271504916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-315.2.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:581119658a425e19589533a92127585b6e4915ff5d84d11daa697c87dfdc2776
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ced9a5fd88bb299bd2042b2d437ced5e30e23ccffee6610f1ca150a0e29b11`

```dockerfile
```

-	Layers:
	-	`sha256:91995bb3b52db127c453e698346fda1debb8b5a0ee5f14e4b1ed3a611552e0d6`  
		Last Modified: Tue, 20 Oct 2026 17:48:18 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-315.2.beta-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:0b71bc459921bcd57b90fd832e6e90ac64269a36e6b986119867fc115569d218
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238555709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8d16184d63f475102ad9c8c6d5494cae8b57decc2bd7723d7aa994841018db0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:47:04 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:47:04 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:47:04 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:47:04 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:47:04 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:47:56 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6168ede8e1b2520ca3ae1e0c94c36bc1a07ac68f44d54adc245ef0dedc443ebe;             SDK_ARCH="x64";;         armhf)             DART_SHA256=39bc4a9f219366a434e8439e182f6c29e3e2589323a6693c14db03cc6f90a89a;             SDK_ARCH="arm";;         arm64)             DART_SHA256=aa2d893e5a231520764d3c80eba3ccf3fe45045d740a6c2f8853d98cd0f882cf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=45774c32ec2e425457cf9dec262ed166f587c2f90f233fe09a18c6dd6f8718ea;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402c5a8f8d60b90dc3b14462fe71edf39f1702d3eef18a9bea4ea9e004cc438e`  
		Last Modified: Tue, 20 Oct 2026 17:47:36 GMT  
		Size: 37.5 MB (37531850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5bb561d5d1d636ddbde1f5d91c33224ea4c2d6c2bdd886b5809e16396678232`  
		Last Modified: Tue, 20 Oct 2026 17:47:35 GMT  
		Size: 1.3 MB (1273043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:033ae79a030e5fbe24939e0c3805d74a69381da56a21febd163174f3aba293a4`  
		Last Modified: Tue, 20 Oct 2026 17:48:22 GMT  
		Size: 173.5 MB (173492606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-315.2.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:88a8d7d92372de7d9156faf922feb6b61e80a3677b20797c3965495b39acb821
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:430d33bf7c65e1e08a8680ccc2045cfe4dc9c23e28fe5159bc8f2ccb7e7ea44e`

```dockerfile
```

-	Layers:
	-	`sha256:60d4982db8e826d60569e1ca4891246d922336bb5896adc488ff3882751275d2`  
		Last Modified: Tue, 20 Oct 2026 17:48:18 GMT  
		Size: 19.0 KB (19028 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-315.2.beta-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:377f93d2b110d6958279527b10ed54c945b4dd7056f7bb392e5d051a77080cf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.8 MB (343842942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f9bd42bc289ec0000928bd5a5097f44343a6ba49cab3c1dd78ad6e5d7d0a08`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:46:57 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:46:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:46:57 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:46:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:46:57 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:48:23 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6168ede8e1b2520ca3ae1e0c94c36bc1a07ac68f44d54adc245ef0dedc443ebe;             SDK_ARCH="x64";;         armhf)             DART_SHA256=39bc4a9f219366a434e8439e182f6c29e3e2589323a6693c14db03cc6f90a89a;             SDK_ARCH="arm";;         arm64)             DART_SHA256=aa2d893e5a231520764d3c80eba3ccf3fe45045d740a6c2f8853d98cd0f882cf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=45774c32ec2e425457cf9dec262ed166f587c2f90f233fe09a18c6dd6f8718ea;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:256baba212573177e68316f791c402c66827c1f5921f7b95d7374e3941eedbd7`  
		Last Modified: Tue, 20 Oct 2026 17:47:42 GMT  
		Size: 42.3 MB (42338414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbdd0037ee2214ba2de54302ef83e434653f552f7a49e1431be6358e6eae700`  
		Last Modified: Tue, 20 Oct 2026 17:47:40 GMT  
		Size: 1.6 MB (1564400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22c7cca0712fca19383790d83fed0a1e3cd6ae2fd02c71f9a755383082779b71`  
		Last Modified: Tue, 20 Oct 2026 17:49:04 GMT  
		Size: 269.7 MB (269739814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-315.2.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:ff1fd018d3ac5f497f0e9d424748128d888021846743e96f9e9fce6d75d5c761
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ec245cf31a921cf9a521cc11e00abd046b1cdd5ff081fdaf436a401d105cb44`

```dockerfile
```

-	Layers:
	-	`sha256:ee9b2f1a2c5ae10bcc00311410fb03fa9cbb46e9532ea3f2c0696bfb224e02ec`  
		Last Modified: Tue, 20 Oct 2026 17:48:59 GMT  
		Size: 19.1 KB (19057 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-315.2.beta-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:63d0986399cba70f260a0986fd908493b89767d06a58999f52c992dabac9d668
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (272990494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a9c1810de60257ccd531191cae69c8e1155d43e555fe1c73c5b51f01d1c93c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:57:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:57:39 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:57:39 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:57:39 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:57:39 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:58:31 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6168ede8e1b2520ca3ae1e0c94c36bc1a07ac68f44d54adc245ef0dedc443ebe;             SDK_ARCH="x64";;         armhf)             DART_SHA256=39bc4a9f219366a434e8439e182f6c29e3e2589323a6693c14db03cc6f90a89a;             SDK_ARCH="arm";;         arm64)             DART_SHA256=aa2d893e5a231520764d3c80eba3ccf3fe45045d740a6c2f8853d98cd0f882cf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=45774c32ec2e425457cf9dec262ed166f587c2f90f233fe09a18c6dd6f8718ea;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e5a1eea27fbd96d4212a5a4a87caa95813072447963c615fb47369415b95ab`  
		Last Modified: Tue, 20 Oct 2026 18:03:20 GMT  
		Size: 41.6 MB (41600848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65473973d2dd91aba2c5ed8899b3659f89ef8476596418b62ae88682ff29ee6c`  
		Last Modified: Tue, 20 Oct 2026 18:03:09 GMT  
		Size: 1.6 MB (1563900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70eb3660820e45d9004c3ab3d9c46b97d99a01d3006486e776dc54e898eed327`  
		Last Modified: Tue, 20 Oct 2026 18:03:44 GMT  
		Size: 201.5 MB (201491951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-315.2.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:c706d2e6497ea69b043d18a553d8259ebdcd1b873af22ef0490e62d8e222e6a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f1ced9bd1851373c4bb73c7b82196a7b16b86feb0658b4a9a8cc9053a98e280`

```dockerfile
```

-	Layers:
	-	`sha256:786d53057d12c33dadfefe139054bc7a832b928457142bd99adeb5ea035322e3`  
		Last Modified: Tue, 20 Oct 2026 18:03:08 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:beta`

```console
$ docker pull dart@sha256:4e961302fde660d1a616acde8a8eab58de9f650ea4358090532df934c6cd00b5
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
$ docker pull dart@sha256:3b4da94f19fcaf01ffd22f3e079dd37b96efe3ccf3f5684090c424e8d42b916f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.7 MB (345749971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fb5a3818f992a6304ef23c0f67f3c8cf7bfa563fe11916aeb1e5f2e633a9253`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:46:46 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:46:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:46:46 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:46:46 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:46:46 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:47:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6168ede8e1b2520ca3ae1e0c94c36bc1a07ac68f44d54adc245ef0dedc443ebe;             SDK_ARCH="x64";;         armhf)             DART_SHA256=39bc4a9f219366a434e8439e182f6c29e3e2589323a6693c14db03cc6f90a89a;             SDK_ARCH="arm";;         arm64)             DART_SHA256=aa2d893e5a231520764d3c80eba3ccf3fe45045d740a6c2f8853d98cd0f882cf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=45774c32ec2e425457cf9dec262ed166f587c2f90f233fe09a18c6dd6f8718ea;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8206c70183f56da7140b02c25630b9bb7d5373e0e2205e3de39bf0284057baf0`  
		Last Modified: Tue, 20 Oct 2026 17:47:25 GMT  
		Size: 42.5 MB (42532005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750a555f858e43419943e5933558e54998cf005bb9ea818b07970227bdce9a7a`  
		Last Modified: Tue, 20 Oct 2026 17:47:23 GMT  
		Size: 1.9 MB (1869668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263f6e0885e4b97466a1356790f7039e99e4e5c05ae89a478314eaab192a0aea`  
		Last Modified: Tue, 20 Oct 2026 17:48:24 GMT  
		Size: 271.5 MB (271504916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:581119658a425e19589533a92127585b6e4915ff5d84d11daa697c87dfdc2776
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ced9a5fd88bb299bd2042b2d437ced5e30e23ccffee6610f1ca150a0e29b11`

```dockerfile
```

-	Layers:
	-	`sha256:91995bb3b52db127c453e698346fda1debb8b5a0ee5f14e4b1ed3a611552e0d6`  
		Last Modified: Tue, 20 Oct 2026 17:48:18 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm variant v7

```console
$ docker pull dart@sha256:0b71bc459921bcd57b90fd832e6e90ac64269a36e6b986119867fc115569d218
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238555709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8d16184d63f475102ad9c8c6d5494cae8b57decc2bd7723d7aa994841018db0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:47:04 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:47:04 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:47:04 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:47:04 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:47:04 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:47:56 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6168ede8e1b2520ca3ae1e0c94c36bc1a07ac68f44d54adc245ef0dedc443ebe;             SDK_ARCH="x64";;         armhf)             DART_SHA256=39bc4a9f219366a434e8439e182f6c29e3e2589323a6693c14db03cc6f90a89a;             SDK_ARCH="arm";;         arm64)             DART_SHA256=aa2d893e5a231520764d3c80eba3ccf3fe45045d740a6c2f8853d98cd0f882cf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=45774c32ec2e425457cf9dec262ed166f587c2f90f233fe09a18c6dd6f8718ea;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402c5a8f8d60b90dc3b14462fe71edf39f1702d3eef18a9bea4ea9e004cc438e`  
		Last Modified: Tue, 20 Oct 2026 17:47:36 GMT  
		Size: 37.5 MB (37531850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5bb561d5d1d636ddbde1f5d91c33224ea4c2d6c2bdd886b5809e16396678232`  
		Last Modified: Tue, 20 Oct 2026 17:47:35 GMT  
		Size: 1.3 MB (1273043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:033ae79a030e5fbe24939e0c3805d74a69381da56a21febd163174f3aba293a4`  
		Last Modified: Tue, 20 Oct 2026 17:48:22 GMT  
		Size: 173.5 MB (173492606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:88a8d7d92372de7d9156faf922feb6b61e80a3677b20797c3965495b39acb821
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:430d33bf7c65e1e08a8680ccc2045cfe4dc9c23e28fe5159bc8f2ccb7e7ea44e`

```dockerfile
```

-	Layers:
	-	`sha256:60d4982db8e826d60569e1ca4891246d922336bb5896adc488ff3882751275d2`  
		Last Modified: Tue, 20 Oct 2026 17:48:18 GMT  
		Size: 19.0 KB (19028 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:377f93d2b110d6958279527b10ed54c945b4dd7056f7bb392e5d051a77080cf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.8 MB (343842942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f9bd42bc289ec0000928bd5a5097f44343a6ba49cab3c1dd78ad6e5d7d0a08`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:46:57 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:46:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:46:57 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:46:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:46:57 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:48:23 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6168ede8e1b2520ca3ae1e0c94c36bc1a07ac68f44d54adc245ef0dedc443ebe;             SDK_ARCH="x64";;         armhf)             DART_SHA256=39bc4a9f219366a434e8439e182f6c29e3e2589323a6693c14db03cc6f90a89a;             SDK_ARCH="arm";;         arm64)             DART_SHA256=aa2d893e5a231520764d3c80eba3ccf3fe45045d740a6c2f8853d98cd0f882cf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=45774c32ec2e425457cf9dec262ed166f587c2f90f233fe09a18c6dd6f8718ea;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:256baba212573177e68316f791c402c66827c1f5921f7b95d7374e3941eedbd7`  
		Last Modified: Tue, 20 Oct 2026 17:47:42 GMT  
		Size: 42.3 MB (42338414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbdd0037ee2214ba2de54302ef83e434653f552f7a49e1431be6358e6eae700`  
		Last Modified: Tue, 20 Oct 2026 17:47:40 GMT  
		Size: 1.6 MB (1564400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22c7cca0712fca19383790d83fed0a1e3cd6ae2fd02c71f9a755383082779b71`  
		Last Modified: Tue, 20 Oct 2026 17:49:04 GMT  
		Size: 269.7 MB (269739814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:ff1fd018d3ac5f497f0e9d424748128d888021846743e96f9e9fce6d75d5c761
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ec245cf31a921cf9a521cc11e00abd046b1cdd5ff081fdaf436a401d105cb44`

```dockerfile
```

-	Layers:
	-	`sha256:ee9b2f1a2c5ae10bcc00311410fb03fa9cbb46e9532ea3f2c0696bfb224e02ec`  
		Last Modified: Tue, 20 Oct 2026 17:48:59 GMT  
		Size: 19.1 KB (19057 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; riscv64

```console
$ docker pull dart@sha256:63d0986399cba70f260a0986fd908493b89767d06a58999f52c992dabac9d668
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (272990494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a9c1810de60257ccd531191cae69c8e1155d43e555fe1c73c5b51f01d1c93c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:57:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:57:39 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:57:39 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:57:39 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:57:39 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:58:31 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6168ede8e1b2520ca3ae1e0c94c36bc1a07ac68f44d54adc245ef0dedc443ebe;             SDK_ARCH="x64";;         armhf)             DART_SHA256=39bc4a9f219366a434e8439e182f6c29e3e2589323a6693c14db03cc6f90a89a;             SDK_ARCH="arm";;         arm64)             DART_SHA256=aa2d893e5a231520764d3c80eba3ccf3fe45045d740a6c2f8853d98cd0f882cf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=45774c32ec2e425457cf9dec262ed166f587c2f90f233fe09a18c6dd6f8718ea;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e5a1eea27fbd96d4212a5a4a87caa95813072447963c615fb47369415b95ab`  
		Last Modified: Tue, 20 Oct 2026 18:03:20 GMT  
		Size: 41.6 MB (41600848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65473973d2dd91aba2c5ed8899b3659f89ef8476596418b62ae88682ff29ee6c`  
		Last Modified: Tue, 20 Oct 2026 18:03:09 GMT  
		Size: 1.6 MB (1563900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70eb3660820e45d9004c3ab3d9c46b97d99a01d3006486e776dc54e898eed327`  
		Last Modified: Tue, 20 Oct 2026 18:03:44 GMT  
		Size: 201.5 MB (201491951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:c706d2e6497ea69b043d18a553d8259ebdcd1b873af22ef0490e62d8e222e6a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f1ced9bd1851373c4bb73c7b82196a7b16b86feb0658b4a9a8cc9053a98e280`

```dockerfile
```

-	Layers:
	-	`sha256:786d53057d12c33dadfefe139054bc7a832b928457142bd99adeb5ea035322e3`  
		Last Modified: Tue, 20 Oct 2026 18:03:08 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:beta-sdk`

```console
$ docker pull dart@sha256:4e961302fde660d1a616acde8a8eab58de9f650ea4358090532df934c6cd00b5
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
$ docker pull dart@sha256:3b4da94f19fcaf01ffd22f3e079dd37b96efe3ccf3f5684090c424e8d42b916f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.7 MB (345749971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fb5a3818f992a6304ef23c0f67f3c8cf7bfa563fe11916aeb1e5f2e633a9253`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:46:46 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:46:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:46:46 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:46:46 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:46:46 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:47:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6168ede8e1b2520ca3ae1e0c94c36bc1a07ac68f44d54adc245ef0dedc443ebe;             SDK_ARCH="x64";;         armhf)             DART_SHA256=39bc4a9f219366a434e8439e182f6c29e3e2589323a6693c14db03cc6f90a89a;             SDK_ARCH="arm";;         arm64)             DART_SHA256=aa2d893e5a231520764d3c80eba3ccf3fe45045d740a6c2f8853d98cd0f882cf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=45774c32ec2e425457cf9dec262ed166f587c2f90f233fe09a18c6dd6f8718ea;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8206c70183f56da7140b02c25630b9bb7d5373e0e2205e3de39bf0284057baf0`  
		Last Modified: Tue, 20 Oct 2026 17:47:25 GMT  
		Size: 42.5 MB (42532005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750a555f858e43419943e5933558e54998cf005bb9ea818b07970227bdce9a7a`  
		Last Modified: Tue, 20 Oct 2026 17:47:23 GMT  
		Size: 1.9 MB (1869668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263f6e0885e4b97466a1356790f7039e99e4e5c05ae89a478314eaab192a0aea`  
		Last Modified: Tue, 20 Oct 2026 17:48:24 GMT  
		Size: 271.5 MB (271504916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:581119658a425e19589533a92127585b6e4915ff5d84d11daa697c87dfdc2776
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ced9a5fd88bb299bd2042b2d437ced5e30e23ccffee6610f1ca150a0e29b11`

```dockerfile
```

-	Layers:
	-	`sha256:91995bb3b52db127c453e698346fda1debb8b5a0ee5f14e4b1ed3a611552e0d6`  
		Last Modified: Tue, 20 Oct 2026 17:48:18 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:0b71bc459921bcd57b90fd832e6e90ac64269a36e6b986119867fc115569d218
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238555709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8d16184d63f475102ad9c8c6d5494cae8b57decc2bd7723d7aa994841018db0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:47:04 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:47:04 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:47:04 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:47:04 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:47:04 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:47:56 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6168ede8e1b2520ca3ae1e0c94c36bc1a07ac68f44d54adc245ef0dedc443ebe;             SDK_ARCH="x64";;         armhf)             DART_SHA256=39bc4a9f219366a434e8439e182f6c29e3e2589323a6693c14db03cc6f90a89a;             SDK_ARCH="arm";;         arm64)             DART_SHA256=aa2d893e5a231520764d3c80eba3ccf3fe45045d740a6c2f8853d98cd0f882cf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=45774c32ec2e425457cf9dec262ed166f587c2f90f233fe09a18c6dd6f8718ea;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402c5a8f8d60b90dc3b14462fe71edf39f1702d3eef18a9bea4ea9e004cc438e`  
		Last Modified: Tue, 20 Oct 2026 17:47:36 GMT  
		Size: 37.5 MB (37531850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5bb561d5d1d636ddbde1f5d91c33224ea4c2d6c2bdd886b5809e16396678232`  
		Last Modified: Tue, 20 Oct 2026 17:47:35 GMT  
		Size: 1.3 MB (1273043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:033ae79a030e5fbe24939e0c3805d74a69381da56a21febd163174f3aba293a4`  
		Last Modified: Tue, 20 Oct 2026 17:48:22 GMT  
		Size: 173.5 MB (173492606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:88a8d7d92372de7d9156faf922feb6b61e80a3677b20797c3965495b39acb821
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:430d33bf7c65e1e08a8680ccc2045cfe4dc9c23e28fe5159bc8f2ccb7e7ea44e`

```dockerfile
```

-	Layers:
	-	`sha256:60d4982db8e826d60569e1ca4891246d922336bb5896adc488ff3882751275d2`  
		Last Modified: Tue, 20 Oct 2026 17:48:18 GMT  
		Size: 19.0 KB (19028 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:377f93d2b110d6958279527b10ed54c945b4dd7056f7bb392e5d051a77080cf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.8 MB (343842942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f9bd42bc289ec0000928bd5a5097f44343a6ba49cab3c1dd78ad6e5d7d0a08`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:46:57 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:46:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:46:57 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:46:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:46:57 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:48:23 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6168ede8e1b2520ca3ae1e0c94c36bc1a07ac68f44d54adc245ef0dedc443ebe;             SDK_ARCH="x64";;         armhf)             DART_SHA256=39bc4a9f219366a434e8439e182f6c29e3e2589323a6693c14db03cc6f90a89a;             SDK_ARCH="arm";;         arm64)             DART_SHA256=aa2d893e5a231520764d3c80eba3ccf3fe45045d740a6c2f8853d98cd0f882cf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=45774c32ec2e425457cf9dec262ed166f587c2f90f233fe09a18c6dd6f8718ea;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:256baba212573177e68316f791c402c66827c1f5921f7b95d7374e3941eedbd7`  
		Last Modified: Tue, 20 Oct 2026 17:47:42 GMT  
		Size: 42.3 MB (42338414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbdd0037ee2214ba2de54302ef83e434653f552f7a49e1431be6358e6eae700`  
		Last Modified: Tue, 20 Oct 2026 17:47:40 GMT  
		Size: 1.6 MB (1564400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22c7cca0712fca19383790d83fed0a1e3cd6ae2fd02c71f9a755383082779b71`  
		Last Modified: Tue, 20 Oct 2026 17:49:04 GMT  
		Size: 269.7 MB (269739814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:ff1fd018d3ac5f497f0e9d424748128d888021846743e96f9e9fce6d75d5c761
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ec245cf31a921cf9a521cc11e00abd046b1cdd5ff081fdaf436a401d105cb44`

```dockerfile
```

-	Layers:
	-	`sha256:ee9b2f1a2c5ae10bcc00311410fb03fa9cbb46e9532ea3f2c0696bfb224e02ec`  
		Last Modified: Tue, 20 Oct 2026 17:48:59 GMT  
		Size: 19.1 KB (19057 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:63d0986399cba70f260a0986fd908493b89767d06a58999f52c992dabac9d668
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (272990494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a9c1810de60257ccd531191cae69c8e1155d43e555fe1c73c5b51f01d1c93c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:57:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:57:39 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:57:39 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:57:39 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:57:39 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:58:31 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6168ede8e1b2520ca3ae1e0c94c36bc1a07ac68f44d54adc245ef0dedc443ebe;             SDK_ARCH="x64";;         armhf)             DART_SHA256=39bc4a9f219366a434e8439e182f6c29e3e2589323a6693c14db03cc6f90a89a;             SDK_ARCH="arm";;         arm64)             DART_SHA256=aa2d893e5a231520764d3c80eba3ccf3fe45045d740a6c2f8853d98cd0f882cf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=45774c32ec2e425457cf9dec262ed166f587c2f90f233fe09a18c6dd6f8718ea;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e5a1eea27fbd96d4212a5a4a87caa95813072447963c615fb47369415b95ab`  
		Last Modified: Tue, 20 Oct 2026 18:03:20 GMT  
		Size: 41.6 MB (41600848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65473973d2dd91aba2c5ed8899b3659f89ef8476596418b62ae88682ff29ee6c`  
		Last Modified: Tue, 20 Oct 2026 18:03:09 GMT  
		Size: 1.6 MB (1563900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70eb3660820e45d9004c3ab3d9c46b97d99a01d3006486e776dc54e898eed327`  
		Last Modified: Tue, 20 Oct 2026 18:03:44 GMT  
		Size: 201.5 MB (201491951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:c706d2e6497ea69b043d18a553d8259ebdcd1b873af22ef0490e62d8e222e6a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f1ced9bd1851373c4bb73c7b82196a7b16b86feb0658b4a9a8cc9053a98e280`

```dockerfile
```

-	Layers:
	-	`sha256:786d53057d12c33dadfefe139054bc7a832b928457142bd99adeb5ea035322e3`  
		Last Modified: Tue, 20 Oct 2026 18:03:08 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:latest`

```console
$ docker pull dart@sha256:8dafcab3a8e474b49a2591b1db3b9d5d3915f1f36a396ec68d7726923ceb114f
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
$ docker pull dart@sha256:e3e430f1141efb1e4986986a734ecea7c19f2aed5047c246ff0246a330aea4c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316623112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a56ce91c76ef414157b4200a2c49b88e4f1adbf045dadf36f0ee82320676a13`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:46:46 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:46:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:46:46 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:46:46 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:46:46 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:46:56 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8206c70183f56da7140b02c25630b9bb7d5373e0e2205e3de39bf0284057baf0`  
		Last Modified: Tue, 20 Oct 2026 17:47:25 GMT  
		Size: 42.5 MB (42532005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750a555f858e43419943e5933558e54998cf005bb9ea818b07970227bdce9a7a`  
		Last Modified: Tue, 20 Oct 2026 17:47:23 GMT  
		Size: 1.9 MB (1869668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5bbae304844934c93ad2d5f45d43b85dad65cfba8ef073e198efc4464f4ecbe`  
		Last Modified: Tue, 20 Oct 2026 17:47:29 GMT  
		Size: 242.4 MB (242378057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:8fe0aa797c502b2b147b2bb3817388458772b1c3548196aa56056289cb767351
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e26db12a750b3b6b3e89bb6e5f369979e89b3fa2f720d0e2b878cc70b3835c06`

```dockerfile
```

-	Layers:
	-	`sha256:83eaece113cadcf1a74c28b196cd29fb243d69cd97968dc7067a1dd28390a9b4`  
		Last Modified: Tue, 20 Oct 2026 17:47:22 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; arm variant v7

```console
$ docker pull dart@sha256:bd1c105746d94a700aff29750e55a45931716af3369314d4b1c0946e47935d8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230534037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15254be7f76beaa365eacaf0ee6d522a06cbc82b43c30ebbdb6cb44700030d3f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:47:04 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:47:04 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:47:04 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:47:04 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:47:04 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:47:12 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402c5a8f8d60b90dc3b14462fe71edf39f1702d3eef18a9bea4ea9e004cc438e`  
		Last Modified: Tue, 20 Oct 2026 17:47:36 GMT  
		Size: 37.5 MB (37531850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5bb561d5d1d636ddbde1f5d91c33224ea4c2d6c2bdd886b5809e16396678232`  
		Last Modified: Tue, 20 Oct 2026 17:47:35 GMT  
		Size: 1.3 MB (1273043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718e3ad6e6871f1f4d8272413ef4d4e4096a369e11c2b53f662cec21888c0114`  
		Last Modified: Tue, 20 Oct 2026 17:47:40 GMT  
		Size: 165.5 MB (165470934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:baa80d06e89d694c95b3e25dcaaea0c9219ebd55c1187bfc141292bed4f9d0e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fa1c7ca4be94efb2adb08f5b9a4f82c8b18c6553ac60089b71ad324914c0980`

```dockerfile
```

-	Layers:
	-	`sha256:94f1a065046b40f4397fa9b4b4b122603b4d4e2f923488f72abab820f79ce7f8`  
		Last Modified: Tue, 20 Oct 2026 17:47:34 GMT  
		Size: 20.8 KB (20769 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee2a13da971e5ff297517a5c407292b52136ef7fbcc1c7b192e885208a752dfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315318668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93bbb4f37f261e8474a84cafe7b4df6e48cff7640ecf7e8426978090abb50ef`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:46:57 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:46:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:46:57 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:46:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:46:57 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:47:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:256baba212573177e68316f791c402c66827c1f5921f7b95d7374e3941eedbd7`  
		Last Modified: Tue, 20 Oct 2026 17:47:42 GMT  
		Size: 42.3 MB (42338414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbdd0037ee2214ba2de54302ef83e434653f552f7a49e1431be6358e6eae700`  
		Last Modified: Tue, 20 Oct 2026 17:47:40 GMT  
		Size: 1.6 MB (1564400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8088b466da17df5dbdaf320611723c82f997909dbf7c02462ecd6bd22ee53058`  
		Last Modified: Tue, 20 Oct 2026 17:48:00 GMT  
		Size: 241.2 MB (241215540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:75166df427646b58f25aafac80085386337fa65d86f9fb279657f6ca2eaa13c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee539d23959980161e8d18843702c156f1a1458d9a24af9142e6f382968070b9`

```dockerfile
```

-	Layers:
	-	`sha256:78b4e2dac12eec1fabd8bf2250ad334803f1f330f782674aa2491ae73348d89f`  
		Last Modified: Tue, 20 Oct 2026 17:47:39 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; riscv64

```console
$ docker pull dart@sha256:e072533a579551e026db3fd7b74b6a3a1a5f9bb23be56f1eb4d9e05896288844
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252772829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36adce5abde40dead005f4d30a8490d673126519495a587848696bd27315e384`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:48:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:48:41 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:48:41 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:48:41 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:48:41 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:49:30 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8cc052fde60a7a6964734c9160d9e5b6bcb90a74766513300e3156590e007f2`  
		Last Modified: Tue, 20 Oct 2026 17:53:57 GMT  
		Size: 41.6 MB (41600589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e82001fd895bcb4d7572df02e77c6a9efc3262773646e35f74fa95566ba3d26`  
		Last Modified: Tue, 20 Oct 2026 17:53:45 GMT  
		Size: 1.6 MB (1563908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283608222c0e75b179e41232471ca01d44619045715fd544a18e488fe0ae1671`  
		Last Modified: Tue, 20 Oct 2026 17:54:17 GMT  
		Size: 181.3 MB (181274537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:ba1ff18fe0977deaa30093ae0af18307aa03eed9d3a43efbe939294390fa248d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb2de183a85d5cac4d1fc87332e0051165551fcc26d6fa76f42975c030b7e16`

```dockerfile
```

-	Layers:
	-	`sha256:2ea8ac65b87a36e4cbf23fc6626af69bb966a83497f6e84c3f57c6eec86390a9`  
		Last Modified: Tue, 20 Oct 2026 17:53:44 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:sdk`

```console
$ docker pull dart@sha256:8dafcab3a8e474b49a2591b1db3b9d5d3915f1f36a396ec68d7726923ceb114f
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
$ docker pull dart@sha256:e3e430f1141efb1e4986986a734ecea7c19f2aed5047c246ff0246a330aea4c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316623112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a56ce91c76ef414157b4200a2c49b88e4f1adbf045dadf36f0ee82320676a13`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:46:46 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:46:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:46:46 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:46:46 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:46:46 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:46:56 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8206c70183f56da7140b02c25630b9bb7d5373e0e2205e3de39bf0284057baf0`  
		Last Modified: Tue, 20 Oct 2026 17:47:25 GMT  
		Size: 42.5 MB (42532005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750a555f858e43419943e5933558e54998cf005bb9ea818b07970227bdce9a7a`  
		Last Modified: Tue, 20 Oct 2026 17:47:23 GMT  
		Size: 1.9 MB (1869668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5bbae304844934c93ad2d5f45d43b85dad65cfba8ef073e198efc4464f4ecbe`  
		Last Modified: Tue, 20 Oct 2026 17:47:29 GMT  
		Size: 242.4 MB (242378057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:8fe0aa797c502b2b147b2bb3817388458772b1c3548196aa56056289cb767351
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e26db12a750b3b6b3e89bb6e5f369979e89b3fa2f720d0e2b878cc70b3835c06`

```dockerfile
```

-	Layers:
	-	`sha256:83eaece113cadcf1a74c28b196cd29fb243d69cd97968dc7067a1dd28390a9b4`  
		Last Modified: Tue, 20 Oct 2026 17:47:22 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:bd1c105746d94a700aff29750e55a45931716af3369314d4b1c0946e47935d8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230534037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15254be7f76beaa365eacaf0ee6d522a06cbc82b43c30ebbdb6cb44700030d3f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:47:04 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:47:04 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:47:04 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:47:04 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:47:04 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:47:12 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402c5a8f8d60b90dc3b14462fe71edf39f1702d3eef18a9bea4ea9e004cc438e`  
		Last Modified: Tue, 20 Oct 2026 17:47:36 GMT  
		Size: 37.5 MB (37531850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5bb561d5d1d636ddbde1f5d91c33224ea4c2d6c2bdd886b5809e16396678232`  
		Last Modified: Tue, 20 Oct 2026 17:47:35 GMT  
		Size: 1.3 MB (1273043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718e3ad6e6871f1f4d8272413ef4d4e4096a369e11c2b53f662cec21888c0114`  
		Last Modified: Tue, 20 Oct 2026 17:47:40 GMT  
		Size: 165.5 MB (165470934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:baa80d06e89d694c95b3e25dcaaea0c9219ebd55c1187bfc141292bed4f9d0e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fa1c7ca4be94efb2adb08f5b9a4f82c8b18c6553ac60089b71ad324914c0980`

```dockerfile
```

-	Layers:
	-	`sha256:94f1a065046b40f4397fa9b4b4b122603b4d4e2f923488f72abab820f79ce7f8`  
		Last Modified: Tue, 20 Oct 2026 17:47:34 GMT  
		Size: 20.8 KB (20769 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee2a13da971e5ff297517a5c407292b52136ef7fbcc1c7b192e885208a752dfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315318668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93bbb4f37f261e8474a84cafe7b4df6e48cff7640ecf7e8426978090abb50ef`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:46:57 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:46:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:46:57 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:46:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:46:57 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:47:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:256baba212573177e68316f791c402c66827c1f5921f7b95d7374e3941eedbd7`  
		Last Modified: Tue, 20 Oct 2026 17:47:42 GMT  
		Size: 42.3 MB (42338414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbdd0037ee2214ba2de54302ef83e434653f552f7a49e1431be6358e6eae700`  
		Last Modified: Tue, 20 Oct 2026 17:47:40 GMT  
		Size: 1.6 MB (1564400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8088b466da17df5dbdaf320611723c82f997909dbf7c02462ecd6bd22ee53058`  
		Last Modified: Tue, 20 Oct 2026 17:48:00 GMT  
		Size: 241.2 MB (241215540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:75166df427646b58f25aafac80085386337fa65d86f9fb279657f6ca2eaa13c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee539d23959980161e8d18843702c156f1a1458d9a24af9142e6f382968070b9`

```dockerfile
```

-	Layers:
	-	`sha256:78b4e2dac12eec1fabd8bf2250ad334803f1f330f782674aa2491ae73348d89f`  
		Last Modified: Tue, 20 Oct 2026 17:47:39 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; riscv64

```console
$ docker pull dart@sha256:e072533a579551e026db3fd7b74b6a3a1a5f9bb23be56f1eb4d9e05896288844
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252772829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36adce5abde40dead005f4d30a8490d673126519495a587848696bd27315e384`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:48:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:48:41 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:48:41 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:48:41 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:48:41 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:49:30 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8cc052fde60a7a6964734c9160d9e5b6bcb90a74766513300e3156590e007f2`  
		Last Modified: Tue, 20 Oct 2026 17:53:57 GMT  
		Size: 41.6 MB (41600589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e82001fd895bcb4d7572df02e77c6a9efc3262773646e35f74fa95566ba3d26`  
		Last Modified: Tue, 20 Oct 2026 17:53:45 GMT  
		Size: 1.6 MB (1563908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283608222c0e75b179e41232471ca01d44619045715fd544a18e488fe0ae1671`  
		Last Modified: Tue, 20 Oct 2026 17:54:17 GMT  
		Size: 181.3 MB (181274537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:ba1ff18fe0977deaa30093ae0af18307aa03eed9d3a43efbe939294390fa248d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb2de183a85d5cac4d1fc87332e0051165551fcc26d6fa76f42975c030b7e16`

```dockerfile
```

-	Layers:
	-	`sha256:2ea8ac65b87a36e4cbf23fc6626af69bb966a83497f6e84c3f57c6eec86390a9`  
		Last Modified: Tue, 20 Oct 2026 17:53:44 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:stable`

```console
$ docker pull dart@sha256:8dafcab3a8e474b49a2591b1db3b9d5d3915f1f36a396ec68d7726923ceb114f
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
$ docker pull dart@sha256:e3e430f1141efb1e4986986a734ecea7c19f2aed5047c246ff0246a330aea4c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316623112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a56ce91c76ef414157b4200a2c49b88e4f1adbf045dadf36f0ee82320676a13`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:46:46 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:46:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:46:46 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:46:46 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:46:46 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:46:56 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8206c70183f56da7140b02c25630b9bb7d5373e0e2205e3de39bf0284057baf0`  
		Last Modified: Tue, 20 Oct 2026 17:47:25 GMT  
		Size: 42.5 MB (42532005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750a555f858e43419943e5933558e54998cf005bb9ea818b07970227bdce9a7a`  
		Last Modified: Tue, 20 Oct 2026 17:47:23 GMT  
		Size: 1.9 MB (1869668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5bbae304844934c93ad2d5f45d43b85dad65cfba8ef073e198efc4464f4ecbe`  
		Last Modified: Tue, 20 Oct 2026 17:47:29 GMT  
		Size: 242.4 MB (242378057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:8fe0aa797c502b2b147b2bb3817388458772b1c3548196aa56056289cb767351
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e26db12a750b3b6b3e89bb6e5f369979e89b3fa2f720d0e2b878cc70b3835c06`

```dockerfile
```

-	Layers:
	-	`sha256:83eaece113cadcf1a74c28b196cd29fb243d69cd97968dc7067a1dd28390a9b4`  
		Last Modified: Tue, 20 Oct 2026 17:47:22 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; arm variant v7

```console
$ docker pull dart@sha256:bd1c105746d94a700aff29750e55a45931716af3369314d4b1c0946e47935d8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230534037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15254be7f76beaa365eacaf0ee6d522a06cbc82b43c30ebbdb6cb44700030d3f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:47:04 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:47:04 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:47:04 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:47:04 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:47:04 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:47:12 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402c5a8f8d60b90dc3b14462fe71edf39f1702d3eef18a9bea4ea9e004cc438e`  
		Last Modified: Tue, 20 Oct 2026 17:47:36 GMT  
		Size: 37.5 MB (37531850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5bb561d5d1d636ddbde1f5d91c33224ea4c2d6c2bdd886b5809e16396678232`  
		Last Modified: Tue, 20 Oct 2026 17:47:35 GMT  
		Size: 1.3 MB (1273043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718e3ad6e6871f1f4d8272413ef4d4e4096a369e11c2b53f662cec21888c0114`  
		Last Modified: Tue, 20 Oct 2026 17:47:40 GMT  
		Size: 165.5 MB (165470934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:baa80d06e89d694c95b3e25dcaaea0c9219ebd55c1187bfc141292bed4f9d0e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fa1c7ca4be94efb2adb08f5b9a4f82c8b18c6553ac60089b71ad324914c0980`

```dockerfile
```

-	Layers:
	-	`sha256:94f1a065046b40f4397fa9b4b4b122603b4d4e2f923488f72abab820f79ce7f8`  
		Last Modified: Tue, 20 Oct 2026 17:47:34 GMT  
		Size: 20.8 KB (20769 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee2a13da971e5ff297517a5c407292b52136ef7fbcc1c7b192e885208a752dfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315318668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93bbb4f37f261e8474a84cafe7b4df6e48cff7640ecf7e8426978090abb50ef`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:46:57 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:46:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:46:57 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:46:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:46:57 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:47:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:256baba212573177e68316f791c402c66827c1f5921f7b95d7374e3941eedbd7`  
		Last Modified: Tue, 20 Oct 2026 17:47:42 GMT  
		Size: 42.3 MB (42338414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbdd0037ee2214ba2de54302ef83e434653f552f7a49e1431be6358e6eae700`  
		Last Modified: Tue, 20 Oct 2026 17:47:40 GMT  
		Size: 1.6 MB (1564400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8088b466da17df5dbdaf320611723c82f997909dbf7c02462ecd6bd22ee53058`  
		Last Modified: Tue, 20 Oct 2026 17:48:00 GMT  
		Size: 241.2 MB (241215540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:75166df427646b58f25aafac80085386337fa65d86f9fb279657f6ca2eaa13c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee539d23959980161e8d18843702c156f1a1458d9a24af9142e6f382968070b9`

```dockerfile
```

-	Layers:
	-	`sha256:78b4e2dac12eec1fabd8bf2250ad334803f1f330f782674aa2491ae73348d89f`  
		Last Modified: Tue, 20 Oct 2026 17:47:39 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; riscv64

```console
$ docker pull dart@sha256:e072533a579551e026db3fd7b74b6a3a1a5f9bb23be56f1eb4d9e05896288844
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252772829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36adce5abde40dead005f4d30a8490d673126519495a587848696bd27315e384`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:48:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:48:41 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:48:41 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:48:41 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:48:41 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:49:30 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8cc052fde60a7a6964734c9160d9e5b6bcb90a74766513300e3156590e007f2`  
		Last Modified: Tue, 20 Oct 2026 17:53:57 GMT  
		Size: 41.6 MB (41600589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e82001fd895bcb4d7572df02e77c6a9efc3262773646e35f74fa95566ba3d26`  
		Last Modified: Tue, 20 Oct 2026 17:53:45 GMT  
		Size: 1.6 MB (1563908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283608222c0e75b179e41232471ca01d44619045715fd544a18e488fe0ae1671`  
		Last Modified: Tue, 20 Oct 2026 17:54:17 GMT  
		Size: 181.3 MB (181274537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:ba1ff18fe0977deaa30093ae0af18307aa03eed9d3a43efbe939294390fa248d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb2de183a85d5cac4d1fc87332e0051165551fcc26d6fa76f42975c030b7e16`

```dockerfile
```

-	Layers:
	-	`sha256:2ea8ac65b87a36e4cbf23fc6626af69bb966a83497f6e84c3f57c6eec86390a9`  
		Last Modified: Tue, 20 Oct 2026 17:53:44 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:stable-sdk`

```console
$ docker pull dart@sha256:8dafcab3a8e474b49a2591b1db3b9d5d3915f1f36a396ec68d7726923ceb114f
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
$ docker pull dart@sha256:e3e430f1141efb1e4986986a734ecea7c19f2aed5047c246ff0246a330aea4c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316623112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a56ce91c76ef414157b4200a2c49b88e4f1adbf045dadf36f0ee82320676a13`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:46:46 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:46:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:46:46 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:46:46 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:46:46 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:46:56 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8206c70183f56da7140b02c25630b9bb7d5373e0e2205e3de39bf0284057baf0`  
		Last Modified: Tue, 20 Oct 2026 17:47:25 GMT  
		Size: 42.5 MB (42532005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750a555f858e43419943e5933558e54998cf005bb9ea818b07970227bdce9a7a`  
		Last Modified: Tue, 20 Oct 2026 17:47:23 GMT  
		Size: 1.9 MB (1869668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5bbae304844934c93ad2d5f45d43b85dad65cfba8ef073e198efc4464f4ecbe`  
		Last Modified: Tue, 20 Oct 2026 17:47:29 GMT  
		Size: 242.4 MB (242378057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:8fe0aa797c502b2b147b2bb3817388458772b1c3548196aa56056289cb767351
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e26db12a750b3b6b3e89bb6e5f369979e89b3fa2f720d0e2b878cc70b3835c06`

```dockerfile
```

-	Layers:
	-	`sha256:83eaece113cadcf1a74c28b196cd29fb243d69cd97968dc7067a1dd28390a9b4`  
		Last Modified: Tue, 20 Oct 2026 17:47:22 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:bd1c105746d94a700aff29750e55a45931716af3369314d4b1c0946e47935d8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230534037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15254be7f76beaa365eacaf0ee6d522a06cbc82b43c30ebbdb6cb44700030d3f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:47:04 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:47:04 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:47:04 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:47:04 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:47:04 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:47:12 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402c5a8f8d60b90dc3b14462fe71edf39f1702d3eef18a9bea4ea9e004cc438e`  
		Last Modified: Tue, 20 Oct 2026 17:47:36 GMT  
		Size: 37.5 MB (37531850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5bb561d5d1d636ddbde1f5d91c33224ea4c2d6c2bdd886b5809e16396678232`  
		Last Modified: Tue, 20 Oct 2026 17:47:35 GMT  
		Size: 1.3 MB (1273043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718e3ad6e6871f1f4d8272413ef4d4e4096a369e11c2b53f662cec21888c0114`  
		Last Modified: Tue, 20 Oct 2026 17:47:40 GMT  
		Size: 165.5 MB (165470934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:baa80d06e89d694c95b3e25dcaaea0c9219ebd55c1187bfc141292bed4f9d0e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fa1c7ca4be94efb2adb08f5b9a4f82c8b18c6553ac60089b71ad324914c0980`

```dockerfile
```

-	Layers:
	-	`sha256:94f1a065046b40f4397fa9b4b4b122603b4d4e2f923488f72abab820f79ce7f8`  
		Last Modified: Tue, 20 Oct 2026 17:47:34 GMT  
		Size: 20.8 KB (20769 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:ee2a13da971e5ff297517a5c407292b52136ef7fbcc1c7b192e885208a752dfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315318668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93bbb4f37f261e8474a84cafe7b4df6e48cff7640ecf7e8426978090abb50ef`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:46:57 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:46:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:46:57 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:46:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:46:57 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:47:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:256baba212573177e68316f791c402c66827c1f5921f7b95d7374e3941eedbd7`  
		Last Modified: Tue, 20 Oct 2026 17:47:42 GMT  
		Size: 42.3 MB (42338414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbdd0037ee2214ba2de54302ef83e434653f552f7a49e1431be6358e6eae700`  
		Last Modified: Tue, 20 Oct 2026 17:47:40 GMT  
		Size: 1.6 MB (1564400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8088b466da17df5dbdaf320611723c82f997909dbf7c02462ecd6bd22ee53058`  
		Last Modified: Tue, 20 Oct 2026 17:48:00 GMT  
		Size: 241.2 MB (241215540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:75166df427646b58f25aafac80085386337fa65d86f9fb279657f6ca2eaa13c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee539d23959980161e8d18843702c156f1a1458d9a24af9142e6f382968070b9`

```dockerfile
```

-	Layers:
	-	`sha256:78b4e2dac12eec1fabd8bf2250ad334803f1f330f782674aa2491ae73348d89f`  
		Last Modified: Tue, 20 Oct 2026 17:47:39 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:e072533a579551e026db3fd7b74b6a3a1a5f9bb23be56f1eb4d9e05896288844
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252772829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36adce5abde40dead005f4d30a8490d673126519495a587848696bd27315e384`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:48:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:48:41 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:48:41 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:48:41 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:48:41 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:49:30 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8cc052fde60a7a6964734c9160d9e5b6bcb90a74766513300e3156590e007f2`  
		Last Modified: Tue, 20 Oct 2026 17:53:57 GMT  
		Size: 41.6 MB (41600589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e82001fd895bcb4d7572df02e77c6a9efc3262773646e35f74fa95566ba3d26`  
		Last Modified: Tue, 20 Oct 2026 17:53:45 GMT  
		Size: 1.6 MB (1563908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283608222c0e75b179e41232471ca01d44619045715fd544a18e488fe0ae1671`  
		Last Modified: Tue, 20 Oct 2026 17:54:17 GMT  
		Size: 181.3 MB (181274537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:ba1ff18fe0977deaa30093ae0af18307aa03eed9d3a43efbe939294390fa248d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb2de183a85d5cac4d1fc87332e0051165551fcc26d6fa76f42975c030b7e16`

```dockerfile
```

-	Layers:
	-	`sha256:2ea8ac65b87a36e4cbf23fc6626af69bb966a83497f6e84c3f57c6eec86390a9`  
		Last Modified: Tue, 20 Oct 2026 17:53:44 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json
