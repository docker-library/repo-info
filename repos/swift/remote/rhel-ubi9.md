## `swift:rhel-ubi9`

```console
$ docker pull swift@sha256:b4b98bd62366e45e2c0d1e56c8aeae8538f4fdee8da92b65ccd06d8e7a20c5e1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9` - linux; amd64

```console
$ docker pull swift@sha256:b69a974beab058be5fc63ee0b36d34e0faf8ceeb2370e4e793a435402e2e0a90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1352580606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f071e532d6384de230514a454364103db8fc84668b84148150c858c151cc1509`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 22 Sep 2026 09:06:34 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 09:06:34 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 09:06:34 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 09:06:34 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 09:06:34 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 09:06:34 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 09:06:34 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 09:06:34 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Tue, 22 Sep 2026 09:06:34 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 09:06:34 GMT
LABEL io.openshift.tags="base rhel9"
# Tue, 22 Sep 2026 09:06:34 GMT
ENV container oci
# Tue, 22 Sep 2026 09:06:35 GMT
COPY dir:a3b5837b26cc0e33c75d80b0a3efe839713de4b4152c59f0938b4f50bd57266b in /      
# Tue, 22 Sep 2026 09:06:36 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 09:06:36 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 09:06:36 GMT
COPY dir:2df47eef1232a080ffcd15078e6caecd7c4733b9af660fe16b32ecc44a2d6cc1 in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 09:06:36 GMT
COPY dir:2df47eef1232a080ffcd15078e6caecd7c4733b9af660fe16b32ecc44a2d6cc1 in /root/buildinfo/      
# Tue, 22 Sep 2026 09:06:36 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T09:06:13Z" "org.opencontainers.image.revision"="eb94d3799bf4dea186e4f799b9033a31d1b4cebc" "build-date"="2026-09-22T09:06:13Z" "architecture"="x86_64" "vcs-ref"="eb94d3799bf4dea186e4f799b9033a31d1b4cebc" "vcs-type"="git" "release"="1790067847"org.opencontainers.image.created=2026-09-22T09:06:13Z,org.opencontainers.image.revision=eb94d3799bf4dea186e4f799b9033a31d1b4cebc
# Tue, 22 Sep 2026 18:52:12 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 22 Sep 2026 18:52:12 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 22 Sep 2026 18:52:12 GMT
RUN yum -y install   git                 gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Tue, 22 Sep 2026 18:52:12 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 22 Sep 2026 18:52:12 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 22 Sep 2026 18:52:12 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Tue, 22 Sep 2026 18:52:12 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Tue, 22 Sep 2026 18:52:12 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 22 Sep 2026 18:52:12 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 22 Sep 2026 18:52:54 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Tue, 22 Sep 2026 18:52:54 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:3c2656b653d9d2edda649bbf31b531ed53c776c9f1c5b2f3675df25fe2d56d20`  
		Last Modified: Tue, 22 Sep 2026 09:48:06 GMT  
		Size: 80.5 MB (80456264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6edf01b7a128f9662edc863a04a6cb4450c4993c4a7e076f75827ed9d27c2698`  
		Last Modified: Tue, 22 Sep 2026 18:55:23 GMT  
		Size: 126.7 MB (126662298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d63a07ce8196e061c10e51f879ee10c16c2b568108a5a5311a967e65e68773e1`  
		Last Modified: Fri, 18 Sep 2026 23:53:31 GMT  
		Size: 1.1 GB (1145461870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3189e21c08287a096886739e1d5d4e9d15ec32876e5ae9c5ffeab0b3970a49`  
		Last Modified: Tue, 22 Sep 2026 18:55:19 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9` - unknown; unknown

```console
$ docker pull swift@sha256:f049f96524da428d13f34aeb4f9ab3006f6baa3c937818e61c31fb084e31b10a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13015425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f113a7e5fe9dbb4d8ed5a7206ab7b89b65b7a0d725376da5a63f467129fab676`

```dockerfile
```

-	Layers:
	-	`sha256:13ffb00e9d2819f63a54af12d7b8b4d902188d8895320ce09c5f47778edfde4d`  
		Last Modified: Tue, 22 Sep 2026 18:55:20 GMT  
		Size: 13.0 MB (13000983 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:087b25c22e964e527cdda72ccff04be3f47a911945a1b949f555de12f828a9b5`  
		Last Modified: Tue, 22 Sep 2026 18:55:20 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:1d7c75275488e796dbeac6a7d3f56879a93e62bd154a5e268459b3562fccf352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1340190212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8a5aeeccfb0b525e50cd3cefc52367449615cd31276c8edd05a89baa4342612`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 22 Sep 2026 09:09:23 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 09:09:23 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 09:09:23 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 09:09:23 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 09:09:23 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 09:09:23 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 09:09:23 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 09:09:23 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Tue, 22 Sep 2026 09:09:23 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 09:09:23 GMT
LABEL io.openshift.tags="base rhel9"
# Tue, 22 Sep 2026 09:09:23 GMT
ENV container oci
# Tue, 22 Sep 2026 09:09:26 GMT
COPY dir:95728af08d4b60637b6a37ed159bd3bb0d853f5450015f266c4371d4a2415418 in /      
# Tue, 22 Sep 2026 09:09:26 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 09:09:26 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 09:09:26 GMT
COPY dir:e3d8929116038722052f48869246659df261ec841097294771b9ef69adf8dab3 in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 09:09:26 GMT
COPY dir:e3d8929116038722052f48869246659df261ec841097294771b9ef69adf8dab3 in /root/buildinfo/      
# Tue, 22 Sep 2026 09:09:27 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T09:08:55Z" "org.opencontainers.image.revision"="eb94d3799bf4dea186e4f799b9033a31d1b4cebc" "build-date"="2026-09-22T09:08:55Z" "architecture"="aarch64" "vcs-ref"="eb94d3799bf4dea186e4f799b9033a31d1b4cebc" "vcs-type"="git" "release"="1790067847"org.opencontainers.image.created=2026-09-22T09:08:55Z,org.opencontainers.image.revision=eb94d3799bf4dea186e4f799b9033a31d1b4cebc
# Tue, 22 Sep 2026 18:52:33 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 22 Sep 2026 18:52:33 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 22 Sep 2026 18:52:33 GMT
RUN yum -y install   git                 gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Tue, 22 Sep 2026 18:52:33 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 22 Sep 2026 18:52:33 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 22 Sep 2026 18:52:33 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Tue, 22 Sep 2026 18:52:33 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Tue, 22 Sep 2026 18:52:33 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 22 Sep 2026 18:52:33 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 22 Sep 2026 18:53:16 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Tue, 22 Sep 2026 18:53:16 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:625fdf70b44e913d2a18e65ce42a9321d1e587e80307003f4f646061eab80ffe`  
		Last Modified: Tue, 22 Sep 2026 10:00:24 GMT  
		Size: 78.2 MB (78184341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:137d7a731d78c0b018f434dc77ab485258608b74dba9ada66390e245246f9c32`  
		Last Modified: Tue, 22 Sep 2026 18:55:37 GMT  
		Size: 120.0 MB (119960194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c718624100c98820206167ab755ac2b44f8e6956643eab861a60f6e2f106ffa`  
		Last Modified: Fri, 18 Sep 2026 23:53:21 GMT  
		Size: 1.1 GB (1142045503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618f1c1d0d1ef96be404618a6548ccd9e163f7edfb9a998302b57316c7aa3d22`  
		Last Modified: Tue, 22 Sep 2026 18:55:34 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9` - unknown; unknown

```console
$ docker pull swift@sha256:a0b75214102faa8ff0e38aeceeed3c3c9713dc895114f6192b0648d108d33e6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12888240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f635d683b3b330e131fea2bd62c03e60240d554f58243cf8c160d9d0328a6dbc`

```dockerfile
```

-	Layers:
	-	`sha256:2233b032920d99441f8ff20d24d9a3462eff085853eee1f2aa54651aa98a251c`  
		Last Modified: Tue, 22 Sep 2026 18:55:35 GMT  
		Size: 12.9 MB (12873682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cbd954fd007c45762022584d54b6cf2faba00ad9acf4f81c7b37a0fa576ddad`  
		Last Modified: Tue, 22 Sep 2026 18:55:34 GMT  
		Size: 14.6 KB (14558 bytes)  
		MIME: application/vnd.in-toto+json
