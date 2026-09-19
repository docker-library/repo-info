## `swift:noble`

```console
$ docker pull swift@sha256:64bab762bc73a3fda6d9ebc559258bd6d7660c10a705bb25ecacad2f99d066f9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:noble` - linux; amd64

```console
$ docker pull swift@sha256:3fd7537e088df14007e5c9dd71a1b4d91b19067df727b17294ae0f6ea79f6423
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1307846991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7065fb0d6add9ece6ebfbe552037265229d08970fa17f56f46ee9119b1beaa51`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 23:48:53 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 18 Sep 2026 23:48:53 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 18 Sep 2026 23:48:53 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     binutils     git     unzip     gnupg2     libc6-dev     libcurl4-openssl-dev     libedit2     libgcc-13-dev     libpython3-dev     libsqlite3-0     libstdc++-13-dev     libxml2-dev     libncurses-dev     libz3-dev     pkg-config     tzdata     zlib1g-dev     && rm -r /var/lib/apt/lists/* # buildkit
# Fri, 18 Sep 2026 23:48:53 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 18 Sep 2026 23:48:53 GMT
ARG SWIFT_PLATFORM=ubuntu24.04
# Fri, 18 Sep 2026 23:48:53 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Fri, 18 Sep 2026 23:48:53 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Fri, 18 Sep 2026 23:48:53 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 18 Sep 2026 23:48:53 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 18 Sep 2026 23:49:38 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl # buildkit
# Fri, 18 Sep 2026 23:49:38 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:289183af394ee3829ccc221d61a4a13fbc10da93771c0fd4b4b9ca7df64f9756`  
		Last Modified: Fri, 18 Sep 2026 23:52:06 GMT  
		Size: 132.2 MB (132177814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e595cf051237e6454420e670c2c06e66cfacc344167a5ed3e93bb41e527f518`  
		Last Modified: Fri, 18 Sep 2026 23:52:23 GMT  
		Size: 1.1 GB (1145904887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1ae42a3df15b031c9c92653ba674502325d89f981f58de1b510a1cf31035d9e`  
		Last Modified: Fri, 18 Sep 2026 23:52:01 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:noble` - unknown; unknown

```console
$ docker pull swift@sha256:bf7b3a326cf1e224a29de3c0b6cb788d365b2132f3c8082cb908396d84bbdb97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7865342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50d654a46ff16602b75c56102a9aaa9f58e334ca6708958a681c1ae9fb1ed02f`

```dockerfile
```

-	Layers:
	-	`sha256:8b207d2a3816562bf01e30d5e2b3dccaf6730a63f6e494153131d1d12fea632c`  
		Last Modified: Fri, 18 Sep 2026 23:52:01 GMT  
		Size: 7.8 MB (7849423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a131a0e47358828c3829bcbff569693991b18a514da5e46754a52ecaedcfc75c`  
		Last Modified: Fri, 18 Sep 2026 23:52:01 GMT  
		Size: 15.9 KB (15919 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:noble` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:cc05004fa7ee1b9be00702dc28e5edcd265bca62cab71c9e7fb015163ad2acfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1300218162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b2442cc24dd3b007684fe67500a34043633de9c9d4edc3cac6091867eee39d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 23:48:23 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 18 Sep 2026 23:48:23 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 18 Sep 2026 23:48:23 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     binutils     git     unzip     gnupg2     libc6-dev     libcurl4-openssl-dev     libedit2     libgcc-13-dev     libpython3-dev     libsqlite3-0     libstdc++-13-dev     libxml2-dev     libncurses-dev     libz3-dev     pkg-config     tzdata     zlib1g-dev     && rm -r /var/lib/apt/lists/* # buildkit
# Fri, 18 Sep 2026 23:48:23 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 18 Sep 2026 23:48:23 GMT
ARG SWIFT_PLATFORM=ubuntu24.04
# Fri, 18 Sep 2026 23:48:23 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Fri, 18 Sep 2026 23:48:23 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Fri, 18 Sep 2026 23:48:23 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 18 Sep 2026 23:48:23 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 18 Sep 2026 23:49:12 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl # buildkit
# Fri, 18 Sep 2026 23:49:12 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0de7804e1fa1dfe54312a4bf901758448925b1bb6c9094f9014b5ea2179e1782`  
		Last Modified: Fri, 18 Sep 2026 23:51:31 GMT  
		Size: 131.3 MB (131273778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f08136191e265031a8aece5564d30e26cd47564ec9497e570bae9daf80b19f`  
		Last Modified: Fri, 18 Sep 2026 23:51:47 GMT  
		Size: 1.1 GB (1140002630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0092fc76548f3d0c8473f039de044ae8dc459b50bd1cd6c0d368300b03e50aa9`  
		Last Modified: Fri, 18 Sep 2026 23:51:25 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:noble` - unknown; unknown

```console
$ docker pull swift@sha256:32e95bdb1c950b813b82d4ad2285caf969fa6d5c2e8e06be5fea261cda46182e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7887909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa8b5d2f2846270b8ee64c2e009c0e26175af828319baeb534887fe4172050b8`

```dockerfile
```

-	Layers:
	-	`sha256:a4b496ab832fcf8c9d1c52aaab7c8b70a4c7321f0bfa5d89c23968d2c1c14166`  
		Last Modified: Fri, 18 Sep 2026 23:51:26 GMT  
		Size: 7.9 MB (7871868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09f8d87089d8a50383cc797fcd589b3b186f72e152c454ec1e1f824198d11d46`  
		Last Modified: Fri, 18 Sep 2026 23:51:25 GMT  
		Size: 16.0 KB (16041 bytes)  
		MIME: application/vnd.in-toto+json
