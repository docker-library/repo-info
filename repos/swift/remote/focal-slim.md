## `swift:focal-slim`

```console
$ docker pull swift@sha256:b678702462ccb2cbb3c08444814757d989dece2a6ad0954d912045f1a8470a17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `swift:focal-slim` - linux; amd64

```console
$ docker pull swift@sha256:ec835d8293595d7799582b6514395db06b88d3234fc39d8d53dc2339c48fa858
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140281838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e63689d6876628ca1dc5a98021df9d76322cbcae959aad619d350a43ef73603f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:21 GMT
ADD file:9d282119af0c42bc823c95b4192a3350cf2cad670622017356dd2e637762e425 in / 
# Fri, 09 Dec 2022 01:20:21 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 02:57:16 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 09 Dec 2022 02:57:16 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 09 Dec 2022 02:57:28 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:57:29 GMT
ARG SWIFT_SIGNING_KEY=A62AE125BBBFBB96A6E042EC925CC1CCED3D1561
# Fri, 09 Dec 2022 02:57:29 GMT
ARG SWIFT_PLATFORM=ubuntu20.04
# Thu, 19 Jan 2023 18:26:15 GMT
ARG SWIFT_BRANCH=swift-5.7.3-release
# Thu, 19 Jan 2023 18:26:15 GMT
ARG SWIFT_VERSION=swift-5.7.3-RELEASE
# Thu, 19 Jan 2023 18:26:15 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Thu, 19 Jan 2023 18:26:15 GMT
ENV SWIFT_SIGNING_KEY=A62AE125BBBFBB96A6E042EC925CC1CCED3D1561 SWIFT_PLATFORM=ubuntu20.04 SWIFT_BRANCH=swift-5.7.3-release SWIFT_VERSION=swift-5.7.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Thu, 19 Jan 2023 18:27:08 GMT
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gnupg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1 $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gnupg
```

-	Layers:
	-	`sha256:846c0b181fff0c667d9444f8378e8fcfa13116da8d308bf21673f7e4bea8d580`  
		Last Modified: Thu, 08 Dec 2022 13:18:11 GMT  
		Size: 28.6 MB (28576882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64a724749a92c92c0212d6b4a561dee88ec9a196c8ac9d597cbb5b1613e37a3b`  
		Last Modified: Fri, 09 Dec 2022 03:31:50 GMT  
		Size: 22.2 MB (22202293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b26b1143c90b0ca67b79dd2f9ee305ed6e4358d8888581d6528c9948570566`  
		Last Modified: Thu, 19 Jan 2023 18:45:24 GMT  
		Size: 89.5 MB (89502663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `swift:focal-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:04dbf27a424d13af3f107a26f9664fe6395b376d87eb4dd5a3c343724cbfa6a4
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.6 MB (134646938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d6677f1a574f2049e2c1e794edf6bab7fc17636aa042edb973ad5ef2feb7c9e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:50 GMT
ADD file:8cba976cb6ea226de769a768ee274e7679d34f923c93392f340680dc6696232e in / 
# Fri, 09 Dec 2022 01:46:50 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 02:20:05 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 09 Dec 2022 02:20:05 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 09 Dec 2022 02:20:20 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:20:20 GMT
ARG SWIFT_SIGNING_KEY=A62AE125BBBFBB96A6E042EC925CC1CCED3D1561
# Fri, 09 Dec 2022 02:20:20 GMT
ARG SWIFT_PLATFORM=ubuntu20.04
# Thu, 19 Jan 2023 18:50:22 GMT
ARG SWIFT_BRANCH=swift-5.7.3-release
# Thu, 19 Jan 2023 18:50:22 GMT
ARG SWIFT_VERSION=swift-5.7.3-RELEASE
# Thu, 19 Jan 2023 18:50:22 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Thu, 19 Jan 2023 18:50:22 GMT
ENV SWIFT_SIGNING_KEY=A62AE125BBBFBB96A6E042EC925CC1CCED3D1561 SWIFT_PLATFORM=ubuntu20.04 SWIFT_BRANCH=swift-5.7.3-release SWIFT_VERSION=swift-5.7.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Thu, 19 Jan 2023 18:50:58 GMT
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gnupg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1 $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gnupg
```

-	Layers:
	-	`sha256:f04b4bbe15805316c8fda79beedd3b77e6b1ffcd0acf81226c3089e63f6bffeb`  
		Last Modified: Thu, 08 Dec 2022 15:28:02 GMT  
		Size: 27.2 MB (27193168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8881594e1351e5e30bd277b2b9f23cb3109e4c239aa9a13c315da1d42900611b`  
		Last Modified: Fri, 09 Dec 2022 02:27:20 GMT  
		Size: 22.0 MB (21997241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed973ae79459345ff71d61e15b442d342671a370d320523e0d1541457870fdf`  
		Last Modified: Thu, 19 Jan 2023 18:56:19 GMT  
		Size: 85.5 MB (85456529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
