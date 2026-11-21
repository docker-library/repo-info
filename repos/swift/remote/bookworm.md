## `swift:bookworm`

```console
$ docker pull swift@sha256:747df595c7565d6130f8eaf76415f39acd7575dd4fe12f01fbab2195797769c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:bookworm` - linux; amd64

```console
$ docker pull swift@sha256:b6fa81977a2bf20843f22eabdee656f86ed5058c2086c433976f83aacb88feb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1393905535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b79116fb377ac75271328012433bb93dd89e3dab1c70a9c186c27ffd094dbc4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 20:07:41 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 20 Nov 2026 20:07:41 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 20 Nov 2026 20:07:41 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     binutils     libicu-dev     libcurl4-openssl-dev     libedit-dev     libsqlite3-dev     libncurses-dev     libpython3-dev     libxml2-dev     pkg-config     uuid-dev     tzdata     git     gcc     libstdc++-12-dev     && rm -r /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 20:07:41 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 20 Nov 2026 20:07:41 GMT
ARG SWIFT_PLATFORM=debian12
# Fri, 20 Nov 2026 20:07:41 GMT
ARG SWIFT_BRANCH=swift-6.4.3-release
# Fri, 20 Nov 2026 20:07:41 GMT
ARG SWIFT_VERSION=swift-6.4.3-RELEASE
# Fri, 20 Nov 2026 20:07:41 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 20 Nov 2026 20:07:41 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 20 Nov 2026 20:08:24 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
# Fri, 20 Nov 2026 20:08:24 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04e8304410b77fa405cbf33ee9eaf06709308392ceff924d9f417fcf8cc29362`  
		Last Modified: Fri, 20 Nov 2026 20:10:49 GMT  
		Size: 198.7 MB (198740350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdd5de574f1673e8bc90ec23945fa260435e658085df2207119ed7c930c1a2fa`  
		Last Modified: Fri, 20 Nov 2026 20:11:05 GMT  
		Size: 1.1 GB (1146638528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409e62b64228630f0ebc1819025eb62f16fe28eaf87dbebf44dbe68b86caeea4`  
		Last Modified: Fri, 20 Nov 2026 20:10:41 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:bookworm` - unknown; unknown

```console
$ docker pull swift@sha256:0f2faec9d637a2320aa3cd3a1065960c1d8d6a41f473144972d0761e7d07f732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11333316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46f0a5f04a6c5b3b3ad1e3aeae8508619f6e9af58ce3f42e136cb789cb8c79f0`

```dockerfile
```

-	Layers:
	-	`sha256:388c1e5e48a643f153298b941ba8f73b1c59622182937282d2e990364c43d0e5`  
		Last Modified: Fri, 20 Nov 2026 20:10:41 GMT  
		Size: 11.3 MB (11317578 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f018f38ba7413ab184719f26411bf19a919f441f2b371726d2f85dc37c54115`  
		Last Modified: Fri, 20 Nov 2026 20:10:41 GMT  
		Size: 15.7 KB (15738 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:bookworm` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:4a0d35334ca298c58418597680d9988088c19c34185c98ed509dbd23e8b444a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1379988458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8850e3ee8b683b4df4bacfeefc145e0aa455126498e4894a9f298069a965a54`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 20:02:45 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 20 Nov 2026 20:02:45 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 20 Nov 2026 20:02:45 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     binutils     libicu-dev     libcurl4-openssl-dev     libedit-dev     libsqlite3-dev     libncurses-dev     libpython3-dev     libxml2-dev     pkg-config     uuid-dev     tzdata     git     gcc     libstdc++-12-dev     && rm -r /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 20:02:45 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 20 Nov 2026 20:02:45 GMT
ARG SWIFT_PLATFORM=debian12
# Fri, 20 Nov 2026 20:02:45 GMT
ARG SWIFT_BRANCH=swift-6.4.3-release
# Fri, 20 Nov 2026 20:02:45 GMT
ARG SWIFT_VERSION=swift-6.4.3-RELEASE
# Fri, 20 Nov 2026 20:02:45 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 20 Nov 2026 20:02:45 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 20 Nov 2026 20:03:32 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
# Fri, 20 Nov 2026 20:03:32 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cdbb715056334a00635e7e4927d56a217583f127d3ae39a20a47ce1d9ad05ac`  
		Last Modified: Fri, 20 Nov 2026 20:05:58 GMT  
		Size: 190.8 MB (190772052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7563b8785b0fcd4a4416e048f4f1fa7b2b6d1edf220432004cbd0b55a413572c`  
		Last Modified: Fri, 20 Nov 2026 20:06:16 GMT  
		Size: 1.1 GB (1140803778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:323fdc0a93130441004300952a86c863b43ffb8fb9771dc602d37f1aa70f7dd4`  
		Last Modified: Fri, 20 Nov 2026 20:05:49 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:bookworm` - unknown; unknown

```console
$ docker pull swift@sha256:8b2dc49bb3d1950f746b81beb2eac9cb3fa2030afec5190631f0fb8338ae7b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11361444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf474ff9407afcf09fcd8e5b258a5306ee100dfcf4caf901d174edbbf88cb639`

```dockerfile
```

-	Layers:
	-	`sha256:26daad0f21a6d9644a4d7ff5bb58ac004a6b663f791bb560021be6acb0bb490d`  
		Last Modified: Fri, 20 Nov 2026 20:05:50 GMT  
		Size: 11.3 MB (11345583 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99d59cab0d6f5cd3f2cfb8d8f93667768ff13e4faf95a05092bde1f606f92386`  
		Last Modified: Fri, 20 Nov 2026 20:05:49 GMT  
		Size: 15.9 KB (15861 bytes)  
		MIME: application/vnd.in-toto+json
