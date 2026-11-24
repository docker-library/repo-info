## `swift:trixie`

```console
$ docker pull swift@sha256:c19ad401b9d3c02fa92251dde56db48af06be2fcb91336eb3a5547f18d8130f1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:trixie` - linux; amd64

```console
$ docker pull swift@sha256:dea1cda968f50709f8a40d68efc84248c2402a12ec03bf2b0ca76cbafc939a39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1414473719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51f03439a11ebeab8a3dd77284c9011d723306648a6303ac1aec65a95d6d8660`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:05:55 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 24 Nov 2026 05:05:55 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 24 Nov 2026 05:05:55 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     binutils-gold     libicu-dev     libcurl4-openssl-dev     libedit-dev     libsqlite3-dev     libncurses-dev     libpython3-dev     libxml2-dev     pkg-config     uuid-dev     tzdata     git     gcc     libstdc++-14-dev     && rm -r /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:05:55 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 24 Nov 2026 05:05:55 GMT
ARG SWIFT_PLATFORM=debian13
# Tue, 24 Nov 2026 05:05:55 GMT
ARG SWIFT_BRANCH=swift-6.4.3-release
# Tue, 24 Nov 2026 05:05:55 GMT
ARG SWIFT_VERSION=swift-6.4.3-RELEASE
# Tue, 24 Nov 2026 05:05:55 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 24 Nov 2026 05:05:55 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian13 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 24 Nov 2026 05:06:37 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian13 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
# Tue, 24 Nov 2026 05:06:37 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian13 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:086133e9c8ac40980e5b7b7162d5f5ef8d78e15c4ac93e8bb219277cc7523b29`  
		Last Modified: Tue, 24 Nov 2026 05:09:02 GMT  
		Size: 213.4 MB (213369674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:055ebe127f5bf6f128fc2caddcfa79711f8824615033e86749172b8536060e56`  
		Last Modified: Tue, 24 Nov 2026 05:09:18 GMT  
		Size: 1.2 GB (1151694582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbac6fb1a6a79aae51f4461620f0c332793cef73bb62d66e42e9f037a27a5de5`  
		Last Modified: Tue, 24 Nov 2026 05:08:55 GMT  
		Size: 175.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:trixie` - unknown; unknown

```console
$ docker pull swift@sha256:5dd4cc765667e3c6f95f08779f615c704cf2bc17e59ea54f308e4815cc3c312a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13006734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f42cc405f9586a2e57fe651b0ef64adac52844a300facbaaaee41920aa70636d`

```dockerfile
```

-	Layers:
	-	`sha256:690a088b7f42ac09b3e106387073622ddd09ed8f5be25a730ec229873965262d`  
		Last Modified: Tue, 24 Nov 2026 05:08:55 GMT  
		Size: 13.0 MB (12990994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1531ff12653abd456ba1757b151b3879e08bf2306dd6103b21a9d71f6be389e2`  
		Last Modified: Tue, 24 Nov 2026 05:08:55 GMT  
		Size: 15.7 KB (15740 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:trixie` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:cb6617c683cdbe4aa10a9650c054b9c1d60cd54f3210647c5c9e063a59fbc5e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1400038664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57042db61fc4466fd3b44f70a2a8f0c93f5e5b8f4e16c914583d67b5eecd43ba`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:13:35 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 24 Nov 2026 05:13:35 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 24 Nov 2026 05:13:35 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     binutils-gold     libicu-dev     libcurl4-openssl-dev     libedit-dev     libsqlite3-dev     libncurses-dev     libpython3-dev     libxml2-dev     pkg-config     uuid-dev     tzdata     git     gcc     libstdc++-14-dev     && rm -r /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:13:35 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 24 Nov 2026 05:13:35 GMT
ARG SWIFT_PLATFORM=debian13
# Tue, 24 Nov 2026 05:13:35 GMT
ARG SWIFT_BRANCH=swift-6.4.3-release
# Tue, 24 Nov 2026 05:13:35 GMT
ARG SWIFT_VERSION=swift-6.4.3-RELEASE
# Tue, 24 Nov 2026 05:13:35 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 24 Nov 2026 05:13:35 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian13 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 24 Nov 2026 05:14:18 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian13 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
# Tue, 24 Nov 2026 05:14:18 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian13 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:6bf9dd8e528e8b59aba65241842ec43567ab9ff163d6d444bb4701ece0f11093`  
		Last Modified: Tue, 24 Nov 2026 03:40:31 GMT  
		Size: 49.8 MB (49770086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1233333dc02e327cd966671719f77c2ba36327c2afc35ba35acc7fec53053f`  
		Last Modified: Tue, 24 Nov 2026 05:16:46 GMT  
		Size: 209.2 MB (209157198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9945bf6f43b1a136c27fe02633d317bb1985e7fe2336c6eea39c73aff1d185e7`  
		Last Modified: Tue, 24 Nov 2026 05:17:09 GMT  
		Size: 1.1 GB (1141111206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7092cb8a46e56afbef6c095bcf6f5492e8eaef407e3b472482c9598275a5209d`  
		Last Modified: Tue, 24 Nov 2026 05:16:37 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:trixie` - unknown; unknown

```console
$ docker pull swift@sha256:4d976df0cb6fd2d4d30cc4f3a2c736cfda98635d128f1a12b753177bb0f17428
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13105044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74f5c27d67890ffb44bea30f9269fca450f1375cfc51ed6607207e10128f666e`

```dockerfile
```

-	Layers:
	-	`sha256:6b21d89ff3b5552744546a640b0c656e8609f281a9d71f0e61eabf2e42b07c96`  
		Last Modified: Tue, 24 Nov 2026 05:16:38 GMT  
		Size: 13.1 MB (13089182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42ff67a2beda0623a60bb63c1841ab6a9f39c723a87db39cc712eace4d8be13d`  
		Last Modified: Tue, 24 Nov 2026 05:16:37 GMT  
		Size: 15.9 KB (15862 bytes)  
		MIME: application/vnd.in-toto+json
