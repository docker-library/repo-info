## `swift:bookworm`

```console
$ docker pull swift@sha256:898740786e43c4402fc1cc7ac51824dc675a14e1a3353b64e23c02ea7d85ed1d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:bookworm` - linux; amd64

```console
$ docker pull swift@sha256:5b8f7da3281c0b22a2719a0b561731d13e89f8fd849e0a71412b794404ab1e05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1338892494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24f2d0a2f776064c286a352c4f0bb0b56b3afc35e2edc239df261a43c148663c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:22:46 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 25 Aug 2026 01:22:46 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 25 Aug 2026 01:22:46 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     binutils     libicu-dev     libcurl4-openssl-dev     libedit-dev     libsqlite3-dev     libncurses-dev     libpython3-dev     libxml2-dev     pkg-config     uuid-dev     tzdata     git     gcc     libstdc++-12-dev     && rm -r /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:22:46 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 25 Aug 2026 01:22:46 GMT
ARG SWIFT_PLATFORM=debian12
# Tue, 25 Aug 2026 01:22:46 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Tue, 25 Aug 2026 01:22:46 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Tue, 25 Aug 2026 01:22:46 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 25 Aug 2026 01:22:46 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 25 Aug 2026 01:23:30 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
# Tue, 25 Aug 2026 01:23:30 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b70ba9f8c30397a8af45cd9ee25ca54f4cde5c5671fe7fb4925925f5447c6410`  
		Last Modified: Tue, 25 Aug 2026 01:26:02 GMT  
		Size: 198.6 MB (198565926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6c9518a6a81dc00cde5895aa654e895057fae636e8d0c0debbb4f7607f74cb0`  
		Last Modified: Tue, 25 Aug 2026 01:26:16 GMT  
		Size: 1.1 GB (1091829032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f05f26655e93707b4071d9717deae80523099997ea401ee1d20538e0528738ce`  
		Last Modified: Tue, 25 Aug 2026 01:25:54 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:bookworm` - unknown; unknown

```console
$ docker pull swift@sha256:8af4769f7d60ee23130d3ab98ca7be3bb4a4b553cc21e8e5fc48dbcdeb4226de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11336039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f439cb94d867795b80bb8288fbbfa2c3a1171b682d0faeab8fe237e246f32d8`

```dockerfile
```

-	Layers:
	-	`sha256:ec5c30026a36bc360fd084da5e0062a545c00a38ac16bb3bea4fc79f17bb71d6`  
		Last Modified: Tue, 25 Aug 2026 01:25:55 GMT  
		Size: 11.3 MB (11320316 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0be88e92752220693d12b237b20ef8e0f513c40a76e6e31bcc145d19a653cfd`  
		Last Modified: Tue, 25 Aug 2026 01:25:54 GMT  
		Size: 15.7 KB (15723 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:bookworm` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:b7c15ebf0932ea768d75eada9bc3d101d0d1d14a2c3d76862976523c6c583b28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1324973185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aacca543179c29ccc5ad081cdc572d0321ca334ea1b98a81906470b3fb8482c7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:26:57 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 25 Aug 2026 01:26:57 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 25 Aug 2026 01:26:57 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     binutils     libicu-dev     libcurl4-openssl-dev     libedit-dev     libsqlite3-dev     libncurses-dev     libpython3-dev     libxml2-dev     pkg-config     uuid-dev     tzdata     git     gcc     libstdc++-12-dev     && rm -r /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:26:57 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 25 Aug 2026 01:26:57 GMT
ARG SWIFT_PLATFORM=debian12
# Tue, 25 Aug 2026 01:26:57 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Tue, 25 Aug 2026 01:26:57 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Tue, 25 Aug 2026 01:26:57 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 25 Aug 2026 01:26:57 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 25 Aug 2026 01:27:49 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
# Tue, 25 Aug 2026 01:27:50 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9900c49726357a02e4d73d431728053d6065f6ce84339b85cd3b87e2deb2814`  
		Last Modified: Tue, 25 Aug 2026 01:30:07 GMT  
		Size: 190.6 MB (190613024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f09fd3ee0d151d24acd08a3c659990699bf2e0f4352d8e5860aa89b3ffc84f2`  
		Last Modified: Tue, 25 Aug 2026 01:30:24 GMT  
		Size: 1.1 GB (1085976338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f510a3d0b9da6de3fc20bbd342ff4c8ed461044165fc2b76647d7d9577067648`  
		Last Modified: Tue, 25 Aug 2026 01:30:00 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:bookworm` - unknown; unknown

```console
$ docker pull swift@sha256:7bbde38be39ca7fb41535b4cfbf99b7c7961c35d3149dc034ff802222c6aa98f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11364166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:033f4b0e173a5ec62a3e63bda4537cb48b7ca1a6fcc4499a092abeaf7171c661`

```dockerfile
```

-	Layers:
	-	`sha256:2229114a587615b7bb0c2f33d452dd6d8b03631be9a81fa4812332419fc3d222`  
		Last Modified: Tue, 25 Aug 2026 01:30:01 GMT  
		Size: 11.3 MB (11348321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:219e8a6dfd586397ec81fe3d00cde1a15863ee655e3069f886c12262c63a03a0`  
		Last Modified: Tue, 25 Aug 2026 01:30:00 GMT  
		Size: 15.8 KB (15845 bytes)  
		MIME: application/vnd.in-toto+json
