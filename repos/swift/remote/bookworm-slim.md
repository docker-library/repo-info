## `swift:bookworm-slim`

```console
$ docker pull swift@sha256:c2c63e061d872832ec9df092fd4843f48bf54d966a82a00f0ed8a5f21dd7b9b6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:bookworm-slim` - linux; amd64

```console
$ docker pull swift@sha256:0ab1a1a046e292f257319e712285efeaf9a7bd73fe9be4cbbb6d659a211580a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.7 MB (124731716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:294dc3d57a6572e50940d4ecb6bd8bf67a434433102f3ff9c4c576f7e6a09e8b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:03:02 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Thu, 05 Nov 2026 08:03:02 GMT
LABEL description=Docker Container for the Swift programming language
# Thu, 05 Nov 2026 08:03:02 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:03:02 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Thu, 05 Nov 2026 08:03:02 GMT
ARG SWIFT_PLATFORM=debian12
# Thu, 05 Nov 2026 08:03:02 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Thu, 05 Nov 2026 08:03:02 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Thu, 05 Nov 2026 08:03:02 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Thu, 05 Nov 2026 08:03:02 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Thu, 05 Nov 2026 08:03:35 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f8a21344380ebdaa4ef15b942715903c4d89b616488558969dd4baa7225bf6`  
		Last Modified: Thu, 05 Nov 2026 08:03:48 GMT  
		Size: 23.5 MB (23476332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6234c7fa2c49d27ab707b9a23317ef7aa748abc084d907e8363b1f11f7febaad`  
		Last Modified: Thu, 05 Nov 2026 08:03:49 GMT  
		Size: 52.7 MB (52728901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:bookworm-slim` - unknown; unknown

```console
$ docker pull swift@sha256:15c97666515e5301f0170a3319ce9eaeb8401b218de2717c7e73f25b8d3f0c41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4173435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7ade87a8e628499dd3610b5cbecb0c790f6ac73d3c2fc4c8acc001d2f39d8da`

```dockerfile
```

-	Layers:
	-	`sha256:4a1dde48679bad1104886cfe38c667fad20749d0087e46cd6c2e69b2b4812678`  
		Last Modified: Thu, 05 Nov 2026 08:03:47 GMT  
		Size: 4.2 MB (4159509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3881f2864b571c96eafe1416799c38976f23c414f4ff0c02073bf32c0e89775`  
		Last Modified: Thu, 05 Nov 2026 08:03:47 GMT  
		Size: 13.9 KB (13926 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:4b8b87d522743784cd42c8b4e84c2d7fd18f3753397295b58fd37ce8026d327d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123681941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51bf90c3a65383b95cfbd8ac754e39e2ab4eb68b1aa7b6f8f6d0532e4cbb2da8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:11:56 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Thu, 05 Nov 2026 08:11:56 GMT
LABEL description=Docker Container for the Swift programming language
# Thu, 05 Nov 2026 08:11:56 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:11:56 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Thu, 05 Nov 2026 08:11:56 GMT
ARG SWIFT_PLATFORM=debian12
# Thu, 05 Nov 2026 08:11:56 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Thu, 05 Nov 2026 08:11:56 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Thu, 05 Nov 2026 08:11:56 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Thu, 05 Nov 2026 08:11:56 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Thu, 05 Nov 2026 08:12:35 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc207bfa2ed731a0c3707e19fcd54b3ad640a3bcef5d65e558c33bc49b6d8752`  
		Last Modified: Thu, 05 Nov 2026 08:12:50 GMT  
		Size: 23.3 MB (23276280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f9bb96488487cc93cf1518797520cbdd60ab8fc17692b128555c97cbe539e6a`  
		Last Modified: Thu, 05 Nov 2026 08:12:51 GMT  
		Size: 52.0 MB (51993207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:bookworm-slim` - unknown; unknown

```console
$ docker pull swift@sha256:a874aad29a28a3078afabe26644dfc7a283a87f68bf68fc6b08c8111cf2ea2ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4173818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:896156c38478a0aa3000238c315c30b82f36d07ff9cdc25a49f90149117be1ce`

```dockerfile
```

-	Layers:
	-	`sha256:b7ae614666500976c1c617f1c0f49ccb1af58a2c34b5b645d75224a5c65f7b1e`  
		Last Modified: Thu, 05 Nov 2026 08:12:49 GMT  
		Size: 4.2 MB (4159786 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e07559dcf5297b4ade1fdd9327a5733408ad1b9830656ea9ead7358071c273d`  
		Last Modified: Thu, 05 Nov 2026 08:12:49 GMT  
		Size: 14.0 KB (14032 bytes)  
		MIME: application/vnd.in-toto+json
