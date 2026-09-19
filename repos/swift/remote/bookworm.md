## `swift:bookworm`

```console
$ docker pull swift@sha256:4f4120422396f62788ef459c75fe1a47f8746471c224fdc2a7dd8dd2e07f7efd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:bookworm` - linux; amd64

```console
$ docker pull swift@sha256:89dab413be2e9f37057ce118a0941cc045775239e874e6124958ff83e3b6d1ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1392356056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca8f2c078c11898191d96472da784bed5bbd6cdb61f2eceabd3d7b47bfdfe44`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:09:30 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Sat, 19 Sep 2026 01:09:30 GMT
LABEL description=Docker Container for the Swift programming language
# Sat, 19 Sep 2026 01:09:30 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     binutils     libicu-dev     libcurl4-openssl-dev     libedit-dev     libsqlite3-dev     libncurses-dev     libpython3-dev     libxml2-dev     pkg-config     uuid-dev     tzdata     git     gcc     libstdc++-12-dev     && rm -r /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:09:30 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Sat, 19 Sep 2026 01:09:30 GMT
ARG SWIFT_PLATFORM=debian12
# Sat, 19 Sep 2026 01:09:30 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Sat, 19 Sep 2026 01:09:30 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Sat, 19 Sep 2026 01:09:30 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Sat, 19 Sep 2026 01:09:30 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Sat, 19 Sep 2026 01:10:14 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
# Sat, 19 Sep 2026 01:10:14 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32f27019bc7d348f5ef5e5f9d5b7b4400b8a5e079862fa2ef8736841209fbe1d`  
		Last Modified: Sat, 19 Sep 2026 01:12:44 GMT  
		Size: 198.6 MB (198585758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f0c4259811fe29ffadd452de8d8e437cda1c63d157d4fb111eebda3750bb356`  
		Last Modified: Sat, 19 Sep 2026 01:13:00 GMT  
		Size: 1.1 GB (1145266685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf9048f07505d55e3d27fce108be0358c92985d4a5ead9d0a85d652227fb3e13`  
		Last Modified: Sat, 19 Sep 2026 01:12:37 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:bookworm` - unknown; unknown

```console
$ docker pull swift@sha256:6b98671b64cbeb6acef0d974475c0a77bd82622e6d01aaa4f3de64465c3c8839
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11335296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ec5f9f9b12324361c31ee78d086e4ed596beefc2642d63fde8f312da11887b`

```dockerfile
```

-	Layers:
	-	`sha256:f89546bfa394c8fa1412d8785b6e036a925c2a4175398ae2315dfd6b3a73ed5f`  
		Last Modified: Sat, 19 Sep 2026 01:12:38 GMT  
		Size: 11.3 MB (11319573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d98ba9e870e515f30a151be00eb348a0727de3208e29b752b5668606c4dcc8f`  
		Last Modified: Sat, 19 Sep 2026 01:12:37 GMT  
		Size: 15.7 KB (15723 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:bookworm` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:03ff00dca5a20c9671515c146ff6639007df808adfcfc5d1c12f3480b08c034d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1378646634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:387fe1b9c7bd51bcddfc7f05b657d6bb91d37a3ba55ef9de4cb8697800897731`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:16:43 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Sat, 19 Sep 2026 01:16:43 GMT
LABEL description=Docker Container for the Swift programming language
# Sat, 19 Sep 2026 01:16:43 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     binutils     libicu-dev     libcurl4-openssl-dev     libedit-dev     libsqlite3-dev     libncurses-dev     libpython3-dev     libxml2-dev     pkg-config     uuid-dev     tzdata     git     gcc     libstdc++-12-dev     && rm -r /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:16:43 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Sat, 19 Sep 2026 01:16:43 GMT
ARG SWIFT_PLATFORM=debian12
# Sat, 19 Sep 2026 01:16:43 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Sat, 19 Sep 2026 01:16:43 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Sat, 19 Sep 2026 01:16:43 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Sat, 19 Sep 2026 01:16:43 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Sat, 19 Sep 2026 01:17:29 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
# Sat, 19 Sep 2026 01:17:30 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03bf1bf102fdc71365b7411abc3addd640e02daaecf08e6cdb2ede1ebc8bbc16`  
		Last Modified: Sat, 19 Sep 2026 01:19:53 GMT  
		Size: 190.8 MB (190822624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fe2c10467cc750a46fcf3313f4d06e80e49053dad71beb7ad55a2a7134846d1`  
		Last Modified: Sat, 19 Sep 2026 01:20:11 GMT  
		Size: 1.1 GB (1139433925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1a1bd2be7b571758cec2f97dcf1395fa1bb056ca36b98489f56942e680a712`  
		Last Modified: Sat, 19 Sep 2026 01:19:46 GMT  
		Size: 175.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:bookworm` - unknown; unknown

```console
$ docker pull swift@sha256:7e4af1ca63a246fc18776bcc66f2e382deb3cd2b7b52674c51fa9fa311b99f97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11363423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b423dcd5a31601fff5fa1b6a660c2478c4014e20e39fa54ecfa96f6fcabf1638`

```dockerfile
```

-	Layers:
	-	`sha256:53000c396985045a6610944602ea31da06f3c6163975049a89f89c784946ef1b`  
		Last Modified: Sat, 19 Sep 2026 01:19:46 GMT  
		Size: 11.3 MB (11347578 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ce7af93315e3abc7c352a639a66a27c621ea9315de970dbe997e62e37c4266d`  
		Last Modified: Sat, 19 Sep 2026 01:19:45 GMT  
		Size: 15.8 KB (15845 bytes)  
		MIME: application/vnd.in-toto+json
