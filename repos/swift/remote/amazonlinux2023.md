## `swift:amazonlinux2023`

```console
$ docker pull swift@sha256:8e2cee1696297005838bdf172f3ec192cfdb1fe7316afcd3af4b22e89a0e19cd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:amazonlinux2023` - linux; amd64

```console
$ docker pull swift@sha256:500362a6482c0240baae9d432c706ae128c111d78099c06a2b59eb6f080603d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1491281087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1762a1e5547285fb1caa38ac6daae5a0a9486e44c86fff9380c176184195cb7d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:38 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:38 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:00:21 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 04 Aug 2026 01:00:21 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 04 Aug 2026 01:00:21 GMT
RUN dnf -y install   binutils   gcc   git   unzip   glibc-static   gzip   libbsd   libcurl-devel   libedit   libicu   libstdc++-static   libuuid   libxml2-devel   openssl-devel   tar   tzdata # buildkit
# Tue, 04 Aug 2026 01:00:24 GMT
RUN dnf -y swap gnupg2-minimal gnupg2-full # buildkit
# Tue, 04 Aug 2026 01:00:24 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 04 Aug 2026 01:00:24 GMT
ARG SWIFT_PLATFORM=amazonlinux2023
# Tue, 04 Aug 2026 01:00:24 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Tue, 04 Aug 2026 01:00:24 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Tue, 04 Aug 2026 01:00:24 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 04 Aug 2026 01:00:24 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 04 Aug 2026 01:01:01 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Tue, 04 Aug 2026 01:01:01 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:1c635d63e15b914a52c850733b73b200164c1b4f22ce422b48b4130f93dee906`  
		Last Modified: Tue, 28 Jul 2026 03:02:31 GMT  
		Size: 54.6 MB (54572680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ebb43a3b32e70fb631e1134811a5ad0f0e1f752cb122d7e1b4424e8b2007c82`  
		Last Modified: Tue, 04 Aug 2026 01:03:23 GMT  
		Size: 293.1 MB (293136632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad629da0f03d4f7e3956fa379431e2243668482de96ec66eee3c8819ab6a772c`  
		Last Modified: Tue, 04 Aug 2026 01:03:18 GMT  
		Size: 24.2 MB (24159985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df3e8ff26215c189d4f2b684f1a0c882440fed3ffd5c7427b175bce473dc304f`  
		Last Modified: Tue, 30 Jun 2026 19:00:36 GMT  
		Size: 1.1 GB (1119411616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85e47eb04287a8d7a86543d0a5178e74c3e8cb105daad23e199563f47f7bbefb`  
		Last Modified: Tue, 04 Aug 2026 01:03:17 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2023` - unknown; unknown

```console
$ docker pull swift@sha256:7aa6f2fcb1bbeca73468f80ccd51e81075774d2a73a920a602e19a261ec2d58d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13814172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c444b49603ee8625831ab2c0755ae49e97b7b2b2252e09edba724c2f2d3651ef`

```dockerfile
```

-	Layers:
	-	`sha256:4db3029118885a34f11d4ebd8d9647ce5ac20e05c3f3768701bff0c06547f316`  
		Last Modified: Tue, 04 Aug 2026 01:03:17 GMT  
		Size: 13.8 MB (13797946 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa6a0db892f29138c2a3d908def958687f68dc9c504badad51fa06257de0a3dd`  
		Last Modified: Tue, 04 Aug 2026 01:03:16 GMT  
		Size: 16.2 KB (16226 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:amazonlinux2023` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:2e08b71265027fcfe4e163475257eecfdaae20bca551cb6e48d67b437383c88d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1472883109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec5b434d4bafc0b1d880c3d8370cb44299cb07bea936cfe8f02051a6c78af5e3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:37 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:00:08 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 04 Aug 2026 01:00:08 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 04 Aug 2026 01:00:08 GMT
RUN dnf -y install   binutils   gcc   git   unzip   glibc-static   gzip   libbsd   libcurl-devel   libedit   libicu   libstdc++-static   libuuid   libxml2-devel   openssl-devel   tar   tzdata # buildkit
# Tue, 04 Aug 2026 01:00:11 GMT
RUN dnf -y swap gnupg2-minimal gnupg2-full # buildkit
# Tue, 04 Aug 2026 01:00:11 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 04 Aug 2026 01:00:11 GMT
ARG SWIFT_PLATFORM=amazonlinux2023
# Tue, 04 Aug 2026 01:00:11 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Tue, 04 Aug 2026 01:00:11 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Tue, 04 Aug 2026 01:00:11 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 04 Aug 2026 01:00:11 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 04 Aug 2026 01:00:48 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Tue, 04 Aug 2026 01:00:48 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:0d194348effd1a9f66c459a1b81ed9823b1301b8d182e914b8ddc71c54c528e5`  
		Last Modified: Tue, 28 Jul 2026 08:44:17 GMT  
		Size: 53.4 MB (53448657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5393921a5a13a79458186940c7ead89ddeb8a2b0523b6a8b803dc3dbbb855fc`  
		Last Modified: Tue, 04 Aug 2026 01:03:13 GMT  
		Size: 284.2 MB (284236348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c01625bc814441898570208a29ce708b15849b41baccf02561d75bf4764549a9`  
		Last Modified: Tue, 04 Aug 2026 01:03:08 GMT  
		Size: 23.7 MB (23749090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c501b0b9e3b07cb98c1c4c814abf286c49cd43b3b040a59432e454bfeaec6f47`  
		Last Modified: Tue, 30 Jun 2026 19:00:19 GMT  
		Size: 1.1 GB (1111448842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b186a2276f919193adf5d4d9ed26ef6d6c9fc487f68e4f3bd80c6ba689f3dea`  
		Last Modified: Tue, 04 Aug 2026 01:03:07 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2023` - unknown; unknown

```console
$ docker pull swift@sha256:c10b85eaa632c2b43052646d8ac7b7083eedecea387def71e34ebf2f2c92a36c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13684363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4a1f1b386ea161361000e8bdbc413a779510d776e9f07cd0d7599c05cc8e9c2`

```dockerfile
```

-	Layers:
	-	`sha256:81ac3105cf4ce52c2f6e4bbaea58c50b132e627d5612e81b48defa51ee30eed7`  
		Last Modified: Tue, 04 Aug 2026 01:03:08 GMT  
		Size: 13.7 MB (13667999 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a210187b6cc41bcad3807d66f5d01173c6d3e1d10d0db62b46f2fe528a45ad75`  
		Last Modified: Tue, 04 Aug 2026 01:03:07 GMT  
		Size: 16.4 KB (16364 bytes)  
		MIME: application/vnd.in-toto+json
