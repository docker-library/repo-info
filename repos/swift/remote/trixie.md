## `swift:trixie`

```console
$ docker pull swift@sha256:ca39e00cc8addfba2911159e42cded49ad02197c56a11f915a6bb189b5f0a9d3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:trixie` - linux; amd64

```console
$ docker pull swift@sha256:b737bcec27a6d7469ea0bd707d24765cd1a0e24626e2103495fb1844a6108995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1412804794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea7171cb239043d985aa017c2a2cbc60b1eb6253ae1c04dea0bbbf8ebd9a17c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:07:54 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 06 Oct 2026 02:07:54 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 06 Oct 2026 02:07:54 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     binutils-gold     libicu-dev     libcurl4-openssl-dev     libedit-dev     libsqlite3-dev     libncurses-dev     libpython3-dev     libxml2-dev     pkg-config     uuid-dev     tzdata     git     gcc     libstdc++-14-dev     && rm -r /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:07:54 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 06 Oct 2026 02:07:54 GMT
ARG SWIFT_PLATFORM=debian13
# Tue, 06 Oct 2026 02:07:54 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Tue, 06 Oct 2026 02:07:54 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Tue, 06 Oct 2026 02:07:54 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 06 Oct 2026 02:07:54 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian13 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 06 Oct 2026 02:08:36 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian13 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
# Tue, 06 Oct 2026 02:08:37 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian13 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fc5582bbd116c2cbd790e8acec8b36b624872999071afae7ea54562a01da06c`  
		Last Modified: Tue, 06 Oct 2026 02:11:00 GMT  
		Size: 213.1 MB (213108331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea8e9d0e87c9587572f4ed99a8c6430c2056549a54eb5ca3a2754af37a62f517`  
		Last Modified: Tue, 06 Oct 2026 02:11:16 GMT  
		Size: 1.2 GB (1150303089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a661b0bcea438c2eb60e355c9f03e771d7535dd3e89f158b56db0e79f2675d07`  
		Last Modified: Tue, 06 Oct 2026 02:10:54 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:trixie` - unknown; unknown

```console
$ docker pull swift@sha256:74572b09bf1b01d83389f2cdf9c5ca5a310ea68ac801e7bc35217c5d2b4208c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13011112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:017f7fb16b2f7e564c132f0d9a95ffc7e533d44a533e27785f28daf60a325697`

```dockerfile
```

-	Layers:
	-	`sha256:ae7a9069417bc00cd0fb7a5a9202294912aa863f606267e8a870743e66e8dd6d`  
		Last Modified: Tue, 06 Oct 2026 02:10:54 GMT  
		Size: 13.0 MB (12995388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44fdcf360a1dae1eef194fef96a08810f5113b0c92212812af48e261aed2ce46`  
		Last Modified: Tue, 06 Oct 2026 02:10:54 GMT  
		Size: 15.7 KB (15724 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:trixie` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:8b7709500db3adb38b1114ac670dfc1a3b14163bacf609d5caffdebd7b45293e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1398452804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75d229de8b9a85b758206cc935ef33d609c00515408a500b4cc6796611c19773`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:13:55 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 06 Oct 2026 02:13:55 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 06 Oct 2026 02:13:55 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     binutils-gold     libicu-dev     libcurl4-openssl-dev     libedit-dev     libsqlite3-dev     libncurses-dev     libpython3-dev     libxml2-dev     pkg-config     uuid-dev     tzdata     git     gcc     libstdc++-14-dev     && rm -r /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:13:55 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 06 Oct 2026 02:13:55 GMT
ARG SWIFT_PLATFORM=debian13
# Tue, 06 Oct 2026 02:13:55 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Tue, 06 Oct 2026 02:13:55 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Tue, 06 Oct 2026 02:13:55 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 06 Oct 2026 02:13:55 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian13 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 06 Oct 2026 02:14:39 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian13 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
# Tue, 06 Oct 2026 02:14:39 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian13 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:788d1b381a5b709e0ee17fe0069bd95188b6bd0785a010b0295672d9c0c03648`  
		Last Modified: Tue, 06 Oct 2026 02:17:06 GMT  
		Size: 209.0 MB (208963099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7b159be019e83162d8c8924fd63be2b55a4988acb61195e0f27b1f56ff64c76`  
		Last Modified: Tue, 06 Oct 2026 02:17:21 GMT  
		Size: 1.1 GB (1139728426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46817982793df73ff4482ccf0825d0e100230132e62b2eddb82de305c0f9ffb6`  
		Last Modified: Tue, 06 Oct 2026 02:16:58 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:trixie` - unknown; unknown

```console
$ docker pull swift@sha256:bccc64eece7bdb84a8bc40e36cdb30db5ab977db7aa5db6cc456e26fc8318cf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13109422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bad64183dc7e24dca1871ee59274b2baad47b9a0c20251ffabcba7bf782587f`

```dockerfile
```

-	Layers:
	-	`sha256:bfcda10f9d7be7e99dd18321387f91b6f2ad693734fb5737c6d2a1e5cbb3ea77`  
		Last Modified: Tue, 06 Oct 2026 02:16:59 GMT  
		Size: 13.1 MB (13093576 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07c599f23a81baf5b3ffb6ce7cf7435548f2d9f5473bc63b9f97d0da65e256e1`  
		Last Modified: Tue, 06 Oct 2026 02:16:58 GMT  
		Size: 15.8 KB (15846 bytes)  
		MIME: application/vnd.in-toto+json
