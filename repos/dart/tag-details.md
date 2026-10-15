<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `dart`

-	[`dart:3`](#dart3)
-	[`dart:3-sdk`](#dart3-sdk)
-	[`dart:3.13`](#dart313)
-	[`dart:3.13-sdk`](#dart313-sdk)
-	[`dart:3.13.5`](#dart3135)
-	[`dart:3.13.5-sdk`](#dart3135-sdk)
-	[`dart:3.14.0-315.1.beta`](#dart3140-3151beta)
-	[`dart:3.14.0-315.1.beta-sdk`](#dart3140-3151beta-sdk)
-	[`dart:beta`](#dartbeta)
-	[`dart:beta-sdk`](#dartbeta-sdk)
-	[`dart:latest`](#dartlatest)
-	[`dart:sdk`](#dartsdk)
-	[`dart:stable`](#dartstable)
-	[`dart:stable-sdk`](#dartstable-sdk)

## `dart:3`

```console
$ docker pull dart@sha256:8604cbd137b6d67c24f49b916f2aa9b67d71b539576e0178bf161d831c9e344f
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
$ docker pull dart@sha256:13450319eb44853825bfc48a6806bd920e6717f4f102ff876ede95bb0d8a98bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252773553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7eb1f2ff9bbf1bcd32ba7047b417253e4cdc19debf721ef7d1ed2ebef83ef7b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 20:18:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 20:18:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 07 Oct 2026 20:18:34 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 07 Oct 2026 20:18:34 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 20:18:34 GMT
WORKDIR /root
# Wed, 07 Oct 2026 20:19:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3baec26a40745c7b95055d32c48efb7ab53bd79b6751fdf40ab2119ea15b6b11`  
		Last Modified: Wed, 07 Oct 2026 20:24:19 GMT  
		Size: 41.6 MB (41601255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e3c193b308048cfb298c49f10cbcc20573e6b161af84849acafb892c302102`  
		Last Modified: Wed, 07 Oct 2026 20:24:07 GMT  
		Size: 1.6 MB (1563904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e841fca53e7b567c602875e2ab6e9a26c7e56ef0d58d73afcbc2be836513f6c4`  
		Last Modified: Wed, 07 Oct 2026 20:24:39 GMT  
		Size: 181.3 MB (181274599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:6c135571058979442328e0d02b52afc59645ebd5c4e9ee4781adf4796a41cf0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46cb9e51c3b1d52464c741b92c5d1c88173cdfcf6acfc6b6eee55823052589f4`

```dockerfile
```

-	Layers:
	-	`sha256:928103948247b31562145ce8a31f0e1d3bb009bf718fa01a339988a503ff21cd`  
		Last Modified: Wed, 07 Oct 2026 20:24:07 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3-sdk`

```console
$ docker pull dart@sha256:8604cbd137b6d67c24f49b916f2aa9b67d71b539576e0178bf161d831c9e344f
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
$ docker pull dart@sha256:13450319eb44853825bfc48a6806bd920e6717f4f102ff876ede95bb0d8a98bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252773553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7eb1f2ff9bbf1bcd32ba7047b417253e4cdc19debf721ef7d1ed2ebef83ef7b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 20:18:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 20:18:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 07 Oct 2026 20:18:34 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 07 Oct 2026 20:18:34 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 20:18:34 GMT
WORKDIR /root
# Wed, 07 Oct 2026 20:19:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3baec26a40745c7b95055d32c48efb7ab53bd79b6751fdf40ab2119ea15b6b11`  
		Last Modified: Wed, 07 Oct 2026 20:24:19 GMT  
		Size: 41.6 MB (41601255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e3c193b308048cfb298c49f10cbcc20573e6b161af84849acafb892c302102`  
		Last Modified: Wed, 07 Oct 2026 20:24:07 GMT  
		Size: 1.6 MB (1563904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e841fca53e7b567c602875e2ab6e9a26c7e56ef0d58d73afcbc2be836513f6c4`  
		Last Modified: Wed, 07 Oct 2026 20:24:39 GMT  
		Size: 181.3 MB (181274599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:6c135571058979442328e0d02b52afc59645ebd5c4e9ee4781adf4796a41cf0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46cb9e51c3b1d52464c741b92c5d1c88173cdfcf6acfc6b6eee55823052589f4`

```dockerfile
```

-	Layers:
	-	`sha256:928103948247b31562145ce8a31f0e1d3bb009bf718fa01a339988a503ff21cd`  
		Last Modified: Wed, 07 Oct 2026 20:24:07 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13`

```console
$ docker pull dart@sha256:8604cbd137b6d67c24f49b916f2aa9b67d71b539576e0178bf161d831c9e344f
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
$ docker pull dart@sha256:13450319eb44853825bfc48a6806bd920e6717f4f102ff876ede95bb0d8a98bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252773553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7eb1f2ff9bbf1bcd32ba7047b417253e4cdc19debf721ef7d1ed2ebef83ef7b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 20:18:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 20:18:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 07 Oct 2026 20:18:34 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 07 Oct 2026 20:18:34 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 20:18:34 GMT
WORKDIR /root
# Wed, 07 Oct 2026 20:19:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3baec26a40745c7b95055d32c48efb7ab53bd79b6751fdf40ab2119ea15b6b11`  
		Last Modified: Wed, 07 Oct 2026 20:24:19 GMT  
		Size: 41.6 MB (41601255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e3c193b308048cfb298c49f10cbcc20573e6b161af84849acafb892c302102`  
		Last Modified: Wed, 07 Oct 2026 20:24:07 GMT  
		Size: 1.6 MB (1563904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e841fca53e7b567c602875e2ab6e9a26c7e56ef0d58d73afcbc2be836513f6c4`  
		Last Modified: Wed, 07 Oct 2026 20:24:39 GMT  
		Size: 181.3 MB (181274599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13` - unknown; unknown

```console
$ docker pull dart@sha256:6c135571058979442328e0d02b52afc59645ebd5c4e9ee4781adf4796a41cf0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46cb9e51c3b1d52464c741b92c5d1c88173cdfcf6acfc6b6eee55823052589f4`

```dockerfile
```

-	Layers:
	-	`sha256:928103948247b31562145ce8a31f0e1d3bb009bf718fa01a339988a503ff21cd`  
		Last Modified: Wed, 07 Oct 2026 20:24:07 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13-sdk`

```console
$ docker pull dart@sha256:8604cbd137b6d67c24f49b916f2aa9b67d71b539576e0178bf161d831c9e344f
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
$ docker pull dart@sha256:13450319eb44853825bfc48a6806bd920e6717f4f102ff876ede95bb0d8a98bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252773553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7eb1f2ff9bbf1bcd32ba7047b417253e4cdc19debf721ef7d1ed2ebef83ef7b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 20:18:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 20:18:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 07 Oct 2026 20:18:34 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 07 Oct 2026 20:18:34 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 20:18:34 GMT
WORKDIR /root
# Wed, 07 Oct 2026 20:19:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3baec26a40745c7b95055d32c48efb7ab53bd79b6751fdf40ab2119ea15b6b11`  
		Last Modified: Wed, 07 Oct 2026 20:24:19 GMT  
		Size: 41.6 MB (41601255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e3c193b308048cfb298c49f10cbcc20573e6b161af84849acafb892c302102`  
		Last Modified: Wed, 07 Oct 2026 20:24:07 GMT  
		Size: 1.6 MB (1563904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e841fca53e7b567c602875e2ab6e9a26c7e56ef0d58d73afcbc2be836513f6c4`  
		Last Modified: Wed, 07 Oct 2026 20:24:39 GMT  
		Size: 181.3 MB (181274599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:6c135571058979442328e0d02b52afc59645ebd5c4e9ee4781adf4796a41cf0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46cb9e51c3b1d52464c741b92c5d1c88173cdfcf6acfc6b6eee55823052589f4`

```dockerfile
```

-	Layers:
	-	`sha256:928103948247b31562145ce8a31f0e1d3bb009bf718fa01a339988a503ff21cd`  
		Last Modified: Wed, 07 Oct 2026 20:24:07 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13.5`

```console
$ docker pull dart@sha256:8604cbd137b6d67c24f49b916f2aa9b67d71b539576e0178bf161d831c9e344f
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
$ docker pull dart@sha256:13450319eb44853825bfc48a6806bd920e6717f4f102ff876ede95bb0d8a98bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252773553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7eb1f2ff9bbf1bcd32ba7047b417253e4cdc19debf721ef7d1ed2ebef83ef7b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 20:18:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 20:18:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 07 Oct 2026 20:18:34 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 07 Oct 2026 20:18:34 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 20:18:34 GMT
WORKDIR /root
# Wed, 07 Oct 2026 20:19:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3baec26a40745c7b95055d32c48efb7ab53bd79b6751fdf40ab2119ea15b6b11`  
		Last Modified: Wed, 07 Oct 2026 20:24:19 GMT  
		Size: 41.6 MB (41601255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e3c193b308048cfb298c49f10cbcc20573e6b161af84849acafb892c302102`  
		Last Modified: Wed, 07 Oct 2026 20:24:07 GMT  
		Size: 1.6 MB (1563904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e841fca53e7b567c602875e2ab6e9a26c7e56ef0d58d73afcbc2be836513f6c4`  
		Last Modified: Wed, 07 Oct 2026 20:24:39 GMT  
		Size: 181.3 MB (181274599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.5` - unknown; unknown

```console
$ docker pull dart@sha256:6c135571058979442328e0d02b52afc59645ebd5c4e9ee4781adf4796a41cf0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46cb9e51c3b1d52464c741b92c5d1c88173cdfcf6acfc6b6eee55823052589f4`

```dockerfile
```

-	Layers:
	-	`sha256:928103948247b31562145ce8a31f0e1d3bb009bf718fa01a339988a503ff21cd`  
		Last Modified: Wed, 07 Oct 2026 20:24:07 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13.5-sdk`

```console
$ docker pull dart@sha256:8604cbd137b6d67c24f49b916f2aa9b67d71b539576e0178bf161d831c9e344f
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
$ docker pull dart@sha256:13450319eb44853825bfc48a6806bd920e6717f4f102ff876ede95bb0d8a98bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252773553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7eb1f2ff9bbf1bcd32ba7047b417253e4cdc19debf721ef7d1ed2ebef83ef7b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 20:18:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 20:18:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 07 Oct 2026 20:18:34 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 07 Oct 2026 20:18:34 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 20:18:34 GMT
WORKDIR /root
# Wed, 07 Oct 2026 20:19:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3baec26a40745c7b95055d32c48efb7ab53bd79b6751fdf40ab2119ea15b6b11`  
		Last Modified: Wed, 07 Oct 2026 20:24:19 GMT  
		Size: 41.6 MB (41601255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e3c193b308048cfb298c49f10cbcc20573e6b161af84849acafb892c302102`  
		Last Modified: Wed, 07 Oct 2026 20:24:07 GMT  
		Size: 1.6 MB (1563904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e841fca53e7b567c602875e2ab6e9a26c7e56ef0d58d73afcbc2be836513f6c4`  
		Last Modified: Wed, 07 Oct 2026 20:24:39 GMT  
		Size: 181.3 MB (181274599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.5-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:6c135571058979442328e0d02b52afc59645ebd5c4e9ee4781adf4796a41cf0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46cb9e51c3b1d52464c741b92c5d1c88173cdfcf6acfc6b6eee55823052589f4`

```dockerfile
```

-	Layers:
	-	`sha256:928103948247b31562145ce8a31f0e1d3bb009bf718fa01a339988a503ff21cd`  
		Last Modified: Wed, 07 Oct 2026 20:24:07 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.14.0-315.1.beta`

```console
$ docker pull dart@sha256:d8cc9a49a27311e542259576f5aa2fb3e12d67d3f5f629c7f98593ac52e8ff0e
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

### `dart:3.14.0-315.1.beta` - linux; amd64

```console
$ docker pull dart@sha256:1fa5eeca5bce8e77427276fdf01b0b8d2a76a0bd17a038a1cd9a27b5c3eb852a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.7 MB (345740408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:accdd81555eac28638a77556785ccc9820b6a3b947e744cf361bacff2820083c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 20:53:56 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 20:53:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 13 Oct 2026 20:53:57 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 13 Oct 2026 20:53:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 20:53:57 GMT
WORKDIR /root
# Tue, 13 Oct 2026 20:54:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8ceaf3e7e022901be224e0c48404c8456a6943f2f9d20dbe6bbe2e3f09f4b63b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5cbad2c385e29aa29fd0432c4a0ce595f434aff8653d4e08fd6ddc233c0d8928;             SDK_ARCH="arm";;         arm64)             DART_SHA256=74a6b048af5d12068ef5c7173008fee1f5132cd775a5021d5302499cb1f985cd;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=a26f5bb718b10a7d78495f5b7bda0d17ff94d0b4dce3a54c4ff1a9ad6efaa8a5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eee268953676dcc3943818f5434d1e2db2ee774d0e1f020d2ee3f37c7a81c959`  
		Last Modified: Tue, 13 Oct 2026 20:54:43 GMT  
		Size: 42.5 MB (42526107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e613e989b5474e976f3f9cdd8e61225ece3c08dc565312e2e4acc0a1ec52f95`  
		Last Modified: Tue, 13 Oct 2026 20:54:41 GMT  
		Size: 1.9 MB (1869668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c23a43261d07d61c792cd6b5b0e0e3840b2bc988f7ab2009cc928d083cad368`  
		Last Modified: Tue, 13 Oct 2026 20:54:48 GMT  
		Size: 271.5 MB (271501251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-315.1.beta` - unknown; unknown

```console
$ docker pull dart@sha256:e17a9dc508cca766b0a130583b6ba2690e46947811e11b69a24e965ab81c5123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5f1675581509786c4b16156c76b28f4754980cb398908d5bae459f9173b41d6`

```dockerfile
```

-	Layers:
	-	`sha256:1c32713f031a891ebdb9a369283b8e5d3982a2b55d07f5c96e8293679d976a23`  
		Last Modified: Tue, 13 Oct 2026 20:54:41 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-315.1.beta` - linux; arm variant v7

```console
$ docker pull dart@sha256:bf0508301a86a0312d80dead4129d224f3c274fc35582b8dc8c113c1eaedd9ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238553756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4992c4485e6aed442c47ad1c72710f0a78bdaaf2f39eb4649cff2d96d65f0dfb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 20:55:15 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 20:55:15 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 13 Oct 2026 20:55:15 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 13 Oct 2026 20:55:15 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 20:55:15 GMT
WORKDIR /root
# Tue, 13 Oct 2026 20:55:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8ceaf3e7e022901be224e0c48404c8456a6943f2f9d20dbe6bbe2e3f09f4b63b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5cbad2c385e29aa29fd0432c4a0ce595f434aff8653d4e08fd6ddc233c0d8928;             SDK_ARCH="arm";;         arm64)             DART_SHA256=74a6b048af5d12068ef5c7173008fee1f5132cd775a5021d5302499cb1f985cd;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=a26f5bb718b10a7d78495f5b7bda0d17ff94d0b4dce3a54c4ff1a9ad6efaa8a5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b802219692831499109fe2ed4a84e18da36731de098d1e88be05121a8108b6`  
		Last Modified: Tue, 13 Oct 2026 20:55:49 GMT  
		Size: 37.5 MB (37528031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f844bf1330964337dd3db59b525815c979d451c38bb90d14a0efbb228a177708`  
		Last Modified: Tue, 13 Oct 2026 20:55:47 GMT  
		Size: 1.3 MB (1273041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b9c3bb9271f14001ed751ea40736b1e8471309b108c862146bcb40452fc281`  
		Last Modified: Tue, 13 Oct 2026 20:55:52 GMT  
		Size: 173.5 MB (173494474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-315.1.beta` - unknown; unknown

```console
$ docker pull dart@sha256:622adf7a13e0c547271e4681e377502ed1b80e3644f5f8643619bbbbdf4aceb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ece69aa02da7ff6761c6f21a0dac1e3773d58ca9a77125ff428a28570253571`

```dockerfile
```

-	Layers:
	-	`sha256:75cadeb258f7f4d6c2c6b282030f9436192a51994519ce389baf91bc1b8f8ffa`  
		Last Modified: Tue, 13 Oct 2026 20:55:47 GMT  
		Size: 19.0 KB (19027 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-315.1.beta` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:394f0a8eecd556116aa6f94603733706e56072b1de3a29203182fff4475ed27f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.8 MB (343826490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9adf1fd1fc9be59ba5792ad52ffd77a983d2574acefebabec06f36f12ab07a7b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 20:53:56 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 20:53:56 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 13 Oct 2026 20:53:56 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 13 Oct 2026 20:53:56 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 20:53:56 GMT
WORKDIR /root
# Tue, 13 Oct 2026 20:54:10 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8ceaf3e7e022901be224e0c48404c8456a6943f2f9d20dbe6bbe2e3f09f4b63b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5cbad2c385e29aa29fd0432c4a0ce595f434aff8653d4e08fd6ddc233c0d8928;             SDK_ARCH="arm";;         arm64)             DART_SHA256=74a6b048af5d12068ef5c7173008fee1f5132cd775a5021d5302499cb1f985cd;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=a26f5bb718b10a7d78495f5b7bda0d17ff94d0b4dce3a54c4ff1a9ad6efaa8a5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295fcd2992a275e3bf88fff16418f07a59ff8645f6f4f249dca08d60a94cdf0f`  
		Last Modified: Tue, 13 Oct 2026 20:54:43 GMT  
		Size: 42.3 MB (42320546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7aa0ca0c4cd0c3758d37928f85ce38b999a6718d80fe96fc29670821da3fcef`  
		Last Modified: Tue, 13 Oct 2026 20:54:41 GMT  
		Size: 1.6 MB (1564403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8428c0f5c3f00424625dbb5e26165f722e0226d9473186c51052b4378d203fdf`  
		Last Modified: Tue, 13 Oct 2026 20:54:48 GMT  
		Size: 269.7 MB (269741227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-315.1.beta` - unknown; unknown

```console
$ docker pull dart@sha256:36d3ed878b1f10aaa87946ca3b4826cd315db76d576d943fbbbd80dc2028501c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc740b222a62ac504a35b0c4076249b9c1e4e908f2f7239effbd897eecff759d`

```dockerfile
```

-	Layers:
	-	`sha256:6327aaf46a326150037c1677327e4d7aa78d47e2e681ff8d1c67ed4bcbf27ee3`  
		Last Modified: Tue, 13 Oct 2026 20:54:41 GMT  
		Size: 19.1 KB (19056 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-315.1.beta` - linux; riscv64

```console
$ docker pull dart@sha256:c709c3953bb40fa715944ec35141e70b4510d038329c2372252071e747c5cfe4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (272990406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd302df363c3f1f2a8f4b523c5ee494a19e0d52f0c45765b61ea60bfd1640479`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Thu, 15 Oct 2026 02:57:17 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 02:57:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 15 Oct 2026 02:57:19 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 15 Oct 2026 02:57:19 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Oct 2026 02:57:19 GMT
WORKDIR /root
# Thu, 15 Oct 2026 02:58:12 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8ceaf3e7e022901be224e0c48404c8456a6943f2f9d20dbe6bbe2e3f09f4b63b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5cbad2c385e29aa29fd0432c4a0ce595f434aff8653d4e08fd6ddc233c0d8928;             SDK_ARCH="arm";;         arm64)             DART_SHA256=74a6b048af5d12068ef5c7173008fee1f5132cd775a5021d5302499cb1f985cd;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=a26f5bb718b10a7d78495f5b7bda0d17ff94d0b4dce3a54c4ff1a9ad6efaa8a5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07af1f83fe81039af4cffa1c6579dbc54816533b0a48e1dac85b7b8a4593617d`  
		Last Modified: Thu, 15 Oct 2026 03:03:17 GMT  
		Size: 41.6 MB (41600782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22024fff6451d607867e80a7951fd48440e2a860876f01678ab2a19f9da40e11`  
		Last Modified: Thu, 15 Oct 2026 03:03:05 GMT  
		Size: 1.6 MB (1563905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be0401f808c7fbf7614b2a3d348116cd4c9c30e60918973d7d4f4d6eed83d201`  
		Last Modified: Thu, 15 Oct 2026 03:03:42 GMT  
		Size: 201.5 MB (201491924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-315.1.beta` - unknown; unknown

```console
$ docker pull dart@sha256:1c77298a31eff777ad024a7afe5ec011c86402a45b465c9c3e50479266ff8dfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ddfd9db0586d916abf87447084d5969b5d71d80ea62141828a01dc2ea665a17`

```dockerfile
```

-	Layers:
	-	`sha256:74d19f8705b283979729cae9591fd3fbbaa7ab13bd10ff76d9849ddc15b1ddba`  
		Last Modified: Thu, 15 Oct 2026 03:03:05 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.14.0-315.1.beta-sdk`

```console
$ docker pull dart@sha256:d8cc9a49a27311e542259576f5aa2fb3e12d67d3f5f629c7f98593ac52e8ff0e
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

### `dart:3.14.0-315.1.beta-sdk` - linux; amd64

```console
$ docker pull dart@sha256:1fa5eeca5bce8e77427276fdf01b0b8d2a76a0bd17a038a1cd9a27b5c3eb852a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.7 MB (345740408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:accdd81555eac28638a77556785ccc9820b6a3b947e744cf361bacff2820083c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 20:53:56 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 20:53:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 13 Oct 2026 20:53:57 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 13 Oct 2026 20:53:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 20:53:57 GMT
WORKDIR /root
# Tue, 13 Oct 2026 20:54:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8ceaf3e7e022901be224e0c48404c8456a6943f2f9d20dbe6bbe2e3f09f4b63b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5cbad2c385e29aa29fd0432c4a0ce595f434aff8653d4e08fd6ddc233c0d8928;             SDK_ARCH="arm";;         arm64)             DART_SHA256=74a6b048af5d12068ef5c7173008fee1f5132cd775a5021d5302499cb1f985cd;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=a26f5bb718b10a7d78495f5b7bda0d17ff94d0b4dce3a54c4ff1a9ad6efaa8a5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eee268953676dcc3943818f5434d1e2db2ee774d0e1f020d2ee3f37c7a81c959`  
		Last Modified: Tue, 13 Oct 2026 20:54:43 GMT  
		Size: 42.5 MB (42526107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e613e989b5474e976f3f9cdd8e61225ece3c08dc565312e2e4acc0a1ec52f95`  
		Last Modified: Tue, 13 Oct 2026 20:54:41 GMT  
		Size: 1.9 MB (1869668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c23a43261d07d61c792cd6b5b0e0e3840b2bc988f7ab2009cc928d083cad368`  
		Last Modified: Tue, 13 Oct 2026 20:54:48 GMT  
		Size: 271.5 MB (271501251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-315.1.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:e17a9dc508cca766b0a130583b6ba2690e46947811e11b69a24e965ab81c5123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5f1675581509786c4b16156c76b28f4754980cb398908d5bae459f9173b41d6`

```dockerfile
```

-	Layers:
	-	`sha256:1c32713f031a891ebdb9a369283b8e5d3982a2b55d07f5c96e8293679d976a23`  
		Last Modified: Tue, 13 Oct 2026 20:54:41 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-315.1.beta-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:bf0508301a86a0312d80dead4129d224f3c274fc35582b8dc8c113c1eaedd9ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238553756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4992c4485e6aed442c47ad1c72710f0a78bdaaf2f39eb4649cff2d96d65f0dfb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 20:55:15 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 20:55:15 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 13 Oct 2026 20:55:15 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 13 Oct 2026 20:55:15 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 20:55:15 GMT
WORKDIR /root
# Tue, 13 Oct 2026 20:55:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8ceaf3e7e022901be224e0c48404c8456a6943f2f9d20dbe6bbe2e3f09f4b63b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5cbad2c385e29aa29fd0432c4a0ce595f434aff8653d4e08fd6ddc233c0d8928;             SDK_ARCH="arm";;         arm64)             DART_SHA256=74a6b048af5d12068ef5c7173008fee1f5132cd775a5021d5302499cb1f985cd;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=a26f5bb718b10a7d78495f5b7bda0d17ff94d0b4dce3a54c4ff1a9ad6efaa8a5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b802219692831499109fe2ed4a84e18da36731de098d1e88be05121a8108b6`  
		Last Modified: Tue, 13 Oct 2026 20:55:49 GMT  
		Size: 37.5 MB (37528031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f844bf1330964337dd3db59b525815c979d451c38bb90d14a0efbb228a177708`  
		Last Modified: Tue, 13 Oct 2026 20:55:47 GMT  
		Size: 1.3 MB (1273041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b9c3bb9271f14001ed751ea40736b1e8471309b108c862146bcb40452fc281`  
		Last Modified: Tue, 13 Oct 2026 20:55:52 GMT  
		Size: 173.5 MB (173494474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-315.1.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:622adf7a13e0c547271e4681e377502ed1b80e3644f5f8643619bbbbdf4aceb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ece69aa02da7ff6761c6f21a0dac1e3773d58ca9a77125ff428a28570253571`

```dockerfile
```

-	Layers:
	-	`sha256:75cadeb258f7f4d6c2c6b282030f9436192a51994519ce389baf91bc1b8f8ffa`  
		Last Modified: Tue, 13 Oct 2026 20:55:47 GMT  
		Size: 19.0 KB (19027 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-315.1.beta-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:394f0a8eecd556116aa6f94603733706e56072b1de3a29203182fff4475ed27f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.8 MB (343826490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9adf1fd1fc9be59ba5792ad52ffd77a983d2574acefebabec06f36f12ab07a7b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 20:53:56 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 20:53:56 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 13 Oct 2026 20:53:56 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 13 Oct 2026 20:53:56 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 20:53:56 GMT
WORKDIR /root
# Tue, 13 Oct 2026 20:54:10 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8ceaf3e7e022901be224e0c48404c8456a6943f2f9d20dbe6bbe2e3f09f4b63b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5cbad2c385e29aa29fd0432c4a0ce595f434aff8653d4e08fd6ddc233c0d8928;             SDK_ARCH="arm";;         arm64)             DART_SHA256=74a6b048af5d12068ef5c7173008fee1f5132cd775a5021d5302499cb1f985cd;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=a26f5bb718b10a7d78495f5b7bda0d17ff94d0b4dce3a54c4ff1a9ad6efaa8a5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295fcd2992a275e3bf88fff16418f07a59ff8645f6f4f249dca08d60a94cdf0f`  
		Last Modified: Tue, 13 Oct 2026 20:54:43 GMT  
		Size: 42.3 MB (42320546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7aa0ca0c4cd0c3758d37928f85ce38b999a6718d80fe96fc29670821da3fcef`  
		Last Modified: Tue, 13 Oct 2026 20:54:41 GMT  
		Size: 1.6 MB (1564403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8428c0f5c3f00424625dbb5e26165f722e0226d9473186c51052b4378d203fdf`  
		Last Modified: Tue, 13 Oct 2026 20:54:48 GMT  
		Size: 269.7 MB (269741227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-315.1.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:36d3ed878b1f10aaa87946ca3b4826cd315db76d576d943fbbbd80dc2028501c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc740b222a62ac504a35b0c4076249b9c1e4e908f2f7239effbd897eecff759d`

```dockerfile
```

-	Layers:
	-	`sha256:6327aaf46a326150037c1677327e4d7aa78d47e2e681ff8d1c67ed4bcbf27ee3`  
		Last Modified: Tue, 13 Oct 2026 20:54:41 GMT  
		Size: 19.1 KB (19056 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.14.0-315.1.beta-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:c709c3953bb40fa715944ec35141e70b4510d038329c2372252071e747c5cfe4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (272990406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd302df363c3f1f2a8f4b523c5ee494a19e0d52f0c45765b61ea60bfd1640479`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Thu, 15 Oct 2026 02:57:17 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 02:57:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 15 Oct 2026 02:57:19 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 15 Oct 2026 02:57:19 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Oct 2026 02:57:19 GMT
WORKDIR /root
# Thu, 15 Oct 2026 02:58:12 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8ceaf3e7e022901be224e0c48404c8456a6943f2f9d20dbe6bbe2e3f09f4b63b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5cbad2c385e29aa29fd0432c4a0ce595f434aff8653d4e08fd6ddc233c0d8928;             SDK_ARCH="arm";;         arm64)             DART_SHA256=74a6b048af5d12068ef5c7173008fee1f5132cd775a5021d5302499cb1f985cd;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=a26f5bb718b10a7d78495f5b7bda0d17ff94d0b4dce3a54c4ff1a9ad6efaa8a5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07af1f83fe81039af4cffa1c6579dbc54816533b0a48e1dac85b7b8a4593617d`  
		Last Modified: Thu, 15 Oct 2026 03:03:17 GMT  
		Size: 41.6 MB (41600782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22024fff6451d607867e80a7951fd48440e2a860876f01678ab2a19f9da40e11`  
		Last Modified: Thu, 15 Oct 2026 03:03:05 GMT  
		Size: 1.6 MB (1563905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be0401f808c7fbf7614b2a3d348116cd4c9c30e60918973d7d4f4d6eed83d201`  
		Last Modified: Thu, 15 Oct 2026 03:03:42 GMT  
		Size: 201.5 MB (201491924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.14.0-315.1.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:1c77298a31eff777ad024a7afe5ec011c86402a45b465c9c3e50479266ff8dfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ddfd9db0586d916abf87447084d5969b5d71d80ea62141828a01dc2ea665a17`

```dockerfile
```

-	Layers:
	-	`sha256:74d19f8705b283979729cae9591fd3fbbaa7ab13bd10ff76d9849ddc15b1ddba`  
		Last Modified: Thu, 15 Oct 2026 03:03:05 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:beta`

```console
$ docker pull dart@sha256:d8cc9a49a27311e542259576f5aa2fb3e12d67d3f5f629c7f98593ac52e8ff0e
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
$ docker pull dart@sha256:1fa5eeca5bce8e77427276fdf01b0b8d2a76a0bd17a038a1cd9a27b5c3eb852a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.7 MB (345740408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:accdd81555eac28638a77556785ccc9820b6a3b947e744cf361bacff2820083c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 20:53:56 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 20:53:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 13 Oct 2026 20:53:57 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 13 Oct 2026 20:53:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 20:53:57 GMT
WORKDIR /root
# Tue, 13 Oct 2026 20:54:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8ceaf3e7e022901be224e0c48404c8456a6943f2f9d20dbe6bbe2e3f09f4b63b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5cbad2c385e29aa29fd0432c4a0ce595f434aff8653d4e08fd6ddc233c0d8928;             SDK_ARCH="arm";;         arm64)             DART_SHA256=74a6b048af5d12068ef5c7173008fee1f5132cd775a5021d5302499cb1f985cd;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=a26f5bb718b10a7d78495f5b7bda0d17ff94d0b4dce3a54c4ff1a9ad6efaa8a5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eee268953676dcc3943818f5434d1e2db2ee774d0e1f020d2ee3f37c7a81c959`  
		Last Modified: Tue, 13 Oct 2026 20:54:43 GMT  
		Size: 42.5 MB (42526107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e613e989b5474e976f3f9cdd8e61225ece3c08dc565312e2e4acc0a1ec52f95`  
		Last Modified: Tue, 13 Oct 2026 20:54:41 GMT  
		Size: 1.9 MB (1869668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c23a43261d07d61c792cd6b5b0e0e3840b2bc988f7ab2009cc928d083cad368`  
		Last Modified: Tue, 13 Oct 2026 20:54:48 GMT  
		Size: 271.5 MB (271501251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:e17a9dc508cca766b0a130583b6ba2690e46947811e11b69a24e965ab81c5123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5f1675581509786c4b16156c76b28f4754980cb398908d5bae459f9173b41d6`

```dockerfile
```

-	Layers:
	-	`sha256:1c32713f031a891ebdb9a369283b8e5d3982a2b55d07f5c96e8293679d976a23`  
		Last Modified: Tue, 13 Oct 2026 20:54:41 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm variant v7

```console
$ docker pull dart@sha256:bf0508301a86a0312d80dead4129d224f3c274fc35582b8dc8c113c1eaedd9ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238553756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4992c4485e6aed442c47ad1c72710f0a78bdaaf2f39eb4649cff2d96d65f0dfb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 20:55:15 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 20:55:15 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 13 Oct 2026 20:55:15 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 13 Oct 2026 20:55:15 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 20:55:15 GMT
WORKDIR /root
# Tue, 13 Oct 2026 20:55:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8ceaf3e7e022901be224e0c48404c8456a6943f2f9d20dbe6bbe2e3f09f4b63b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5cbad2c385e29aa29fd0432c4a0ce595f434aff8653d4e08fd6ddc233c0d8928;             SDK_ARCH="arm";;         arm64)             DART_SHA256=74a6b048af5d12068ef5c7173008fee1f5132cd775a5021d5302499cb1f985cd;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=a26f5bb718b10a7d78495f5b7bda0d17ff94d0b4dce3a54c4ff1a9ad6efaa8a5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b802219692831499109fe2ed4a84e18da36731de098d1e88be05121a8108b6`  
		Last Modified: Tue, 13 Oct 2026 20:55:49 GMT  
		Size: 37.5 MB (37528031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f844bf1330964337dd3db59b525815c979d451c38bb90d14a0efbb228a177708`  
		Last Modified: Tue, 13 Oct 2026 20:55:47 GMT  
		Size: 1.3 MB (1273041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b9c3bb9271f14001ed751ea40736b1e8471309b108c862146bcb40452fc281`  
		Last Modified: Tue, 13 Oct 2026 20:55:52 GMT  
		Size: 173.5 MB (173494474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:622adf7a13e0c547271e4681e377502ed1b80e3644f5f8643619bbbbdf4aceb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ece69aa02da7ff6761c6f21a0dac1e3773d58ca9a77125ff428a28570253571`

```dockerfile
```

-	Layers:
	-	`sha256:75cadeb258f7f4d6c2c6b282030f9436192a51994519ce389baf91bc1b8f8ffa`  
		Last Modified: Tue, 13 Oct 2026 20:55:47 GMT  
		Size: 19.0 KB (19027 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:394f0a8eecd556116aa6f94603733706e56072b1de3a29203182fff4475ed27f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.8 MB (343826490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9adf1fd1fc9be59ba5792ad52ffd77a983d2574acefebabec06f36f12ab07a7b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 20:53:56 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 20:53:56 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 13 Oct 2026 20:53:56 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 13 Oct 2026 20:53:56 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 20:53:56 GMT
WORKDIR /root
# Tue, 13 Oct 2026 20:54:10 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8ceaf3e7e022901be224e0c48404c8456a6943f2f9d20dbe6bbe2e3f09f4b63b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5cbad2c385e29aa29fd0432c4a0ce595f434aff8653d4e08fd6ddc233c0d8928;             SDK_ARCH="arm";;         arm64)             DART_SHA256=74a6b048af5d12068ef5c7173008fee1f5132cd775a5021d5302499cb1f985cd;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=a26f5bb718b10a7d78495f5b7bda0d17ff94d0b4dce3a54c4ff1a9ad6efaa8a5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295fcd2992a275e3bf88fff16418f07a59ff8645f6f4f249dca08d60a94cdf0f`  
		Last Modified: Tue, 13 Oct 2026 20:54:43 GMT  
		Size: 42.3 MB (42320546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7aa0ca0c4cd0c3758d37928f85ce38b999a6718d80fe96fc29670821da3fcef`  
		Last Modified: Tue, 13 Oct 2026 20:54:41 GMT  
		Size: 1.6 MB (1564403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8428c0f5c3f00424625dbb5e26165f722e0226d9473186c51052b4378d203fdf`  
		Last Modified: Tue, 13 Oct 2026 20:54:48 GMT  
		Size: 269.7 MB (269741227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:36d3ed878b1f10aaa87946ca3b4826cd315db76d576d943fbbbd80dc2028501c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc740b222a62ac504a35b0c4076249b9c1e4e908f2f7239effbd897eecff759d`

```dockerfile
```

-	Layers:
	-	`sha256:6327aaf46a326150037c1677327e4d7aa78d47e2e681ff8d1c67ed4bcbf27ee3`  
		Last Modified: Tue, 13 Oct 2026 20:54:41 GMT  
		Size: 19.1 KB (19056 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; riscv64

```console
$ docker pull dart@sha256:c709c3953bb40fa715944ec35141e70b4510d038329c2372252071e747c5cfe4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (272990406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd302df363c3f1f2a8f4b523c5ee494a19e0d52f0c45765b61ea60bfd1640479`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Thu, 15 Oct 2026 02:57:17 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 02:57:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 15 Oct 2026 02:57:19 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 15 Oct 2026 02:57:19 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Oct 2026 02:57:19 GMT
WORKDIR /root
# Thu, 15 Oct 2026 02:58:12 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8ceaf3e7e022901be224e0c48404c8456a6943f2f9d20dbe6bbe2e3f09f4b63b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5cbad2c385e29aa29fd0432c4a0ce595f434aff8653d4e08fd6ddc233c0d8928;             SDK_ARCH="arm";;         arm64)             DART_SHA256=74a6b048af5d12068ef5c7173008fee1f5132cd775a5021d5302499cb1f985cd;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=a26f5bb718b10a7d78495f5b7bda0d17ff94d0b4dce3a54c4ff1a9ad6efaa8a5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07af1f83fe81039af4cffa1c6579dbc54816533b0a48e1dac85b7b8a4593617d`  
		Last Modified: Thu, 15 Oct 2026 03:03:17 GMT  
		Size: 41.6 MB (41600782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22024fff6451d607867e80a7951fd48440e2a860876f01678ab2a19f9da40e11`  
		Last Modified: Thu, 15 Oct 2026 03:03:05 GMT  
		Size: 1.6 MB (1563905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be0401f808c7fbf7614b2a3d348116cd4c9c30e60918973d7d4f4d6eed83d201`  
		Last Modified: Thu, 15 Oct 2026 03:03:42 GMT  
		Size: 201.5 MB (201491924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:1c77298a31eff777ad024a7afe5ec011c86402a45b465c9c3e50479266ff8dfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ddfd9db0586d916abf87447084d5969b5d71d80ea62141828a01dc2ea665a17`

```dockerfile
```

-	Layers:
	-	`sha256:74d19f8705b283979729cae9591fd3fbbaa7ab13bd10ff76d9849ddc15b1ddba`  
		Last Modified: Thu, 15 Oct 2026 03:03:05 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:beta-sdk`

```console
$ docker pull dart@sha256:d8cc9a49a27311e542259576f5aa2fb3e12d67d3f5f629c7f98593ac52e8ff0e
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
$ docker pull dart@sha256:1fa5eeca5bce8e77427276fdf01b0b8d2a76a0bd17a038a1cd9a27b5c3eb852a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.7 MB (345740408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:accdd81555eac28638a77556785ccc9820b6a3b947e744cf361bacff2820083c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 20:53:56 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 20:53:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 13 Oct 2026 20:53:57 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 13 Oct 2026 20:53:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 20:53:57 GMT
WORKDIR /root
# Tue, 13 Oct 2026 20:54:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8ceaf3e7e022901be224e0c48404c8456a6943f2f9d20dbe6bbe2e3f09f4b63b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5cbad2c385e29aa29fd0432c4a0ce595f434aff8653d4e08fd6ddc233c0d8928;             SDK_ARCH="arm";;         arm64)             DART_SHA256=74a6b048af5d12068ef5c7173008fee1f5132cd775a5021d5302499cb1f985cd;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=a26f5bb718b10a7d78495f5b7bda0d17ff94d0b4dce3a54c4ff1a9ad6efaa8a5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eee268953676dcc3943818f5434d1e2db2ee774d0e1f020d2ee3f37c7a81c959`  
		Last Modified: Tue, 13 Oct 2026 20:54:43 GMT  
		Size: 42.5 MB (42526107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e613e989b5474e976f3f9cdd8e61225ece3c08dc565312e2e4acc0a1ec52f95`  
		Last Modified: Tue, 13 Oct 2026 20:54:41 GMT  
		Size: 1.9 MB (1869668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c23a43261d07d61c792cd6b5b0e0e3840b2bc988f7ab2009cc928d083cad368`  
		Last Modified: Tue, 13 Oct 2026 20:54:48 GMT  
		Size: 271.5 MB (271501251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:e17a9dc508cca766b0a130583b6ba2690e46947811e11b69a24e965ab81c5123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5f1675581509786c4b16156c76b28f4754980cb398908d5bae459f9173b41d6`

```dockerfile
```

-	Layers:
	-	`sha256:1c32713f031a891ebdb9a369283b8e5d3982a2b55d07f5c96e8293679d976a23`  
		Last Modified: Tue, 13 Oct 2026 20:54:41 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:bf0508301a86a0312d80dead4129d224f3c274fc35582b8dc8c113c1eaedd9ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238553756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4992c4485e6aed442c47ad1c72710f0a78bdaaf2f39eb4649cff2d96d65f0dfb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 20:55:15 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 20:55:15 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 13 Oct 2026 20:55:15 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 13 Oct 2026 20:55:15 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 20:55:15 GMT
WORKDIR /root
# Tue, 13 Oct 2026 20:55:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8ceaf3e7e022901be224e0c48404c8456a6943f2f9d20dbe6bbe2e3f09f4b63b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5cbad2c385e29aa29fd0432c4a0ce595f434aff8653d4e08fd6ddc233c0d8928;             SDK_ARCH="arm";;         arm64)             DART_SHA256=74a6b048af5d12068ef5c7173008fee1f5132cd775a5021d5302499cb1f985cd;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=a26f5bb718b10a7d78495f5b7bda0d17ff94d0b4dce3a54c4ff1a9ad6efaa8a5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b802219692831499109fe2ed4a84e18da36731de098d1e88be05121a8108b6`  
		Last Modified: Tue, 13 Oct 2026 20:55:49 GMT  
		Size: 37.5 MB (37528031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f844bf1330964337dd3db59b525815c979d451c38bb90d14a0efbb228a177708`  
		Last Modified: Tue, 13 Oct 2026 20:55:47 GMT  
		Size: 1.3 MB (1273041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b9c3bb9271f14001ed751ea40736b1e8471309b108c862146bcb40452fc281`  
		Last Modified: Tue, 13 Oct 2026 20:55:52 GMT  
		Size: 173.5 MB (173494474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:622adf7a13e0c547271e4681e377502ed1b80e3644f5f8643619bbbbdf4aceb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ece69aa02da7ff6761c6f21a0dac1e3773d58ca9a77125ff428a28570253571`

```dockerfile
```

-	Layers:
	-	`sha256:75cadeb258f7f4d6c2c6b282030f9436192a51994519ce389baf91bc1b8f8ffa`  
		Last Modified: Tue, 13 Oct 2026 20:55:47 GMT  
		Size: 19.0 KB (19027 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:394f0a8eecd556116aa6f94603733706e56072b1de3a29203182fff4475ed27f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.8 MB (343826490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9adf1fd1fc9be59ba5792ad52ffd77a983d2574acefebabec06f36f12ab07a7b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 20:53:56 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 20:53:56 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 13 Oct 2026 20:53:56 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 13 Oct 2026 20:53:56 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 20:53:56 GMT
WORKDIR /root
# Tue, 13 Oct 2026 20:54:10 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8ceaf3e7e022901be224e0c48404c8456a6943f2f9d20dbe6bbe2e3f09f4b63b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5cbad2c385e29aa29fd0432c4a0ce595f434aff8653d4e08fd6ddc233c0d8928;             SDK_ARCH="arm";;         arm64)             DART_SHA256=74a6b048af5d12068ef5c7173008fee1f5132cd775a5021d5302499cb1f985cd;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=a26f5bb718b10a7d78495f5b7bda0d17ff94d0b4dce3a54c4ff1a9ad6efaa8a5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295fcd2992a275e3bf88fff16418f07a59ff8645f6f4f249dca08d60a94cdf0f`  
		Last Modified: Tue, 13 Oct 2026 20:54:43 GMT  
		Size: 42.3 MB (42320546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7aa0ca0c4cd0c3758d37928f85ce38b999a6718d80fe96fc29670821da3fcef`  
		Last Modified: Tue, 13 Oct 2026 20:54:41 GMT  
		Size: 1.6 MB (1564403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8428c0f5c3f00424625dbb5e26165f722e0226d9473186c51052b4378d203fdf`  
		Last Modified: Tue, 13 Oct 2026 20:54:48 GMT  
		Size: 269.7 MB (269741227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:36d3ed878b1f10aaa87946ca3b4826cd315db76d576d943fbbbd80dc2028501c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc740b222a62ac504a35b0c4076249b9c1e4e908f2f7239effbd897eecff759d`

```dockerfile
```

-	Layers:
	-	`sha256:6327aaf46a326150037c1677327e4d7aa78d47e2e681ff8d1c67ed4bcbf27ee3`  
		Last Modified: Tue, 13 Oct 2026 20:54:41 GMT  
		Size: 19.1 KB (19056 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:c709c3953bb40fa715944ec35141e70b4510d038329c2372252071e747c5cfe4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (272990406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd302df363c3f1f2a8f4b523c5ee494a19e0d52f0c45765b61ea60bfd1640479`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Thu, 15 Oct 2026 02:57:17 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 02:57:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 15 Oct 2026 02:57:19 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 15 Oct 2026 02:57:19 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Oct 2026 02:57:19 GMT
WORKDIR /root
# Thu, 15 Oct 2026 02:58:12 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8ceaf3e7e022901be224e0c48404c8456a6943f2f9d20dbe6bbe2e3f09f4b63b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5cbad2c385e29aa29fd0432c4a0ce595f434aff8653d4e08fd6ddc233c0d8928;             SDK_ARCH="arm";;         arm64)             DART_SHA256=74a6b048af5d12068ef5c7173008fee1f5132cd775a5021d5302499cb1f985cd;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=a26f5bb718b10a7d78495f5b7bda0d17ff94d0b4dce3a54c4ff1a9ad6efaa8a5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07af1f83fe81039af4cffa1c6579dbc54816533b0a48e1dac85b7b8a4593617d`  
		Last Modified: Thu, 15 Oct 2026 03:03:17 GMT  
		Size: 41.6 MB (41600782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22024fff6451d607867e80a7951fd48440e2a860876f01678ab2a19f9da40e11`  
		Last Modified: Thu, 15 Oct 2026 03:03:05 GMT  
		Size: 1.6 MB (1563905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be0401f808c7fbf7614b2a3d348116cd4c9c30e60918973d7d4f4d6eed83d201`  
		Last Modified: Thu, 15 Oct 2026 03:03:42 GMT  
		Size: 201.5 MB (201491924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:1c77298a31eff777ad024a7afe5ec011c86402a45b465c9c3e50479266ff8dfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ddfd9db0586d916abf87447084d5969b5d71d80ea62141828a01dc2ea665a17`

```dockerfile
```

-	Layers:
	-	`sha256:74d19f8705b283979729cae9591fd3fbbaa7ab13bd10ff76d9849ddc15b1ddba`  
		Last Modified: Thu, 15 Oct 2026 03:03:05 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:latest`

```console
$ docker pull dart@sha256:8604cbd137b6d67c24f49b916f2aa9b67d71b539576e0178bf161d831c9e344f
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
$ docker pull dart@sha256:13450319eb44853825bfc48a6806bd920e6717f4f102ff876ede95bb0d8a98bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252773553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7eb1f2ff9bbf1bcd32ba7047b417253e4cdc19debf721ef7d1ed2ebef83ef7b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 20:18:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 20:18:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 07 Oct 2026 20:18:34 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 07 Oct 2026 20:18:34 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 20:18:34 GMT
WORKDIR /root
# Wed, 07 Oct 2026 20:19:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3baec26a40745c7b95055d32c48efb7ab53bd79b6751fdf40ab2119ea15b6b11`  
		Last Modified: Wed, 07 Oct 2026 20:24:19 GMT  
		Size: 41.6 MB (41601255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e3c193b308048cfb298c49f10cbcc20573e6b161af84849acafb892c302102`  
		Last Modified: Wed, 07 Oct 2026 20:24:07 GMT  
		Size: 1.6 MB (1563904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e841fca53e7b567c602875e2ab6e9a26c7e56ef0d58d73afcbc2be836513f6c4`  
		Last Modified: Wed, 07 Oct 2026 20:24:39 GMT  
		Size: 181.3 MB (181274599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:6c135571058979442328e0d02b52afc59645ebd5c4e9ee4781adf4796a41cf0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46cb9e51c3b1d52464c741b92c5d1c88173cdfcf6acfc6b6eee55823052589f4`

```dockerfile
```

-	Layers:
	-	`sha256:928103948247b31562145ce8a31f0e1d3bb009bf718fa01a339988a503ff21cd`  
		Last Modified: Wed, 07 Oct 2026 20:24:07 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:sdk`

```console
$ docker pull dart@sha256:8604cbd137b6d67c24f49b916f2aa9b67d71b539576e0178bf161d831c9e344f
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
$ docker pull dart@sha256:13450319eb44853825bfc48a6806bd920e6717f4f102ff876ede95bb0d8a98bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252773553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7eb1f2ff9bbf1bcd32ba7047b417253e4cdc19debf721ef7d1ed2ebef83ef7b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 20:18:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 20:18:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 07 Oct 2026 20:18:34 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 07 Oct 2026 20:18:34 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 20:18:34 GMT
WORKDIR /root
# Wed, 07 Oct 2026 20:19:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3baec26a40745c7b95055d32c48efb7ab53bd79b6751fdf40ab2119ea15b6b11`  
		Last Modified: Wed, 07 Oct 2026 20:24:19 GMT  
		Size: 41.6 MB (41601255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e3c193b308048cfb298c49f10cbcc20573e6b161af84849acafb892c302102`  
		Last Modified: Wed, 07 Oct 2026 20:24:07 GMT  
		Size: 1.6 MB (1563904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e841fca53e7b567c602875e2ab6e9a26c7e56ef0d58d73afcbc2be836513f6c4`  
		Last Modified: Wed, 07 Oct 2026 20:24:39 GMT  
		Size: 181.3 MB (181274599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:6c135571058979442328e0d02b52afc59645ebd5c4e9ee4781adf4796a41cf0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46cb9e51c3b1d52464c741b92c5d1c88173cdfcf6acfc6b6eee55823052589f4`

```dockerfile
```

-	Layers:
	-	`sha256:928103948247b31562145ce8a31f0e1d3bb009bf718fa01a339988a503ff21cd`  
		Last Modified: Wed, 07 Oct 2026 20:24:07 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:stable`

```console
$ docker pull dart@sha256:8604cbd137b6d67c24f49b916f2aa9b67d71b539576e0178bf161d831c9e344f
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
$ docker pull dart@sha256:13450319eb44853825bfc48a6806bd920e6717f4f102ff876ede95bb0d8a98bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252773553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7eb1f2ff9bbf1bcd32ba7047b417253e4cdc19debf721ef7d1ed2ebef83ef7b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 20:18:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 20:18:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 07 Oct 2026 20:18:34 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 07 Oct 2026 20:18:34 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 20:18:34 GMT
WORKDIR /root
# Wed, 07 Oct 2026 20:19:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3baec26a40745c7b95055d32c48efb7ab53bd79b6751fdf40ab2119ea15b6b11`  
		Last Modified: Wed, 07 Oct 2026 20:24:19 GMT  
		Size: 41.6 MB (41601255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e3c193b308048cfb298c49f10cbcc20573e6b161af84849acafb892c302102`  
		Last Modified: Wed, 07 Oct 2026 20:24:07 GMT  
		Size: 1.6 MB (1563904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e841fca53e7b567c602875e2ab6e9a26c7e56ef0d58d73afcbc2be836513f6c4`  
		Last Modified: Wed, 07 Oct 2026 20:24:39 GMT  
		Size: 181.3 MB (181274599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:6c135571058979442328e0d02b52afc59645ebd5c4e9ee4781adf4796a41cf0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46cb9e51c3b1d52464c741b92c5d1c88173cdfcf6acfc6b6eee55823052589f4`

```dockerfile
```

-	Layers:
	-	`sha256:928103948247b31562145ce8a31f0e1d3bb009bf718fa01a339988a503ff21cd`  
		Last Modified: Wed, 07 Oct 2026 20:24:07 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:stable-sdk`

```console
$ docker pull dart@sha256:8604cbd137b6d67c24f49b916f2aa9b67d71b539576e0178bf161d831c9e344f
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
$ docker pull dart@sha256:13450319eb44853825bfc48a6806bd920e6717f4f102ff876ede95bb0d8a98bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252773553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7eb1f2ff9bbf1bcd32ba7047b417253e4cdc19debf721ef7d1ed2ebef83ef7b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 20:18:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 20:18:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 07 Oct 2026 20:18:34 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 07 Oct 2026 20:18:34 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 20:18:34 GMT
WORKDIR /root
# Wed, 07 Oct 2026 20:19:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ea864bc64df30a6b8bdf30b2e32550f7717d9a890de8f40293aeabb924fe232b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2c33146273ebc79e46bc06c9d46eaf1c9e36e25a361bd919259b89d231889f91;             SDK_ARCH="arm";;         arm64)             DART_SHA256=19a731647c3ed55058ee46dde00330150e6a8729bb6121b4a31e86084c8a3e6d;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=7fe6ecc5134bd34e4aa472fe3aadf324aef06bc7f57e11046d0319f9bc91e6c8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.5/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3baec26a40745c7b95055d32c48efb7ab53bd79b6751fdf40ab2119ea15b6b11`  
		Last Modified: Wed, 07 Oct 2026 20:24:19 GMT  
		Size: 41.6 MB (41601255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e3c193b308048cfb298c49f10cbcc20573e6b161af84849acafb892c302102`  
		Last Modified: Wed, 07 Oct 2026 20:24:07 GMT  
		Size: 1.6 MB (1563904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e841fca53e7b567c602875e2ab6e9a26c7e56ef0d58d73afcbc2be836513f6c4`  
		Last Modified: Wed, 07 Oct 2026 20:24:39 GMT  
		Size: 181.3 MB (181274599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:6c135571058979442328e0d02b52afc59645ebd5c4e9ee4781adf4796a41cf0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46cb9e51c3b1d52464c741b92c5d1c88173cdfcf6acfc6b6eee55823052589f4`

```dockerfile
```

-	Layers:
	-	`sha256:928103948247b31562145ce8a31f0e1d3bb009bf718fa01a339988a503ff21cd`  
		Last Modified: Wed, 07 Oct 2026 20:24:07 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json
