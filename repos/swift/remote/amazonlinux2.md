## `swift:amazonlinux2`

```console
$ docker pull swift@sha256:bb1644d7cc897a4b80db9bf831ae07449a0bd2279a00f75e439d8d46e3fc0d45
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:amazonlinux2` - linux; amd64

```console
$ docker pull swift@sha256:1ef0f5645f8526fded3060bc31f39f2c3a0d9c828fb51bbd5584c6958b9fd10b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 GB (1641963167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c02c26c803f16372db1e98db44a3dd3de0b052697847b085cc392750e3fc2f2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:32 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:32 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:29:48 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Thu, 17 Sep 2026 22:29:48 GMT
LABEL description=Docker Container for the Swift programming language
# Thu, 17 Sep 2026 22:29:48 GMT
RUN yum -y install   binutils   gcc   git   unzip   glibc-static   gzip   libbsd   libcurl-devel   libedit   libicu   libsqlite   libstdc++-static   libuuid   libxml2-devel   openssl-devel   tar   tzdata   zlib-devel # buildkit
# Thu, 17 Sep 2026 22:29:48 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Thu, 17 Sep 2026 22:29:48 GMT
ARG SWIFT_PLATFORM=amazonlinux2
# Thu, 17 Sep 2026 22:29:48 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Thu, 17 Sep 2026 22:29:48 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Thu, 17 Sep 2026 22:29:48 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Thu, 17 Sep 2026 22:29:48 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Thu, 17 Sep 2026 22:30:32 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Thu, 17 Sep 2026 22:30:33 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:0f31d1fce1dda0c9a2775f71f278a80f752c07ac8026cd44ad345d9d5c45de7e`  
		Last Modified: Fri, 04 Sep 2026 16:19:27 GMT  
		Size: 63.0 MB (62964596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:696e3ceb55154f67b9e7d2f224366ef6002ea911da7d2eedcf34fffa1caf7608`  
		Last Modified: Thu, 17 Sep 2026 22:33:24 GMT  
		Size: 342.1 MB (342147705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d33e8aa7d987461f245dc96471d60e0f6128ae368878020718eb933c49dac1c4`  
		Last Modified: Tue, 30 Jun 2026 19:00:52 GMT  
		Size: 1.2 GB (1236850692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22fd821000b1b6c7880dc0d06ccb0e745d30de6ed70b67aa6d1e4e6d2cc1f221`  
		Last Modified: Thu, 17 Sep 2026 22:33:18 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2` - unknown; unknown

```console
$ docker pull swift@sha256:ca45f90c65992c3000e6afbf0533a808ad678401d251e462a58e22847859917b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12734971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb2e1ac24bccc1d762f8fcaf7f44b0ff5f53c36dd7e9a71eb3905f6b4cdc9c3a`

```dockerfile
```

-	Layers:
	-	`sha256:d4f50e3f90c87aa2bacabf191cef789b5e127ba7fae3ca3d8e02d8aa57b0ce10`  
		Last Modified: Thu, 17 Sep 2026 22:33:18 GMT  
		Size: 12.7 MB (12720124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb6608f201f35e19b9fc8134ebd51f48b61b6d55bcee86f49c574f378358bdff`  
		Last Modified: Thu, 17 Sep 2026 22:33:18 GMT  
		Size: 14.8 KB (14847 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:amazonlinux2` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:fe53bd59599b2b2986ce903099952a8da127b80f3a314deeb5e01a8860432ca8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 GB (1597109653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14166a76a5776729b323dd6319a3c6605598eb33ba50e1a6be4fa653983fb62c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:18 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:53:48 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Thu, 17 Sep 2026 22:53:48 GMT
LABEL description=Docker Container for the Swift programming language
# Thu, 17 Sep 2026 22:53:48 GMT
RUN yum -y install   binutils   gcc   git   unzip   glibc-static   gzip   libbsd   libcurl-devel   libedit   libicu   libsqlite   libstdc++-static   libuuid   libxml2-devel   openssl-devel   tar   tzdata   zlib-devel # buildkit
# Thu, 17 Sep 2026 22:53:48 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Thu, 17 Sep 2026 22:53:48 GMT
ARG SWIFT_PLATFORM=amazonlinux2
# Thu, 17 Sep 2026 22:53:48 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Thu, 17 Sep 2026 22:53:48 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Thu, 17 Sep 2026 22:53:48 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Thu, 17 Sep 2026 22:53:48 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Thu, 17 Sep 2026 22:54:34 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Thu, 17 Sep 2026 22:54:34 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:17ad0bfad52234371433d04d036616a4bd4db51019fc530e40379ee1fcd6957a`  
		Last Modified: Fri, 04 Sep 2026 16:20:29 GMT  
		Size: 64.8 MB (64805101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16a16dd311586dfeb86e644eebb547d3659ae3b9f2c41cb9a07482db2e290747`  
		Last Modified: Thu, 17 Sep 2026 22:57:07 GMT  
		Size: 312.7 MB (312713282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c06b78b3b54cf32b7d4aff5b64e08677341fb7d164b390426f2faeccf4920bab`  
		Last Modified: Tue, 30 Jun 2026 19:00:14 GMT  
		Size: 1.2 GB (1219591096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e73c198876ff0da57dd8bf34d63752c722cee12b90d0096ac7c6b303c1fcf797`  
		Last Modified: Thu, 17 Sep 2026 22:56:59 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2` - unknown; unknown

```console
$ docker pull swift@sha256:e50698a3a49ad15d86879aba0a35cc6e4272a5cfd36108931846dfaaffb24022
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12596729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5cb4506fe477d912a2af5b07d22e63f782603f46a50927e9216c856e86c38f5`

```dockerfile
```

-	Layers:
	-	`sha256:41a186d2a41a72a48e982ec59af5bdeacd51ecca31e26dbc9218c5fc3b75e44e`  
		Last Modified: Thu, 17 Sep 2026 22:57:00 GMT  
		Size: 12.6 MB (12581761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03012d23066c52b92df5287ae79ca06ca6f23b99b7c04351e01b7e70575f42bb`  
		Last Modified: Thu, 17 Sep 2026 22:56:59 GMT  
		Size: 15.0 KB (14968 bytes)  
		MIME: application/vnd.in-toto+json
