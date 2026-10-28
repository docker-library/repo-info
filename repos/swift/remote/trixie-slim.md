## `swift:trixie-slim`

```console
$ docker pull swift@sha256:a3db4a723ee8a5bd535d575ef3092f037c0edf6b6f8be125ba513c90a0c0b6fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:trixie-slim` - linux; amd64

```console
$ docker pull swift@sha256:93224f337aff8344eb46f146a984f2f0f9a906b0996d8c520cfea256310c1a88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.5 MB (118493677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7221c82f9abf0723aebaadd1521ffc872f363110cd89b482e7f8a05c4a34ad26`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:06:46 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 28 Oct 2026 02:06:46 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 28 Oct 2026 02:06:46 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:06:46 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 28 Oct 2026 02:06:46 GMT
ARG SWIFT_PLATFORM=debian13
# Wed, 28 Oct 2026 02:06:46 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Wed, 28 Oct 2026 02:06:46 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Wed, 28 Oct 2026 02:06:46 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 28 Oct 2026 02:06:46 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian13 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 28 Oct 2026 02:07:19 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian13 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f73a7922b4d7e4d80d8419cd4030e37a77922f9be8ad8dcdc5766b5035279e69`  
		Last Modified: Wed, 28 Oct 2026 02:07:32 GMT  
		Size: 9.9 MB (9921896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99f1a5293b708f066c76a81f97752700650cb53e6349e9445e08ec9bd5548dbf`  
		Last Modified: Wed, 28 Oct 2026 02:07:34 GMT  
		Size: 59.2 MB (59163886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:trixie-slim` - unknown; unknown

```console
$ docker pull swift@sha256:083c8c3f692a08f1fd15ff215bcc0afdabcd6cbd81668e5d107bedc8ac61cbf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4388705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8d49400a40ba460b3de26640c33220619e7174d8d7587de44652cdbde845a1b`

```dockerfile
```

-	Layers:
	-	`sha256:09ef6db6c7345e39d16aa99f110d0a9efb431475e1645f71d88cce0990e4cbf9`  
		Last Modified: Wed, 28 Oct 2026 02:07:32 GMT  
		Size: 4.4 MB (4374793 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41af785bf245269ea12fa85adcc96bffadccff27a48999391eca61c37b141473`  
		Last Modified: Wed, 28 Oct 2026 02:07:32 GMT  
		Size: 13.9 KB (13912 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:trixie-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:7dacbc929897baf7d69a75a95401051089ab0bf767e0b885af0110fc51386dfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.9 MB (117905359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eab8b06242ea32fe7544fbfc8a38a3f6d35865e7c7c279d0e66972e62f1930e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:12:07 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 28 Oct 2026 02:12:07 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 28 Oct 2026 02:12:07 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:12:07 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 28 Oct 2026 02:12:07 GMT
ARG SWIFT_PLATFORM=debian13
# Wed, 28 Oct 2026 02:12:07 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Wed, 28 Oct 2026 02:12:07 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Wed, 28 Oct 2026 02:12:07 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 28 Oct 2026 02:12:07 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian13 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 28 Oct 2026 02:12:41 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian13 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:799bc92eca8754eb7f7996ef61831921cc492d8afd7bc60d8c152b55863b3d30`  
		Last Modified: Wed, 28 Oct 2026 02:12:54 GMT  
		Size: 9.8 MB (9830260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac2f4baeba6254e627c9a076d821f9a6aef81b78dd7ddb1f607e6352450bcc12`  
		Last Modified: Wed, 28 Oct 2026 02:12:55 GMT  
		Size: 58.3 MB (58298920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:trixie-slim` - unknown; unknown

```console
$ docker pull swift@sha256:ad1ad461593b532f9913f0f32046e3ccabc503be5a810f4d00843576a71cfe9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4389726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b388fe405c9670db688e0c2e53983f9bf938819d3eca64966c82bdff22f25b9f`

```dockerfile
```

-	Layers:
	-	`sha256:603bf52918e17665bd1e3994ce545336297f6fc5756e5b4c6b9ffb637e4e8a9c`  
		Last Modified: Wed, 28 Oct 2026 02:12:54 GMT  
		Size: 4.4 MB (4375707 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bbc3e777bf7e2c7e61678238b395cbf62e17787ca630783d63e3c90f77a37a36`  
		Last Modified: Wed, 28 Oct 2026 02:12:53 GMT  
		Size: 14.0 KB (14019 bytes)  
		MIME: application/vnd.in-toto+json
