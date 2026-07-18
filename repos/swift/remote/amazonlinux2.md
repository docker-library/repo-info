## `swift:amazonlinux2`

```console
$ docker pull swift@sha256:ff159b9c8175aeebee7376f8d5f55226a8e9e02dd60287b959a5bc567674d937
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:amazonlinux2` - linux; amd64

```console
$ docker pull swift@sha256:08d942523ea3fbb9f4d00beeb2e78034d51754b71292b9c44d000a95a21a2527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 GB (1637327653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9bad07d0e1ef826bd34ab1c53cf5a423e41dd4856da770649d4178dbe066d1c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:47 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:47 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:13:47 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Sat, 18 Jul 2026 00:13:47 GMT
LABEL description=Docker Container for the Swift programming language
# Sat, 18 Jul 2026 00:13:47 GMT
RUN yum -y install   binutils   gcc   git   unzip   glibc-static   gzip   libbsd   libcurl-devel   libedit   libicu   libsqlite   libstdc++-static   libuuid   libxml2-devel   openssl-devel   tar   tzdata   zlib-devel # buildkit
# Sat, 18 Jul 2026 00:13:47 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Sat, 18 Jul 2026 00:13:47 GMT
ARG SWIFT_PLATFORM=amazonlinux2
# Sat, 18 Jul 2026 00:13:47 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Sat, 18 Jul 2026 00:13:47 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Sat, 18 Jul 2026 00:13:47 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Sat, 18 Jul 2026 00:13:47 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Sat, 18 Jul 2026 00:14:32 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Sat, 18 Jul 2026 00:14:33 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:06aa8a8412ddcd11af3d73b72c1ed58ba902c9428472a38c780460385a530107`  
		Last Modified: Sat, 11 Jul 2026 02:13:53 GMT  
		Size: 63.0 MB (62957295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39cfa717e30904a3af0408a7edb78b08d15072962939e5bb684340fa382b57be`  
		Last Modified: Sat, 18 Jul 2026 00:17:18 GMT  
		Size: 337.5 MB (337519493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d33e8aa7d987461f245dc96471d60e0f6128ae368878020718eb933c49dac1c4`  
		Last Modified: Tue, 30 Jun 2026 19:00:52 GMT  
		Size: 1.2 GB (1236850692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aeeec0666e2599111f6db5c5850141864422a627d5b0dc5477e83b90e7bcc5a`  
		Last Modified: Sat, 18 Jul 2026 00:17:10 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2` - unknown; unknown

```console
$ docker pull swift@sha256:fbf1f470a4fcf5b329f9843bf27636973dc3664577a5a0b65acff59bb2828170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12734940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89371cd6b6178ba694d3542655c2a75fe14a99b7973f1734e2534bff160dd07c`

```dockerfile
```

-	Layers:
	-	`sha256:9c403e1b844c2e8d757f566c9fabc676e86add571ae0e3db36d12e03a178bc88`  
		Last Modified: Sat, 18 Jul 2026 00:17:11 GMT  
		Size: 12.7 MB (12720094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6597e4328a08baa4429c272959214afa92e404a9db5113a514deb1ed00e24a9`  
		Last Modified: Sat, 18 Jul 2026 00:17:10 GMT  
		Size: 14.8 KB (14846 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:amazonlinux2` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:2885ca745bd9b58f86ac8eee2fed6091870803ab208a55590155eb108bdb7ace
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 GB (1592919117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27e29bd0d7bd993c261ab6606f0e1c31ff2782a05c752fe2a9e1fe181466bf8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:40 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:40 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:13:27 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Sat, 18 Jul 2026 00:13:27 GMT
LABEL description=Docker Container for the Swift programming language
# Sat, 18 Jul 2026 00:13:27 GMT
RUN yum -y install   binutils   gcc   git   unzip   glibc-static   gzip   libbsd   libcurl-devel   libedit   libicu   libsqlite   libstdc++-static   libuuid   libxml2-devel   openssl-devel   tar   tzdata   zlib-devel # buildkit
# Sat, 18 Jul 2026 00:13:27 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Sat, 18 Jul 2026 00:13:27 GMT
ARG SWIFT_PLATFORM=amazonlinux2
# Sat, 18 Jul 2026 00:13:27 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Sat, 18 Jul 2026 00:13:27 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Sat, 18 Jul 2026 00:13:27 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Sat, 18 Jul 2026 00:13:27 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Sat, 18 Jul 2026 00:14:17 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Sat, 18 Jul 2026 00:14:18 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:7da2ddf99845df800b9ce1ec0c9889076ad3ba27fd4e61b3ef728e424f1672f1`  
		Last Modified: Mon, 13 Jul 2026 18:19:45 GMT  
		Size: 64.8 MB (64790249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82de358ddb3a1ea06c99bb020e3522dc8ebc85dbae95383446d5527cc64b4bc8`  
		Last Modified: Sat, 18 Jul 2026 00:16:47 GMT  
		Size: 308.5 MB (308537598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c06b78b3b54cf32b7d4aff5b64e08677341fb7d164b390426f2faeccf4920bab`  
		Last Modified: Tue, 30 Jun 2026 19:00:14 GMT  
		Size: 1.2 GB (1219591096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def4eb8c7371d62aff5e3cfadb3b309fcb7fe976ed8471b2edf09eadf02aaabb`  
		Last Modified: Sat, 18 Jul 2026 00:16:41 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2` - unknown; unknown

```console
$ docker pull swift@sha256:0aa7f360a9cbac5cd7502235f22a1676a3f71f1164252519adfc5aa36bceedf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12596700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e0b05e4b31b89d1062542d432e136e83b63e366db43d48cd54b7fc23f20a54`

```dockerfile
```

-	Layers:
	-	`sha256:a6aeb422aba73c153b444e9b4f9aaf81710e1f4c5b49e807173daf4b69969979`  
		Last Modified: Sat, 18 Jul 2026 00:16:42 GMT  
		Size: 12.6 MB (12581731 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f758d3200a601b3cddbdee60e547e7ffff1b833681f7f36e885c65e6d677c27`  
		Last Modified: Sat, 18 Jul 2026 00:16:41 GMT  
		Size: 15.0 KB (14969 bytes)  
		MIME: application/vnd.in-toto+json
