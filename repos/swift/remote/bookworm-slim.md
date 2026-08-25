## `swift:bookworm-slim`

```console
$ docker pull swift@sha256:4c13d38dc99d9b46d2dc2ee025466354a873a4ec7f47343263bf66c2e9ed2091
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:bookworm-slim` - linux; amd64

```console
$ docker pull swift@sha256:5971e245fcafbcb40b714686bf7729f9e083cbd08f82a39a830d36317660d0c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.4 MB (123420578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4db7917826faa62b202406a37b376f0c95324b1a13c880b09156d930de4f61b5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:22:49 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 25 Aug 2026 01:22:49 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 25 Aug 2026 01:22:49 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:22:49 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 25 Aug 2026 01:22:49 GMT
ARG SWIFT_PLATFORM=debian12
# Tue, 25 Aug 2026 01:22:49 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Tue, 25 Aug 2026 01:22:49 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Tue, 25 Aug 2026 01:22:49 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 25 Aug 2026 01:22:49 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 25 Aug 2026 01:23:22 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f228747b65d2b4fb0f825e869bac93b7930c4df4ab882351261218d4c13df9`  
		Last Modified: Tue, 25 Aug 2026 01:23:35 GMT  
		Size: 23.7 MB (23662353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30cb79522be34132390ba94a2ac88a2b2ab6cad2f49ee1bbedf5f346052a8f48`  
		Last Modified: Tue, 25 Aug 2026 01:23:36 GMT  
		Size: 51.3 MB (51260863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:bookworm-slim` - unknown; unknown

```console
$ docker pull swift@sha256:ae8da10b0885af73be69e63c0bf9cfeee38e8dffb6d5c0f8b90cba9f34fafc57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4176173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c765eb63f28e5aae276f0327be3549e4cc9318e53088aab7b3554d9fdcb39fa`

```dockerfile
```

-	Layers:
	-	`sha256:92a160ccdbe4397ebbc32b38180a1d50782186e023f7ff42665f06ac8c9ae35b`  
		Last Modified: Tue, 25 Aug 2026 01:23:34 GMT  
		Size: 4.2 MB (4162247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:916b29132b1f3c354ce3620f061b1fb39798bc4342d2d48d5f554efc473fb143`  
		Last Modified: Tue, 25 Aug 2026 01:23:34 GMT  
		Size: 13.9 KB (13926 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:da94502984f1f05dbddc859d78911e727809d5409173bd9d2f9381a8665557fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122395256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2927f7f963c8ae3f49cce0d445bc26c4ad9dc76b99c7f73eb3a7f0bb1d8a904f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:27:04 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 25 Aug 2026 01:27:04 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 25 Aug 2026 01:27:04 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:27:04 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 25 Aug 2026 01:27:04 GMT
ARG SWIFT_PLATFORM=debian12
# Tue, 25 Aug 2026 01:27:04 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Tue, 25 Aug 2026 01:27:04 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Tue, 25 Aug 2026 01:27:04 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 25 Aug 2026 01:27:04 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 25 Aug 2026 01:27:41 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a1f64db56ceae7a9c19444a0f51495713631b35bba43e7a3d78818b3f978099`  
		Last Modified: Tue, 25 Aug 2026 01:27:57 GMT  
		Size: 23.5 MB (23464941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48748db3c8af67f7b749476ba51ffd026febcd99d21dac82fbf0f6524692432a`  
		Last Modified: Tue, 25 Aug 2026 01:27:58 GMT  
		Size: 50.5 MB (50546666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:bookworm-slim` - unknown; unknown

```console
$ docker pull swift@sha256:25bc9e1da150961244a095e743d6b9ec12c6b16c4f7196df4bed39ac9590b5ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4176557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b4217295115d0265167d0e0b15d9fdbb6a882bc89910f1bd8950dd31e43c657`

```dockerfile
```

-	Layers:
	-	`sha256:7cacb5de154e57b569cd479db02f1785a7ed858ee86bc966b2276f108bbffe3b`  
		Last Modified: Tue, 25 Aug 2026 01:27:57 GMT  
		Size: 4.2 MB (4162524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9ed9f21d2017f00c1268ddbb54051c8daf02bc30eb44d20b77ec23d283be8b8`  
		Last Modified: Tue, 25 Aug 2026 01:27:56 GMT  
		Size: 14.0 KB (14033 bytes)  
		MIME: application/vnd.in-toto+json
