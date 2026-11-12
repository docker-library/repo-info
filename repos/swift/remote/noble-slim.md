## `swift:noble-slim`

```console
$ docker pull swift@sha256:53a2491a6437781cb13fc8415e1482a842c930976b650290d55995f0604f8388
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:noble-slim` - linux; amd64

```console
$ docker pull swift@sha256:080275b547dac3b3ae4ef63592b3276fede7bd687e3718f9452ce16673da9fde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.6 MB (102552498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d58c709b69fd065dcc0535ae2ac305d1c9b5547ebaa2c815c4397946123b22`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 17:30:15 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 30 Oct 2026 17:30:15 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 30 Oct 2026 17:30:15 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Fri, 30 Oct 2026 17:30:15 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 30 Oct 2026 17:30:15 GMT
ARG SWIFT_PLATFORM=ubuntu24.04
# Fri, 30 Oct 2026 17:30:15 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Fri, 30 Oct 2026 17:30:15 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Fri, 30 Oct 2026 17:30:15 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 30 Oct 2026 17:30:15 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 30 Oct 2026 17:30:51 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gnupg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gnupg # buildkit
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39260c0ad1df2878c445a2139f6edb25e389b4e8061d26fbf9764f05135bf051`  
		Last Modified: Fri, 30 Oct 2026 17:31:04 GMT  
		Size: 20.0 MB (19987928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aa96f9e3a07810ead5513807e99b530d6e6ff20ac4596bce84bc4a4b8ce37d2`  
		Last Modified: Fri, 30 Oct 2026 17:31:05 GMT  
		Size: 52.8 MB (52796958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:noble-slim` - unknown; unknown

```console
$ docker pull swift@sha256:c5e19ab118bb619436f7ae722397b5ad1c526ff1c0f1e107f718ea0fa5ea1fbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2493492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf028aa16f6cbdd0512cd5ad48ff8b6d55e8595410218ea9c2dcd86f336962b9`

```dockerfile
```

-	Layers:
	-	`sha256:f09a4086198cee394cd674ca13bd14aefe39f2dc3cc960666f72c894f13729b2`  
		Last Modified: Fri, 30 Oct 2026 17:31:03 GMT  
		Size: 2.5 MB (2479550 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b44850727a6e15a7d913a856799ea8b207d672e4f4cff6ceadbe85ae62275c0a`  
		Last Modified: Fri, 30 Oct 2026 17:31:03 GMT  
		Size: 13.9 KB (13942 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:noble-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:41bddaee46641bd4686da81cfd897baf0ba860ebdc303e398506a8f1b835fc7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.0 MB (101036182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd6270a1fe671970c7130a9be15e9e70a295dab3febf1ddfc39ddc919058aa45`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:44:23 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 11 Nov 2026 23:44:23 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 11 Nov 2026 23:44:23 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:44:23 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 11 Nov 2026 23:44:23 GMT
ARG SWIFT_PLATFORM=ubuntu24.04
# Wed, 11 Nov 2026 23:44:23 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Wed, 11 Nov 2026 23:44:23 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Wed, 11 Nov 2026 23:44:23 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 11 Nov 2026 23:44:23 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 11 Nov 2026 23:45:00 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gnupg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gnupg # buildkit
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b27f6d55dc41ffccb767d54542c89dcb571db65fc1cdf9424283e9ee5da6404`  
		Last Modified: Wed, 11 Nov 2026 23:45:14 GMT  
		Size: 20.0 MB (20010909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1000a0fea2beed0827d50bd9efe27aad81d3b5188eff8d6f3fd83b4115c0229`  
		Last Modified: Wed, 11 Nov 2026 23:45:15 GMT  
		Size: 52.1 MB (52060015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:noble-slim` - unknown; unknown

```console
$ docker pull swift@sha256:375e98d86d34df70427a1bb94538a93c999c8c87061bc11397bb7641272867a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2495282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cacdb8365a762757f4cd4b551d1c1aab89178f5853b6e8d728545b5bea88778`

```dockerfile
```

-	Layers:
	-	`sha256:2c1bc05197be8e3f2df765d68f5843e80e29a6f2f53b2549d1b4c9d22934806c`  
		Last Modified: Wed, 11 Nov 2026 23:45:13 GMT  
		Size: 2.5 MB (2481234 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7f1a12b04582f434e82d976b58e3040d8598ca380609e9a63eaa839c09831ab`  
		Last Modified: Wed, 11 Nov 2026 23:45:13 GMT  
		Size: 14.0 KB (14048 bytes)  
		MIME: application/vnd.in-toto+json
