## `swift:rhel-ubi9`

```console
$ docker pull swift@sha256:81b8df740e4dab0f5e416387b3c2a4f918b85c30b40547333dde77943fdc8b65
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9` - linux; amd64

```console
$ docker pull swift@sha256:a52b98e7e6c3ce6f844c6e7c3c99ddb59ed8d6bd7fc85d6228cff78d90557ce3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1352812992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91e84fe8766c803c1526692e57e7a410ba955c7ddcdf6f174900b4e94afb20ce`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 00:52:49 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 00:52:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 00:52:50 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 02 Nov 2026 00:52:50 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 00:52:50 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Mon, 02 Nov 2026 00:52:51 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:52:51 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:52:51 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Mon, 02 Nov 2026 00:52:52 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 00:52:52 GMT
LABEL io.openshift.tags="base rhel9"
# Mon, 02 Nov 2026 00:52:52 GMT
ENV container oci
# Mon, 02 Nov 2026 00:52:54 GMT
COPY dir:57862f2b8426c0e1e39142d4759f9138e5e87d33e6a3232c43827a208ceeb5b7 in /      
# Mon, 02 Nov 2026 00:52:54 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 00:52:55 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 00:52:55 GMT
COPY dir:f2e1aa146c421253a4e6231bf83680d92124e76ff88c6791af2de4b2324ce4e6 in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 00:52:55 GMT
COPY dir:f2e1aa146c421253a4e6231bf83680d92124e76ff88c6791af2de4b2324ce4e6 in /root/buildinfo/      
# Mon, 02 Nov 2026 00:52:56 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T00:51:55Z" "org.opencontainers.image.revision"="fefa07252f71a7201cf80dc0f51556441aedcebe" "build-date"="2026-11-02T00:51:55Z" "architecture"="x86_64" "vcs-ref"="fefa07252f71a7201cf80dc0f51556441aedcebe" "vcs-type"="git" "release"="1793580630"org.opencontainers.image.created=2026-11-02T00:51:55Z,org.opencontainers.image.revision=fefa07252f71a7201cf80dc0f51556441aedcebe
# Tue, 03 Nov 2026 00:59:21 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 03 Nov 2026 00:59:21 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 03 Nov 2026 00:59:21 GMT
RUN yum -y install   git                 gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Tue, 03 Nov 2026 00:59:21 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 03 Nov 2026 00:59:21 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 03 Nov 2026 00:59:21 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Tue, 03 Nov 2026 00:59:21 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Tue, 03 Nov 2026 00:59:21 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 03 Nov 2026 00:59:21 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 03 Nov 2026 01:00:07 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Tue, 03 Nov 2026 01:00:07 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:db98f125c76df4cc6155198662cac7110f9ca82ff5b3acd20e663a51df0e101b`  
		Last Modified: Mon, 02 Nov 2026 02:04:39 GMT  
		Size: 80.5 MB (80475531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58ffa240c666097571dd87ce6966c0581efede92370d456ff4bc1aa44ae81929`  
		Last Modified: Tue, 03 Nov 2026 01:02:24 GMT  
		Size: 126.8 MB (126753357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4f571ff8b4986f8c37033c9475334721f955624d1b810d969965fcd63e860e4`  
		Last Modified: Fri, 30 Oct 2026 17:35:13 GMT  
		Size: 1.1 GB (1145583931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5da80f135ede9cf5b78855c37d3ced3a13ef495a985adb63b1bf5c4dced246a2`  
		Last Modified: Tue, 03 Nov 2026 01:02:21 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9` - unknown; unknown

```console
$ docker pull swift@sha256:58b12cfd8f553776b50f8fdd8c820d5015bdd25cccdd9a63d5469754c4b49356
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13001713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc0a97969ed1cd8baeab6f2d52ecb622b0787731f500ef31c919d2e92df9cabe`

```dockerfile
```

-	Layers:
	-	`sha256:cb326b95646899d9c66e9730e7819ab76829b4ca5e743352e69a44887de41316`  
		Last Modified: Tue, 03 Nov 2026 01:02:21 GMT  
		Size: 13.0 MB (12987271 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e93585428650734014aff678f5c5fa939ecbe3b1644000067c0bc7342d96c7d`  
		Last Modified: Tue, 03 Nov 2026 01:02:21 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:18cf7952b92bcf288b1f62fd398828bfb10619e1f9407e27513e177ee0b9fe2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1340427807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c766bf9c11dd9a3f584346b468066acf612327c23d3ac2c3b2c207bc82a3c04`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 00:54:17 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 00:54:17 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 00:54:17 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 02 Nov 2026 00:54:17 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 00:54:17 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Mon, 02 Nov 2026 00:54:17 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:54:17 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:54:17 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Mon, 02 Nov 2026 00:54:17 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 00:54:17 GMT
LABEL io.openshift.tags="base rhel9"
# Mon, 02 Nov 2026 00:54:17 GMT
ENV container oci
# Mon, 02 Nov 2026 00:54:20 GMT
COPY dir:8c0b92a4861e07fd9713d8b8f16666bcdabfb0c1d81980e5e9a8f7325cf68dd1 in /      
# Mon, 02 Nov 2026 00:54:21 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 00:54:21 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 00:54:21 GMT
COPY dir:1efae8e4afff2d6d7ab7e2c248e5e00d41d713713532fb1ea8be68ab253faa79 in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 00:54:22 GMT
COPY dir:1efae8e4afff2d6d7ab7e2c248e5e00d41d713713532fb1ea8be68ab253faa79 in /root/buildinfo/      
# Mon, 02 Nov 2026 00:54:22 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T00:53:44Z" "org.opencontainers.image.revision"="fefa07252f71a7201cf80dc0f51556441aedcebe" "build-date"="2026-11-02T00:53:44Z" "architecture"="aarch64" "vcs-ref"="fefa07252f71a7201cf80dc0f51556441aedcebe" "vcs-type"="git" "release"="1793580630"org.opencontainers.image.created=2026-11-02T00:53:44Z,org.opencontainers.image.revision=fefa07252f71a7201cf80dc0f51556441aedcebe
# Tue, 03 Nov 2026 00:59:10 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 03 Nov 2026 00:59:10 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 03 Nov 2026 00:59:10 GMT
RUN yum -y install   git                 gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Tue, 03 Nov 2026 00:59:10 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 03 Nov 2026 00:59:10 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 03 Nov 2026 00:59:10 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Tue, 03 Nov 2026 00:59:10 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Tue, 03 Nov 2026 00:59:10 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 03 Nov 2026 00:59:10 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 03 Nov 2026 00:59:55 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Tue, 03 Nov 2026 00:59:56 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:e84ca6eccdfeb9f7d8def30013c2bbc71ff4228c5b432d1bc9ea1a11aecdf15b`  
		Last Modified: Mon, 02 Nov 2026 03:10:54 GMT  
		Size: 78.2 MB (78193462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c31dd3cb2c331ea2fee7706c42b71d267aba3edbf485ad067ccb70f394e8987`  
		Last Modified: Tue, 03 Nov 2026 01:02:14 GMT  
		Size: 120.1 MB (120095258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acec1760ea5b65f9fd922cf42ed3ff2e8edaa8947507f65dea6e7de3fec9dc4c`  
		Last Modified: Fri, 30 Oct 2026 17:35:02 GMT  
		Size: 1.1 GB (1142138913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd55da105cce342543cee655793fb95e43d5cf58463da4e2b06da2fff592d0f`  
		Last Modified: Tue, 03 Nov 2026 01:02:11 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9` - unknown; unknown

```console
$ docker pull swift@sha256:f09d574908a9378cf34470fdbf81250e60f3bc90f118324e372e29de17a784f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12874528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b16c60f5079a9704516a3f3d32041ae334e18c96b01c01841d86671baf5a4250`

```dockerfile
```

-	Layers:
	-	`sha256:a34a601cbbea95676f6951b1d78514cdb9c9939ec3dbf5fed0b4bb792804e21d`  
		Last Modified: Tue, 03 Nov 2026 01:02:11 GMT  
		Size: 12.9 MB (12859970 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e520039935528b6cb588566bf9a12f44acba5ece43f750df1f111c581c164b2`  
		Last Modified: Tue, 03 Nov 2026 01:02:11 GMT  
		Size: 14.6 KB (14558 bytes)  
		MIME: application/vnd.in-toto+json
