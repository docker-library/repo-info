## `swift:rhel-ubi10`

```console
$ docker pull swift@sha256:58fb9d7a138d575d150f6569e3ce5b1c11c5957d1f8f90ec5f72997e8430f019
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi10` - linux; amd64

```console
$ docker pull swift@sha256:2d29fcabfd6fd554b6246d10e9b08ed5b4926d5f7688708d57fb2fa3c332fd21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1372736626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54af90c2418d8d4ba7abfa8682c1fbb61bcbde520593b4b25676969d48a2ddc5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 12 Oct 2026 05:57:27 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."       url="https://catalog.redhat.com/en/search?searchType=containers"       com.redhat.component="ubi10-container"       name="ubi10/ubi"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       version="10.2"       distribution-scope="public"
# Mon, 12 Oct 2026 05:57:27 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 05:57:27 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 10."
# Mon, 12 Oct 2026 05:57:27 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 05:57:28 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 05:57:28 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10"
# Mon, 12 Oct 2026 05:57:28 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 05:57:28 GMT
LABEL io.openshift.tags="base rhel10"
# Mon, 12 Oct 2026 05:57:28 GMT
ENV container oci
# Mon, 12 Oct 2026 05:57:30 GMT
COPY dir:661859490c144aca93aeefb25c0fda6c7c0500140e9ffc76fda52d5c2d9d55cf in /      
# Mon, 12 Oct 2026 05:57:30 GMT
COPY file:7434e7ac38eae122961f7433f94f69681ae6b7673c89bc0a33c8831ed9c5dbfc in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 05:57:30 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 05:57:30 GMT
COPY dir:1b297e8c745d2061918687a46ec2cb6be4ad9cd86a4c02a0eaa810f00f4f684d in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 05:57:31 GMT
COPY dir:1b297e8c745d2061918687a46ec2cb6be4ad9cd86a4c02a0eaa810f00f4f684d in /root/buildinfo/      
# Mon, 12 Oct 2026 05:57:31 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T05:56:43Z" "org.opencontainers.image.revision"="e5ff7915d6071ed85ed53c6632287adc99773873" "build-date"="2026-10-12T05:56:43Z" "architecture"="x86_64" "vcs-ref"="e5ff7915d6071ed85ed53c6632287adc99773873" "vcs-type"="git" "release"="1791784404"org.opencontainers.image.created=2026-10-12T05:56:43Z,org.opencontainers.image.revision=e5ff7915d6071ed85ed53c6632287adc99773873
# Tue, 13 Oct 2026 00:38:12 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 13 Oct 2026 00:38:12 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 13 Oct 2026 00:38:12 GMT
RUN yum -y install   git                 gnupg2              gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Tue, 13 Oct 2026 00:38:12 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 13 Oct 2026 00:38:12 GMT
ARG SWIFT_PLATFORM=ubi10
# Tue, 13 Oct 2026 00:38:12 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Tue, 13 Oct 2026 00:38:12 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Tue, 13 Oct 2026 00:38:12 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 00:38:12 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 00:38:50 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Tue, 13 Oct 2026 00:38:50 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:a30fe371da43eb1d104a92007d7ce0638368bfb89098dd0763fd38fc63ee4c6e`  
		Last Modified: Mon, 12 Oct 2026 07:08:13 GMT  
		Size: 81.1 MB (81102349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6d17c0b50374a3819fa0b1a660b74f9f675e47dfc53aa58525af815d5ff2137`  
		Last Modified: Tue, 13 Oct 2026 00:41:29 GMT  
		Size: 147.6 MB (147591573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8f719ccf8731f28c4ac125969f81b6b343c4d2fed3124bfff9822cc5eea5fc5`  
		Last Modified: Fri, 18 Sep 2026 23:53:51 GMT  
		Size: 1.1 GB (1144042530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2df62ccdfa7ca26d2c52a4f702f3279ec14b3f11a19ef5ddf44489d2a62e737a`  
		Last Modified: Tue, 13 Oct 2026 00:41:26 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10` - unknown; unknown

```console
$ docker pull swift@sha256:a53142510f04a91c2119456cae25122a078cc340d7b983f83c762b7d5708182f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14164261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96f628875af41e8d4460d03f54d546530351aed137104ffb8eb783d64ae72b3a`

```dockerfile
```

-	Layers:
	-	`sha256:6b560a9d9621cee2806361695d4d6e822c57a322a6dfeed812746010647f0969`  
		Last Modified: Tue, 13 Oct 2026 00:41:27 GMT  
		Size: 14.1 MB (14149738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac6c466fed1a73bc5edd9bfec089f51512d98f68459876a186e2f17cf1796ad7`  
		Last Modified: Tue, 13 Oct 2026 00:41:26 GMT  
		Size: 14.5 KB (14523 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi10` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:474d4ec752ee3f757700c2da4633119c90a6b3d3403bfd397cda95af34e0f04f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1350628387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b71f0de3a774600a80f60a6230cf43b2388a16ed538d95b660960b83bd50723`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 12 Oct 2026 06:01:28 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."       url="https://catalog.redhat.com/en/search?searchType=containers"       com.redhat.component="ubi10-container"       name="ubi10/ubi"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       version="10.2"       distribution-scope="public"
# Mon, 12 Oct 2026 06:01:28 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 06:01:28 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 10."
# Mon, 12 Oct 2026 06:01:28 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:01:28 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:01:28 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10"
# Mon, 12 Oct 2026 06:01:28 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 06:01:28 GMT
LABEL io.openshift.tags="base rhel10"
# Mon, 12 Oct 2026 06:01:29 GMT
ENV container oci
# Mon, 12 Oct 2026 06:01:32 GMT
COPY dir:50b3ac303a7c17063e5db3a63907f596dfee9d136b6f06e8c6e060fd6dfe93df in /      
# Mon, 12 Oct 2026 06:01:32 GMT
COPY file:7434e7ac38eae122961f7433f94f69681ae6b7673c89bc0a33c8831ed9c5dbfc in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 06:01:32 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 06:01:32 GMT
COPY dir:7764f2d22e03556e92d83f5cc993b11482c5597c1f4af18532268511fac556e8 in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 06:01:33 GMT
COPY dir:7764f2d22e03556e92d83f5cc993b11482c5597c1f4af18532268511fac556e8 in /root/buildinfo/      
# Mon, 12 Oct 2026 06:01:34 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T06:00:57Z" "org.opencontainers.image.revision"="e5ff7915d6071ed85ed53c6632287adc99773873" "build-date"="2026-10-12T06:00:57Z" "architecture"="aarch64" "vcs-ref"="e5ff7915d6071ed85ed53c6632287adc99773873" "vcs-type"="git" "release"="1791784404"org.opencontainers.image.created=2026-10-12T06:00:57Z,org.opencontainers.image.revision=e5ff7915d6071ed85ed53c6632287adc99773873
# Tue, 13 Oct 2026 00:36:20 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 13 Oct 2026 00:36:20 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 13 Oct 2026 00:36:20 GMT
RUN yum -y install   git                 gnupg2              gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Tue, 13 Oct 2026 00:36:20 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 13 Oct 2026 00:36:20 GMT
ARG SWIFT_PLATFORM=ubi10
# Tue, 13 Oct 2026 00:36:20 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Tue, 13 Oct 2026 00:36:20 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Tue, 13 Oct 2026 00:36:20 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 00:36:20 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 00:36:57 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Tue, 13 Oct 2026 00:36:57 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:3327b4993522a5f0a8a5b15e406adb89dfe1e18262c2d7252f3066a6190dbf2e`  
		Last Modified: Mon, 12 Oct 2026 07:08:27 GMT  
		Size: 78.6 MB (78563481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c5d2faeb180df519411858634e6575971fc95ac861a4e862a2b9d9b3d65da35`  
		Last Modified: Tue, 13 Oct 2026 00:39:20 GMT  
		Size: 138.5 MB (138490338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73fd997c5bd279753105ef69eccd9790f8314532c0d23cc51581923bcaf7d271`  
		Last Modified: Fri, 18 Sep 2026 23:53:53 GMT  
		Size: 1.1 GB (1133574394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:955196a98219806cea2028ed2f5ec1aea9a02ba83424969a1a8d315b9109b00c`  
		Last Modified: Tue, 13 Oct 2026 00:39:17 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10` - unknown; unknown

```console
$ docker pull swift@sha256:7b52ea059a302253c756e8a7597e022b9422fd6aa1cb3c97d5c3c6515805cb00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14023460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a190cdfec045bf265a357c41eb377f55eea3502af28c7332601aa8c7715547c`

```dockerfile
```

-	Layers:
	-	`sha256:7e0caa1bcf48cbab39f0ba0b510a2a7df83aec341177d1dad0dc273592b27448`  
		Last Modified: Tue, 13 Oct 2026 00:39:18 GMT  
		Size: 14.0 MB (14008820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:470a4908cfaf776fa020059552f6feb8a4b15472ba0941ef83b18750e0dd52d8`  
		Last Modified: Tue, 13 Oct 2026 00:39:17 GMT  
		Size: 14.6 KB (14640 bytes)  
		MIME: application/vnd.in-toto+json
