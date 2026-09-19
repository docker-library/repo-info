## `swift:rhel-ubi9`

```console
$ docker pull swift@sha256:5c19a4ae31baf64e7c4f070955a415457fca4caafb626a3358b5a5147dbe66ce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9` - linux; amd64

```console
$ docker pull swift@sha256:0b347c2a3da8b80c63e57ee546b2c7a3cbbb3df29d59e7fd9cfe063ff1af3dda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1352567771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4589062e4962346d9a2317af81330430f0c39b70ad464dd1409e502a6f91803`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 16 Sep 2026 09:52:54 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Wed, 16 Sep 2026 09:52:54 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 16 Sep 2026 09:52:54 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 16 Sep 2026 09:52:54 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 16 Sep 2026 09:52:54 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Wed, 16 Sep 2026 09:52:54 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 09:52:54 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 09:52:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Wed, 16 Sep 2026 09:52:54 GMT
LABEL io.openshift.expose-services=""
# Wed, 16 Sep 2026 09:52:54 GMT
LABEL io.openshift.tags="base rhel9"
# Wed, 16 Sep 2026 09:52:54 GMT
ENV container oci
# Wed, 16 Sep 2026 09:52:56 GMT
COPY dir:ab02c9a25642e90b8eea2d1ca8d97049669bd0349a72636dbf4a05447cb33bc9 in /      
# Wed, 16 Sep 2026 09:52:56 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 16 Sep 2026 09:52:56 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 09:52:56 GMT
COPY dir:4c18b02d085cbf8444985104fdbe68445959b50c254aa9aab20a2cf2b86c84b9 in /usr/share/buildinfo/      
# Wed, 16 Sep 2026 09:52:56 GMT
COPY dir:4c18b02d085cbf8444985104fdbe68445959b50c254aa9aab20a2cf2b86c84b9 in /root/buildinfo/      
# Wed, 16 Sep 2026 09:52:57 GMT
LABEL "org.opencontainers.image.created"="2026-09-16T09:52:32Z" "org.opencontainers.image.revision"="2fd8738ecb2f0fb14d41b5138c446e13b1be5682" "build-date"="2026-09-16T09:52:32Z" "architecture"="x86_64" "vcs-ref"="2fd8738ecb2f0fb14d41b5138c446e13b1be5682" "vcs-type"="git" "release"="1789552280"org.opencontainers.image.created=2026-09-16T09:52:32Z,org.opencontainers.image.revision=2fd8738ecb2f0fb14d41b5138c446e13b1be5682
# Fri, 18 Sep 2026 23:50:06 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 18 Sep 2026 23:50:06 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 18 Sep 2026 23:50:06 GMT
RUN yum -y install   git                 gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Fri, 18 Sep 2026 23:50:06 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 18 Sep 2026 23:50:06 GMT
ARG SWIFT_PLATFORM=ubi9
# Fri, 18 Sep 2026 23:50:06 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Fri, 18 Sep 2026 23:50:06 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Fri, 18 Sep 2026 23:50:06 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 18 Sep 2026 23:50:06 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 18 Sep 2026 23:50:47 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Fri, 18 Sep 2026 23:50:47 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:31b6ac2e5db505f4bd7da56bc0241b5660a2bb7b856368331e9fb287e5f7dc1a`  
		Last Modified: Wed, 16 Sep 2026 11:07:09 GMT  
		Size: 80.5 MB (80454149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e74ead71efbee494049275dc8e1844903e9602e3f3a0cbd8b0d72a790ef8369`  
		Last Modified: Fri, 18 Sep 2026 23:53:07 GMT  
		Size: 126.7 MB (126651578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d63a07ce8196e061c10e51f879ee10c16c2b568108a5a5311a967e65e68773e1`  
		Last Modified: Fri, 18 Sep 2026 23:53:31 GMT  
		Size: 1.1 GB (1145461870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7156f133c318286b5bc6a764cfd388972bd593e3a5bc39568cce1b4ac4206c39`  
		Last Modified: Fri, 18 Sep 2026 23:53:02 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9` - unknown; unknown

```console
$ docker pull swift@sha256:39efbdc7bc94666648ea3f680443f1aed6fb08aef11f37ba21f5be456ff7526f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13015421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:339f80f5405daa29ea7c66896f354a211edcaa6f61144be79c7f57093a393bc2`

```dockerfile
```

-	Layers:
	-	`sha256:075e5b4e60ed8406c899d968280acadabeeaaf1f4cc280d5809dcc8cc64947d9`  
		Last Modified: Fri, 18 Sep 2026 23:53:03 GMT  
		Size: 13.0 MB (13000979 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6138c5fa5bbc6c62dc1afaf28136ba601d8f27ea12848afc708874c502cb8cd9`  
		Last Modified: Fri, 18 Sep 2026 23:53:02 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:74ce37a62dae2cbc0d4cc1b150ad7680cb7504c27e26ac9c95176ab80d30d978
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1340160023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e87c446e80fe94c2b257f78dfced592f8eecbacb1d3bc4a5627c2b2500dc83`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 16 Sep 2026 09:54:54 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Wed, 16 Sep 2026 09:54:54 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 16 Sep 2026 09:54:54 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 16 Sep 2026 09:54:54 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 16 Sep 2026 09:54:54 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Wed, 16 Sep 2026 09:54:54 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 09:54:54 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 09:54:55 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Wed, 16 Sep 2026 09:54:55 GMT
LABEL io.openshift.expose-services=""
# Wed, 16 Sep 2026 09:54:55 GMT
LABEL io.openshift.tags="base rhel9"
# Wed, 16 Sep 2026 09:54:55 GMT
ENV container oci
# Wed, 16 Sep 2026 09:54:57 GMT
COPY dir:6805296dfd67e8f5c881081099d9ee8982e5a928523aee72f27d7d8e9d17a92a in /      
# Wed, 16 Sep 2026 09:54:58 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 16 Sep 2026 09:54:58 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 09:54:58 GMT
COPY dir:72e6137cdb11a467c56059870b644da24803e393282908ef33611c5d677c5780 in /usr/share/buildinfo/      
# Wed, 16 Sep 2026 09:54:58 GMT
COPY dir:72e6137cdb11a467c56059870b644da24803e393282908ef33611c5d677c5780 in /root/buildinfo/      
# Wed, 16 Sep 2026 09:54:59 GMT
LABEL "org.opencontainers.image.created"="2026-09-16T09:54:25Z" "org.opencontainers.image.revision"="2fd8738ecb2f0fb14d41b5138c446e13b1be5682" "build-date"="2026-09-16T09:54:25Z" "architecture"="aarch64" "vcs-ref"="2fd8738ecb2f0fb14d41b5138c446e13b1be5682" "vcs-type"="git" "release"="1789552280"org.opencontainers.image.created=2026-09-16T09:54:25Z,org.opencontainers.image.revision=2fd8738ecb2f0fb14d41b5138c446e13b1be5682
# Fri, 18 Sep 2026 23:49:50 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 18 Sep 2026 23:49:50 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 18 Sep 2026 23:49:50 GMT
RUN yum -y install   git                 gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Fri, 18 Sep 2026 23:49:50 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 18 Sep 2026 23:49:50 GMT
ARG SWIFT_PLATFORM=ubi9
# Fri, 18 Sep 2026 23:49:50 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Fri, 18 Sep 2026 23:49:50 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Fri, 18 Sep 2026 23:49:50 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 18 Sep 2026 23:49:50 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 18 Sep 2026 23:50:37 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Fri, 18 Sep 2026 23:50:37 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:470103ecbbe3130390e73c8595165595961e55d5fb83cfb735a2d133c21e1307`  
		Last Modified: Wed, 16 Sep 2026 10:52:27 GMT  
		Size: 78.2 MB (78154346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af882c9b4eddd6795ab5b6457ed398729dba400b2d30b964ed7e7e9d8680dd44`  
		Last Modified: Fri, 18 Sep 2026 23:53:03 GMT  
		Size: 120.0 MB (119960000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c718624100c98820206167ab755ac2b44f8e6956643eab861a60f6e2f106ffa`  
		Last Modified: Fri, 18 Sep 2026 23:53:21 GMT  
		Size: 1.1 GB (1142045503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db9e133a96d36ef12e582fb001d531c783dfc40895bd78c5b00d6beab6d77f0c`  
		Last Modified: Fri, 18 Sep 2026 23:52:58 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9` - unknown; unknown

```console
$ docker pull swift@sha256:c542bf9d1008ab65907947dd9d667a8411d02bf8c9c99d65044d0dfa33de8904
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12888236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1d129d1d5d4eebf66a8652ff11f3c11fa0ddf0931c53cae72995a2c0edf45ca`

```dockerfile
```

-	Layers:
	-	`sha256:431dcd04060ea05833ea8e22f64b838618ae52c9c4c65c27281d8ca99ca0cb89`  
		Last Modified: Fri, 18 Sep 2026 23:52:59 GMT  
		Size: 12.9 MB (12873678 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69e07c7b3cc9e7654b4858a331adb6c22e84a7286ce28b4d07c3fbdf68805521`  
		Last Modified: Fri, 18 Sep 2026 23:52:58 GMT  
		Size: 14.6 KB (14558 bytes)  
		MIME: application/vnd.in-toto+json
