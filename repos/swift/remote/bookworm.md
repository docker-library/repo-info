## `swift:bookworm`

```console
$ docker pull swift@sha256:196b29e985d0fbdeb427d4898f08ed73b0079c9ac7c37ebdd3bc05fe4e9d784b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:bookworm` - linux; amd64

```console
$ docker pull swift@sha256:9b8b4d52a614935ab5edb06661ce86b3151e5aa7893ba3ce58f58014382accde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1392462911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d345e7748f966b5a2c260e74f08d3395aa7dc6971eab5cc291b83a968c5a0ad3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:11:40 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 21 Oct 2026 01:11:40 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 21 Oct 2026 01:11:40 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     binutils     libicu-dev     libcurl4-openssl-dev     libedit-dev     libsqlite3-dev     libncurses-dev     libpython3-dev     libxml2-dev     pkg-config     uuid-dev     tzdata     git     gcc     libstdc++-12-dev     && rm -r /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:11:40 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 21 Oct 2026 01:11:40 GMT
ARG SWIFT_PLATFORM=debian12
# Wed, 21 Oct 2026 01:11:40 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Wed, 21 Oct 2026 01:11:40 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Wed, 21 Oct 2026 01:11:40 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 21 Oct 2026 01:11:40 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 21 Oct 2026 01:12:23 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
# Wed, 21 Oct 2026 01:12:23 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38b01f4654262c69577ee59b87174be23014782f4474dda4f1a95ad92e9bafd1`  
		Last Modified: Wed, 21 Oct 2026 01:14:50 GMT  
		Size: 198.6 MB (198645979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a2946877c8617303d0dba8c5f00642df88596cad436a86824d17d038e4f1304`  
		Last Modified: Wed, 21 Oct 2026 01:15:10 GMT  
		Size: 1.1 GB (1145294674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68477d1b91d379a48439cfd7786eb67f3204660f46c06f25c016c4ded3d59b42`  
		Last Modified: Wed, 21 Oct 2026 01:14:40 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:bookworm` - unknown; unknown

```console
$ docker pull swift@sha256:6808c3b70d5294d824ee795d59e09badcc6a075864bf572715c639b85a3a833d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11334005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23404176fa8384b65642cb732b51aa8fd53305aa2dc40641d6ed6b19bb31c34c`

```dockerfile
```

-	Layers:
	-	`sha256:bac8df00722c2693f806f2832dba9df51d30aa6423a3f3961f4272c05bd86d81`  
		Last Modified: Wed, 21 Oct 2026 01:14:41 GMT  
		Size: 11.3 MB (11318282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85da4a18886a2a2b769e0b4a44946fb5751c8b6acec9e2b01e1b304bce2dcf96`  
		Last Modified: Wed, 21 Oct 2026 01:14:40 GMT  
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
