<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `dart`

-	[`dart:3`](#dart3)
-	[`dart:3-sdk`](#dart3-sdk)
-	[`dart:3.13`](#dart313)
-	[`dart:3.13-sdk`](#dart313-sdk)
-	[`dart:3.13.5`](#dart3135)
-	[`dart:3.13.5-sdk`](#dart3135-sdk)
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
$ docker pull dart@sha256:4a8b7e1546c96c514bf94e591cfa38345ceadd209f572dc2829551a0a3fe6e78
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
$ docker pull dart@sha256:39e32992047a34be0a6b2d4839a0ba255fc18d40c868bc4146611d0ff34bf861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316609938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:507719697296a59873d029a038ba7d82436063eaeeed73b63a5151f3d1a9c912`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:49 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 01:41:49 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 01:41:49 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:41:49 GMT
WORKDIR /root
# Tue, 06 Oct 2026 01:42:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7e4b7de958a428542c296a6e1383987afa6d03285a4d74c0826af0c7bf74b2e`  
		Last Modified: Tue, 06 Oct 2026 01:42:28 GMT  
		Size: 42.5 MB (42526115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed83b7d1ff38abe0bfd3c72d001f51e90a2ea321a2b5475e1a54ee977ebd0e5f`  
		Last Modified: Tue, 06 Oct 2026 01:42:26 GMT  
		Size: 1.9 MB (1869672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4a21a681fa76ea094a341abe6d6d83ec08824a87c224727cc6336bf36c5f957`  
		Last Modified: Tue, 06 Oct 2026 01:42:32 GMT  
		Size: 242.4 MB (242370769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:fb831617571220ad8a4ea7437adf97ba567d652472323b90c89bd4e98dd86533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f7f123b49958884cc88b11ddbe27e899f49c76620a05650a6f309845829f7bc`

```dockerfile
```

-	Layers:
	-	`sha256:7a0a247f74c845bbd942a6717134912927a53e3510765701f113bf277c34a5d7`  
		Last Modified: Tue, 06 Oct 2026 01:42:26 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; arm variant v7

```console
$ docker pull dart@sha256:1ce9437c63a73369988fed49a25712595af1ce78a5358072a177545417920379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230531186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54b74812d40939b345665529dcc1b977ab7751111af58e406b95c7945c7e32b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:25:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:25:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 02:25:24 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 02:25:24 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:25:24 GMT
WORKDIR /root
# Tue, 06 Oct 2026 02:25:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b42d6822016ab159d1ec29ae72cb579c90ce4d89f7d37ab20308f33dff8f54d4`  
		Last Modified: Tue, 06 Oct 2026 02:25:57 GMT  
		Size: 37.5 MB (37528208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:133633f5500e2ffeafa3f74c54a6d0e81613524f2aeca590497a988d31b855ab`  
		Last Modified: Tue, 06 Oct 2026 02:25:55 GMT  
		Size: 1.3 MB (1273040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:152b4975a1adc8963c3687d5f4ad5a1ab3fc5f1b2f5600f3e31f7292ecc4454c`  
		Last Modified: Tue, 06 Oct 2026 02:26:00 GMT  
		Size: 165.5 MB (165471728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:8a89497d639bd1b4431e2fcf086b80e6dec95ad0a68a4b18059defa110d42328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:829d760a01bf55511f05fe2fa48dc8390039ea1e01d8ff14c68ce55e14503498`

```dockerfile
```

-	Layers:
	-	`sha256:cf203812e873f3d64d5523950ede566cc4f5dfd1ba8d5cd02159d4e179b11a02`  
		Last Modified: Tue, 06 Oct 2026 02:25:55 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:8960f0d63e27408462db4577afa66a75dc6b7d24a7c3158c8e453b53b274f348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315304033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5374c72e9b27f7becfc2d55df706135b1e6c89490fa47242f144bc1cfe8af4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:58 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 01:44:59 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:44:59 GMT
WORKDIR /root
# Tue, 06 Oct 2026 01:45:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d131d3bbbb7bd36d1758d81d2959f118f741dcc8ea937750f293f0075888229a`  
		Last Modified: Tue, 06 Oct 2026 01:45:41 GMT  
		Size: 42.3 MB (42320144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d59102cb85b36d03615cc06dae7ffc5b395e0bfaae59f39178a043457a0c619`  
		Last Modified: Tue, 06 Oct 2026 01:45:39 GMT  
		Size: 1.6 MB (1564420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3afd39a2545c7dfc05cd58d2ae75baa6ac2988880d7b9fc6c5ac4d38cf6bc7f`  
		Last Modified: Tue, 06 Oct 2026 01:45:44 GMT  
		Size: 241.2 MB (241219155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:b2970e8737d5080701fcaf6428103776a753826343fc4faf623433a18a383545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6749345a2cb8e77d49cd63e1cafca23ccc247149cb2ae0f11ab4f4a51a4b49b`

```dockerfile
```

-	Layers:
	-	`sha256:87750530902cb576bd0ac8003d8c53e58c45e09497e35603e47cc6205a97bd69`  
		Last Modified: Tue, 06 Oct 2026 01:45:39 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; riscv64

```console
$ docker pull dart@sha256:0b1d5cae7480a6fedf4dce6392c8b47e0c2d4675cf42b709ca372f0f642eb69c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255389371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab85f9a1cbac6d7bcf4f68aca019b9e3c0d593c0bfc9285424021771168eb60`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Thu, 01 Oct 2026 14:48:20 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 14:48:22 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 01 Oct 2026 14:48:22 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 01 Oct 2026 14:48:22 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 14:48:22 GMT
WORKDIR /root
# Thu, 01 Oct 2026 14:49:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3cf0197a69ba5d69d9f03c7d97786aaa146cd8fdfd45fb00f5109d193ccbe81e`  
		Last Modified: Sat, 19 Sep 2026 04:09:02 GMT  
		Size: 28.3 MB (28324384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24044377644e6a96d6fdb39b75d0e90398f9b12bdcd0843a10ca941ef7f4e8ad`  
		Last Modified: Thu, 01 Oct 2026 14:53:33 GMT  
		Size: 44.2 MB (44226198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316453b2b0417e5737b7e2d9e2c446c447ecf911c67bd14856bac54b6c0f4dc7`  
		Last Modified: Thu, 01 Oct 2026 14:53:21 GMT  
		Size: 1.6 MB (1563911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d737f1dfb04e54e5a9fc19c422e359aca7560e41286c3730a0966353a90569`  
		Last Modified: Thu, 01 Oct 2026 14:53:53 GMT  
		Size: 181.3 MB (181274846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:b347a6e3728f1beaa90eec9694fcb5c03b0950970924634466f3d27c606569c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d634ad438bccf435cad4958ece83a8938805374be6677612cc2c942a0f972c32`

```dockerfile
```

-	Layers:
	-	`sha256:138b7929113c0c05638873aac43cb6cf15ae658b3d103fac9f383c571430c4d8`  
		Last Modified: Thu, 01 Oct 2026 14:53:21 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3-sdk`

```console
$ docker pull dart@sha256:4a8b7e1546c96c514bf94e591cfa38345ceadd209f572dc2829551a0a3fe6e78
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
$ docker pull dart@sha256:39e32992047a34be0a6b2d4839a0ba255fc18d40c868bc4146611d0ff34bf861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316609938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:507719697296a59873d029a038ba7d82436063eaeeed73b63a5151f3d1a9c912`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:49 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 01:41:49 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 01:41:49 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:41:49 GMT
WORKDIR /root
# Tue, 06 Oct 2026 01:42:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7e4b7de958a428542c296a6e1383987afa6d03285a4d74c0826af0c7bf74b2e`  
		Last Modified: Tue, 06 Oct 2026 01:42:28 GMT  
		Size: 42.5 MB (42526115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed83b7d1ff38abe0bfd3c72d001f51e90a2ea321a2b5475e1a54ee977ebd0e5f`  
		Last Modified: Tue, 06 Oct 2026 01:42:26 GMT  
		Size: 1.9 MB (1869672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4a21a681fa76ea094a341abe6d6d83ec08824a87c224727cc6336bf36c5f957`  
		Last Modified: Tue, 06 Oct 2026 01:42:32 GMT  
		Size: 242.4 MB (242370769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:fb831617571220ad8a4ea7437adf97ba567d652472323b90c89bd4e98dd86533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f7f123b49958884cc88b11ddbe27e899f49c76620a05650a6f309845829f7bc`

```dockerfile
```

-	Layers:
	-	`sha256:7a0a247f74c845bbd942a6717134912927a53e3510765701f113bf277c34a5d7`  
		Last Modified: Tue, 06 Oct 2026 01:42:26 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:1ce9437c63a73369988fed49a25712595af1ce78a5358072a177545417920379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230531186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54b74812d40939b345665529dcc1b977ab7751111af58e406b95c7945c7e32b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:25:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:25:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 02:25:24 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 02:25:24 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:25:24 GMT
WORKDIR /root
# Tue, 06 Oct 2026 02:25:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b42d6822016ab159d1ec29ae72cb579c90ce4d89f7d37ab20308f33dff8f54d4`  
		Last Modified: Tue, 06 Oct 2026 02:25:57 GMT  
		Size: 37.5 MB (37528208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:133633f5500e2ffeafa3f74c54a6d0e81613524f2aeca590497a988d31b855ab`  
		Last Modified: Tue, 06 Oct 2026 02:25:55 GMT  
		Size: 1.3 MB (1273040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:152b4975a1adc8963c3687d5f4ad5a1ab3fc5f1b2f5600f3e31f7292ecc4454c`  
		Last Modified: Tue, 06 Oct 2026 02:26:00 GMT  
		Size: 165.5 MB (165471728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:8a89497d639bd1b4431e2fcf086b80e6dec95ad0a68a4b18059defa110d42328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:829d760a01bf55511f05fe2fa48dc8390039ea1e01d8ff14c68ce55e14503498`

```dockerfile
```

-	Layers:
	-	`sha256:cf203812e873f3d64d5523950ede566cc4f5dfd1ba8d5cd02159d4e179b11a02`  
		Last Modified: Tue, 06 Oct 2026 02:25:55 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:8960f0d63e27408462db4577afa66a75dc6b7d24a7c3158c8e453b53b274f348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315304033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5374c72e9b27f7becfc2d55df706135b1e6c89490fa47242f144bc1cfe8af4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:58 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 01:44:59 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:44:59 GMT
WORKDIR /root
# Tue, 06 Oct 2026 01:45:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d131d3bbbb7bd36d1758d81d2959f118f741dcc8ea937750f293f0075888229a`  
		Last Modified: Tue, 06 Oct 2026 01:45:41 GMT  
		Size: 42.3 MB (42320144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d59102cb85b36d03615cc06dae7ffc5b395e0bfaae59f39178a043457a0c619`  
		Last Modified: Tue, 06 Oct 2026 01:45:39 GMT  
		Size: 1.6 MB (1564420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3afd39a2545c7dfc05cd58d2ae75baa6ac2988880d7b9fc6c5ac4d38cf6bc7f`  
		Last Modified: Tue, 06 Oct 2026 01:45:44 GMT  
		Size: 241.2 MB (241219155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:b2970e8737d5080701fcaf6428103776a753826343fc4faf623433a18a383545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6749345a2cb8e77d49cd63e1cafca23ccc247149cb2ae0f11ab4f4a51a4b49b`

```dockerfile
```

-	Layers:
	-	`sha256:87750530902cb576bd0ac8003d8c53e58c45e09497e35603e47cc6205a97bd69`  
		Last Modified: Tue, 06 Oct 2026 01:45:39 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:0b1d5cae7480a6fedf4dce6392c8b47e0c2d4675cf42b709ca372f0f642eb69c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255389371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab85f9a1cbac6d7bcf4f68aca019b9e3c0d593c0bfc9285424021771168eb60`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Thu, 01 Oct 2026 14:48:20 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 14:48:22 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 01 Oct 2026 14:48:22 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 01 Oct 2026 14:48:22 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 14:48:22 GMT
WORKDIR /root
# Thu, 01 Oct 2026 14:49:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3cf0197a69ba5d69d9f03c7d97786aaa146cd8fdfd45fb00f5109d193ccbe81e`  
		Last Modified: Sat, 19 Sep 2026 04:09:02 GMT  
		Size: 28.3 MB (28324384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24044377644e6a96d6fdb39b75d0e90398f9b12bdcd0843a10ca941ef7f4e8ad`  
		Last Modified: Thu, 01 Oct 2026 14:53:33 GMT  
		Size: 44.2 MB (44226198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316453b2b0417e5737b7e2d9e2c446c447ecf911c67bd14856bac54b6c0f4dc7`  
		Last Modified: Thu, 01 Oct 2026 14:53:21 GMT  
		Size: 1.6 MB (1563911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d737f1dfb04e54e5a9fc19c422e359aca7560e41286c3730a0966353a90569`  
		Last Modified: Thu, 01 Oct 2026 14:53:53 GMT  
		Size: 181.3 MB (181274846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:b347a6e3728f1beaa90eec9694fcb5c03b0950970924634466f3d27c606569c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d634ad438bccf435cad4958ece83a8938805374be6677612cc2c942a0f972c32`

```dockerfile
```

-	Layers:
	-	`sha256:138b7929113c0c05638873aac43cb6cf15ae658b3d103fac9f383c571430c4d8`  
		Last Modified: Thu, 01 Oct 2026 14:53:21 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13`

```console
$ docker pull dart@sha256:4a8b7e1546c96c514bf94e591cfa38345ceadd209f572dc2829551a0a3fe6e78
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
$ docker pull dart@sha256:39e32992047a34be0a6b2d4839a0ba255fc18d40c868bc4146611d0ff34bf861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316609938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:507719697296a59873d029a038ba7d82436063eaeeed73b63a5151f3d1a9c912`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:49 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 01:41:49 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 01:41:49 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:41:49 GMT
WORKDIR /root
# Tue, 06 Oct 2026 01:42:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7e4b7de958a428542c296a6e1383987afa6d03285a4d74c0826af0c7bf74b2e`  
		Last Modified: Tue, 06 Oct 2026 01:42:28 GMT  
		Size: 42.5 MB (42526115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed83b7d1ff38abe0bfd3c72d001f51e90a2ea321a2b5475e1a54ee977ebd0e5f`  
		Last Modified: Tue, 06 Oct 2026 01:42:26 GMT  
		Size: 1.9 MB (1869672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4a21a681fa76ea094a341abe6d6d83ec08824a87c224727cc6336bf36c5f957`  
		Last Modified: Tue, 06 Oct 2026 01:42:32 GMT  
		Size: 242.4 MB (242370769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:fb831617571220ad8a4ea7437adf97ba567d652472323b90c89bd4e98dd86533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f7f123b49958884cc88b11ddbe27e899f49c76620a05650a6f309845829f7bc`

```dockerfile
```

-	Layers:
	-	`sha256:7a0a247f74c845bbd942a6717134912927a53e3510765701f113bf277c34a5d7`  
		Last Modified: Tue, 06 Oct 2026 01:42:26 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13` - linux; arm variant v7

```console
$ docker pull dart@sha256:1ce9437c63a73369988fed49a25712595af1ce78a5358072a177545417920379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230531186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54b74812d40939b345665529dcc1b977ab7751111af58e406b95c7945c7e32b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:25:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:25:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 02:25:24 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 02:25:24 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:25:24 GMT
WORKDIR /root
# Tue, 06 Oct 2026 02:25:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b42d6822016ab159d1ec29ae72cb579c90ce4d89f7d37ab20308f33dff8f54d4`  
		Last Modified: Tue, 06 Oct 2026 02:25:57 GMT  
		Size: 37.5 MB (37528208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:133633f5500e2ffeafa3f74c54a6d0e81613524f2aeca590497a988d31b855ab`  
		Last Modified: Tue, 06 Oct 2026 02:25:55 GMT  
		Size: 1.3 MB (1273040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:152b4975a1adc8963c3687d5f4ad5a1ab3fc5f1b2f5600f3e31f7292ecc4454c`  
		Last Modified: Tue, 06 Oct 2026 02:26:00 GMT  
		Size: 165.5 MB (165471728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:8a89497d639bd1b4431e2fcf086b80e6dec95ad0a68a4b18059defa110d42328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:829d760a01bf55511f05fe2fa48dc8390039ea1e01d8ff14c68ce55e14503498`

```dockerfile
```

-	Layers:
	-	`sha256:cf203812e873f3d64d5523950ede566cc4f5dfd1ba8d5cd02159d4e179b11a02`  
		Last Modified: Tue, 06 Oct 2026 02:25:55 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:8960f0d63e27408462db4577afa66a75dc6b7d24a7c3158c8e453b53b274f348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315304033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5374c72e9b27f7becfc2d55df706135b1e6c89490fa47242f144bc1cfe8af4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:58 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 01:44:59 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:44:59 GMT
WORKDIR /root
# Tue, 06 Oct 2026 01:45:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d131d3bbbb7bd36d1758d81d2959f118f741dcc8ea937750f293f0075888229a`  
		Last Modified: Tue, 06 Oct 2026 01:45:41 GMT  
		Size: 42.3 MB (42320144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d59102cb85b36d03615cc06dae7ffc5b395e0bfaae59f39178a043457a0c619`  
		Last Modified: Tue, 06 Oct 2026 01:45:39 GMT  
		Size: 1.6 MB (1564420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3afd39a2545c7dfc05cd58d2ae75baa6ac2988880d7b9fc6c5ac4d38cf6bc7f`  
		Last Modified: Tue, 06 Oct 2026 01:45:44 GMT  
		Size: 241.2 MB (241219155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:b2970e8737d5080701fcaf6428103776a753826343fc4faf623433a18a383545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6749345a2cb8e77d49cd63e1cafca23ccc247149cb2ae0f11ab4f4a51a4b49b`

```dockerfile
```

-	Layers:
	-	`sha256:87750530902cb576bd0ac8003d8c53e58c45e09497e35603e47cc6205a97bd69`  
		Last Modified: Tue, 06 Oct 2026 01:45:39 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13` - linux; riscv64

```console
$ docker pull dart@sha256:0b1d5cae7480a6fedf4dce6392c8b47e0c2d4675cf42b709ca372f0f642eb69c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255389371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab85f9a1cbac6d7bcf4f68aca019b9e3c0d593c0bfc9285424021771168eb60`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Thu, 01 Oct 2026 14:48:20 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 14:48:22 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 01 Oct 2026 14:48:22 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 01 Oct 2026 14:48:22 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 14:48:22 GMT
WORKDIR /root
# Thu, 01 Oct 2026 14:49:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3cf0197a69ba5d69d9f03c7d97786aaa146cd8fdfd45fb00f5109d193ccbe81e`  
		Last Modified: Sat, 19 Sep 2026 04:09:02 GMT  
		Size: 28.3 MB (28324384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24044377644e6a96d6fdb39b75d0e90398f9b12bdcd0843a10ca941ef7f4e8ad`  
		Last Modified: Thu, 01 Oct 2026 14:53:33 GMT  
		Size: 44.2 MB (44226198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316453b2b0417e5737b7e2d9e2c446c447ecf911c67bd14856bac54b6c0f4dc7`  
		Last Modified: Thu, 01 Oct 2026 14:53:21 GMT  
		Size: 1.6 MB (1563911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d737f1dfb04e54e5a9fc19c422e359aca7560e41286c3730a0966353a90569`  
		Last Modified: Thu, 01 Oct 2026 14:53:53 GMT  
		Size: 181.3 MB (181274846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:b347a6e3728f1beaa90eec9694fcb5c03b0950970924634466f3d27c606569c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d634ad438bccf435cad4958ece83a8938805374be6677612cc2c942a0f972c32`

```dockerfile
```

-	Layers:
	-	`sha256:138b7929113c0c05638873aac43cb6cf15ae658b3d103fac9f383c571430c4d8`  
		Last Modified: Thu, 01 Oct 2026 14:53:21 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13-sdk`

```console
$ docker pull dart@sha256:4a8b7e1546c96c514bf94e591cfa38345ceadd209f572dc2829551a0a3fe6e78
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
$ docker pull dart@sha256:39e32992047a34be0a6b2d4839a0ba255fc18d40c868bc4146611d0ff34bf861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316609938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:507719697296a59873d029a038ba7d82436063eaeeed73b63a5151f3d1a9c912`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:49 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 01:41:49 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 01:41:49 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:41:49 GMT
WORKDIR /root
# Tue, 06 Oct 2026 01:42:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7e4b7de958a428542c296a6e1383987afa6d03285a4d74c0826af0c7bf74b2e`  
		Last Modified: Tue, 06 Oct 2026 01:42:28 GMT  
		Size: 42.5 MB (42526115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed83b7d1ff38abe0bfd3c72d001f51e90a2ea321a2b5475e1a54ee977ebd0e5f`  
		Last Modified: Tue, 06 Oct 2026 01:42:26 GMT  
		Size: 1.9 MB (1869672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4a21a681fa76ea094a341abe6d6d83ec08824a87c224727cc6336bf36c5f957`  
		Last Modified: Tue, 06 Oct 2026 01:42:32 GMT  
		Size: 242.4 MB (242370769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:fb831617571220ad8a4ea7437adf97ba567d652472323b90c89bd4e98dd86533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f7f123b49958884cc88b11ddbe27e899f49c76620a05650a6f309845829f7bc`

```dockerfile
```

-	Layers:
	-	`sha256:7a0a247f74c845bbd942a6717134912927a53e3510765701f113bf277c34a5d7`  
		Last Modified: Tue, 06 Oct 2026 01:42:26 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:1ce9437c63a73369988fed49a25712595af1ce78a5358072a177545417920379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230531186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54b74812d40939b345665529dcc1b977ab7751111af58e406b95c7945c7e32b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:25:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:25:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 02:25:24 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 02:25:24 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:25:24 GMT
WORKDIR /root
# Tue, 06 Oct 2026 02:25:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b42d6822016ab159d1ec29ae72cb579c90ce4d89f7d37ab20308f33dff8f54d4`  
		Last Modified: Tue, 06 Oct 2026 02:25:57 GMT  
		Size: 37.5 MB (37528208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:133633f5500e2ffeafa3f74c54a6d0e81613524f2aeca590497a988d31b855ab`  
		Last Modified: Tue, 06 Oct 2026 02:25:55 GMT  
		Size: 1.3 MB (1273040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:152b4975a1adc8963c3687d5f4ad5a1ab3fc5f1b2f5600f3e31f7292ecc4454c`  
		Last Modified: Tue, 06 Oct 2026 02:26:00 GMT  
		Size: 165.5 MB (165471728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:8a89497d639bd1b4431e2fcf086b80e6dec95ad0a68a4b18059defa110d42328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:829d760a01bf55511f05fe2fa48dc8390039ea1e01d8ff14c68ce55e14503498`

```dockerfile
```

-	Layers:
	-	`sha256:cf203812e873f3d64d5523950ede566cc4f5dfd1ba8d5cd02159d4e179b11a02`  
		Last Modified: Tue, 06 Oct 2026 02:25:55 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:8960f0d63e27408462db4577afa66a75dc6b7d24a7c3158c8e453b53b274f348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315304033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5374c72e9b27f7becfc2d55df706135b1e6c89490fa47242f144bc1cfe8af4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:58 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 01:44:59 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:44:59 GMT
WORKDIR /root
# Tue, 06 Oct 2026 01:45:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d131d3bbbb7bd36d1758d81d2959f118f741dcc8ea937750f293f0075888229a`  
		Last Modified: Tue, 06 Oct 2026 01:45:41 GMT  
		Size: 42.3 MB (42320144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d59102cb85b36d03615cc06dae7ffc5b395e0bfaae59f39178a043457a0c619`  
		Last Modified: Tue, 06 Oct 2026 01:45:39 GMT  
		Size: 1.6 MB (1564420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3afd39a2545c7dfc05cd58d2ae75baa6ac2988880d7b9fc6c5ac4d38cf6bc7f`  
		Last Modified: Tue, 06 Oct 2026 01:45:44 GMT  
		Size: 241.2 MB (241219155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:b2970e8737d5080701fcaf6428103776a753826343fc4faf623433a18a383545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6749345a2cb8e77d49cd63e1cafca23ccc247149cb2ae0f11ab4f4a51a4b49b`

```dockerfile
```

-	Layers:
	-	`sha256:87750530902cb576bd0ac8003d8c53e58c45e09497e35603e47cc6205a97bd69`  
		Last Modified: Tue, 06 Oct 2026 01:45:39 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:0b1d5cae7480a6fedf4dce6392c8b47e0c2d4675cf42b709ca372f0f642eb69c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255389371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab85f9a1cbac6d7bcf4f68aca019b9e3c0d593c0bfc9285424021771168eb60`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Thu, 01 Oct 2026 14:48:20 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 14:48:22 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 01 Oct 2026 14:48:22 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 01 Oct 2026 14:48:22 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 14:48:22 GMT
WORKDIR /root
# Thu, 01 Oct 2026 14:49:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3cf0197a69ba5d69d9f03c7d97786aaa146cd8fdfd45fb00f5109d193ccbe81e`  
		Last Modified: Sat, 19 Sep 2026 04:09:02 GMT  
		Size: 28.3 MB (28324384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24044377644e6a96d6fdb39b75d0e90398f9b12bdcd0843a10ca941ef7f4e8ad`  
		Last Modified: Thu, 01 Oct 2026 14:53:33 GMT  
		Size: 44.2 MB (44226198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316453b2b0417e5737b7e2d9e2c446c447ecf911c67bd14856bac54b6c0f4dc7`  
		Last Modified: Thu, 01 Oct 2026 14:53:21 GMT  
		Size: 1.6 MB (1563911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d737f1dfb04e54e5a9fc19c422e359aca7560e41286c3730a0966353a90569`  
		Last Modified: Thu, 01 Oct 2026 14:53:53 GMT  
		Size: 181.3 MB (181274846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:b347a6e3728f1beaa90eec9694fcb5c03b0950970924634466f3d27c606569c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d634ad438bccf435cad4958ece83a8938805374be6677612cc2c942a0f972c32`

```dockerfile
```

-	Layers:
	-	`sha256:138b7929113c0c05638873aac43cb6cf15ae658b3d103fac9f383c571430c4d8`  
		Last Modified: Thu, 01 Oct 2026 14:53:21 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13.5`

```console
$ docker pull dart@sha256:4a8b7e1546c96c514bf94e591cfa38345ceadd209f572dc2829551a0a3fe6e78
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

### `dart:3.13.5` - linux; amd64

```console
$ docker pull dart@sha256:39e32992047a34be0a6b2d4839a0ba255fc18d40c868bc4146611d0ff34bf861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316609938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:507719697296a59873d029a038ba7d82436063eaeeed73b63a5151f3d1a9c912`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:49 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 01:41:49 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 01:41:49 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:41:49 GMT
WORKDIR /root
# Tue, 06 Oct 2026 01:42:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7e4b7de958a428542c296a6e1383987afa6d03285a4d74c0826af0c7bf74b2e`  
		Last Modified: Tue, 06 Oct 2026 01:42:28 GMT  
		Size: 42.5 MB (42526115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed83b7d1ff38abe0bfd3c72d001f51e90a2ea321a2b5475e1a54ee977ebd0e5f`  
		Last Modified: Tue, 06 Oct 2026 01:42:26 GMT  
		Size: 1.9 MB (1869672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4a21a681fa76ea094a341abe6d6d83ec08824a87c224727cc6336bf36c5f957`  
		Last Modified: Tue, 06 Oct 2026 01:42:32 GMT  
		Size: 242.4 MB (242370769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.5` - unknown; unknown

```console
$ docker pull dart@sha256:fb831617571220ad8a4ea7437adf97ba567d652472323b90c89bd4e98dd86533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f7f123b49958884cc88b11ddbe27e899f49c76620a05650a6f309845829f7bc`

```dockerfile
```

-	Layers:
	-	`sha256:7a0a247f74c845bbd942a6717134912927a53e3510765701f113bf277c34a5d7`  
		Last Modified: Tue, 06 Oct 2026 01:42:26 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.5` - linux; arm variant v7

```console
$ docker pull dart@sha256:1ce9437c63a73369988fed49a25712595af1ce78a5358072a177545417920379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230531186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54b74812d40939b345665529dcc1b977ab7751111af58e406b95c7945c7e32b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:25:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:25:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 02:25:24 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 02:25:24 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:25:24 GMT
WORKDIR /root
# Tue, 06 Oct 2026 02:25:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b42d6822016ab159d1ec29ae72cb579c90ce4d89f7d37ab20308f33dff8f54d4`  
		Last Modified: Tue, 06 Oct 2026 02:25:57 GMT  
		Size: 37.5 MB (37528208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:133633f5500e2ffeafa3f74c54a6d0e81613524f2aeca590497a988d31b855ab`  
		Last Modified: Tue, 06 Oct 2026 02:25:55 GMT  
		Size: 1.3 MB (1273040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:152b4975a1adc8963c3687d5f4ad5a1ab3fc5f1b2f5600f3e31f7292ecc4454c`  
		Last Modified: Tue, 06 Oct 2026 02:26:00 GMT  
		Size: 165.5 MB (165471728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.5` - unknown; unknown

```console
$ docker pull dart@sha256:8a89497d639bd1b4431e2fcf086b80e6dec95ad0a68a4b18059defa110d42328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:829d760a01bf55511f05fe2fa48dc8390039ea1e01d8ff14c68ce55e14503498`

```dockerfile
```

-	Layers:
	-	`sha256:cf203812e873f3d64d5523950ede566cc4f5dfd1ba8d5cd02159d4e179b11a02`  
		Last Modified: Tue, 06 Oct 2026 02:25:55 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.5` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:8960f0d63e27408462db4577afa66a75dc6b7d24a7c3158c8e453b53b274f348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315304033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5374c72e9b27f7becfc2d55df706135b1e6c89490fa47242f144bc1cfe8af4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:58 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 01:44:59 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:44:59 GMT
WORKDIR /root
# Tue, 06 Oct 2026 01:45:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d131d3bbbb7bd36d1758d81d2959f118f741dcc8ea937750f293f0075888229a`  
		Last Modified: Tue, 06 Oct 2026 01:45:41 GMT  
		Size: 42.3 MB (42320144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d59102cb85b36d03615cc06dae7ffc5b395e0bfaae59f39178a043457a0c619`  
		Last Modified: Tue, 06 Oct 2026 01:45:39 GMT  
		Size: 1.6 MB (1564420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3afd39a2545c7dfc05cd58d2ae75baa6ac2988880d7b9fc6c5ac4d38cf6bc7f`  
		Last Modified: Tue, 06 Oct 2026 01:45:44 GMT  
		Size: 241.2 MB (241219155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.5` - unknown; unknown

```console
$ docker pull dart@sha256:b2970e8737d5080701fcaf6428103776a753826343fc4faf623433a18a383545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6749345a2cb8e77d49cd63e1cafca23ccc247149cb2ae0f11ab4f4a51a4b49b`

```dockerfile
```

-	Layers:
	-	`sha256:87750530902cb576bd0ac8003d8c53e58c45e09497e35603e47cc6205a97bd69`  
		Last Modified: Tue, 06 Oct 2026 01:45:39 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.5` - linux; riscv64

```console
$ docker pull dart@sha256:0b1d5cae7480a6fedf4dce6392c8b47e0c2d4675cf42b709ca372f0f642eb69c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255389371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab85f9a1cbac6d7bcf4f68aca019b9e3c0d593c0bfc9285424021771168eb60`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Thu, 01 Oct 2026 14:48:20 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 14:48:22 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 01 Oct 2026 14:48:22 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 01 Oct 2026 14:48:22 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 14:48:22 GMT
WORKDIR /root
# Thu, 01 Oct 2026 14:49:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3cf0197a69ba5d69d9f03c7d97786aaa146cd8fdfd45fb00f5109d193ccbe81e`  
		Last Modified: Sat, 19 Sep 2026 04:09:02 GMT  
		Size: 28.3 MB (28324384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24044377644e6a96d6fdb39b75d0e90398f9b12bdcd0843a10ca941ef7f4e8ad`  
		Last Modified: Thu, 01 Oct 2026 14:53:33 GMT  
		Size: 44.2 MB (44226198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316453b2b0417e5737b7e2d9e2c446c447ecf911c67bd14856bac54b6c0f4dc7`  
		Last Modified: Thu, 01 Oct 2026 14:53:21 GMT  
		Size: 1.6 MB (1563911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d737f1dfb04e54e5a9fc19c422e359aca7560e41286c3730a0966353a90569`  
		Last Modified: Thu, 01 Oct 2026 14:53:53 GMT  
		Size: 181.3 MB (181274846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.5` - unknown; unknown

```console
$ docker pull dart@sha256:b347a6e3728f1beaa90eec9694fcb5c03b0950970924634466f3d27c606569c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d634ad438bccf435cad4958ece83a8938805374be6677612cc2c942a0f972c32`

```dockerfile
```

-	Layers:
	-	`sha256:138b7929113c0c05638873aac43cb6cf15ae658b3d103fac9f383c571430c4d8`  
		Last Modified: Thu, 01 Oct 2026 14:53:21 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13.5-sdk`

```console
$ docker pull dart@sha256:4a8b7e1546c96c514bf94e591cfa38345ceadd209f572dc2829551a0a3fe6e78
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

### `dart:3.13.5-sdk` - linux; amd64

```console
$ docker pull dart@sha256:39e32992047a34be0a6b2d4839a0ba255fc18d40c868bc4146611d0ff34bf861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316609938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:507719697296a59873d029a038ba7d82436063eaeeed73b63a5151f3d1a9c912`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:49 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 01:41:49 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 01:41:49 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:41:49 GMT
WORKDIR /root
# Tue, 06 Oct 2026 01:42:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7e4b7de958a428542c296a6e1383987afa6d03285a4d74c0826af0c7bf74b2e`  
		Last Modified: Tue, 06 Oct 2026 01:42:28 GMT  
		Size: 42.5 MB (42526115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed83b7d1ff38abe0bfd3c72d001f51e90a2ea321a2b5475e1a54ee977ebd0e5f`  
		Last Modified: Tue, 06 Oct 2026 01:42:26 GMT  
		Size: 1.9 MB (1869672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4a21a681fa76ea094a341abe6d6d83ec08824a87c224727cc6336bf36c5f957`  
		Last Modified: Tue, 06 Oct 2026 01:42:32 GMT  
		Size: 242.4 MB (242370769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.5-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:fb831617571220ad8a4ea7437adf97ba567d652472323b90c89bd4e98dd86533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f7f123b49958884cc88b11ddbe27e899f49c76620a05650a6f309845829f7bc`

```dockerfile
```

-	Layers:
	-	`sha256:7a0a247f74c845bbd942a6717134912927a53e3510765701f113bf277c34a5d7`  
		Last Modified: Tue, 06 Oct 2026 01:42:26 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.5-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:1ce9437c63a73369988fed49a25712595af1ce78a5358072a177545417920379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230531186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54b74812d40939b345665529dcc1b977ab7751111af58e406b95c7945c7e32b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:25:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:25:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 02:25:24 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 02:25:24 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:25:24 GMT
WORKDIR /root
# Tue, 06 Oct 2026 02:25:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b42d6822016ab159d1ec29ae72cb579c90ce4d89f7d37ab20308f33dff8f54d4`  
		Last Modified: Tue, 06 Oct 2026 02:25:57 GMT  
		Size: 37.5 MB (37528208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:133633f5500e2ffeafa3f74c54a6d0e81613524f2aeca590497a988d31b855ab`  
		Last Modified: Tue, 06 Oct 2026 02:25:55 GMT  
		Size: 1.3 MB (1273040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:152b4975a1adc8963c3687d5f4ad5a1ab3fc5f1b2f5600f3e31f7292ecc4454c`  
		Last Modified: Tue, 06 Oct 2026 02:26:00 GMT  
		Size: 165.5 MB (165471728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.5-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:8a89497d639bd1b4431e2fcf086b80e6dec95ad0a68a4b18059defa110d42328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:829d760a01bf55511f05fe2fa48dc8390039ea1e01d8ff14c68ce55e14503498`

```dockerfile
```

-	Layers:
	-	`sha256:cf203812e873f3d64d5523950ede566cc4f5dfd1ba8d5cd02159d4e179b11a02`  
		Last Modified: Tue, 06 Oct 2026 02:25:55 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.5-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:8960f0d63e27408462db4577afa66a75dc6b7d24a7c3158c8e453b53b274f348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315304033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5374c72e9b27f7becfc2d55df706135b1e6c89490fa47242f144bc1cfe8af4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:58 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 01:44:59 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:44:59 GMT
WORKDIR /root
# Tue, 06 Oct 2026 01:45:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d131d3bbbb7bd36d1758d81d2959f118f741dcc8ea937750f293f0075888229a`  
		Last Modified: Tue, 06 Oct 2026 01:45:41 GMT  
		Size: 42.3 MB (42320144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d59102cb85b36d03615cc06dae7ffc5b395e0bfaae59f39178a043457a0c619`  
		Last Modified: Tue, 06 Oct 2026 01:45:39 GMT  
		Size: 1.6 MB (1564420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3afd39a2545c7dfc05cd58d2ae75baa6ac2988880d7b9fc6c5ac4d38cf6bc7f`  
		Last Modified: Tue, 06 Oct 2026 01:45:44 GMT  
		Size: 241.2 MB (241219155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.5-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:b2970e8737d5080701fcaf6428103776a753826343fc4faf623433a18a383545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6749345a2cb8e77d49cd63e1cafca23ccc247149cb2ae0f11ab4f4a51a4b49b`

```dockerfile
```

-	Layers:
	-	`sha256:87750530902cb576bd0ac8003d8c53e58c45e09497e35603e47cc6205a97bd69`  
		Last Modified: Tue, 06 Oct 2026 01:45:39 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.5-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:0b1d5cae7480a6fedf4dce6392c8b47e0c2d4675cf42b709ca372f0f642eb69c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255389371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab85f9a1cbac6d7bcf4f68aca019b9e3c0d593c0bfc9285424021771168eb60`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Thu, 01 Oct 2026 14:48:20 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 14:48:22 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 01 Oct 2026 14:48:22 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 01 Oct 2026 14:48:22 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 14:48:22 GMT
WORKDIR /root
# Thu, 01 Oct 2026 14:49:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3cf0197a69ba5d69d9f03c7d97786aaa146cd8fdfd45fb00f5109d193ccbe81e`  
		Last Modified: Sat, 19 Sep 2026 04:09:02 GMT  
		Size: 28.3 MB (28324384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24044377644e6a96d6fdb39b75d0e90398f9b12bdcd0843a10ca941ef7f4e8ad`  
		Last Modified: Thu, 01 Oct 2026 14:53:33 GMT  
		Size: 44.2 MB (44226198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316453b2b0417e5737b7e2d9e2c446c447ecf911c67bd14856bac54b6c0f4dc7`  
		Last Modified: Thu, 01 Oct 2026 14:53:21 GMT  
		Size: 1.6 MB (1563911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d737f1dfb04e54e5a9fc19c422e359aca7560e41286c3730a0966353a90569`  
		Last Modified: Thu, 01 Oct 2026 14:53:53 GMT  
		Size: 181.3 MB (181274846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.5-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:b347a6e3728f1beaa90eec9694fcb5c03b0950970924634466f3d27c606569c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d634ad438bccf435cad4958ece83a8938805374be6677612cc2c942a0f972c32`

```dockerfile
```

-	Layers:
	-	`sha256:138b7929113c0c05638873aac43cb6cf15ae658b3d103fac9f383c571430c4d8`  
		Last Modified: Thu, 01 Oct 2026 14:53:21 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.14.0-211.1.beta`

```console
$ docker pull dart@sha256:f8172b7568450f74daacbba81eb3bf1b8d820923b728554e5840dbe284ac0f61
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
$ docker pull dart@sha256:ab33c167340c04da453ee9cab7b2d84eb1b6fe6401d5c9c178ce1e4cf6db9a5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.0 MB (344964117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1753e5f6a47cfe709ca43eb805a9c25257cd5a6a1a24b37c66407844d8cf9335`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:57 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 01:41:57 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 01:41:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:41:57 GMT
WORKDIR /root
# Tue, 06 Oct 2026 01:42:13 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21e385e4a06a54f51611d3d67d0ed4fbd758e3eefea7f5588bc84024c79c2cfa`  
		Last Modified: Tue, 06 Oct 2026 01:42:46 GMT  
		Size: 42.5 MB (42526069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5050a54a784b16ede7211e3205a612d2b984d4b6872af8546bf625fce7748e91`  
		Last Modified: Tue, 06 Oct 2026 01:42:44 GMT  
		Size: 1.9 MB (1869663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c241ea84ebe0d6cd681819c3de138176421275d8baf64bea27f3fa3a84ecac8a`  
		Last Modified: Tue, 06 Oct 2026 01:42:49 GMT  
		Size: 270.7 MB (270725003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-211.1.beta` - unknown; unknown

```console
$ docker pull dart@sha256:cfb94d6a224c8f96612d046aa050aa51acd2c68320574cc72f2f6130a3b1c1f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e063c7c9c0037f29909091bd740daef59885dfb31b9897c0ebe532e590735523`

```dockerfile
```

-	Layers:
	-	`sha256:da99f7668fb775cbf50d25ebb9a9a9386befe92e73f3233c6bfe023129336987`  
		Last Modified: Tue, 06 Oct 2026 01:42:44 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-211.1.beta` - linux; arm variant v7

```console
$ docker pull dart@sha256:6f5a492eabfe1a3800fab16402ac04db8995afc5fa5d50aa77ec18f417c7cfb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237485316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102b9737fe11ead25938ec9cee28df10ee805666dad207a40753fe1759471d66`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:25:35 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:25:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 02:25:36 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 02:25:36 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:25:36 GMT
WORKDIR /root
# Tue, 06 Oct 2026 02:25:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5863c36f94c444867a3a4eb761b1be3d6264b14dbb884c7c718400fb172767f4`  
		Last Modified: Tue, 06 Oct 2026 02:26:09 GMT  
		Size: 37.5 MB (37527318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554ef008b0ec675fe9e438ea6b4041b58d919df8c88ae357eac20554da29d379`  
		Last Modified: Tue, 06 Oct 2026 02:26:07 GMT  
		Size: 1.3 MB (1273047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7522cae7bd75e4e7bb409306afb3f92ecc8a3dff6ce973084aad02814bcd279a`  
		Last Modified: Tue, 06 Oct 2026 02:26:13 GMT  
		Size: 172.4 MB (172426741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-211.1.beta` - unknown; unknown

```console
$ docker pull dart@sha256:9fe441860816d12bab72d518bcd256e4845e009062fed0a620fe1ec996d0b514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2c0e7083861cefbebfff7db1a65c61b0a2e292e785f98abc80d11fc167493ec`

```dockerfile
```

-	Layers:
	-	`sha256:537d8381bc9f0c80a45e31a06b4cd616c86d0c55c3d1a3120c08043ed8e00183`  
		Last Modified: Tue, 06 Oct 2026 02:26:07 GMT  
		Size: 19.0 KB (19029 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-211.1.beta` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:fba59daeda2b6c90533f94cc69f600325e2ba66d1778b45445a02dd23d563a2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.2 MB (343239009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ebdc7c95e467ce768126398f5400b496193c2f9ea07b088f0c5e43c222540e3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:58 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 01:44:59 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:44:59 GMT
WORKDIR /root
# Tue, 06 Oct 2026 01:45:13 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0e1af42a1bd3c7eaad2eef06ed0c5fef56b1f6446e6eac208697787e17e208d`  
		Last Modified: Tue, 06 Oct 2026 01:45:45 GMT  
		Size: 42.3 MB (42320149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d59102cb85b36d03615cc06dae7ffc5b395e0bfaae59f39178a043457a0c619`  
		Last Modified: Tue, 06 Oct 2026 01:45:39 GMT  
		Size: 1.6 MB (1564420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ff5a321b084b0b3c478b86bcea091691b21eae4cc7e416c736da1df923837ef`  
		Last Modified: Tue, 06 Oct 2026 01:45:49 GMT  
		Size: 269.2 MB (269154126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-211.1.beta` - unknown; unknown

```console
$ docker pull dart@sha256:80ab9cf89986385d186dd9833567a8ef62ee572c3d9e742438aa924822d2ba40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:997f2b4f9226e0f7ee984d09eb937d03a68ce2113d1e8866a88bba15210350bc`

```dockerfile
```

-	Layers:
	-	`sha256:a8ac124dfe0b63e0ca82c5f6174b5da531c4e67985f8af209abb6a07bfc1b32f`  
		Last Modified: Tue, 06 Oct 2026 01:45:43 GMT  
		Size: 19.1 KB (19056 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-211.1.beta` - linux; riscv64

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

### `dart:3.14.0-211.1.beta` - unknown; unknown

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

## `dart:3.14.0-211.1.beta-sdk`

```console
$ docker pull dart@sha256:f8172b7568450f74daacbba81eb3bf1b8d820923b728554e5840dbe284ac0f61
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
$ docker pull dart@sha256:ab33c167340c04da453ee9cab7b2d84eb1b6fe6401d5c9c178ce1e4cf6db9a5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.0 MB (344964117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1753e5f6a47cfe709ca43eb805a9c25257cd5a6a1a24b37c66407844d8cf9335`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:57 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 01:41:57 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 01:41:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:41:57 GMT
WORKDIR /root
# Tue, 06 Oct 2026 01:42:13 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21e385e4a06a54f51611d3d67d0ed4fbd758e3eefea7f5588bc84024c79c2cfa`  
		Last Modified: Tue, 06 Oct 2026 01:42:46 GMT  
		Size: 42.5 MB (42526069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5050a54a784b16ede7211e3205a612d2b984d4b6872af8546bf625fce7748e91`  
		Last Modified: Tue, 06 Oct 2026 01:42:44 GMT  
		Size: 1.9 MB (1869663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c241ea84ebe0d6cd681819c3de138176421275d8baf64bea27f3fa3a84ecac8a`  
		Last Modified: Tue, 06 Oct 2026 01:42:49 GMT  
		Size: 270.7 MB (270725003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-211.1.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:cfb94d6a224c8f96612d046aa050aa51acd2c68320574cc72f2f6130a3b1c1f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e063c7c9c0037f29909091bd740daef59885dfb31b9897c0ebe532e590735523`

```dockerfile
```

-	Layers:
	-	`sha256:da99f7668fb775cbf50d25ebb9a9a9386befe92e73f3233c6bfe023129336987`  
		Last Modified: Tue, 06 Oct 2026 01:42:44 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-211.1.beta-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:6f5a492eabfe1a3800fab16402ac04db8995afc5fa5d50aa77ec18f417c7cfb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237485316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102b9737fe11ead25938ec9cee28df10ee805666dad207a40753fe1759471d66`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:25:35 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:25:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 02:25:36 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 02:25:36 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:25:36 GMT
WORKDIR /root
# Tue, 06 Oct 2026 02:25:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5863c36f94c444867a3a4eb761b1be3d6264b14dbb884c7c718400fb172767f4`  
		Last Modified: Tue, 06 Oct 2026 02:26:09 GMT  
		Size: 37.5 MB (37527318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554ef008b0ec675fe9e438ea6b4041b58d919df8c88ae357eac20554da29d379`  
		Last Modified: Tue, 06 Oct 2026 02:26:07 GMT  
		Size: 1.3 MB (1273047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7522cae7bd75e4e7bb409306afb3f92ecc8a3dff6ce973084aad02814bcd279a`  
		Last Modified: Tue, 06 Oct 2026 02:26:13 GMT  
		Size: 172.4 MB (172426741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-211.1.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:9fe441860816d12bab72d518bcd256e4845e009062fed0a620fe1ec996d0b514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2c0e7083861cefbebfff7db1a65c61b0a2e292e785f98abc80d11fc167493ec`

```dockerfile
```

-	Layers:
	-	`sha256:537d8381bc9f0c80a45e31a06b4cd616c86d0c55c3d1a3120c08043ed8e00183`  
		Last Modified: Tue, 06 Oct 2026 02:26:07 GMT  
		Size: 19.0 KB (19029 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-211.1.beta-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:fba59daeda2b6c90533f94cc69f600325e2ba66d1778b45445a02dd23d563a2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.2 MB (343239009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ebdc7c95e467ce768126398f5400b496193c2f9ea07b088f0c5e43c222540e3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:58 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 01:44:59 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:44:59 GMT
WORKDIR /root
# Tue, 06 Oct 2026 01:45:13 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0e1af42a1bd3c7eaad2eef06ed0c5fef56b1f6446e6eac208697787e17e208d`  
		Last Modified: Tue, 06 Oct 2026 01:45:45 GMT  
		Size: 42.3 MB (42320149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d59102cb85b36d03615cc06dae7ffc5b395e0bfaae59f39178a043457a0c619`  
		Last Modified: Tue, 06 Oct 2026 01:45:39 GMT  
		Size: 1.6 MB (1564420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ff5a321b084b0b3c478b86bcea091691b21eae4cc7e416c736da1df923837ef`  
		Last Modified: Tue, 06 Oct 2026 01:45:49 GMT  
		Size: 269.2 MB (269154126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-211.1.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:80ab9cf89986385d186dd9833567a8ef62ee572c3d9e742438aa924822d2ba40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:997f2b4f9226e0f7ee984d09eb937d03a68ce2113d1e8866a88bba15210350bc`

```dockerfile
```

-	Layers:
	-	`sha256:a8ac124dfe0b63e0ca82c5f6174b5da531c4e67985f8af209abb6a07bfc1b32f`  
		Last Modified: Tue, 06 Oct 2026 01:45:43 GMT  
		Size: 19.1 KB (19056 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-211.1.beta-sdk` - linux; riscv64

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

### `dart:3.14.0-211.1.beta-sdk` - unknown; unknown

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

## `dart:beta`

```console
$ docker pull dart@sha256:f8172b7568450f74daacbba81eb3bf1b8d820923b728554e5840dbe284ac0f61
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
$ docker pull dart@sha256:ab33c167340c04da453ee9cab7b2d84eb1b6fe6401d5c9c178ce1e4cf6db9a5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.0 MB (344964117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1753e5f6a47cfe709ca43eb805a9c25257cd5a6a1a24b37c66407844d8cf9335`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:57 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 01:41:57 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 01:41:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:41:57 GMT
WORKDIR /root
# Tue, 06 Oct 2026 01:42:13 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21e385e4a06a54f51611d3d67d0ed4fbd758e3eefea7f5588bc84024c79c2cfa`  
		Last Modified: Tue, 06 Oct 2026 01:42:46 GMT  
		Size: 42.5 MB (42526069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5050a54a784b16ede7211e3205a612d2b984d4b6872af8546bf625fce7748e91`  
		Last Modified: Tue, 06 Oct 2026 01:42:44 GMT  
		Size: 1.9 MB (1869663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c241ea84ebe0d6cd681819c3de138176421275d8baf64bea27f3fa3a84ecac8a`  
		Last Modified: Tue, 06 Oct 2026 01:42:49 GMT  
		Size: 270.7 MB (270725003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:cfb94d6a224c8f96612d046aa050aa51acd2c68320574cc72f2f6130a3b1c1f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e063c7c9c0037f29909091bd740daef59885dfb31b9897c0ebe532e590735523`

```dockerfile
```

-	Layers:
	-	`sha256:da99f7668fb775cbf50d25ebb9a9a9386befe92e73f3233c6bfe023129336987`  
		Last Modified: Tue, 06 Oct 2026 01:42:44 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm variant v7

```console
$ docker pull dart@sha256:6f5a492eabfe1a3800fab16402ac04db8995afc5fa5d50aa77ec18f417c7cfb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237485316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102b9737fe11ead25938ec9cee28df10ee805666dad207a40753fe1759471d66`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:25:35 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:25:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 02:25:36 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 02:25:36 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:25:36 GMT
WORKDIR /root
# Tue, 06 Oct 2026 02:25:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5863c36f94c444867a3a4eb761b1be3d6264b14dbb884c7c718400fb172767f4`  
		Last Modified: Tue, 06 Oct 2026 02:26:09 GMT  
		Size: 37.5 MB (37527318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554ef008b0ec675fe9e438ea6b4041b58d919df8c88ae357eac20554da29d379`  
		Last Modified: Tue, 06 Oct 2026 02:26:07 GMT  
		Size: 1.3 MB (1273047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7522cae7bd75e4e7bb409306afb3f92ecc8a3dff6ce973084aad02814bcd279a`  
		Last Modified: Tue, 06 Oct 2026 02:26:13 GMT  
		Size: 172.4 MB (172426741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:9fe441860816d12bab72d518bcd256e4845e009062fed0a620fe1ec996d0b514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2c0e7083861cefbebfff7db1a65c61b0a2e292e785f98abc80d11fc167493ec`

```dockerfile
```

-	Layers:
	-	`sha256:537d8381bc9f0c80a45e31a06b4cd616c86d0c55c3d1a3120c08043ed8e00183`  
		Last Modified: Tue, 06 Oct 2026 02:26:07 GMT  
		Size: 19.0 KB (19029 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:fba59daeda2b6c90533f94cc69f600325e2ba66d1778b45445a02dd23d563a2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.2 MB (343239009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ebdc7c95e467ce768126398f5400b496193c2f9ea07b088f0c5e43c222540e3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:58 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 01:44:59 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:44:59 GMT
WORKDIR /root
# Tue, 06 Oct 2026 01:45:13 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0e1af42a1bd3c7eaad2eef06ed0c5fef56b1f6446e6eac208697787e17e208d`  
		Last Modified: Tue, 06 Oct 2026 01:45:45 GMT  
		Size: 42.3 MB (42320149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d59102cb85b36d03615cc06dae7ffc5b395e0bfaae59f39178a043457a0c619`  
		Last Modified: Tue, 06 Oct 2026 01:45:39 GMT  
		Size: 1.6 MB (1564420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ff5a321b084b0b3c478b86bcea091691b21eae4cc7e416c736da1df923837ef`  
		Last Modified: Tue, 06 Oct 2026 01:45:49 GMT  
		Size: 269.2 MB (269154126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:80ab9cf89986385d186dd9833567a8ef62ee572c3d9e742438aa924822d2ba40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:997f2b4f9226e0f7ee984d09eb937d03a68ce2113d1e8866a88bba15210350bc`

```dockerfile
```

-	Layers:
	-	`sha256:a8ac124dfe0b63e0ca82c5f6174b5da531c4e67985f8af209abb6a07bfc1b32f`  
		Last Modified: Tue, 06 Oct 2026 01:45:43 GMT  
		Size: 19.1 KB (19056 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; riscv64

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

### `dart:beta` - unknown; unknown

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

## `dart:beta-sdk`

```console
$ docker pull dart@sha256:f8172b7568450f74daacbba81eb3bf1b8d820923b728554e5840dbe284ac0f61
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
$ docker pull dart@sha256:ab33c167340c04da453ee9cab7b2d84eb1b6fe6401d5c9c178ce1e4cf6db9a5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.0 MB (344964117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1753e5f6a47cfe709ca43eb805a9c25257cd5a6a1a24b37c66407844d8cf9335`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:57 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 01:41:57 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 01:41:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:41:57 GMT
WORKDIR /root
# Tue, 06 Oct 2026 01:42:13 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21e385e4a06a54f51611d3d67d0ed4fbd758e3eefea7f5588bc84024c79c2cfa`  
		Last Modified: Tue, 06 Oct 2026 01:42:46 GMT  
		Size: 42.5 MB (42526069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5050a54a784b16ede7211e3205a612d2b984d4b6872af8546bf625fce7748e91`  
		Last Modified: Tue, 06 Oct 2026 01:42:44 GMT  
		Size: 1.9 MB (1869663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c241ea84ebe0d6cd681819c3de138176421275d8baf64bea27f3fa3a84ecac8a`  
		Last Modified: Tue, 06 Oct 2026 01:42:49 GMT  
		Size: 270.7 MB (270725003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:cfb94d6a224c8f96612d046aa050aa51acd2c68320574cc72f2f6130a3b1c1f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e063c7c9c0037f29909091bd740daef59885dfb31b9897c0ebe532e590735523`

```dockerfile
```

-	Layers:
	-	`sha256:da99f7668fb775cbf50d25ebb9a9a9386befe92e73f3233c6bfe023129336987`  
		Last Modified: Tue, 06 Oct 2026 01:42:44 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:6f5a492eabfe1a3800fab16402ac04db8995afc5fa5d50aa77ec18f417c7cfb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237485316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102b9737fe11ead25938ec9cee28df10ee805666dad207a40753fe1759471d66`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:25:35 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:25:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 02:25:36 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 02:25:36 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:25:36 GMT
WORKDIR /root
# Tue, 06 Oct 2026 02:25:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5863c36f94c444867a3a4eb761b1be3d6264b14dbb884c7c718400fb172767f4`  
		Last Modified: Tue, 06 Oct 2026 02:26:09 GMT  
		Size: 37.5 MB (37527318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554ef008b0ec675fe9e438ea6b4041b58d919df8c88ae357eac20554da29d379`  
		Last Modified: Tue, 06 Oct 2026 02:26:07 GMT  
		Size: 1.3 MB (1273047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7522cae7bd75e4e7bb409306afb3f92ecc8a3dff6ce973084aad02814bcd279a`  
		Last Modified: Tue, 06 Oct 2026 02:26:13 GMT  
		Size: 172.4 MB (172426741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:9fe441860816d12bab72d518bcd256e4845e009062fed0a620fe1ec996d0b514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2c0e7083861cefbebfff7db1a65c61b0a2e292e785f98abc80d11fc167493ec`

```dockerfile
```

-	Layers:
	-	`sha256:537d8381bc9f0c80a45e31a06b4cd616c86d0c55c3d1a3120c08043ed8e00183`  
		Last Modified: Tue, 06 Oct 2026 02:26:07 GMT  
		Size: 19.0 KB (19029 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:fba59daeda2b6c90533f94cc69f600325e2ba66d1778b45445a02dd23d563a2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.2 MB (343239009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ebdc7c95e467ce768126398f5400b496193c2f9ea07b088f0c5e43c222540e3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:58 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 01:44:59 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:44:59 GMT
WORKDIR /root
# Tue, 06 Oct 2026 01:45:13 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0e1af42a1bd3c7eaad2eef06ed0c5fef56b1f6446e6eac208697787e17e208d`  
		Last Modified: Tue, 06 Oct 2026 01:45:45 GMT  
		Size: 42.3 MB (42320149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d59102cb85b36d03615cc06dae7ffc5b395e0bfaae59f39178a043457a0c619`  
		Last Modified: Tue, 06 Oct 2026 01:45:39 GMT  
		Size: 1.6 MB (1564420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ff5a321b084b0b3c478b86bcea091691b21eae4cc7e416c736da1df923837ef`  
		Last Modified: Tue, 06 Oct 2026 01:45:49 GMT  
		Size: 269.2 MB (269154126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:80ab9cf89986385d186dd9833567a8ef62ee572c3d9e742438aa924822d2ba40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:997f2b4f9226e0f7ee984d09eb937d03a68ce2113d1e8866a88bba15210350bc`

```dockerfile
```

-	Layers:
	-	`sha256:a8ac124dfe0b63e0ca82c5f6174b5da531c4e67985f8af209abb6a07bfc1b32f`  
		Last Modified: Tue, 06 Oct 2026 01:45:43 GMT  
		Size: 19.1 KB (19056 bytes)  
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

## `dart:latest`

```console
$ docker pull dart@sha256:4a8b7e1546c96c514bf94e591cfa38345ceadd209f572dc2829551a0a3fe6e78
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
$ docker pull dart@sha256:39e32992047a34be0a6b2d4839a0ba255fc18d40c868bc4146611d0ff34bf861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316609938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:507719697296a59873d029a038ba7d82436063eaeeed73b63a5151f3d1a9c912`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:49 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 01:41:49 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 01:41:49 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:41:49 GMT
WORKDIR /root
# Tue, 06 Oct 2026 01:42:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7e4b7de958a428542c296a6e1383987afa6d03285a4d74c0826af0c7bf74b2e`  
		Last Modified: Tue, 06 Oct 2026 01:42:28 GMT  
		Size: 42.5 MB (42526115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed83b7d1ff38abe0bfd3c72d001f51e90a2ea321a2b5475e1a54ee977ebd0e5f`  
		Last Modified: Tue, 06 Oct 2026 01:42:26 GMT  
		Size: 1.9 MB (1869672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4a21a681fa76ea094a341abe6d6d83ec08824a87c224727cc6336bf36c5f957`  
		Last Modified: Tue, 06 Oct 2026 01:42:32 GMT  
		Size: 242.4 MB (242370769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:fb831617571220ad8a4ea7437adf97ba567d652472323b90c89bd4e98dd86533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f7f123b49958884cc88b11ddbe27e899f49c76620a05650a6f309845829f7bc`

```dockerfile
```

-	Layers:
	-	`sha256:7a0a247f74c845bbd942a6717134912927a53e3510765701f113bf277c34a5d7`  
		Last Modified: Tue, 06 Oct 2026 01:42:26 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; arm variant v7

```console
$ docker pull dart@sha256:1ce9437c63a73369988fed49a25712595af1ce78a5358072a177545417920379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230531186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54b74812d40939b345665529dcc1b977ab7751111af58e406b95c7945c7e32b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:25:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:25:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 02:25:24 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 02:25:24 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:25:24 GMT
WORKDIR /root
# Tue, 06 Oct 2026 02:25:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b42d6822016ab159d1ec29ae72cb579c90ce4d89f7d37ab20308f33dff8f54d4`  
		Last Modified: Tue, 06 Oct 2026 02:25:57 GMT  
		Size: 37.5 MB (37528208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:133633f5500e2ffeafa3f74c54a6d0e81613524f2aeca590497a988d31b855ab`  
		Last Modified: Tue, 06 Oct 2026 02:25:55 GMT  
		Size: 1.3 MB (1273040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:152b4975a1adc8963c3687d5f4ad5a1ab3fc5f1b2f5600f3e31f7292ecc4454c`  
		Last Modified: Tue, 06 Oct 2026 02:26:00 GMT  
		Size: 165.5 MB (165471728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:8a89497d639bd1b4431e2fcf086b80e6dec95ad0a68a4b18059defa110d42328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:829d760a01bf55511f05fe2fa48dc8390039ea1e01d8ff14c68ce55e14503498`

```dockerfile
```

-	Layers:
	-	`sha256:cf203812e873f3d64d5523950ede566cc4f5dfd1ba8d5cd02159d4e179b11a02`  
		Last Modified: Tue, 06 Oct 2026 02:25:55 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:8960f0d63e27408462db4577afa66a75dc6b7d24a7c3158c8e453b53b274f348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315304033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5374c72e9b27f7becfc2d55df706135b1e6c89490fa47242f144bc1cfe8af4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:58 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 01:44:59 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:44:59 GMT
WORKDIR /root
# Tue, 06 Oct 2026 01:45:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d131d3bbbb7bd36d1758d81d2959f118f741dcc8ea937750f293f0075888229a`  
		Last Modified: Tue, 06 Oct 2026 01:45:41 GMT  
		Size: 42.3 MB (42320144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d59102cb85b36d03615cc06dae7ffc5b395e0bfaae59f39178a043457a0c619`  
		Last Modified: Tue, 06 Oct 2026 01:45:39 GMT  
		Size: 1.6 MB (1564420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3afd39a2545c7dfc05cd58d2ae75baa6ac2988880d7b9fc6c5ac4d38cf6bc7f`  
		Last Modified: Tue, 06 Oct 2026 01:45:44 GMT  
		Size: 241.2 MB (241219155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:b2970e8737d5080701fcaf6428103776a753826343fc4faf623433a18a383545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6749345a2cb8e77d49cd63e1cafca23ccc247149cb2ae0f11ab4f4a51a4b49b`

```dockerfile
```

-	Layers:
	-	`sha256:87750530902cb576bd0ac8003d8c53e58c45e09497e35603e47cc6205a97bd69`  
		Last Modified: Tue, 06 Oct 2026 01:45:39 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; riscv64

```console
$ docker pull dart@sha256:0b1d5cae7480a6fedf4dce6392c8b47e0c2d4675cf42b709ca372f0f642eb69c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255389371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab85f9a1cbac6d7bcf4f68aca019b9e3c0d593c0bfc9285424021771168eb60`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Thu, 01 Oct 2026 14:48:20 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 14:48:22 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 01 Oct 2026 14:48:22 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 01 Oct 2026 14:48:22 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 14:48:22 GMT
WORKDIR /root
# Thu, 01 Oct 2026 14:49:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3cf0197a69ba5d69d9f03c7d97786aaa146cd8fdfd45fb00f5109d193ccbe81e`  
		Last Modified: Sat, 19 Sep 2026 04:09:02 GMT  
		Size: 28.3 MB (28324384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24044377644e6a96d6fdb39b75d0e90398f9b12bdcd0843a10ca941ef7f4e8ad`  
		Last Modified: Thu, 01 Oct 2026 14:53:33 GMT  
		Size: 44.2 MB (44226198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316453b2b0417e5737b7e2d9e2c446c447ecf911c67bd14856bac54b6c0f4dc7`  
		Last Modified: Thu, 01 Oct 2026 14:53:21 GMT  
		Size: 1.6 MB (1563911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d737f1dfb04e54e5a9fc19c422e359aca7560e41286c3730a0966353a90569`  
		Last Modified: Thu, 01 Oct 2026 14:53:53 GMT  
		Size: 181.3 MB (181274846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:b347a6e3728f1beaa90eec9694fcb5c03b0950970924634466f3d27c606569c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d634ad438bccf435cad4958ece83a8938805374be6677612cc2c942a0f972c32`

```dockerfile
```

-	Layers:
	-	`sha256:138b7929113c0c05638873aac43cb6cf15ae658b3d103fac9f383c571430c4d8`  
		Last Modified: Thu, 01 Oct 2026 14:53:21 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:sdk`

```console
$ docker pull dart@sha256:4a8b7e1546c96c514bf94e591cfa38345ceadd209f572dc2829551a0a3fe6e78
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
$ docker pull dart@sha256:39e32992047a34be0a6b2d4839a0ba255fc18d40c868bc4146611d0ff34bf861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316609938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:507719697296a59873d029a038ba7d82436063eaeeed73b63a5151f3d1a9c912`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:49 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 01:41:49 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 01:41:49 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:41:49 GMT
WORKDIR /root
# Tue, 06 Oct 2026 01:42:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7e4b7de958a428542c296a6e1383987afa6d03285a4d74c0826af0c7bf74b2e`  
		Last Modified: Tue, 06 Oct 2026 01:42:28 GMT  
		Size: 42.5 MB (42526115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed83b7d1ff38abe0bfd3c72d001f51e90a2ea321a2b5475e1a54ee977ebd0e5f`  
		Last Modified: Tue, 06 Oct 2026 01:42:26 GMT  
		Size: 1.9 MB (1869672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4a21a681fa76ea094a341abe6d6d83ec08824a87c224727cc6336bf36c5f957`  
		Last Modified: Tue, 06 Oct 2026 01:42:32 GMT  
		Size: 242.4 MB (242370769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:fb831617571220ad8a4ea7437adf97ba567d652472323b90c89bd4e98dd86533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f7f123b49958884cc88b11ddbe27e899f49c76620a05650a6f309845829f7bc`

```dockerfile
```

-	Layers:
	-	`sha256:7a0a247f74c845bbd942a6717134912927a53e3510765701f113bf277c34a5d7`  
		Last Modified: Tue, 06 Oct 2026 01:42:26 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:1ce9437c63a73369988fed49a25712595af1ce78a5358072a177545417920379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230531186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54b74812d40939b345665529dcc1b977ab7751111af58e406b95c7945c7e32b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:25:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:25:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 02:25:24 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 02:25:24 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:25:24 GMT
WORKDIR /root
# Tue, 06 Oct 2026 02:25:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b42d6822016ab159d1ec29ae72cb579c90ce4d89f7d37ab20308f33dff8f54d4`  
		Last Modified: Tue, 06 Oct 2026 02:25:57 GMT  
		Size: 37.5 MB (37528208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:133633f5500e2ffeafa3f74c54a6d0e81613524f2aeca590497a988d31b855ab`  
		Last Modified: Tue, 06 Oct 2026 02:25:55 GMT  
		Size: 1.3 MB (1273040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:152b4975a1adc8963c3687d5f4ad5a1ab3fc5f1b2f5600f3e31f7292ecc4454c`  
		Last Modified: Tue, 06 Oct 2026 02:26:00 GMT  
		Size: 165.5 MB (165471728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:8a89497d639bd1b4431e2fcf086b80e6dec95ad0a68a4b18059defa110d42328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:829d760a01bf55511f05fe2fa48dc8390039ea1e01d8ff14c68ce55e14503498`

```dockerfile
```

-	Layers:
	-	`sha256:cf203812e873f3d64d5523950ede566cc4f5dfd1ba8d5cd02159d4e179b11a02`  
		Last Modified: Tue, 06 Oct 2026 02:25:55 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:8960f0d63e27408462db4577afa66a75dc6b7d24a7c3158c8e453b53b274f348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315304033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5374c72e9b27f7becfc2d55df706135b1e6c89490fa47242f144bc1cfe8af4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:58 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 01:44:59 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:44:59 GMT
WORKDIR /root
# Tue, 06 Oct 2026 01:45:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d131d3bbbb7bd36d1758d81d2959f118f741dcc8ea937750f293f0075888229a`  
		Last Modified: Tue, 06 Oct 2026 01:45:41 GMT  
		Size: 42.3 MB (42320144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d59102cb85b36d03615cc06dae7ffc5b395e0bfaae59f39178a043457a0c619`  
		Last Modified: Tue, 06 Oct 2026 01:45:39 GMT  
		Size: 1.6 MB (1564420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3afd39a2545c7dfc05cd58d2ae75baa6ac2988880d7b9fc6c5ac4d38cf6bc7f`  
		Last Modified: Tue, 06 Oct 2026 01:45:44 GMT  
		Size: 241.2 MB (241219155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:b2970e8737d5080701fcaf6428103776a753826343fc4faf623433a18a383545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6749345a2cb8e77d49cd63e1cafca23ccc247149cb2ae0f11ab4f4a51a4b49b`

```dockerfile
```

-	Layers:
	-	`sha256:87750530902cb576bd0ac8003d8c53e58c45e09497e35603e47cc6205a97bd69`  
		Last Modified: Tue, 06 Oct 2026 01:45:39 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; riscv64

```console
$ docker pull dart@sha256:0b1d5cae7480a6fedf4dce6392c8b47e0c2d4675cf42b709ca372f0f642eb69c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255389371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab85f9a1cbac6d7bcf4f68aca019b9e3c0d593c0bfc9285424021771168eb60`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Thu, 01 Oct 2026 14:48:20 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 14:48:22 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 01 Oct 2026 14:48:22 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 01 Oct 2026 14:48:22 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 14:48:22 GMT
WORKDIR /root
# Thu, 01 Oct 2026 14:49:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3cf0197a69ba5d69d9f03c7d97786aaa146cd8fdfd45fb00f5109d193ccbe81e`  
		Last Modified: Sat, 19 Sep 2026 04:09:02 GMT  
		Size: 28.3 MB (28324384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24044377644e6a96d6fdb39b75d0e90398f9b12bdcd0843a10ca941ef7f4e8ad`  
		Last Modified: Thu, 01 Oct 2026 14:53:33 GMT  
		Size: 44.2 MB (44226198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316453b2b0417e5737b7e2d9e2c446c447ecf911c67bd14856bac54b6c0f4dc7`  
		Last Modified: Thu, 01 Oct 2026 14:53:21 GMT  
		Size: 1.6 MB (1563911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d737f1dfb04e54e5a9fc19c422e359aca7560e41286c3730a0966353a90569`  
		Last Modified: Thu, 01 Oct 2026 14:53:53 GMT  
		Size: 181.3 MB (181274846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:b347a6e3728f1beaa90eec9694fcb5c03b0950970924634466f3d27c606569c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d634ad438bccf435cad4958ece83a8938805374be6677612cc2c942a0f972c32`

```dockerfile
```

-	Layers:
	-	`sha256:138b7929113c0c05638873aac43cb6cf15ae658b3d103fac9f383c571430c4d8`  
		Last Modified: Thu, 01 Oct 2026 14:53:21 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:stable`

```console
$ docker pull dart@sha256:4a8b7e1546c96c514bf94e591cfa38345ceadd209f572dc2829551a0a3fe6e78
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
$ docker pull dart@sha256:39e32992047a34be0a6b2d4839a0ba255fc18d40c868bc4146611d0ff34bf861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316609938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:507719697296a59873d029a038ba7d82436063eaeeed73b63a5151f3d1a9c912`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:49 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 01:41:49 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 01:41:49 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:41:49 GMT
WORKDIR /root
# Tue, 06 Oct 2026 01:42:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7e4b7de958a428542c296a6e1383987afa6d03285a4d74c0826af0c7bf74b2e`  
		Last Modified: Tue, 06 Oct 2026 01:42:28 GMT  
		Size: 42.5 MB (42526115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed83b7d1ff38abe0bfd3c72d001f51e90a2ea321a2b5475e1a54ee977ebd0e5f`  
		Last Modified: Tue, 06 Oct 2026 01:42:26 GMT  
		Size: 1.9 MB (1869672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4a21a681fa76ea094a341abe6d6d83ec08824a87c224727cc6336bf36c5f957`  
		Last Modified: Tue, 06 Oct 2026 01:42:32 GMT  
		Size: 242.4 MB (242370769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:fb831617571220ad8a4ea7437adf97ba567d652472323b90c89bd4e98dd86533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f7f123b49958884cc88b11ddbe27e899f49c76620a05650a6f309845829f7bc`

```dockerfile
```

-	Layers:
	-	`sha256:7a0a247f74c845bbd942a6717134912927a53e3510765701f113bf277c34a5d7`  
		Last Modified: Tue, 06 Oct 2026 01:42:26 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; arm variant v7

```console
$ docker pull dart@sha256:1ce9437c63a73369988fed49a25712595af1ce78a5358072a177545417920379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230531186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54b74812d40939b345665529dcc1b977ab7751111af58e406b95c7945c7e32b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:25:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:25:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 02:25:24 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 02:25:24 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:25:24 GMT
WORKDIR /root
# Tue, 06 Oct 2026 02:25:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b42d6822016ab159d1ec29ae72cb579c90ce4d89f7d37ab20308f33dff8f54d4`  
		Last Modified: Tue, 06 Oct 2026 02:25:57 GMT  
		Size: 37.5 MB (37528208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:133633f5500e2ffeafa3f74c54a6d0e81613524f2aeca590497a988d31b855ab`  
		Last Modified: Tue, 06 Oct 2026 02:25:55 GMT  
		Size: 1.3 MB (1273040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:152b4975a1adc8963c3687d5f4ad5a1ab3fc5f1b2f5600f3e31f7292ecc4454c`  
		Last Modified: Tue, 06 Oct 2026 02:26:00 GMT  
		Size: 165.5 MB (165471728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:8a89497d639bd1b4431e2fcf086b80e6dec95ad0a68a4b18059defa110d42328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:829d760a01bf55511f05fe2fa48dc8390039ea1e01d8ff14c68ce55e14503498`

```dockerfile
```

-	Layers:
	-	`sha256:cf203812e873f3d64d5523950ede566cc4f5dfd1ba8d5cd02159d4e179b11a02`  
		Last Modified: Tue, 06 Oct 2026 02:25:55 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:8960f0d63e27408462db4577afa66a75dc6b7d24a7c3158c8e453b53b274f348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315304033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5374c72e9b27f7becfc2d55df706135b1e6c89490fa47242f144bc1cfe8af4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:58 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 01:44:59 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:44:59 GMT
WORKDIR /root
# Tue, 06 Oct 2026 01:45:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d131d3bbbb7bd36d1758d81d2959f118f741dcc8ea937750f293f0075888229a`  
		Last Modified: Tue, 06 Oct 2026 01:45:41 GMT  
		Size: 42.3 MB (42320144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d59102cb85b36d03615cc06dae7ffc5b395e0bfaae59f39178a043457a0c619`  
		Last Modified: Tue, 06 Oct 2026 01:45:39 GMT  
		Size: 1.6 MB (1564420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3afd39a2545c7dfc05cd58d2ae75baa6ac2988880d7b9fc6c5ac4d38cf6bc7f`  
		Last Modified: Tue, 06 Oct 2026 01:45:44 GMT  
		Size: 241.2 MB (241219155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:b2970e8737d5080701fcaf6428103776a753826343fc4faf623433a18a383545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6749345a2cb8e77d49cd63e1cafca23ccc247149cb2ae0f11ab4f4a51a4b49b`

```dockerfile
```

-	Layers:
	-	`sha256:87750530902cb576bd0ac8003d8c53e58c45e09497e35603e47cc6205a97bd69`  
		Last Modified: Tue, 06 Oct 2026 01:45:39 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; riscv64

```console
$ docker pull dart@sha256:0b1d5cae7480a6fedf4dce6392c8b47e0c2d4675cf42b709ca372f0f642eb69c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255389371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab85f9a1cbac6d7bcf4f68aca019b9e3c0d593c0bfc9285424021771168eb60`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Thu, 01 Oct 2026 14:48:20 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 14:48:22 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 01 Oct 2026 14:48:22 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 01 Oct 2026 14:48:22 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 14:48:22 GMT
WORKDIR /root
# Thu, 01 Oct 2026 14:49:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3cf0197a69ba5d69d9f03c7d97786aaa146cd8fdfd45fb00f5109d193ccbe81e`  
		Last Modified: Sat, 19 Sep 2026 04:09:02 GMT  
		Size: 28.3 MB (28324384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24044377644e6a96d6fdb39b75d0e90398f9b12bdcd0843a10ca941ef7f4e8ad`  
		Last Modified: Thu, 01 Oct 2026 14:53:33 GMT  
		Size: 44.2 MB (44226198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316453b2b0417e5737b7e2d9e2c446c447ecf911c67bd14856bac54b6c0f4dc7`  
		Last Modified: Thu, 01 Oct 2026 14:53:21 GMT  
		Size: 1.6 MB (1563911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d737f1dfb04e54e5a9fc19c422e359aca7560e41286c3730a0966353a90569`  
		Last Modified: Thu, 01 Oct 2026 14:53:53 GMT  
		Size: 181.3 MB (181274846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:b347a6e3728f1beaa90eec9694fcb5c03b0950970924634466f3d27c606569c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d634ad438bccf435cad4958ece83a8938805374be6677612cc2c942a0f972c32`

```dockerfile
```

-	Layers:
	-	`sha256:138b7929113c0c05638873aac43cb6cf15ae658b3d103fac9f383c571430c4d8`  
		Last Modified: Thu, 01 Oct 2026 14:53:21 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:stable-sdk`

```console
$ docker pull dart@sha256:4a8b7e1546c96c514bf94e591cfa38345ceadd209f572dc2829551a0a3fe6e78
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
$ docker pull dart@sha256:39e32992047a34be0a6b2d4839a0ba255fc18d40c868bc4146611d0ff34bf861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316609938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:507719697296a59873d029a038ba7d82436063eaeeed73b63a5151f3d1a9c912`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:49 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 01:41:49 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 01:41:49 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:41:49 GMT
WORKDIR /root
# Tue, 06 Oct 2026 01:42:00 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7e4b7de958a428542c296a6e1383987afa6d03285a4d74c0826af0c7bf74b2e`  
		Last Modified: Tue, 06 Oct 2026 01:42:28 GMT  
		Size: 42.5 MB (42526115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed83b7d1ff38abe0bfd3c72d001f51e90a2ea321a2b5475e1a54ee977ebd0e5f`  
		Last Modified: Tue, 06 Oct 2026 01:42:26 GMT  
		Size: 1.9 MB (1869672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4a21a681fa76ea094a341abe6d6d83ec08824a87c224727cc6336bf36c5f957`  
		Last Modified: Tue, 06 Oct 2026 01:42:32 GMT  
		Size: 242.4 MB (242370769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:fb831617571220ad8a4ea7437adf97ba567d652472323b90c89bd4e98dd86533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f7f123b49958884cc88b11ddbe27e899f49c76620a05650a6f309845829f7bc`

```dockerfile
```

-	Layers:
	-	`sha256:7a0a247f74c845bbd942a6717134912927a53e3510765701f113bf277c34a5d7`  
		Last Modified: Tue, 06 Oct 2026 01:42:26 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:1ce9437c63a73369988fed49a25712595af1ce78a5358072a177545417920379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230531186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54b74812d40939b345665529dcc1b977ab7751111af58e406b95c7945c7e32b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:25:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:25:24 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 02:25:24 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 02:25:24 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:25:24 GMT
WORKDIR /root
# Tue, 06 Oct 2026 02:25:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b42d6822016ab159d1ec29ae72cb579c90ce4d89f7d37ab20308f33dff8f54d4`  
		Last Modified: Tue, 06 Oct 2026 02:25:57 GMT  
		Size: 37.5 MB (37528208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:133633f5500e2ffeafa3f74c54a6d0e81613524f2aeca590497a988d31b855ab`  
		Last Modified: Tue, 06 Oct 2026 02:25:55 GMT  
		Size: 1.3 MB (1273040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:152b4975a1adc8963c3687d5f4ad5a1ab3fc5f1b2f5600f3e31f7292ecc4454c`  
		Last Modified: Tue, 06 Oct 2026 02:26:00 GMT  
		Size: 165.5 MB (165471728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:8a89497d639bd1b4431e2fcf086b80e6dec95ad0a68a4b18059defa110d42328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:829d760a01bf55511f05fe2fa48dc8390039ea1e01d8ff14c68ce55e14503498`

```dockerfile
```

-	Layers:
	-	`sha256:cf203812e873f3d64d5523950ede566cc4f5dfd1ba8d5cd02159d4e179b11a02`  
		Last Modified: Tue, 06 Oct 2026 02:25:55 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:8960f0d63e27408462db4577afa66a75dc6b7d24a7c3158c8e453b53b274f348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315304033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5374c72e9b27f7becfc2d55df706135b1e6c89490fa47242f144bc1cfe8af4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:58 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 06 Oct 2026 01:44:59 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:44:59 GMT
WORKDIR /root
# Tue, 06 Oct 2026 01:45:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d131d3bbbb7bd36d1758d81d2959f118f741dcc8ea937750f293f0075888229a`  
		Last Modified: Tue, 06 Oct 2026 01:45:41 GMT  
		Size: 42.3 MB (42320144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d59102cb85b36d03615cc06dae7ffc5b395e0bfaae59f39178a043457a0c619`  
		Last Modified: Tue, 06 Oct 2026 01:45:39 GMT  
		Size: 1.6 MB (1564420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3afd39a2545c7dfc05cd58d2ae75baa6ac2988880d7b9fc6c5ac4d38cf6bc7f`  
		Last Modified: Tue, 06 Oct 2026 01:45:44 GMT  
		Size: 241.2 MB (241219155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:b2970e8737d5080701fcaf6428103776a753826343fc4faf623433a18a383545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6749345a2cb8e77d49cd63e1cafca23ccc247149cb2ae0f11ab4f4a51a4b49b`

```dockerfile
```

-	Layers:
	-	`sha256:87750530902cb576bd0ac8003d8c53e58c45e09497e35603e47cc6205a97bd69`  
		Last Modified: Tue, 06 Oct 2026 01:45:39 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:0b1d5cae7480a6fedf4dce6392c8b47e0c2d4675cf42b709ca372f0f642eb69c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255389371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab85f9a1cbac6d7bcf4f68aca019b9e3c0d593c0bfc9285424021771168eb60`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Thu, 01 Oct 2026 14:48:20 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 14:48:22 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 01 Oct 2026 14:48:22 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 01 Oct 2026 14:48:22 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 14:48:22 GMT
WORKDIR /root
# Thu, 01 Oct 2026 14:49:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3cf0197a69ba5d69d9f03c7d97786aaa146cd8fdfd45fb00f5109d193ccbe81e`  
		Last Modified: Sat, 19 Sep 2026 04:09:02 GMT  
		Size: 28.3 MB (28324384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24044377644e6a96d6fdb39b75d0e90398f9b12bdcd0843a10ca941ef7f4e8ad`  
		Last Modified: Thu, 01 Oct 2026 14:53:33 GMT  
		Size: 44.2 MB (44226198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316453b2b0417e5737b7e2d9e2c446c447ecf911c67bd14856bac54b6c0f4dc7`  
		Last Modified: Thu, 01 Oct 2026 14:53:21 GMT  
		Size: 1.6 MB (1563911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d737f1dfb04e54e5a9fc19c422e359aca7560e41286c3730a0966353a90569`  
		Last Modified: Thu, 01 Oct 2026 14:53:53 GMT  
		Size: 181.3 MB (181274846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:b347a6e3728f1beaa90eec9694fcb5c03b0950970924634466f3d27c606569c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d634ad438bccf435cad4958ece83a8938805374be6677612cc2c942a0f972c32`

```dockerfile
```

-	Layers:
	-	`sha256:138b7929113c0c05638873aac43cb6cf15ae658b3d103fac9f383c571430c4d8`  
		Last Modified: Thu, 01 Oct 2026 14:53:21 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json
