## `swift:amazonlinux2`

```console
$ docker pull swift@sha256:e2ec373b240e82de7fca32b7c61cbb8ea9d40c2a67b9dec28fee4c955adf3414
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:amazonlinux2` - linux; amd64

```console
$ docker pull swift@sha256:658725de053474cb5b6dafee72f83d43637fdb34659f57670f5995b8cd328c8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 GB (1638909588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c307a9c51990b3d6d91cd58d2a4202eba725901ee4d42dfb1d4a5c50a3117e8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:56:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:56:04 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:11:18 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Thu, 20 Aug 2026 17:11:18 GMT
LABEL description=Docker Container for the Swift programming language
# Thu, 20 Aug 2026 17:11:18 GMT
RUN yum -y install   binutils   gcc   git   unzip   glibc-static   gzip   libbsd   libcurl-devel   libedit   libicu   libsqlite   libstdc++-static   libuuid   libxml2-devel   openssl-devel   tar   tzdata   zlib-devel # buildkit
# Thu, 20 Aug 2026 17:11:18 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Thu, 20 Aug 2026 17:11:18 GMT
ARG SWIFT_PLATFORM=amazonlinux2
# Thu, 20 Aug 2026 17:11:18 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Thu, 20 Aug 2026 17:11:18 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Thu, 20 Aug 2026 17:11:18 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Thu, 20 Aug 2026 17:11:18 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Thu, 20 Aug 2026 17:12:02 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Thu, 20 Aug 2026 17:12:02 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:7c706b7b88f32b6151af294498eecab3a3d1918791c514fd83c5da5c67eb0115`  
		Last Modified: Tue, 18 Aug 2026 22:35:39 GMT  
		Size: 63.0 MB (62974016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:958a3bc3aa84abbc2cc37d385f1619920eb4263e5ab0de42a3a0cc253c35d91f`  
		Last Modified: Thu, 20 Aug 2026 17:14:50 GMT  
		Size: 339.1 MB (339084708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d33e8aa7d987461f245dc96471d60e0f6128ae368878020718eb933c49dac1c4`  
		Last Modified: Tue, 30 Jun 2026 19:00:52 GMT  
		Size: 1.2 GB (1236850692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c66980449d9b0b18fb194d952345c756e08faea8daf6e4b879f6afbf3c02d8eb`  
		Last Modified: Thu, 20 Aug 2026 17:14:43 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2` - unknown; unknown

```console
$ docker pull swift@sha256:c0c5bcb45a32bcf20ea809f0a517c9d220de6e48d8cc9618bafe356a3bcfff6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12734964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b948c2663e26a66f0932c192b33c6419258948a6843bb92e4e79eb426b9a072d`

```dockerfile
```

-	Layers:
	-	`sha256:c12b5b3d255fe8a4c8fd5695a124b86961a20ad2e4b8e4eccbf63b077fccb6df`  
		Last Modified: Thu, 20 Aug 2026 17:14:44 GMT  
		Size: 12.7 MB (12720118 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ddf8a2317a7c84cf725c36ec343f6f22b5e57a55c85ed722e1a552dfa5388dd8`  
		Last Modified: Thu, 20 Aug 2026 17:14:43 GMT  
		Size: 14.8 KB (14846 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:amazonlinux2` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:c4c492d91261c91c7a435b7836e22641628657e357065171cd42ebd12e67b93b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 GB (1594340423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb2cd3dd2e115c64dc504db3302efb3e4f9e211c8c01bbcef1d49dfb180dd681`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:50 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:50 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:07:29 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Thu, 20 Aug 2026 17:07:29 GMT
LABEL description=Docker Container for the Swift programming language
# Thu, 20 Aug 2026 17:07:29 GMT
RUN yum -y install   binutils   gcc   git   unzip   glibc-static   gzip   libbsd   libcurl-devel   libedit   libicu   libsqlite   libstdc++-static   libuuid   libxml2-devel   openssl-devel   tar   tzdata   zlib-devel # buildkit
# Thu, 20 Aug 2026 17:07:29 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Thu, 20 Aug 2026 17:07:29 GMT
ARG SWIFT_PLATFORM=amazonlinux2
# Thu, 20 Aug 2026 17:07:29 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Thu, 20 Aug 2026 17:07:29 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Thu, 20 Aug 2026 17:07:29 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Thu, 20 Aug 2026 17:07:29 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Thu, 20 Aug 2026 17:08:23 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Thu, 20 Aug 2026 17:08:23 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:487930dafcbd912a1d47c9e792c2aea4e910496ba2af16620c70488227a4b1e7`  
		Last Modified: Wed, 19 Aug 2026 14:14:07 GMT  
		Size: 64.8 MB (64789116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:474326e9d8a2e0bc0cf473261abd50d4d828e25d9cab8aef97a3ab04223474d6`  
		Last Modified: Thu, 20 Aug 2026 17:10:53 GMT  
		Size: 310.0 MB (309960037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c06b78b3b54cf32b7d4aff5b64e08677341fb7d164b390426f2faeccf4920bab`  
		Last Modified: Tue, 30 Jun 2026 19:00:14 GMT  
		Size: 1.2 GB (1219591096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6419f1bf1db60bd3a61ac83c7d24d470eedb8507882ca5819331d3d36f0a4c8d`  
		Last Modified: Thu, 20 Aug 2026 17:10:48 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2` - unknown; unknown

```console
$ docker pull swift@sha256:b9712c472b4ce2bcaed8eb0f9cc1b576dd1db2698e19624c05e8fce9d458cacf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12596722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f187e28774c16f667567b3e8baa23e29fe40ed2fd8111a562e29b3a8c31b433`

```dockerfile
```

-	Layers:
	-	`sha256:2bcca11d9c46dc31c51bb820098851909832a7e10a37df9c2e5f0ec88229ee7d`  
		Last Modified: Thu, 20 Aug 2026 17:10:48 GMT  
		Size: 12.6 MB (12581755 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04fde0b7abbbe8c453725177a19804c2023c8cbdd4958bbad056e899280009b3`  
		Last Modified: Thu, 20 Aug 2026 17:10:47 GMT  
		Size: 15.0 KB (14967 bytes)  
		MIME: application/vnd.in-toto+json
