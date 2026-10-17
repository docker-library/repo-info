## `swift:noble`

```console
$ docker pull swift@sha256:19cbe56bdaec1918f7cf5fdeba42b9bd55bdd8a6149c9990d0e0e3a89a127d63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:noble` - linux; amd64

```console
$ docker pull swift@sha256:be76838259fa4e536d845269263027c0c4c53ae09d842b48557b9adf93dcab48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1305554158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:705b7ffc0e8898fd146f56421bf24cd77fa41778f9b5be25d8acefd5518c2ae4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:41:39 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Sat, 17 Oct 2026 00:41:39 GMT
LABEL description=Docker Container for the Swift programming language
# Sat, 17 Oct 2026 00:41:39 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     binutils     git     unzip     gnupg2     libc6-dev     libcurl4-openssl-dev     libedit2     libgcc-13-dev     libpython3-dev     libsqlite3-0     libstdc++-13-dev     libxml2-dev     libncurses-dev     libz3-dev     pkg-config     tzdata     zlib1g-dev     && rm -r /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:41:39 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Sat, 17 Oct 2026 00:41:39 GMT
ARG SWIFT_PLATFORM=ubuntu24.04
# Sat, 17 Oct 2026 00:41:39 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Sat, 17 Oct 2026 00:41:39 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Sat, 17 Oct 2026 00:41:39 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Sat, 17 Oct 2026 00:41:39 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Sat, 17 Oct 2026 00:42:21 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl # buildkit
# Sat, 17 Oct 2026 00:42:21 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e789ef60896a6d64c6d2a7eacc46480563478b7609fe3623e23afb15e0782090`  
		Last Modified: Sat, 17 Oct 2026 00:44:44 GMT  
		Size: 129.9 MB (129907271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3c23bbefcef968f18a42ab5375227a3c119e755322773247632a1fffdfe40f9`  
		Last Modified: Sat, 17 Oct 2026 00:45:15 GMT  
		Size: 1.1 GB (1145880957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d11467507a77fd4531f89ed4ea52a78db24ca4f1b61b3faadf84afc2d4d9d8c`  
		Last Modified: Sat, 17 Oct 2026 00:44:33 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:noble` - unknown; unknown

```console
$ docker pull swift@sha256:a9c1b7846a906e7e0bfa8c267af9aeb10e2afa73c82a7f75bb3c7935793e8c6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7865374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4091a86fd30df8d2cf214a24f4eeeb634a3f1890e7f7e568e4b47014ab0c8303`

```dockerfile
```

-	Layers:
	-	`sha256:bb940304a1de80d99c60f7ebb1f54a732f7fd7270d1826ac93b0a5adcaf28bd0`  
		Last Modified: Sat, 17 Oct 2026 00:44:34 GMT  
		Size: 7.8 MB (7849455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df5f1729a3cc11dcb13d30108e05f63b91c18df499bd12730438f493e1c841d6`  
		Last Modified: Sat, 17 Oct 2026 00:44:33 GMT  
		Size: 15.9 KB (15919 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:noble` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:f7aa7c9fd7b00d520a6ad7f9beeedbf7294f5a930802e343f61b1b8de1bd760d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1297952484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bfbfe8d8c28bc32521608f19519446c06aac451840cb48f9d086e1202265067`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:41:13 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Sat, 17 Oct 2026 00:41:13 GMT
LABEL description=Docker Container for the Swift programming language
# Sat, 17 Oct 2026 00:41:13 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     binutils     git     unzip     gnupg2     libc6-dev     libcurl4-openssl-dev     libedit2     libgcc-13-dev     libpython3-dev     libsqlite3-0     libstdc++-13-dev     libxml2-dev     libncurses-dev     libz3-dev     pkg-config     tzdata     zlib1g-dev     && rm -r /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:41:13 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Sat, 17 Oct 2026 00:41:13 GMT
ARG SWIFT_PLATFORM=ubuntu24.04
# Sat, 17 Oct 2026 00:41:13 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Sat, 17 Oct 2026 00:41:13 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Sat, 17 Oct 2026 00:41:13 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Sat, 17 Oct 2026 00:41:13 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Sat, 17 Oct 2026 00:41:59 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl # buildkit
# Sat, 17 Oct 2026 00:41:59 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94acffd4c17967356af5b47a5c43c4197fb718cb9907aa8611305e461ca4f3ed`  
		Last Modified: Sat, 17 Oct 2026 00:44:18 GMT  
		Size: 129.0 MB (129024140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5632e291b362426a64ae3a7bb755a3eb718806549f4e430b9d8910bc73362e89`  
		Last Modified: Sat, 17 Oct 2026 00:44:36 GMT  
		Size: 1.1 GB (1139988408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd247d330947702fa701bcecd994ba1c5fd29330e72f9b004fab12aa715a2f95`  
		Last Modified: Sat, 17 Oct 2026 00:44:12 GMT  
		Size: 175.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:noble` - unknown; unknown

```console
$ docker pull swift@sha256:fa29d4ae2a1b46b52a6e0acceb0e97a7903b851d7b2e191deead2e4006320713
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7887941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e7ae43f47a1aaae10e79c6bb019f696c74a0470333d892bf056a2c9107f213c`

```dockerfile
```

-	Layers:
	-	`sha256:0d787238dca4fa590ee057b0493d44e92fddd0bfefb86dbc55f0dc2fa05fbe2f`  
		Last Modified: Sat, 17 Oct 2026 00:44:13 GMT  
		Size: 7.9 MB (7871900 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bc9a4bcdccfd416fd832c04bcacca8709c844bd0ad918ee9cc8e80985c2f79a`  
		Last Modified: Sat, 17 Oct 2026 00:44:12 GMT  
		Size: 16.0 KB (16041 bytes)  
		MIME: application/vnd.in-toto+json
