## `swift:rhel-ubi9-slim`

```console
$ docker pull swift@sha256:fb79776be236f19d66bebbb14abd67b527d3832415692207cc5780c60a02ecb7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9-slim` - linux; amd64

```console
$ docker pull swift@sha256:c54e0568104fd83169cf0681bd4d1344444cf394a9bf075620bf9992e2c2963d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.7 MB (140716639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:840bfee934603f69751bfa9043331f5f80a49fe11e6273bdc0c3335142211b1c`
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
# Fri, 20 Nov 2026 20:08:50 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 20 Nov 2026 20:08:50 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 20 Nov 2026 20:08:50 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 20 Nov 2026 20:08:50 GMT
ARG SWIFT_PLATFORM=ubi9
# Fri, 20 Nov 2026 20:08:50 GMT
ARG SWIFT_BRANCH=swift-6.4.3-release
# Fri, 20 Nov 2026 20:08:50 GMT
ARG SWIFT_VERSION=swift-6.4.3-RELEASE
# Fri, 20 Nov 2026 20:08:50 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 20 Nov 2026 20:08:50 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 20 Nov 2026 20:08:50 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:9c2d96ac06bc86dabf9d8205aee5123ac4211fcc57c6e3fd444f156a82c5f54f`  
		Last Modified: Wed, 18 Nov 2026 15:31:23 GMT  
		Size: 80.5 MB (80488980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57f410044256e2395946cbd4b196f14284386d41b71c334d34c17afd00182cd8`  
		Last Modified: Fri, 20 Nov 2026 20:09:05 GMT  
		Size: 60.2 MB (60227659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:54b848a679c97a444142e9bdcf9214eea6ab9c538b820c6a290ac177d0b3adc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6403541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27fbe4f4be9d2cac649141b2d0a6773c7a26a863212582fbd85f365c87e7c8cb`

```dockerfile
```

-	Layers:
	-	`sha256:9c1bf22c851dda146bc0eb65fce870945113e61841c5a61236d280e275fd93fd`  
		Last Modified: Fri, 20 Nov 2026 20:09:04 GMT  
		Size: 6.4 MB (6392057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afffd7ae6f3b35aceb898644ea6e7eb1d6400fa4dbc64323ebb2828579f7f23d`  
		Last Modified: Fri, 20 Nov 2026 20:09:03 GMT  
		Size: 11.5 KB (11484 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:975c565a6a0258ca5830fdba5608aa92108309ae2f7e6c2993a1c390ebe3382c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.6 MB (136580494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6fafb9a0cf265392da9ad29905af835e3eda578e0245d91b26fad1fb46786f3`
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
# Fri, 20 Nov 2026 20:04:41 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 20 Nov 2026 20:04:41 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 20 Nov 2026 20:04:41 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 20 Nov 2026 20:04:41 GMT
ARG SWIFT_PLATFORM=ubi9
# Fri, 20 Nov 2026 20:04:41 GMT
ARG SWIFT_BRANCH=swift-6.4.3-release
# Fri, 20 Nov 2026 20:04:41 GMT
ARG SWIFT_VERSION=swift-6.4.3-RELEASE
# Fri, 20 Nov 2026 20:04:41 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 20 Nov 2026 20:04:41 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 20 Nov 2026 20:04:41 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:9447aef63595ed5285cceb39df55adc7b80fd43eda197152d1e0d917a217f2c0`  
		Last Modified: Wed, 18 Nov 2026 15:39:16 GMT  
		Size: 78.1 MB (78144736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:225148ca7a3dcafaa76fccab81adc77e8ae36d4b14a385cbcac012ff60e175c9`  
		Last Modified: Fri, 20 Nov 2026 20:04:57 GMT  
		Size: 58.4 MB (58435758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:b0cd92dd3a1715c340d510b2b9ef3d92f58c18bb125d8780f3445a36f8af870a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6399426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd5fd534ad0a32f1c8e68df293703186ce21f37c2e44221108bccbdc245a47f4`

```dockerfile
```

-	Layers:
	-	`sha256:a1235d130d691a58da930f2133e8113eb75c1b2f238b74d07e93025ea666e6a2`  
		Last Modified: Fri, 20 Nov 2026 20:04:56 GMT  
		Size: 6.4 MB (6387856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d486e3301dc3d08f88990dc5de0d11da8d390c7149c1ab7897913b260089ffb`  
		Last Modified: Fri, 20 Nov 2026 20:04:55 GMT  
		Size: 11.6 KB (11570 bytes)  
		MIME: application/vnd.in-toto+json
