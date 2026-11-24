## `swift:bookworm`

```console
$ docker pull swift@sha256:92d8f5e313f768e936e0944ceca3c31bd93ff5be9d7453b4838098b49db8b38b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:bookworm` - linux; amd64

```console
$ docker pull swift@sha256:5dedb643ae6a5da47cc5f286bc2aa4fc5f7dd74720581fca2ebb9672b4a9648d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1393906243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff67b300a514b1919342d8d175506517235db281df367aada8fe69bc7ce40980`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:04:48 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 24 Nov 2026 05:04:48 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 24 Nov 2026 05:04:48 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     binutils     libicu-dev     libcurl4-openssl-dev     libedit-dev     libsqlite3-dev     libncurses-dev     libpython3-dev     libxml2-dev     pkg-config     uuid-dev     tzdata     git     gcc     libstdc++-12-dev     && rm -r /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:04:48 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 24 Nov 2026 05:04:48 GMT
ARG SWIFT_PLATFORM=debian12
# Tue, 24 Nov 2026 05:04:48 GMT
ARG SWIFT_BRANCH=swift-6.4.3-release
# Tue, 24 Nov 2026 05:04:48 GMT
ARG SWIFT_VERSION=swift-6.4.3-RELEASE
# Tue, 24 Nov 2026 05:04:48 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 24 Nov 2026 05:04:48 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 24 Nov 2026 05:05:32 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
# Tue, 24 Nov 2026 05:05:32 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:471419756d22b812e7fab82bf64920d89685421467fa24a3b2ffa94c1329d89b`  
		Last Modified: Tue, 24 Nov 2026 05:07:59 GMT  
		Size: 198.7 MB (198740979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d5f3ff366e80be63c62d0dc0369be128f311516fa42a3d03ffb332a3916549`  
		Last Modified: Tue, 24 Nov 2026 05:08:15 GMT  
		Size: 1.1 GB (1146638712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a4401aede632905029ac0e6f6dd9d8d1ae11f1193b60917ecef3ceef1240e2d`  
		Last Modified: Tue, 24 Nov 2026 05:07:53 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:bookworm` - unknown; unknown

```console
$ docker pull swift@sha256:6decb57d83a249bec5ea19ed437621ef80e04348f5b8df23145b5f35c58a43e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11333317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b4147fca523c6cadff3b233fd5eb9f8d5088213b59cb2fb397246dc4764d5d`

```dockerfile
```

-	Layers:
	-	`sha256:4b0852e9060ab5544b83e8512d350efcb6bb2c825a962939b143c3888d3a7eec`  
		Last Modified: Tue, 24 Nov 2026 05:07:53 GMT  
		Size: 11.3 MB (11317578 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02135001d10139d1ae43a93f78014885d6040525b817e5b6ed2e8561f323a054`  
		Last Modified: Tue, 24 Nov 2026 05:07:53 GMT  
		Size: 15.7 KB (15739 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:bookworm` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:0598e955218bc14b3905e2b658bf08ae4c6f04d495aeb8caf2c9df86b5d7c415
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1379988614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af18696323450d5b729ef17254aae93beab828d3e5d3f16f9f71f86b522117a5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:12:32 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 24 Nov 2026 05:12:32 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 24 Nov 2026 05:12:32 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     binutils     libicu-dev     libcurl4-openssl-dev     libedit-dev     libsqlite3-dev     libncurses-dev     libpython3-dev     libxml2-dev     pkg-config     uuid-dev     tzdata     git     gcc     libstdc++-12-dev     && rm -r /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:12:32 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 24 Nov 2026 05:12:32 GMT
ARG SWIFT_PLATFORM=debian12
# Tue, 24 Nov 2026 05:12:32 GMT
ARG SWIFT_BRANCH=swift-6.4.3-release
# Tue, 24 Nov 2026 05:12:32 GMT
ARG SWIFT_VERSION=swift-6.4.3-RELEASE
# Tue, 24 Nov 2026 05:12:32 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 24 Nov 2026 05:12:32 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 24 Nov 2026 05:13:24 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
# Tue, 24 Nov 2026 05:13:24 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651f3b2e1be5490028608a64bf475e12d3c6107d1429ef0bf8a30a86aaf317a8`  
		Last Modified: Tue, 24 Nov 2026 05:15:54 GMT  
		Size: 190.8 MB (190772399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672ed4bdbe84fec480c24ce982d102e56cfa6eff44cc0b4118aac73c77b7a65f`  
		Last Modified: Tue, 24 Nov 2026 05:16:10 GMT  
		Size: 1.1 GB (1140803783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33359ef40ec34e92481cfbb38d058d56af633599f84ce5bc3d9da6cf23f5175`  
		Last Modified: Tue, 24 Nov 2026 05:15:48 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:bookworm` - unknown; unknown

```console
$ docker pull swift@sha256:14cd3a9ccbd79229c397386a7cb82b3b59e92249cba2f1538656396936e13623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11361443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7a4f1ad5b19c00118c01af7b783a583f8d18d3ca2fd31684a2ae9ec0c852b0f`

```dockerfile
```

-	Layers:
	-	`sha256:91e0178670c227eda911e2fbd243c498b108fdbd9ea1fe50b9ff2ff7a307d43d`  
		Last Modified: Tue, 24 Nov 2026 05:15:48 GMT  
		Size: 11.3 MB (11345583 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9de665fea073d15268c5eca6481e51ea33b574774150d2753dce577853abe649`  
		Last Modified: Tue, 24 Nov 2026 05:15:48 GMT  
		Size: 15.9 KB (15860 bytes)  
		MIME: application/vnd.in-toto+json
