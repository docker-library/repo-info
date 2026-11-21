## `swift:rhel-ubi9`

```console
$ docker pull swift@sha256:80061b95672233c251c49676d7045c9b4d8e3047c024a47e9da2b215098941a4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9` - linux; amd64

```console
$ docker pull swift@sha256:68dd10b6b3722cc3266f3a80a22a39fe4a06ac5f79d3ad7fa7f529d76ee71ab0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1354502485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68cd9d2209f3eba05bca25a656547646059b657bc4ac30138fbbbdcb0f3f17d8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 10:52:06 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 10:52:06 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 10:52:06 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 18 Nov 2026 10:52:06 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 10:52:06 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Wed, 18 Nov 2026 10:52:06 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 10:52:06 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 10:52:06 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Wed, 18 Nov 2026 10:52:06 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 10:52:07 GMT
LABEL io.openshift.tags="base rhel9"
# Wed, 18 Nov 2026 10:52:07 GMT
ENV container oci
# Wed, 18 Nov 2026 10:52:08 GMT
COPY dir:5379455210314c7eefc67bce594fc31bb9c4d308e92b03728313ee6f81e41b0e in /      
# Wed, 18 Nov 2026 10:52:09 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 10:52:09 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 10:52:09 GMT
COPY dir:24b1631db0d0bbc8c80f5d702ce785060cc966fed8741428939e90fcb9c4f980 in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 10:52:09 GMT
COPY dir:24b1631db0d0bbc8c80f5d702ce785060cc966fed8741428939e90fcb9c4f980 in /root/buildinfo/      
# Wed, 18 Nov 2026 10:52:10 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T10:51:35Z" "org.opencontainers.image.revision"="8ca3d09ec8f691600b91e8a84ae50382e0c56b1e" "build-date"="2026-11-18T10:51:35Z" "architecture"="x86_64" "vcs-ref"="8ca3d09ec8f691600b91e8a84ae50382e0c56b1e" "vcs-type"="git" "release"="1794999017"org.opencontainers.image.created=2026-11-18T10:51:35Z,org.opencontainers.image.revision=8ca3d09ec8f691600b91e8a84ae50382e0c56b1e
# Fri, 20 Nov 2026 20:08:17 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 20 Nov 2026 20:08:17 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 20 Nov 2026 20:08:17 GMT
RUN yum -y install   git                 gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Fri, 20 Nov 2026 20:08:17 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 20 Nov 2026 20:08:17 GMT
ARG SWIFT_PLATFORM=ubi9
# Fri, 20 Nov 2026 20:08:17 GMT
ARG SWIFT_BRANCH=swift-6.4.3-release
# Fri, 20 Nov 2026 20:08:17 GMT
ARG SWIFT_VERSION=swift-6.4.3-RELEASE
# Fri, 20 Nov 2026 20:08:17 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 20 Nov 2026 20:08:17 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 20 Nov 2026 20:08:59 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Fri, 20 Nov 2026 20:09:00 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:9c2d96ac06bc86dabf9d8205aee5123ac4211fcc57c6e3fd444f156a82c5f54f`  
		Last Modified: Wed, 18 Nov 2026 15:31:23 GMT  
		Size: 80.5 MB (80488980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c1ec96ff5fff2e574663d5dd7ff5e69b690fa895f570f8ff3a5309256df6852`  
		Last Modified: Fri, 20 Nov 2026 20:11:19 GMT  
		Size: 127.2 MB (127234319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2947632217701571724f25a025501afc295923e8e54d68574b6d6a5f001201c5`  
		Last Modified: Fri, 20 Nov 2026 20:11:40 GMT  
		Size: 1.1 GB (1146779012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f8deb4a1b090c045acb4fc65731795b65e2059af0b54f3081c3d8161c52ecc`  
		Last Modified: Fri, 20 Nov 2026 20:11:13 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9` - unknown; unknown

```console
$ docker pull swift@sha256:fdb59f7fe2f8c5cb0938010c8f96e1740cd1959c6943687602d4d21d76f1e7c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13004829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14414357f120c598f3fc1269367380dad052333550093c44acdf53240a4a1cc0`

```dockerfile
```

-	Layers:
	-	`sha256:5755f05f3ad07ad41fd802d9bbb19f0f51090f1d552348afbd7230673434ee05`  
		Last Modified: Fri, 20 Nov 2026 20:11:13 GMT  
		Size: 13.0 MB (12990371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d759e559d00343c6bc028995c42c6533061e8bf0e9644ef6d412f00126584644`  
		Last Modified: Fri, 20 Nov 2026 20:11:13 GMT  
		Size: 14.5 KB (14458 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:4462f4c59678fc295264e19b4c00d75ada92651706fe45e835862faa6ae2328f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1342095737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3ad19acaa7ebb1a237d400f7253970e3d1ab9cabd82faa2ae326fc615fff4c4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 10:55:02 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 10:55:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 10:55:02 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 18 Nov 2026 10:55:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 10:55:02 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Wed, 18 Nov 2026 10:55:02 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 10:55:02 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 10:55:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Wed, 18 Nov 2026 10:55:02 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 10:55:02 GMT
LABEL io.openshift.tags="base rhel9"
# Wed, 18 Nov 2026 10:55:02 GMT
ENV container oci
# Wed, 18 Nov 2026 10:55:05 GMT
COPY dir:0efa82ae2a97ae3ec75919fbc4d023e3f33ee660b34a1157e37e08650b0a2938 in /      
# Wed, 18 Nov 2026 10:55:06 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 10:55:06 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 10:55:06 GMT
COPY dir:a72f61539871f4756946f3b98837237fbf43f648f259cbee21b1d5b6967cca73 in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 10:55:07 GMT
COPY dir:a72f61539871f4756946f3b98837237fbf43f648f259cbee21b1d5b6967cca73 in /root/buildinfo/      
# Wed, 18 Nov 2026 10:55:08 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T10:54:30Z" "org.opencontainers.image.revision"="8ca3d09ec8f691600b91e8a84ae50382e0c56b1e" "build-date"="2026-11-18T10:54:30Z" "architecture"="aarch64" "vcs-ref"="8ca3d09ec8f691600b91e8a84ae50382e0c56b1e" "vcs-type"="git" "release"="1794999017"org.opencontainers.image.created=2026-11-18T10:54:30Z,org.opencontainers.image.revision=8ca3d09ec8f691600b91e8a84ae50382e0c56b1e
# Fri, 20 Nov 2026 20:03:58 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 20 Nov 2026 20:03:58 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 20 Nov 2026 20:03:58 GMT
RUN yum -y install   git                 gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Fri, 20 Nov 2026 20:03:58 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 20 Nov 2026 20:03:58 GMT
ARG SWIFT_PLATFORM=ubi9
# Fri, 20 Nov 2026 20:03:58 GMT
ARG SWIFT_BRANCH=swift-6.4.3-release
# Fri, 20 Nov 2026 20:03:58 GMT
ARG SWIFT_VERSION=swift-6.4.3-RELEASE
# Fri, 20 Nov 2026 20:03:58 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 20 Nov 2026 20:03:58 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 20 Nov 2026 20:04:45 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Fri, 20 Nov 2026 20:04:45 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:9447aef63595ed5285cceb39df55adc7b80fd43eda197152d1e0d917a217f2c0`  
		Last Modified: Wed, 18 Nov 2026 15:39:16 GMT  
		Size: 78.1 MB (78144736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23ab4abd8ebb4f240205878ce0c7bfc721136b4bc9c82b8127e34d904a1b0ca2`  
		Last Modified: Fri, 20 Nov 2026 20:07:08 GMT  
		Size: 120.6 MB (120554034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12de8895f71c5059305d4e7fcc8b5820d730c626de2e269a419b35c439017ac0`  
		Last Modified: Fri, 20 Nov 2026 20:07:44 GMT  
		Size: 1.1 GB (1143396793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:486924f1e42af4b11a1680789564a78839fc1f5530fc7aa59d0bbc7899a54999`  
		Last Modified: Fri, 20 Nov 2026 20:07:03 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9` - unknown; unknown

```console
$ docker pull swift@sha256:3b010e9e6e379858866f1f15cbad4c5b031719ebd6705375b20d0b523ae53a4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12877656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d9551d11f3e25f85515e66fae0c3f1af96295005e707e9a32c24319a09d287`

```dockerfile
```

-	Layers:
	-	`sha256:57cb210ce99ddd8a6f68bd43f8df6d8f19b9b8852149eef541957a7226e2a396`  
		Last Modified: Fri, 20 Nov 2026 20:07:04 GMT  
		Size: 12.9 MB (12863082 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39b71389e3740b71335bea3d4d1cec9fda1a369463f4ad0d243b6ae988bd703d`  
		Last Modified: Fri, 20 Nov 2026 20:07:03 GMT  
		Size: 14.6 KB (14574 bytes)  
		MIME: application/vnd.in-toto+json
