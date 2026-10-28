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
