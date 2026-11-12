## `swift:jammy`

```console
$ docker pull swift@sha256:7c9d2581773cc1a41b5ebf07bb1864d041a5d8c9244496db17af64a3f248f94a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:jammy` - linux; amd64

```console
$ docker pull swift@sha256:55d8bba1cf6dec6b9917bad24675ffe7791909241becd0b5ae42d4b286e9c70b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1350173440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09b589ecb45442a0325a31f0d2cf26b1e3343e2ce6f635889c48fc1502eea603`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 17:30:50 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 30 Oct 2026 17:30:50 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 30 Oct 2026 17:30:50 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     binutils     git     unzip     gnupg2     libc6-dev     libcurl4-openssl-dev     libedit2     libgcc-11-dev     libpython3-dev     libsqlite3-0     libstdc++-11-dev     libxml2-dev     libz3-dev     pkg-config     python3-lldb-13     tzdata     zlib1g-dev     && rm -r /var/lib/apt/lists/* # buildkit
# Fri, 30 Oct 2026 17:30:50 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 30 Oct 2026 17:30:50 GMT
ARG SWIFT_PLATFORM=ubuntu22.04
# Fri, 30 Oct 2026 17:30:50 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Fri, 30 Oct 2026 17:30:50 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Fri, 30 Oct 2026 17:30:50 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 30 Oct 2026 17:30:50 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu22.04 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 30 Oct 2026 17:31:35 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu22.04 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl # buildkit
# Fri, 30 Oct 2026 17:31:35 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu22.04 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2e2c83c16474021304dc9a92dc98d8387b6b8066c040977bdbcd5095f73daf9`  
		Last Modified: Fri, 30 Oct 2026 17:33:54 GMT  
		Size: 175.8 MB (175770278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b96b38c7d496f34f34061eb72b99eb2f99fca749e22a6d744fce812bd61e38f2`  
		Last Modified: Fri, 30 Oct 2026 17:34:09 GMT  
		Size: 1.1 GB (1144650500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e53f8c1aa3b44e6cbe1be35105958e21f73286375c7cb103437d519c21457a8`  
		Last Modified: Fri, 30 Oct 2026 17:33:48 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:jammy` - unknown; unknown

```console
$ docker pull swift@sha256:236689d0ef87fd679ecf72332ddb0aabfacd917788fa7ae93eee46ccfbf18a3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8476585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bda9303efbe2d14ef43d9a9afef679d301a6c90b8e3eb4a918a5f9be902ca2ab`

```dockerfile
```

-	Layers:
	-	`sha256:121c6ecf534de5456dd5a7643bffca21a5ad7d38b5b05ee8fc5d75ae3ac7e974`  
		Last Modified: Fri, 30 Oct 2026 17:33:48 GMT  
		Size: 8.5 MB (8460665 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:951e837e7281c31c711073c3fac59af8e440b2fe12ed4ef2261703f8d5386479`  
		Last Modified: Fri, 30 Oct 2026 17:33:48 GMT  
		Size: 15.9 KB (15920 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:jammy` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:61f2810b272a1c78607c8165e4cc3e81acc5b628916475859a09862878a23ba2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1339165245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bc0624db0df23bed35a122d30ce220581d3cb4574844d693b8b8d4087e94d69`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:45:45 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 11 Nov 2026 23:45:45 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 11 Nov 2026 23:45:45 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     binutils     git     unzip     gnupg2     libc6-dev     libcurl4-openssl-dev     libedit2     libgcc-11-dev     libpython3-dev     libsqlite3-0     libstdc++-11-dev     libxml2-dev     libz3-dev     pkg-config     python3-lldb-13     tzdata     zlib1g-dev     && rm -r /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:45:45 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 11 Nov 2026 23:45:45 GMT
ARG SWIFT_PLATFORM=ubuntu22.04
# Wed, 11 Nov 2026 23:45:45 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Wed, 11 Nov 2026 23:45:45 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Wed, 11 Nov 2026 23:45:45 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 11 Nov 2026 23:45:45 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu22.04 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 11 Nov 2026 23:46:31 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu22.04 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl # buildkit
# Wed, 11 Nov 2026 23:46:31 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu22.04 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cedba2268746b577e9d0ae92d9a585c8d97bd300f89e7f5df5502518cf3f57cb`  
		Last Modified: Wed, 11 Nov 2026 23:48:54 GMT  
		Size: 172.1 MB (172087756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677c964c3e7a44199dae61be8a1a4fa31188f31a1c9b55875f93bb14ea7f8393`  
		Last Modified: Wed, 11 Nov 2026 23:49:14 GMT  
		Size: 1.1 GB (1139075902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb3b8bb473a9a2f95611bdf13dd184a4b4fec6eb6233ee822ebcfc0e465bc927`  
		Last Modified: Wed, 11 Nov 2026 23:48:46 GMT  
		Size: 175.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:jammy` - unknown; unknown

```console
$ docker pull swift@sha256:e3a6a9a670f68a36b7028b3f5752962265c3f6d1de85289a02744920559a23b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8473005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acc68868238edb2daab3b5a4e068585036c0fd87afb49ff954cbe007c9593376`

```dockerfile
```

-	Layers:
	-	`sha256:16c7b75798dfea30b6b849aa511f8aa77b4d75d5b790e4b58ccd1012aeb65f4c`  
		Last Modified: Wed, 11 Nov 2026 23:48:47 GMT  
		Size: 8.5 MB (8456963 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:807af1d6bec3b7551a564e767f3c55b3aeba7fc60ec90127fed4b55d6cc8029a`  
		Last Modified: Wed, 11 Nov 2026 23:48:46 GMT  
		Size: 16.0 KB (16042 bytes)  
		MIME: application/vnd.in-toto+json
