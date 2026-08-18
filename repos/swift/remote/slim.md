## `swift:slim`

```console
$ docker pull swift@sha256:c2b5f7c9e24f4af9ff27bfb2bff4b04d5115673f06248fd2a7423819918b7ecd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:slim` - linux; amd64

```console
$ docker pull swift@sha256:7cb862760b9ed1dba98e4b73bcd061441a94b02c6b94ed60a3377f39a27c0d33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101061758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8083d54cfed400964e61ea7e3ae33490f3aef2e4cb3de90b79f98db24e8dd7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:29:40 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 18 Aug 2026 19:29:40 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 18 Aug 2026 19:29:40 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:29:40 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 18 Aug 2026 19:29:40 GMT
ARG SWIFT_PLATFORM=ubuntu24.04
# Tue, 18 Aug 2026 19:29:40 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Tue, 18 Aug 2026 19:29:40 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Tue, 18 Aug 2026 19:29:40 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 18 Aug 2026 19:29:40 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 18 Aug 2026 19:30:15 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gnupg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gnupg # buildkit
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21fce8d96393465c537ef5fa75a36ce8696d4c07d95022a57c285552aba3be5b`  
		Last Modified: Tue, 18 Aug 2026 19:30:28 GMT  
		Size: 20.0 MB (19983680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0567210ce10b4049fbbc43a575a53948ba0d3ce56e27627ab1471e069d2a9947`  
		Last Modified: Tue, 18 Aug 2026 19:30:29 GMT  
		Size: 51.3 MB (51325271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:slim` - unknown; unknown

```console
$ docker pull swift@sha256:a3445a2051471fac8ef8a336577b39d6947995f017a8dba9b1b38543ad8ffae7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2495882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c8ecc29715163aa3641cc82a953bd14669c033f295d9ee657e55f1d6042d7c3`

```dockerfile
```

-	Layers:
	-	`sha256:17df492afc0374d8340c1d156c4e980419485a1a779b8c3bf48302babc08d894`  
		Last Modified: Tue, 18 Aug 2026 19:30:27 GMT  
		Size: 2.5 MB (2481044 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc5d25eb77b0169be3e838cbadccd8629fc11ae79bc700f20efebf56848af629`  
		Last Modified: Tue, 18 Aug 2026 19:30:27 GMT  
		Size: 14.8 KB (14838 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:549e26a15b3170f87ccddc94db517909b7e84d28718f0c637f355bca3701a845
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.5 MB (99510449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:642d373130a9f05097737ac2f679432de2f75538b1dcbd987cb6426e0c0ac137`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:29:59 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 18 Aug 2026 19:29:59 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 18 Aug 2026 19:29:59 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:29:59 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 18 Aug 2026 19:29:59 GMT
ARG SWIFT_PLATFORM=ubuntu24.04
# Tue, 18 Aug 2026 19:29:59 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Tue, 18 Aug 2026 19:29:59 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Tue, 18 Aug 2026 19:29:59 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 18 Aug 2026 19:29:59 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 18 Aug 2026 19:30:33 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gnupg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gnupg # buildkit
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3529c9ea3b8bf90120500b87c4986d6a8c84c86ef933962d0ecd55d5d57bb3e`  
		Last Modified: Tue, 18 Aug 2026 19:30:46 GMT  
		Size: 20.0 MB (20006119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f72440b2545478b562e63850d4397e06b6b8196968c28c40badf1ef7c7b2839`  
		Last Modified: Tue, 18 Aug 2026 19:30:47 GMT  
		Size: 50.6 MB (50617095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:slim` - unknown; unknown

```console
$ docker pull swift@sha256:ca81a3c952db62966cfc1f62de0cdef8b3d90e0e20ac097574c89e34ad6b8609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2497141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:772bc5bbf16df8fe533d7efd0486ef2915df9f5dd6e28cea5adaab19913f1274`

```dockerfile
```

-	Layers:
	-	`sha256:59e84b65d42b6714493dfe46ab1fa0010152cf06a94326ce181be79a37d2b70b`  
		Last Modified: Tue, 18 Aug 2026 19:30:45 GMT  
		Size: 2.5 MB (2482160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d3acd948e91334e44ab6f733a1e4e60e6f12866d664504bd4db892ef87e3ca6`  
		Last Modified: Tue, 18 Aug 2026 19:30:45 GMT  
		Size: 15.0 KB (14981 bytes)  
		MIME: application/vnd.in-toto+json
