## `swift:bookworm`

```console
$ docker pull swift@sha256:0701b8097644eb5a28aae4a3e6efd768327489354958babfed4c49840e63195e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:bookworm` - linux; amd64

```console
$ docker pull swift@sha256:9ff4c9c64dab4fc8c1df284b6f13f5d3639cd87fe8b284ad063bd063cc12b76c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1392511596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d27733927688598e86ce796844ea057cf7002561886346f2be78095aaac847c6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:06:16 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 28 Oct 2026 02:06:16 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 28 Oct 2026 02:06:16 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     binutils     libicu-dev     libcurl4-openssl-dev     libedit-dev     libsqlite3-dev     libncurses-dev     libpython3-dev     libxml2-dev     pkg-config     uuid-dev     tzdata     git     gcc     libstdc++-12-dev     && rm -r /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:06:16 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 28 Oct 2026 02:06:16 GMT
ARG SWIFT_PLATFORM=debian12
# Wed, 28 Oct 2026 02:06:16 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Wed, 28 Oct 2026 02:06:16 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Wed, 28 Oct 2026 02:06:16 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 28 Oct 2026 02:06:16 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 28 Oct 2026 02:07:01 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
# Wed, 28 Oct 2026 02:07:02 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8302df9057519ac735bf98551a2870335d1398a709e6617c7e63322430aa7f`  
		Last Modified: Wed, 28 Oct 2026 02:09:40 GMT  
		Size: 198.7 MB (198692226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc602ba143704279c883b6f433d49e167994d4eb55aa9e299e46298b17957b4a`  
		Last Modified: Wed, 28 Oct 2026 02:09:56 GMT  
		Size: 1.1 GB (1145294644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e808e88376a4da86756fc8b29cf35f35d24527e58e01d8e439d9d4cda7eeb09e`  
		Last Modified: Wed, 28 Oct 2026 02:09:33 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:bookworm` - unknown; unknown

```console
$ docker pull swift@sha256:203a4251bc6957cfbabf893d49e306b527a2c66d391f857fd4bbca2a4cd093a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11333229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8de929a7dad09863337d2bef7d689276f31ad79e748c0ce1b40bc170fc95b2d8`

```dockerfile
```

-	Layers:
	-	`sha256:18e436748fef09afd5d7fde4a2df2a7013cc2ddb24169e9934eaa04f498ba94d`  
		Last Modified: Wed, 28 Oct 2026 02:09:34 GMT  
		Size: 11.3 MB (11317506 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ad5a58dc645e6d73d6618c37bd5bac4061df6740294ff0189ba6f8b319e4931`  
		Last Modified: Wed, 28 Oct 2026 02:09:33 GMT  
		Size: 15.7 KB (15723 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:bookworm` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:f2ac1a3908f968cb18af49586108d361b6b9fae0f2045b05b31963533b01e616
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1378549506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df91b78839ed0c96f12054e0325f15e9a9afbc394495f896c6f1bf35566778f7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:18:41 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 21 Oct 2026 01:18:41 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 21 Oct 2026 01:18:41 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     binutils     libicu-dev     libcurl4-openssl-dev     libedit-dev     libsqlite3-dev     libncurses-dev     libpython3-dev     libxml2-dev     pkg-config     uuid-dev     tzdata     git     gcc     libstdc++-12-dev     && rm -r /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:18:41 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 21 Oct 2026 01:18:41 GMT
ARG SWIFT_PLATFORM=debian12
# Wed, 21 Oct 2026 01:18:41 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Wed, 21 Oct 2026 01:18:41 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Wed, 21 Oct 2026 01:18:41 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 21 Oct 2026 01:18:41 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 21 Oct 2026 01:19:26 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
# Wed, 21 Oct 2026 01:19:27 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:160bef8d647632182137fd99585949a0e0cda5796ecc711e6212907eef1e3567`  
		Last Modified: Wed, 21 Oct 2026 01:21:55 GMT  
		Size: 190.7 MB (190683834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c488d607ebc9bbb74a180d9dafffc6fe57d5d259a4fad292905c545c8a9c11f`  
		Last Modified: Wed, 21 Oct 2026 01:22:12 GMT  
		Size: 1.1 GB (1139462387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1b67ef4bc4b82af793ebd2290149f95918e0aecec544aa03081239986d73482`  
		Last Modified: Wed, 21 Oct 2026 01:21:48 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:bookworm` - unknown; unknown

```console
$ docker pull swift@sha256:3457977092788e06e68295651bf81fb305f8aa71f60742ce8a481b53b830d68e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11362132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29fd9f93525a794352a142bfbccc7d3fcb7f45dfafb0b308d3e2a0f272f171e9`

```dockerfile
```

-	Layers:
	-	`sha256:5d5bd66ee44ca0a911d349ce79377337a42fc58a30135b421ce93d206b2d7eee`  
		Last Modified: Wed, 21 Oct 2026 01:21:49 GMT  
		Size: 11.3 MB (11346287 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0663bb00400c14c31f99608c08a87bfb59ebbce6396c20a02cd592937d2f717d`  
		Last Modified: Wed, 21 Oct 2026 01:21:48 GMT  
		Size: 15.8 KB (15845 bytes)  
		MIME: application/vnd.in-toto+json
