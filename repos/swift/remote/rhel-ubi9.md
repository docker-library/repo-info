## `swift:rhel-ubi9`

```console
$ docker pull swift@sha256:c5a1b5c9a7ea977333e6abfbed3b7ed160a8248361cee43ee958767e48aa2720
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9` - linux; amd64

```console
$ docker pull swift@sha256:1345c84cd805c04b4bb4020cc5cc7b8a5cc79c3df157a1ac18d2ca2e867f2652
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1352596942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e5b7d6245d45fe71a0adcbd0fb86942be7b3587cec625530ed4c692bd26b4a3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 06 Oct 2026 06:51:35 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 06:51:35 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 06:51:35 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 06 Oct 2026 06:51:35 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 06:51:35 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Tue, 06 Oct 2026 06:51:35 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:51:35 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:51:35 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Tue, 06 Oct 2026 06:51:35 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 06:51:35 GMT
LABEL io.openshift.tags="base rhel9"
# Tue, 06 Oct 2026 06:51:35 GMT
ENV container oci
# Tue, 06 Oct 2026 06:51:36 GMT
COPY dir:21657636c8bcb5724fd29b37c857961fe39fd8d909075e9b560f7b60200de3b6 in /      
# Tue, 06 Oct 2026 06:51:36 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 06:51:36 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 06:51:37 GMT
COPY dir:9ea1923e103827867c117e9916ff73180690550ead98a2db16545f14aea78245 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 06:51:37 GMT
COPY dir:9ea1923e103827867c117e9916ff73180690550ead98a2db16545f14aea78245 in /root/buildinfo/      
# Tue, 06 Oct 2026 06:51:37 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T06:50:57Z" "org.opencontainers.image.revision"="df1195361046c5809244a24c88c29fabc6d9d769" "build-date"="2026-10-06T06:50:57Z" "architecture"="x86_64" "vcs-ref"="df1195361046c5809244a24c88c29fabc6d9d769" "vcs-type"="git" "release"="1791269371"org.opencontainers.image.created=2026-10-06T06:50:57Z,org.opencontainers.image.revision=df1195361046c5809244a24c88c29fabc6d9d769
# Tue, 06 Oct 2026 22:01:25 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 06 Oct 2026 22:01:25 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 06 Oct 2026 22:01:25 GMT
RUN yum -y install   git                 gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Tue, 06 Oct 2026 22:01:25 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 06 Oct 2026 22:01:25 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 06 Oct 2026 22:01:25 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Tue, 06 Oct 2026 22:01:25 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Tue, 06 Oct 2026 22:01:25 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 06 Oct 2026 22:01:25 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 06 Oct 2026 22:02:07 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Tue, 06 Oct 2026 22:02:07 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:23c4434bfe6a5f36a6b30dc607044458cb4d1672ce5b220b62585960952d1b9b`  
		Last Modified: Tue, 06 Oct 2026 07:46:08 GMT  
		Size: 80.5 MB (80467400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5853dd8f6295363074e83d5c016bae0f08d11e878758ee6cde99bc56c183f5f1`  
		Last Modified: Tue, 06 Oct 2026 22:04:39 GMT  
		Size: 126.7 MB (126667497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d63a07ce8196e061c10e51f879ee10c16c2b568108a5a5311a967e65e68773e1`  
		Last Modified: Fri, 18 Sep 2026 23:53:31 GMT  
		Size: 1.1 GB (1145461870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:727b0c4ce7b30f3114ab00318d270061d50c36417db92510f1e06b79141a2090`  
		Last Modified: Tue, 06 Oct 2026 22:04:36 GMT  
		Size: 175.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9` - unknown; unknown

```console
$ docker pull swift@sha256:17082512cb3db597cc1126ef504bccf27b1ca296712ba4a3dff64764f2905ac5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13015449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a4715c8fda5f1fc28c944cfa053cca401bf21d9d39cdbb971146d2d56923790`

```dockerfile
```

-	Layers:
	-	`sha256:fc002ab9f2bf7cebd93c54c672804183f335baa2b0e0a89c23b1ef3543dfd38d`  
		Last Modified: Tue, 06 Oct 2026 22:04:36 GMT  
		Size: 13.0 MB (13001007 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d04e247eed20fb68abe6fcc474140ccb9fd4df536d067cc946040ca46cf3ed5`  
		Last Modified: Tue, 06 Oct 2026 22:04:36 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:50356ee298ae934ef234e996284d7b618b1196a2210ce8d6a48cc2a5fa6eaff1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1340184962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2f1d75fa5b5812ab0b56f3fad3a4b7b0300eb95403ba4c2460730c4091efab5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 06 Oct 2026 06:54:12 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 06:54:12 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 06:54:12 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 06 Oct 2026 06:54:12 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 06:54:12 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Tue, 06 Oct 2026 06:54:12 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:54:12 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:54:12 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Tue, 06 Oct 2026 06:54:12 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 06:54:12 GMT
LABEL io.openshift.tags="base rhel9"
# Tue, 06 Oct 2026 06:54:12 GMT
ENV container oci
# Tue, 06 Oct 2026 06:54:15 GMT
COPY dir:a206cc6ecd9784ef46543ddaa00e9395d073b25691629c8a177d738d22a0b392 in /      
# Tue, 06 Oct 2026 06:54:15 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 06:54:15 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 06:54:15 GMT
COPY dir:a6c38c92ec8148652d1330bfe903380e3d1eb4f2c4857a9818e8f8d34d89e9a2 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 06:54:15 GMT
COPY dir:a6c38c92ec8148652d1330bfe903380e3d1eb4f2c4857a9818e8f8d34d89e9a2 in /root/buildinfo/      
# Tue, 06 Oct 2026 06:54:16 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T06:53:49Z" "org.opencontainers.image.revision"="df1195361046c5809244a24c88c29fabc6d9d769" "build-date"="2026-10-06T06:53:49Z" "architecture"="aarch64" "vcs-ref"="df1195361046c5809244a24c88c29fabc6d9d769" "vcs-type"="git" "release"="1791269371"org.opencontainers.image.created=2026-10-06T06:53:49Z,org.opencontainers.image.revision=df1195361046c5809244a24c88c29fabc6d9d769
# Tue, 06 Oct 2026 21:58:38 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 06 Oct 2026 21:58:38 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 06 Oct 2026 21:58:38 GMT
RUN yum -y install   git                 gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Tue, 06 Oct 2026 21:58:38 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 06 Oct 2026 21:58:38 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 06 Oct 2026 21:58:38 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Tue, 06 Oct 2026 21:58:38 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Tue, 06 Oct 2026 21:58:38 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 06 Oct 2026 21:58:38 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 06 Oct 2026 21:59:20 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Tue, 06 Oct 2026 21:59:21 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:d0cf12d9b94d960860ce0052c9c85894b01f852ac6fc75a73a16c41e50f7ae03`  
		Last Modified: Tue, 06 Oct 2026 07:46:47 GMT  
		Size: 78.2 MB (78182632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c59a4bc9929a46cba346ac69a6c8c816136a16a3ad51e5356ddff755a64c586`  
		Last Modified: Tue, 06 Oct 2026 22:01:39 GMT  
		Size: 120.0 MB (119956653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c718624100c98820206167ab755ac2b44f8e6956643eab861a60f6e2f106ffa`  
		Last Modified: Fri, 18 Sep 2026 23:53:21 GMT  
		Size: 1.1 GB (1142045503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f03df8a6e2f3225164e850d83a0d71d5075ecfbf51f661709e15f45c4bb0a4b6`  
		Last Modified: Tue, 06 Oct 2026 22:01:36 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9` - unknown; unknown

```console
$ docker pull swift@sha256:7c740575bb395a6123c2a7af2c8661ed6c8aa83703193694a759b940e5fb8e0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12888264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56074689421c84cd6a1db14cb83e2d09884ef0008f4b3376113784c166bec474`

```dockerfile
```

-	Layers:
	-	`sha256:d3626c7e962b38ca2482d3cebd1ee48944ffc5da25c06b17c5475702f01f5ff0`  
		Last Modified: Tue, 06 Oct 2026 22:01:37 GMT  
		Size: 12.9 MB (12873706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0bf56509e46ed02d6495fd1d301793b2bbe60696782ac873203195f1b0e80ef7`  
		Last Modified: Tue, 06 Oct 2026 22:01:36 GMT  
		Size: 14.6 KB (14558 bytes)  
		MIME: application/vnd.in-toto+json
