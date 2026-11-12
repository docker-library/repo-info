## `swift:rhel-ubi10`

```console
$ docker pull swift@sha256:6b221fc0a90a7339fffbcc3984a04016df720bac81e46cdde3e2c5734779abff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi10` - linux; amd64

```console
$ docker pull swift@sha256:07cd84922be7cc49b61977d91a140d1170148c4b39821e35ec1df0bed2494bf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1401084762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f30393c5e9db4b76036fb6ca1bb5b4ba45fc12c62a29de47f3a853b280f6f40`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 04 Nov 2026 22:40:45 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."       url="https://catalog.redhat.com/en/search?searchType=containers"       com.redhat.component="ubi10-container"       name="ubi10/ubi"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       version="10.3"       distribution-scope="public"
# Wed, 04 Nov 2026 22:40:45 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 22:40:45 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 10."
# Wed, 04 Nov 2026 22:40:45 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:40:45 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:40:45 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10"
# Wed, 04 Nov 2026 22:40:45 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 22:40:45 GMT
LABEL io.openshift.tags="base rhel10"
# Wed, 04 Nov 2026 22:40:45 GMT
LABEL compose-id="RHEL-10.3-updates-20261104.2"
# Wed, 04 Nov 2026 22:40:45 GMT
ENV container oci
# Wed, 04 Nov 2026 22:40:47 GMT
COPY dir:3567f2a85168f09081b267e1a0dafe2c59096ef9fd518116d962b52b36e2c40d in /      
# Wed, 04 Nov 2026 22:40:47 GMT
COPY file:7434e7ac38eae122961f7433f94f69681ae6b7673c89bc0a33c8831ed9c5dbfc in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 22:40:47 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 22:40:48 GMT
COPY dir:fba775a83642edba375e809fe0a5a7dc7d08e29d792b783d5609bacc13ed74c4 in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 22:40:48 GMT
COPY dir:fba775a83642edba375e809fe0a5a7dc7d08e29d792b783d5609bacc13ed74c4 in /root/buildinfo/      
# Wed, 04 Nov 2026 22:40:49 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T22:40:19Z" "org.opencontainers.image.revision"="42c51337d62747097ebce9a8dab7ef18d41bbe62" "build-date"="2026-11-04T22:40:19Z" "architecture"="x86_64" "vcs-ref"="42c51337d62747097ebce9a8dab7ef18d41bbe62" "vcs-type"="git" "release"="1793831871"org.opencontainers.image.created=2026-11-04T22:40:19Z,org.opencontainers.image.revision=42c51337d62747097ebce9a8dab7ef18d41bbe62
# Wed, 11 Nov 2026 22:52:29 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 11 Nov 2026 22:52:29 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 11 Nov 2026 22:52:29 GMT
RUN yum -y install   git                 gnupg2              gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Wed, 11 Nov 2026 22:52:29 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 11 Nov 2026 22:52:29 GMT
ARG SWIFT_PLATFORM=ubi10
# Wed, 11 Nov 2026 22:52:29 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Wed, 11 Nov 2026 22:52:29 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Wed, 11 Nov 2026 22:52:29 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 11 Nov 2026 22:52:29 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 11 Nov 2026 22:53:07 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Wed, 11 Nov 2026 22:53:07 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:fe40e6dce929e5ee255c0c157c9921fbcfcb24f3a61c5040d5cf6d890c89d5d3`  
		Last Modified: Wed, 11 Nov 2026 05:47:43 GMT  
		Size: 81.3 MB (81287335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:753dfd9f49198f0ff02a7670255e13bb2fa9321bbca3e04ad0bbd930e0ce6c28`  
		Last Modified: Wed, 11 Nov 2026 22:55:45 GMT  
		Size: 175.7 MB (175681927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0db4e1d30169a83021f418e966b236d81449575c98e2d3010bf66e4add90f658`  
		Last Modified: Fri, 30 Oct 2026 17:36:17 GMT  
		Size: 1.1 GB (1144115326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22a55bbe0bafc896f549f1c8fb0b47b0999e596dd7a20c10d43d6e96b60fbe20`  
		Last Modified: Wed, 11 Nov 2026 22:55:40 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10` - unknown; unknown

```console
$ docker pull swift@sha256:93dd862df3b8852882d6556586b3e6b0ab832dbc6538af2f6c487b6e5621a0d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14567146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5d6b4e6601b96014a002e2e8f6a36312aa36ac4520b22cc68e109a142125f88`

```dockerfile
```

-	Layers:
	-	`sha256:6311341842c7c0b7d59a3e482fd710c57b929e13fb843ce7bb3958684bec9c6b`  
		Last Modified: Wed, 11 Nov 2026 22:55:41 GMT  
		Size: 14.6 MB (14552622 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05f73a732a5cf403d682a6a7d8ef6d5768eafa25109886b981c94de99f460369`  
		Last Modified: Wed, 11 Nov 2026 22:55:40 GMT  
		Size: 14.5 KB (14524 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi10` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:d3b564ed8679fdb22aa4d92e9e58683c68b219ad6b8e6237ca3852b855027204
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1378375802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46b4c6a7bdb72ca8d8f600c22400a7921846991c2c306e6197d1e85fc2afb728`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 04 Nov 2026 22:44:17 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."       url="https://catalog.redhat.com/en/search?searchType=containers"       com.redhat.component="ubi10-container"       name="ubi10/ubi"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       version="10.3"       distribution-scope="public"
# Wed, 04 Nov 2026 22:44:17 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 22:44:17 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 10."
# Wed, 04 Nov 2026 22:44:17 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:44:18 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:44:18 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10"
# Wed, 04 Nov 2026 22:44:18 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 22:44:18 GMT
LABEL io.openshift.tags="base rhel10"
# Wed, 04 Nov 2026 22:44:18 GMT
LABEL compose-id="RHEL-10.3-updates-20261104.2"
# Wed, 04 Nov 2026 22:44:18 GMT
ENV container oci
# Wed, 04 Nov 2026 22:44:21 GMT
COPY dir:cf36c39cdc60499b40da768fea2f714e87badcfca9770c4522872096b43342e8 in /      
# Wed, 04 Nov 2026 22:44:21 GMT
COPY file:7434e7ac38eae122961f7433f94f69681ae6b7673c89bc0a33c8831ed9c5dbfc in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 22:44:21 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 22:44:22 GMT
COPY dir:522092b8ab448990025743dc806def4d61010816a936727e301be82b4b382cd4 in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 22:44:22 GMT
COPY dir:522092b8ab448990025743dc806def4d61010816a936727e301be82b4b382cd4 in /root/buildinfo/      
# Wed, 04 Nov 2026 22:44:23 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T22:43:45Z" "org.opencontainers.image.revision"="42c51337d62747097ebce9a8dab7ef18d41bbe62" "build-date"="2026-11-04T22:43:45Z" "architecture"="aarch64" "vcs-ref"="42c51337d62747097ebce9a8dab7ef18d41bbe62" "vcs-type"="git" "release"="1793831871"org.opencontainers.image.created=2026-11-04T22:43:45Z,org.opencontainers.image.revision=42c51337d62747097ebce9a8dab7ef18d41bbe62
# Wed, 11 Nov 2026 22:12:55 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 11 Nov 2026 22:12:55 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 11 Nov 2026 22:12:55 GMT
RUN yum -y install   git                 gnupg2              gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Wed, 11 Nov 2026 22:12:55 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 11 Nov 2026 22:12:55 GMT
ARG SWIFT_PLATFORM=ubi10
# Wed, 11 Nov 2026 22:12:55 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Wed, 11 Nov 2026 22:12:55 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Wed, 11 Nov 2026 22:12:55 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 11 Nov 2026 22:12:55 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 11 Nov 2026 22:13:33 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Wed, 11 Nov 2026 22:13:33 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:cf8bd94d88861648df579a5f60649e905e0165f790dd8f323e3e6659ea96ea15`  
		Last Modified: Wed, 11 Nov 2026 05:48:24 GMT  
		Size: 78.7 MB (78714476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19adc03e89db1e562ad531727baae9c07ed24db6fae9fcda2f0df12e4844a022`  
		Last Modified: Wed, 11 Nov 2026 22:15:58 GMT  
		Size: 166.0 MB (166018720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56328df8ea45a4dc99af3bba3175f69d788a7101264bd79c730835084c4b194d`  
		Last Modified: Fri, 30 Oct 2026 17:36:03 GMT  
		Size: 1.1 GB (1133642432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e70a85f76ddbab53ad6da2d5dba4b2caceaa56508e705de23ba534d9006581fb`  
		Last Modified: Wed, 11 Nov 2026 22:15:53 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10` - unknown; unknown

```console
$ docker pull swift@sha256:c5542f289694a06361ad8ce4313f69bb68b9fa37baf9bae1848fb19cf11a961b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14434598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b52be2a7dd19aa2316cd773f50c1baaf51431c90bb2a6aa7fbf38c7c30ee5f7`

```dockerfile
```

-	Layers:
	-	`sha256:fd53fc26252182b5adbac3bfeac402e82dd270ba78e76adbf6bae6e086b05be7`  
		Last Modified: Wed, 11 Nov 2026 22:15:54 GMT  
		Size: 14.4 MB (14419958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45fbe172450145033a2dacfd7ae92f16c6be8870cf44f95e5bb39c19c02ee217`  
		Last Modified: Wed, 11 Nov 2026 22:15:53 GMT  
		Size: 14.6 KB (14640 bytes)  
		MIME: application/vnd.in-toto+json
