## `swift:trixie-slim`

```console
$ docker pull swift@sha256:7937063a5c9b8d26f54904463b57e5cb6934a4f809441c5d6cae1b398db479af
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:trixie-slim` - linux; amd64

```console
$ docker pull swift@sha256:15c3de2d81ff2ab44ff638ed5006ce17e950eca79676c192802333854a9808b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.5 MB (118484463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cc7ffe31bada6e0dd9591f8e66478c01eb9819d009b45f463660df1270e57aa`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 20:29:46 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 13 Oct 2026 20:29:46 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 13 Oct 2026 20:29:46 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 20:29:46 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 13 Oct 2026 20:29:46 GMT
ARG SWIFT_PLATFORM=debian13
# Tue, 13 Oct 2026 20:29:46 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Tue, 13 Oct 2026 20:29:46 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Tue, 13 Oct 2026 20:29:46 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 20:29:46 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian13 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 20:30:19 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian13 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e91d9e141f3ad9a5483a5f0db36700dc2ecbf77a5ea2e332fa6defd783e403`  
		Last Modified: Tue, 13 Oct 2026 20:30:33 GMT  
		Size: 9.9 MB (9927434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:736ef295d8630a3c5d3d78b32241b1ff5794d508fd9338f1187c60558b627cc1`  
		Last Modified: Tue, 13 Oct 2026 20:30:35 GMT  
		Size: 59.2 MB (59163829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:trixie-slim` - unknown; unknown

```console
$ docker pull swift@sha256:787fd3327147504fa5dd9a0c01e128e4e6949fda35dc7d191f9403546168bf46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4390758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:933cee7acd49756a71bb07e8bb299d6580dc60935a42c45a1ce19baceedca68a`

```dockerfile
```

-	Layers:
	-	`sha256:5de7ae7c1b1192668a71c6e88c2dbb0c85b42489fa41763c11bd0c817d258cff`  
		Last Modified: Tue, 13 Oct 2026 20:30:33 GMT  
		Size: 4.4 MB (4376846 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8716762d7564cba44aaf56ff2b0502f2481c5586474425ff26de1ede47dda381`  
		Last Modified: Tue, 13 Oct 2026 20:30:33 GMT  
		Size: 13.9 KB (13912 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:trixie-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:347a53bca72b35f9a5f9891cb0d58b3ab20c9735889ea49531c90c3496622ce3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.9 MB (117893581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d135c6477f12adfd763c245e9963fbbbd6be3c5348daf0ddab7819906979af5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 20:29:10 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 13 Oct 2026 20:29:10 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 13 Oct 2026 20:29:10 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 20:29:10 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 13 Oct 2026 20:29:10 GMT
ARG SWIFT_PLATFORM=debian13
# Tue, 13 Oct 2026 20:29:10 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Tue, 13 Oct 2026 20:29:10 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Tue, 13 Oct 2026 20:29:10 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 20:29:10 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian13 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 20:29:42 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian13 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:472b775aed827ddf19c11c19b6a4e986c8e4ffb5044fa8098d72e0c955e5788b`  
		Last Modified: Tue, 13 Oct 2026 20:29:57 GMT  
		Size: 9.8 MB (9833736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbfc8767e210bb866fcf9bd8b6602113964483eca5d483aabfe1ed9e12e45714`  
		Last Modified: Tue, 13 Oct 2026 20:29:58 GMT  
		Size: 58.3 MB (58298740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:trixie-slim` - unknown; unknown

```console
$ docker pull swift@sha256:a5d5e21cdc4e1eb9d775bebfbb710bbee6eaca98a7a7e0e2b99389a04bff6b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4391778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a9dc2a762671747a94046563617e1fc4f349362befae7d733073d94d7e5734`

```dockerfile
```

-	Layers:
	-	`sha256:8fe5e3ab4ca3cf174a2d2a73674b45a345eaa125618bc5879ff4f1504d687d19`  
		Last Modified: Tue, 13 Oct 2026 20:29:56 GMT  
		Size: 4.4 MB (4377760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c35f45c2533fc16584b0fcb947845dad33c372922768b5fcdf078188c0f82b2f`  
		Last Modified: Tue, 13 Oct 2026 20:29:56 GMT  
		Size: 14.0 KB (14018 bytes)  
		MIME: application/vnd.in-toto+json
