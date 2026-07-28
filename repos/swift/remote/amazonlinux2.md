## `swift:amazonlinux2`

```console
$ docker pull swift@sha256:156dde320ce2508a83b64271e5519100d7a266158939ffdee43bdd2336a26cd6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:amazonlinux2` - linux; amd64

```console
$ docker pull swift@sha256:0415dee5ad3d84d731b60ce894a48ff43fe19bbd4ebb220d44ad08ea45b725d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 GB (1637505901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34abb1b07a08bf471db7c3ffaca5407cbd1de9a5361b56d64415d67cf4fa2306`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:37 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:38:04 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Mon, 27 Jul 2026 21:38:04 GMT
LABEL description=Docker Container for the Swift programming language
# Mon, 27 Jul 2026 21:38:04 GMT
RUN yum -y install   binutils   gcc   git   unzip   glibc-static   gzip   libbsd   libcurl-devel   libedit   libicu   libsqlite   libstdc++-static   libuuid   libxml2-devel   openssl-devel   tar   tzdata   zlib-devel # buildkit
# Mon, 27 Jul 2026 21:38:04 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Mon, 27 Jul 2026 21:38:04 GMT
ARG SWIFT_PLATFORM=amazonlinux2
# Mon, 27 Jul 2026 21:38:04 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Mon, 27 Jul 2026 21:38:04 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Mon, 27 Jul 2026 21:38:04 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Mon, 27 Jul 2026 21:38:04 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Mon, 27 Jul 2026 21:38:48 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Mon, 27 Jul 2026 21:38:48 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:ecb305a9fa099768e2ab2db16a63b4d1c27e400b85713b11b7acf4f08d3c4246`  
		Last Modified: Tue, 21 Jul 2026 12:36:19 GMT  
		Size: 63.0 MB (62956821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c689092180fc8228050ae3f33f490282fb2a4f1b483dcffc954aaffe7ab5192f`  
		Last Modified: Mon, 27 Jul 2026 21:41:22 GMT  
		Size: 337.7 MB (337698214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d33e8aa7d987461f245dc96471d60e0f6128ae368878020718eb933c49dac1c4`  
		Last Modified: Tue, 30 Jun 2026 19:00:52 GMT  
		Size: 1.2 GB (1236850692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af5793c315f8060aeec3db7f94e750e9020f132b7dfbca70d77815d598f6ad62`  
		Last Modified: Mon, 27 Jul 2026 21:41:14 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2` - unknown; unknown

```console
$ docker pull swift@sha256:2618724bfc267a93053c4f6be2abee059434bb34fccd98b5764057f48f5dc72c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12734949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10073036056fa133d8047c5724551280416893c42c2e426bfd7644f77b191f68`

```dockerfile
```

-	Layers:
	-	`sha256:78677e13d9bc160462eddf337dc2b4b5bc2590bd3f885d70ba8599dfa861b960`  
		Last Modified: Mon, 27 Jul 2026 21:41:15 GMT  
		Size: 12.7 MB (12720102 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43621b89501dcbe079e25c84a03b33053ab9f3632e6176c84900cd5086c0a02f`  
		Last Modified: Mon, 27 Jul 2026 21:41:15 GMT  
		Size: 14.8 KB (14847 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:amazonlinux2` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:f57c2f4152a6727074d354c8919d926c9be968c4415e372c9688bde7e5be78ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 GB (1593059574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49fc45301131df2a883532fe46e0aef85a029904d91f9db7075c29cbb4c01dae`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:38 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:38 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:37:09 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Mon, 27 Jul 2026 21:37:09 GMT
LABEL description=Docker Container for the Swift programming language
# Mon, 27 Jul 2026 21:37:09 GMT
RUN yum -y install   binutils   gcc   git   unzip   glibc-static   gzip   libbsd   libcurl-devel   libedit   libicu   libsqlite   libstdc++-static   libuuid   libxml2-devel   openssl-devel   tar   tzdata   zlib-devel # buildkit
# Mon, 27 Jul 2026 21:37:09 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Mon, 27 Jul 2026 21:37:09 GMT
ARG SWIFT_PLATFORM=amazonlinux2
# Mon, 27 Jul 2026 21:37:09 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Mon, 27 Jul 2026 21:37:09 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Mon, 27 Jul 2026 21:37:09 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Mon, 27 Jul 2026 21:37:09 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Mon, 27 Jul 2026 21:37:58 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Mon, 27 Jul 2026 21:37:58 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:0a46a1a412d5f6c5cdb7477c659ba32441211eaf54fce3b67c715aed53a63deb`  
		Last Modified: Fri, 24 Jul 2026 16:24:54 GMT  
		Size: 64.8 MB (64800064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3c3570f7f0c64b3a73cabe341e7d138ce7a6bd9caf3a2f61f469e1d407a5823`  
		Last Modified: Mon, 27 Jul 2026 21:40:34 GMT  
		Size: 308.7 MB (308668241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c06b78b3b54cf32b7d4aff5b64e08677341fb7d164b390426f2faeccf4920bab`  
		Last Modified: Tue, 30 Jun 2026 19:00:14 GMT  
		Size: 1.2 GB (1219591096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c6d2497b44aaae08b2bf54f83bcdd6b3438f2d8019b13ebb450a15c525cb12f`  
		Last Modified: Mon, 27 Jul 2026 21:40:28 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2` - unknown; unknown

```console
$ docker pull swift@sha256:3d4ef796735d7d7d029e4a87cac19ead9dac9bbc8c9214a552b1eab13a6b89aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12596708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fc68687681b61d0ac4e590656bda71435b8b079366e922581001cb66182f4d2`

```dockerfile
```

-	Layers:
	-	`sha256:564eaeeec33054cf01a94bc03d4655ed143392c30c64e4578119548d38eb2520`  
		Last Modified: Mon, 27 Jul 2026 21:40:28 GMT  
		Size: 12.6 MB (12581739 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9f791f037b90b593e032833f129555c62784cba592b0bba6f85050d63711f29`  
		Last Modified: Mon, 27 Jul 2026 21:40:28 GMT  
		Size: 15.0 KB (14969 bytes)  
		MIME: application/vnd.in-toto+json
