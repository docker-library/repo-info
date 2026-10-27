## `swift:noble-slim`

```console
$ docker pull swift@sha256:503a11af64a22b3f80335cbe7d7189f67689bbe026c482ae17e1ece453f31cd5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:noble-slim` - linux; amd64

```console
$ docker pull swift@sha256:296ac8b622c594740446a2e4f70801d8560ef610a461e5460614e3ec4e9eb2f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.5 MB (102541989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ba211f1a3ebffbd094210e86c0a3aa25ae290325aeb499b3813d4fcb536090`
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
# Mon, 26 Oct 2026 23:41:26 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Mon, 26 Oct 2026 23:41:26 GMT
LABEL description=Docker Container for the Swift programming language
# Mon, 26 Oct 2026 23:41:26 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:41:26 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Mon, 26 Oct 2026 23:41:26 GMT
ARG SWIFT_PLATFORM=ubuntu24.04
# Mon, 26 Oct 2026 23:41:26 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Mon, 26 Oct 2026 23:41:26 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Mon, 26 Oct 2026 23:41:26 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Mon, 26 Oct 2026 23:41:26 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Mon, 26 Oct 2026 23:42:05 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gnupg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gnupg # buildkit
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75f68149f38a6e125c8a7fb379c3fd537711122c1c1226b27233dfaf2fb9f784`  
		Last Modified: Mon, 26 Oct 2026 23:42:19 GMT  
		Size: 20.0 MB (19987796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6045d3e0533df64ed12f9fce355a6aeb0a3aacd98a2101075fa59b261cabb186`  
		Last Modified: Mon, 26 Oct 2026 23:42:20 GMT  
		Size: 52.8 MB (52786581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:noble-slim` - unknown; unknown

```console
$ docker pull swift@sha256:1b8e838f166ba27be0039c1f9695111f3c2cf6a5eb8985cc186fbf5cc5f42eee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2493490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c134125dd46ea824d142fc39088ff6b073c17f7ecdfbab0195cb466162478e6`

```dockerfile
```

-	Layers:
	-	`sha256:f9e76c6ad236c21615dbd16ade2cb5b94a277bd32888d7d7fbc10221f8e04eff`  
		Last Modified: Mon, 26 Oct 2026 23:42:18 GMT  
		Size: 2.5 MB (2479550 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:817f55ce792a91d05afe76d0cf0d3c3b1e69fc98c1a221730cddd4f72215fbd7`  
		Last Modified: Mon, 26 Oct 2026 23:42:18 GMT  
		Size: 13.9 KB (13940 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:noble-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:034eb635f729e07186777f60f93f10bff56f09ef17ca0f85c086c8a8e89f1c73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.0 MB (101003712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e457ae050dfb15bc3f5ec554cacdf8a2cbf4eb6ed956c5af8743a790836c0d00`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:45:46 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Mon, 26 Oct 2026 23:45:46 GMT
LABEL description=Docker Container for the Swift programming language
# Mon, 26 Oct 2026 23:45:46 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:45:46 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Mon, 26 Oct 2026 23:45:46 GMT
ARG SWIFT_PLATFORM=ubuntu24.04
# Mon, 26 Oct 2026 23:45:46 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Mon, 26 Oct 2026 23:45:46 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Mon, 26 Oct 2026 23:45:46 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Mon, 26 Oct 2026 23:45:46 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Mon, 26 Oct 2026 23:46:26 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gnupg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gnupg # buildkit
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:389c7d2af5b6b70f198a739b844aad0e24032dcffd5a2197d328473c529373da`  
		Last Modified: Mon, 26 Oct 2026 23:46:39 GMT  
		Size: 20.0 MB (20010256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c6c2e5094b66d958dc2e796d98f5a83fac0a45510399f43d807b7b26aa2e8a9`  
		Last Modified: Mon, 26 Oct 2026 23:46:40 GMT  
		Size: 52.1 MB (52053330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:noble-slim` - unknown; unknown

```console
$ docker pull swift@sha256:096321dd518e51b2c0e1238a8adb413cd9f04e142f2d41df567a3001081d2cdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2494679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e99734594336454366334fbfc86a1305cbc6ef5f9cbdb2137ecaed987f73aa`

```dockerfile
```

-	Layers:
	-	`sha256:8f3cfee3652ce6e6e7de9b79e719af033f721e4a826ff4fda77ab433c0c19e8a`  
		Last Modified: Mon, 26 Oct 2026 23:46:38 GMT  
		Size: 2.5 MB (2480630 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccb8413e1b885bd5da571e6dc07fbd60bfa9e00491207406a18d571da0d3ad2f`  
		Last Modified: Mon, 26 Oct 2026 23:46:38 GMT  
		Size: 14.0 KB (14049 bytes)  
		MIME: application/vnd.in-toto+json
