## `swift:noble-slim`

```console
$ docker pull swift@sha256:a0c00d6efb3350c30ed1ae817cb7cffed69badc5148e7f67afef29a23f5ba2a6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:noble-slim` - linux; amd64

```console
$ docker pull swift@sha256:847603864a0e3150b412b369ffdd6a0ad8a9b5a2f208f91e02b7d115ce633aa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.0 MB (104952085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90870b14ed9ba1ea34030dc7020d3493cc53ecc084f0738a61f3f92c9412e896`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 20:28:51 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 13 Oct 2026 20:28:51 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 13 Oct 2026 20:28:51 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 20:28:51 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 13 Oct 2026 20:28:51 GMT
ARG SWIFT_PLATFORM=ubuntu24.04
# Tue, 13 Oct 2026 20:28:51 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Tue, 13 Oct 2026 20:28:51 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Tue, 13 Oct 2026 20:28:51 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 20:28:51 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 20:29:29 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gnupg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gnupg # buildkit
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3b9d5f638582923f6a52e87a0bd2c53837149266298769fc9a6f1e97cf44c4`  
		Last Modified: Tue, 13 Oct 2026 20:29:42 GMT  
		Size: 22.4 MB (22400720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf836be172cff64451fe235e0e4ab641beb2e521ac9817a049a3fb8e5c8fb77`  
		Last Modified: Tue, 13 Oct 2026 20:29:43 GMT  
		Size: 52.8 MB (52786943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:noble-slim` - unknown; unknown

```console
$ docker pull swift@sha256:ea8e220b9355aab5ab863fc22feb4881cf2e040a05e5b08690830608014a0b35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2494118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa7cfe599c4538e7ce041233da5163d0badeff135684161eec4092d8a3c34abf`

```dockerfile
```

-	Layers:
	-	`sha256:799d7480535e4a2e76a14ceb9807b744752a57ec43699d7b7b9a55d87fa2a6e6`  
		Last Modified: Tue, 13 Oct 2026 20:29:41 GMT  
		Size: 2.5 MB (2480176 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d67354237c07049d652896632d1c1d1baa035be78f846d29978e20a8ad8e178`  
		Last Modified: Tue, 13 Oct 2026 20:29:41 GMT  
		Size: 13.9 KB (13942 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:noble-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:5251a6cf77dd9a9736b33623e8f58ea5cfa1cf245fe323085abdf99f38cd4497
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.3 MB (103260877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbca315f3aa9a3d7d87d4c5b0e1310b421c1895413908e3ece53282afe40e988`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 20:28:29 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 13 Oct 2026 20:28:29 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 13 Oct 2026 20:28:29 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 20:28:29 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 13 Oct 2026 20:28:29 GMT
ARG SWIFT_PLATFORM=ubuntu24.04
# Tue, 13 Oct 2026 20:28:29 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Tue, 13 Oct 2026 20:28:29 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Tue, 13 Oct 2026 20:28:29 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 20:28:29 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 20:29:06 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gnupg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gnupg # buildkit
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a60ba3bdb188977a645c705eee7dda14abd4dd379c0642ad2fc59f34f8ba6532`  
		Last Modified: Tue, 13 Oct 2026 20:29:20 GMT  
		Size: 22.3 MB (22267273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2c644d1618abbedb36352fbf5e8937e246698469b8181714f287c1b58d7b53`  
		Last Modified: Tue, 13 Oct 2026 20:29:20 GMT  
		Size: 52.1 MB (52053517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:noble-slim` - unknown; unknown

```console
$ docker pull swift@sha256:59f30947a8532a6ad9f6a76ec526f9c14f343cc0595f04d76c6bb459c0cb362d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2495305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b94d0f8dba7daf0c999c2b97260029687f196fc0ef1094ff0dd4f20220205608`

```dockerfile
```

-	Layers:
	-	`sha256:082a7ca56901b9e5db160c32dc0529572e227df7aa8bfd031c0a40ffe202e3fd`  
		Last Modified: Tue, 13 Oct 2026 20:29:19 GMT  
		Size: 2.5 MB (2481256 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20831ff86243b2feb7bbc77e1fb8b66a2708db7bf7ef6178d758eac0ac44b4d0`  
		Last Modified: Tue, 13 Oct 2026 20:29:19 GMT  
		Size: 14.0 KB (14049 bytes)  
		MIME: application/vnd.in-toto+json
