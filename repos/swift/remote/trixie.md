## `swift:trixie`

```console
$ docker pull swift@sha256:cb6d7d1db28f008675cbc1939bd8610c5a0a8fd0a576d2ce41632ca5793db8e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:trixie` - linux; amd64

```console
$ docker pull swift@sha256:c95778aa6cedc29b542ad4bb9eb4d64955e657f9e6d87eb08c31a7a0a7b1ca62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1413005331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44eff520e837ab7b70afa5da9b70dbdd2e19daecdfa4d4c827bf744f9033c48b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:07:04 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 28 Oct 2026 02:07:04 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 28 Oct 2026 02:07:04 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     binutils-gold     libicu-dev     libcurl4-openssl-dev     libedit-dev     libsqlite3-dev     libncurses-dev     libpython3-dev     libxml2-dev     pkg-config     uuid-dev     tzdata     git     gcc     libstdc++-14-dev     && rm -r /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:07:04 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 28 Oct 2026 02:07:04 GMT
ARG SWIFT_PLATFORM=debian13
# Wed, 28 Oct 2026 02:07:04 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Wed, 28 Oct 2026 02:07:04 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Wed, 28 Oct 2026 02:07:04 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 28 Oct 2026 02:07:04 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian13 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 28 Oct 2026 02:07:51 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian13 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
# Wed, 28 Oct 2026 02:07:51 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian13 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4894912657445a31a9049646f0d4bb5fabee0c66b5ef19e608a865683b853b3`  
		Last Modified: Wed, 28 Oct 2026 02:10:25 GMT  
		Size: 213.3 MB (213265917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e591fd122159c38bbe879904b555862511fae1cdc7dc10b78bec96c0446840f`  
		Last Modified: Wed, 28 Oct 2026 02:10:41 GMT  
		Size: 1.2 GB (1150331345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2f11781bc44488306804e16a845b0d0985c1816795598786d018ef422c6ec1`  
		Last Modified: Wed, 28 Oct 2026 02:10:17 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:trixie` - unknown; unknown

```console
$ docker pull swift@sha256:395ff74b7bcf10a06d9e8258e2b96fdfc5732fbd890b4d543db3b063c42a3de7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13008265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12ed0ddfcc9cc9b5f0219b4717e5334ce9b75be2ff1f085d83f1b8ee734b5cb3`

```dockerfile
```

-	Layers:
	-	`sha256:a1172f491a38fe4e457a13935da898efd42066e04330b477b7faaa439a73fa65`  
		Last Modified: Wed, 28 Oct 2026 02:10:18 GMT  
		Size: 13.0 MB (12992542 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fea1c8797ce3560e2c78e46c8b437066ca28f3d5510f0366334b86d2b2343cbb`  
		Last Modified: Wed, 28 Oct 2026 02:10:17 GMT  
		Size: 15.7 KB (15723 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:trixie` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:45fcaca01550d5f2c3ded0d84abb7c037e5d9e2497211df4e9fa58d639c43ded
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1398528945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9db6a25bce05fe1b0c97e6338920982c9a53a8135182f4c9d17aa4a17bccdae1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:18:49 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 21 Oct 2026 01:18:49 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 21 Oct 2026 01:18:49 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     binutils-gold     libicu-dev     libcurl4-openssl-dev     libedit-dev     libsqlite3-dev     libncurses-dev     libpython3-dev     libxml2-dev     pkg-config     uuid-dev     tzdata     git     gcc     libstdc++-14-dev     && rm -r /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:18:49 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 21 Oct 2026 01:18:49 GMT
ARG SWIFT_PLATFORM=debian13
# Wed, 21 Oct 2026 01:18:49 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Wed, 21 Oct 2026 01:18:49 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Wed, 21 Oct 2026 01:18:49 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 21 Oct 2026 01:18:49 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian13 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 21 Oct 2026 01:19:31 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian13 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
# Wed, 21 Oct 2026 01:19:31 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian13 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514f9cea67296557aff8727c750be21eba7ce091a4aa4b23c669ceb9e147b42b`  
		Last Modified: Wed, 21 Oct 2026 01:21:59 GMT  
		Size: 209.0 MB (209019554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557f252f57fe568e784fbf2159c10282d1314660efbc8f98c933f3fdd4501e87`  
		Last Modified: Wed, 21 Oct 2026 01:22:20 GMT  
		Size: 1.1 GB (1139747615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8148cd9ad13cd9eb4b4fd984b514e4bfe8b4c5a7b11a3531e901a6c7cd59111f`  
		Last Modified: Wed, 21 Oct 2026 01:21:51 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:trixie` - unknown; unknown

```console
$ docker pull swift@sha256:8beca6c81e866c0bdb78808c320bcdf1c97ebcd1520497cc93fa19450cc948cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13108149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:223d46219cbed4200535f6fae56c77e3b3355e2c0be660fac014148146be8080`

```dockerfile
```

-	Layers:
	-	`sha256:b4c40f047ee708b037db9bd23aaf34e1651bb2528c64de9b5b239c58b38208d1`  
		Last Modified: Wed, 21 Oct 2026 01:21:52 GMT  
		Size: 13.1 MB (13092303 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:620e2db6d3e6cf6fc3284e79bc042fdd82d067b0d2db5c643b153776ca4facbb`  
		Last Modified: Wed, 21 Oct 2026 01:21:51 GMT  
		Size: 15.8 KB (15846 bytes)  
		MIME: application/vnd.in-toto+json
