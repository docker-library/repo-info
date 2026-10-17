## `swift:jammy`

```console
$ docker pull swift@sha256:51729e0f6ed2f477490cd1e1132e5eddbf011b81092f4998fc8d88e5435e33cb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:jammy` - linux; amd64

```console
$ docker pull swift@sha256:54c5f447edad379c766cc986faef6d9234e632efb61dda047aa33585396cd95f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1350073160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:165b5a57b567446809f97550c9fc4b50788e763caefc5f282ee38b70a0a5a209`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:42:04 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Sat, 17 Oct 2026 00:42:04 GMT
LABEL description=Docker Container for the Swift programming language
# Sat, 17 Oct 2026 00:42:04 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     binutils     git     unzip     gnupg2     libc6-dev     libcurl4-openssl-dev     libedit2     libgcc-11-dev     libpython3-dev     libsqlite3-0     libstdc++-11-dev     libxml2-dev     libz3-dev     pkg-config     python3-lldb-13     tzdata     zlib1g-dev     && rm -r /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:42:04 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Sat, 17 Oct 2026 00:42:04 GMT
ARG SWIFT_PLATFORM=ubuntu22.04
# Sat, 17 Oct 2026 00:42:04 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Sat, 17 Oct 2026 00:42:04 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Sat, 17 Oct 2026 00:42:04 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Sat, 17 Oct 2026 00:42:04 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu22.04 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Sat, 17 Oct 2026 00:42:52 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu22.04 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl # buildkit
# Sat, 17 Oct 2026 00:42:52 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu22.04 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c3cd4c4944a350e88c6db6b0d99faf98fe599b94573cbe996b0fa4e8822a86e`  
		Last Modified: Sat, 17 Oct 2026 00:45:25 GMT  
		Size: 175.7 MB (175733958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf09de53cc657f5d4c27fad4220a0c0bb3d23ac29ed0a2611e4c686d00cc3a39`  
		Last Modified: Sat, 17 Oct 2026 00:45:41 GMT  
		Size: 1.1 GB (1144586552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f8abb2bc6fc52504e8010102874b3622d5d7d77773727b773280dc4f6b1a328`  
		Last Modified: Sat, 17 Oct 2026 00:45:19 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:jammy` - unknown; unknown

```console
$ docker pull swift@sha256:257de1f36ff508ce4d0bb0bd0c6d94001f53760a5e84f696f8146e8344224aca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8477217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:371c14e5ea11369c8e3d087d2b538de797da8dc006cd8a11a79a553deeb2bb61`

```dockerfile
```

-	Layers:
	-	`sha256:0a44d93e63980ad951b3440a56d5ccefda53322ad263438ee99f4d7de5302a0b`  
		Last Modified: Sat, 17 Oct 2026 00:45:20 GMT  
		Size: 8.5 MB (8461297 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:887b11e71add97be7163bd8f6de89162fae0d5834e9901e9bc918f3f0d9d6457`  
		Last Modified: Sat, 17 Oct 2026 00:45:19 GMT  
		Size: 15.9 KB (15920 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:jammy` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:112b89ac64bde178951f428c1afcdc14404b7740b87f7dfd5946530be5434754
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1338770009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:029b4d729208e8606045af861cb58084bf287cab8193a9e20f23c449188ff014`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:41:27 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Sat, 17 Oct 2026 00:41:27 GMT
LABEL description=Docker Container for the Swift programming language
# Sat, 17 Oct 2026 00:41:27 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     binutils     git     unzip     gnupg2     libc6-dev     libcurl4-openssl-dev     libedit2     libgcc-11-dev     libpython3-dev     libsqlite3-0     libstdc++-11-dev     libxml2-dev     libz3-dev     pkg-config     python3-lldb-13     tzdata     zlib1g-dev     && rm -r /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:41:27 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Sat, 17 Oct 2026 00:41:27 GMT
ARG SWIFT_PLATFORM=ubuntu22.04
# Sat, 17 Oct 2026 00:41:27 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Sat, 17 Oct 2026 00:41:27 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Sat, 17 Oct 2026 00:41:27 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Sat, 17 Oct 2026 00:41:27 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu22.04 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Sat, 17 Oct 2026 00:42:15 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu22.04 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl # buildkit
# Sat, 17 Oct 2026 00:42:15 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu22.04 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bce0b87923473906570edb2c878b7054809ecb1649477b5a2b9d447883b14f5`  
		Last Modified: Sat, 17 Oct 2026 00:44:36 GMT  
		Size: 172.1 MB (172070104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c77dd283c35533784d8db9c1c53e63284ea596c3cc9be851ca28b6b550f7898`  
		Last Modified: Sat, 17 Oct 2026 00:44:53 GMT  
		Size: 1.1 GB (1139015007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b25853c5601efb7d590e2a7add229605a75d7cd0368bb8c7356682dd8c3e275`  
		Last Modified: Sat, 17 Oct 2026 00:44:29 GMT  
		Size: 175.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:jammy` - unknown; unknown

```console
$ docker pull swift@sha256:e62619aeb7dbcde3e21ca8ff02186a7e35ba4c3ff401270ba5354230c1c92131
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8473025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ea7a725c6c7cd441cfbed66a058768ad65633a112c2dc5131415cfcfedde3bc`

```dockerfile
```

-	Layers:
	-	`sha256:b4ab3b3ca4558900db9554657d88597185089e0c64d603ce60b185796b8ced2f`  
		Last Modified: Sat, 17 Oct 2026 00:44:30 GMT  
		Size: 8.5 MB (8456983 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8dc5e4d6df26075d1694781b5d071cb600582e70ad66507977992d8be5fe3f21`  
		Last Modified: Sat, 17 Oct 2026 00:44:29 GMT  
		Size: 16.0 KB (16042 bytes)  
		MIME: application/vnd.in-toto+json
