## `swift:trixie-slim`

```console
$ docker pull swift@sha256:2d78638290b1aea12828b50d098b3b96b879087198317379663c9cc723c2cde0
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
$ docker pull swift@sha256:5798b2abe61411de1b96514353feba3c9d4c485d1ab82bf5c777c2573e4d6496
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.9 MB (117888459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9657508afd42e6e224cb926a0db64c91d36f29c6d0496ae39007f8768eefadcb`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:18:33 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 21 Oct 2026 01:18:33 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 21 Oct 2026 01:18:33 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:18:33 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 21 Oct 2026 01:18:33 GMT
ARG SWIFT_PLATFORM=debian13
# Wed, 21 Oct 2026 01:18:33 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Wed, 21 Oct 2026 01:18:33 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Wed, 21 Oct 2026 01:18:33 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 21 Oct 2026 01:18:33 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian13 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 21 Oct 2026 01:19:13 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian13 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af88898d215bb1e246b153a935427d0d2214b1d9e53e7b3b1bb2f9d1d451574`  
		Last Modified: Wed, 21 Oct 2026 01:19:28 GMT  
		Size: 9.8 MB (9828055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5d7a0bd15c76febac5e3097e6d5041548ffddf099251c36ac725d9e7b1cfc67`  
		Last Modified: Wed, 21 Oct 2026 01:19:30 GMT  
		Size: 58.3 MB (58298802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:trixie-slim` - unknown; unknown

```console
$ docker pull swift@sha256:0e38fa7537bb6b49e7ebe533f4da093411ea542d23a969ae786324b4b396e4b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4390502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:343ce524804710d6af87606dd23eed802a8b16d3e034166162f9c0cf139607b0`

```dockerfile
```

-	Layers:
	-	`sha256:a1092a3c357e48289bb40f5954d48f0d317376cfc349df48c580ab314f81f474`  
		Last Modified: Wed, 21 Oct 2026 01:19:28 GMT  
		Size: 4.4 MB (4376483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b77441a7d5c30550aa92c1eaf3bbcbc9c91d911214d38a8f405038f1cbd3800`  
		Last Modified: Wed, 21 Oct 2026 01:19:28 GMT  
		Size: 14.0 KB (14019 bytes)  
		MIME: application/vnd.in-toto+json
