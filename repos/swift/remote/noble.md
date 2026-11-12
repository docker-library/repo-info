## `swift:noble`

```console
$ docker pull swift@sha256:5f98e4f73cbc678e6f44b2e0945e502d79fa9812b6808599852be037ea14304d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:noble` - linux; amd64

```console
$ docker pull swift@sha256:b7816e49fa73b2132ef9e598357c5c26ebc3b0e55390ded2295fda2486645b88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1305701839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:174431781cf8974a3b30d737ddbb9f30c45a940b39e1cbd711a1e6437aada887`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 17:30:24 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 30 Oct 2026 17:30:24 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 30 Oct 2026 17:30:24 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     binutils     git     unzip     gnupg2     libc6-dev     libcurl4-openssl-dev     libedit2     libgcc-13-dev     libpython3-dev     libsqlite3-0     libstdc++-13-dev     libxml2-dev     libncurses-dev     libz3-dev     pkg-config     tzdata     zlib1g-dev     && rm -r /var/lib/apt/lists/* # buildkit
# Fri, 30 Oct 2026 17:30:24 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 30 Oct 2026 17:30:24 GMT
ARG SWIFT_PLATFORM=ubuntu24.04
# Fri, 30 Oct 2026 17:30:24 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Fri, 30 Oct 2026 17:30:24 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Fri, 30 Oct 2026 17:30:24 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 30 Oct 2026 17:30:24 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 30 Oct 2026 17:31:07 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl # buildkit
# Fri, 30 Oct 2026 17:31:08 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65952fc05a03966762a7839a2529286a0aecdbda16ff6f99082fc1b46355dc5b`  
		Last Modified: Fri, 30 Oct 2026 17:33:32 GMT  
		Size: 129.9 MB (129905234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dffd63a538cc9e62d3f97fd671e1a4d90ebb7b25989586f12132631d78d6e2c9`  
		Last Modified: Fri, 30 Oct 2026 17:33:53 GMT  
		Size: 1.1 GB (1146028819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18437af3bb1ba05293e327d8f8808c5a58ec5cd0f595c84734636b736a69f33f`  
		Last Modified: Fri, 30 Oct 2026 17:33:27 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:noble` - unknown; unknown

```console
$ docker pull swift@sha256:72adcc7f2e17e544a6d9399f5ac49bb46d6bce913e3a1e1373d86abd3500f39c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7864739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:745f9bc48c91da0f8066ca01ef0a436b11937e70a7d5cdcd62c02bc58c2efb1c`

```dockerfile
```

-	Layers:
	-	`sha256:c8b9736730507186f71098d08b2ff5ccf01695cfdfca1828fae396178bb9b89e`  
		Last Modified: Fri, 30 Oct 2026 17:33:27 GMT  
		Size: 7.8 MB (7848823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:244f1ecc16570eff855ae23fde22fe484ab413c5d24e7df82b1516a84a140302`  
		Last Modified: Fri, 30 Oct 2026 17:33:27 GMT  
		Size: 15.9 KB (15916 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:noble` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:c7bb4276f460cd7d263112fdda91119fae93127d685a382e0edd915572df4bb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1298111233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:127ea71f7ea6780248690626f571344e0c11d569651b4a20e417efd8dab51826`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:45:22 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 11 Nov 2026 23:45:22 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 11 Nov 2026 23:45:22 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     binutils     git     unzip     gnupg2     libc6-dev     libcurl4-openssl-dev     libedit2     libgcc-13-dev     libpython3-dev     libsqlite3-0     libstdc++-13-dev     libxml2-dev     libncurses-dev     libz3-dev     pkg-config     tzdata     zlib1g-dev     && rm -r /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:45:22 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 11 Nov 2026 23:45:22 GMT
ARG SWIFT_PLATFORM=ubuntu24.04
# Wed, 11 Nov 2026 23:45:22 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Wed, 11 Nov 2026 23:45:22 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Wed, 11 Nov 2026 23:45:22 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 11 Nov 2026 23:45:22 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 11 Nov 2026 23:46:04 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl # buildkit
# Wed, 11 Nov 2026 23:46:05 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab694bcf53b8adc1f6dbe6943d537d9ea424785f099b225d8bdf035f65eb2167`  
		Last Modified: Wed, 11 Nov 2026 23:48:26 GMT  
		Size: 129.1 MB (129124192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caac2c22115a4bd539e3298ef08599b5a3a00a3ba6c6efe031d2e14b47d71dc1`  
		Last Modified: Wed, 11 Nov 2026 23:48:44 GMT  
		Size: 1.1 GB (1140021609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2707b7179defaa804c89db98b22fb0ac0b792637a9c65be235696301b88c1dd9`  
		Last Modified: Wed, 11 Nov 2026 23:48:21 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:noble` - unknown; unknown

```console
$ docker pull swift@sha256:3b0e3e8b57fbb00266b152d0f9c1c075c9d3fd5f63b9cb919e60bd7cb039b2d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7887912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a00c6e88787a0a1190d37fded4610faa3eef3206485bf62f79b1eac04008763`

```dockerfile
```

-	Layers:
	-	`sha256:979e631bcfb2f55c1eed29b4f9c588a9643e458208c92da4adfdec00cb7abfb5`  
		Last Modified: Wed, 11 Nov 2026 23:48:21 GMT  
		Size: 7.9 MB (7871872 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4228594efabafc32b0282e5fbcb7e11c9bba617e29dbc4963979f267799136da`  
		Last Modified: Wed, 11 Nov 2026 23:48:20 GMT  
		Size: 16.0 KB (16040 bytes)  
		MIME: application/vnd.in-toto+json
