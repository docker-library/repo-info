## `swift:noble-slim`

```console
$ docker pull swift@sha256:2bae57bd68ac95daa2d4aa2c7c590d4cf366c6007b4e5bc355e6cbe4dad16dcb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:noble-slim` - linux; amd64

```console
$ docker pull swift@sha256:b0c39d864d1fbcaaf00f357903328597cb1fb54a8157b4615fbdcfba3a117db5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.7 MB (102666942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37a78c68ea0468801efa2e4cc63ce6bc9b43f182d28c9195200ad979430699b8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 20:07:02 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 20 Nov 2026 20:07:02 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 20 Nov 2026 20:07:02 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 20:07:02 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 20 Nov 2026 20:07:02 GMT
ARG SWIFT_PLATFORM=ubuntu24.04
# Fri, 20 Nov 2026 20:07:02 GMT
ARG SWIFT_BRANCH=swift-6.4.3-release
# Fri, 20 Nov 2026 20:07:02 GMT
ARG SWIFT_VERSION=swift-6.4.3-RELEASE
# Fri, 20 Nov 2026 20:07:02 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 20 Nov 2026 20:07:02 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 20 Nov 2026 20:07:34 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gnupg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gnupg # buildkit
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5808bab214e62fb3a9f0ad6b6db9ff595ae9562ec789f46d9564ea81eaa37101`  
		Last Modified: Fri, 20 Nov 2026 20:07:46 GMT  
		Size: 20.0 MB (19988773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:647f4edeadf157bd9175426343d47ec81a53d6b3d36efb4605a9fba83b1c82a0`  
		Last Modified: Fri, 20 Nov 2026 20:07:47 GMT  
		Size: 52.9 MB (52884872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:noble-slim` - unknown; unknown

```console
$ docker pull swift@sha256:903d9228a304fec4e8c43361c73961acce6c5b189b5505fba0d635c944ea7658
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2494112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5693aaecb681064686a5786cfb1eb861b196ef635a167a28db28591ba58311ff`

```dockerfile
```

-	Layers:
	-	`sha256:46fc70ebcf8cdab112a42e7a94c2545c9cb348ddf2bf2064a592c83a579a6b79`  
		Last Modified: Fri, 20 Nov 2026 20:07:45 GMT  
		Size: 2.5 MB (2480154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:874dc129119307354c6e19740c71f2004267c1dfe9f79fa33426bec26662ea34`  
		Last Modified: Fri, 20 Nov 2026 20:07:45 GMT  
		Size: 14.0 KB (13958 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:noble-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:03f359806381ce1da448be78011db6fc97bc58d92b70712a48766246e3502e72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101123464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0101c8fe9dae778af6caa01412b0e9abaf1d24c7220c26beb0aec0c54870e00a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 20:02:18 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 20 Nov 2026 20:02:18 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 20 Nov 2026 20:02:18 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 20:02:18 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 20 Nov 2026 20:02:18 GMT
ARG SWIFT_PLATFORM=ubuntu24.04
# Fri, 20 Nov 2026 20:02:18 GMT
ARG SWIFT_BRANCH=swift-6.4.3-release
# Fri, 20 Nov 2026 20:02:18 GMT
ARG SWIFT_VERSION=swift-6.4.3-RELEASE
# Fri, 20 Nov 2026 20:02:18 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 20 Nov 2026 20:02:18 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 20 Nov 2026 20:03:05 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gnupg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gnupg # buildkit
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:691c76185206cecbd28f1bb5f3e162ade16a4c53dd2a39d0a6f1cbdc414cf9eb`  
		Last Modified: Fri, 20 Nov 2026 20:03:18 GMT  
		Size: 20.0 MB (20010882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46d6418246a04298db11b2275310d57577c4f3bd0610d51fb4e0e025a4b11e93`  
		Last Modified: Fri, 20 Nov 2026 20:03:19 GMT  
		Size: 52.1 MB (52147264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:noble-slim` - unknown; unknown

```console
$ docker pull swift@sha256:9536c35fd44ebdd907484302b3b053661e104b9264fb0b5d3caac7f95643e202
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2495298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78e1a82e2cb18f9e1857b990926e03b8d8747595bca88cd258d56e82dc17699a`

```dockerfile
```

-	Layers:
	-	`sha256:2be6d44b8efe9859c522ad108df89bc3ab537ff866244ff61afc7a2b4b728381`  
		Last Modified: Fri, 20 Nov 2026 20:03:18 GMT  
		Size: 2.5 MB (2481234 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57dbb7f16bf544028460aa53cbed8087d4789bbf97f37e539183fcfa82be200b`  
		Last Modified: Fri, 20 Nov 2026 20:03:17 GMT  
		Size: 14.1 KB (14064 bytes)  
		MIME: application/vnd.in-toto+json
