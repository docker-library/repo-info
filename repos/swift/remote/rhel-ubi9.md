## `swift:rhel-ubi9`

```console
$ docker pull swift@sha256:c8979bc0a8c5496a6882e188dcbf54be2fc210869d800e0a7d0f8fa6ff93d0be
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9` - linux; amd64

```console
$ docker pull swift@sha256:531dfe7e61623677e90bd4040f7f6dee3ba4e6edff4ff4c77f735a5d183c7be3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1291032312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4beeb809fca54a376b88851185a29d4da6be572395e3c10c4fe2f4aa413d8dee`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 31 Aug 2026 15:57:14 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 15:57:14 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 15:57:14 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 15:57:14 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 15:57:14 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 15:57:14 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 15:57:14 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 15:57:14 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Mon, 31 Aug 2026 15:57:14 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 15:57:14 GMT
LABEL io.openshift.tags="base rhel9"
# Mon, 31 Aug 2026 15:57:14 GMT
ENV container oci
# Mon, 31 Aug 2026 15:57:16 GMT
COPY dir:b88d71e67e8eed034613e7a4d26850ac712e60b8380b9cf9e885308e17fc5d56 in /      
# Mon, 31 Aug 2026 15:57:16 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 15:57:16 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 15:57:16 GMT
COPY dir:69b157d03ed9e602d9aa7a96da26a442c5fbb59cfef45c263074f626b5618483 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 15:57:16 GMT
COPY dir:69b157d03ed9e602d9aa7a96da26a442c5fbb59cfef45c263074f626b5618483 in /root/buildinfo/      
# Mon, 31 Aug 2026 15:57:17 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T15:56:45Z" "org.opencontainers.image.revision"="a843a58318bb7558aeae89306d0e3d2d3d21dfa1" "build-date"="2026-08-31T15:56:45Z" "architecture"="x86_64" "vcs-ref"="a843a58318bb7558aeae89306d0e3d2d3d21dfa1" "vcs-type"="git" "release"="1788191706"org.opencontainers.image.created=2026-08-31T15:56:45Z,org.opencontainers.image.revision=a843a58318bb7558aeae89306d0e3d2d3d21dfa1
# Tue, 01 Sep 2026 00:13:10 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 01 Sep 2026 00:13:10 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 01 Sep 2026 00:13:10 GMT
RUN yum -y install   git                 gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Tue, 01 Sep 2026 00:13:10 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 01 Sep 2026 00:13:10 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 01 Sep 2026 00:13:10 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Tue, 01 Sep 2026 00:13:10 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Tue, 01 Sep 2026 00:13:10 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 01 Sep 2026 00:13:10 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 01 Sep 2026 00:13:49 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Tue, 01 Sep 2026 00:13:49 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:c7cacd194b55ecf482524e1403199ccb3a5c985c131374d7916ea9e89a33c760`  
		Last Modified: Mon, 31 Aug 2026 18:06:58 GMT  
		Size: 80.5 MB (80476467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30edc3dd7c176496163a9d157ef9d1046e2701dbd50f6e9a8a0dfd1383988a8c`  
		Last Modified: Tue, 01 Sep 2026 00:16:14 GMT  
		Size: 126.6 MB (126644769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ca386ad94e60caedf102a203693712f03b2c9f33363ba6b4ea4538cd685899`  
		Last Modified: Tue, 30 Jun 2026 19:00:34 GMT  
		Size: 1.1 GB (1083910902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e2f432b7c827712f540a4ae4e1e0ebdd5d54a3ebd249617aed55a34ed172051`  
		Last Modified: Tue, 01 Sep 2026 00:16:11 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9` - unknown; unknown

```console
$ docker pull swift@sha256:b7289529e6b6c14bf92b5c04359454986bebfbf2f09da9b47d123426de5fa30c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13014349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fff537f56b11e75e03afeb900fe2c0661155b4975e81e950f5b24208f4d37bb`

```dockerfile
```

-	Layers:
	-	`sha256:0e77a067ad83956d5f01bfc8fe66fa80f7083b9d6e515b9a5b29aa42a2aae54a`  
		Last Modified: Tue, 01 Sep 2026 00:16:11 GMT  
		Size: 13.0 MB (12999908 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c3c14315baa9d6bcf6c389c64d1d265ae76ebf717f784cdce00c24f2af0852e`  
		Last Modified: Tue, 01 Sep 2026 00:16:11 GMT  
		Size: 14.4 KB (14441 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:70b089315f0bf20453c28905848b0403564e008cac83dab3c3584911edfac90f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1278253270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a27ff5f065f3f9ee6b0cf5c5968df3e67b0cca3ffb99333c584a9990949c9cc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 31 Aug 2026 16:01:58 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 16:01:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 16:01:58 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 16:01:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 16:01:58 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 16:01:58 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 16:01:58 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 16:01:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Mon, 31 Aug 2026 16:01:58 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 16:01:58 GMT
LABEL io.openshift.tags="base rhel9"
# Mon, 31 Aug 2026 16:01:58 GMT
ENV container oci
# Mon, 31 Aug 2026 16:02:01 GMT
COPY dir:1d1fb8d9f211e44f315afee608a9f8cd3cb16598857ba512fe251669fc92aa0e in /      
# Mon, 31 Aug 2026 16:02:01 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 16:02:01 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 16:02:02 GMT
COPY dir:728cdba861c52128accc79aba59d14dacefcae14b34b5b16414bcc0e2c4d4eab in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 16:02:02 GMT
COPY dir:728cdba861c52128accc79aba59d14dacefcae14b34b5b16414bcc0e2c4d4eab in /root/buildinfo/      
# Mon, 31 Aug 2026 16:02:03 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T16:01:31Z" "org.opencontainers.image.revision"="a843a58318bb7558aeae89306d0e3d2d3d21dfa1" "build-date"="2026-08-31T16:01:31Z" "architecture"="aarch64" "vcs-ref"="a843a58318bb7558aeae89306d0e3d2d3d21dfa1" "vcs-type"="git" "release"="1788191706"org.opencontainers.image.created=2026-08-31T16:01:31Z,org.opencontainers.image.revision=a843a58318bb7558aeae89306d0e3d2d3d21dfa1
# Mon, 31 Aug 2026 23:51:24 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Mon, 31 Aug 2026 23:51:24 GMT
LABEL description=Docker Container for the Swift programming language
# Mon, 31 Aug 2026 23:51:24 GMT
RUN yum -y install   git                 gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Mon, 31 Aug 2026 23:51:24 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Mon, 31 Aug 2026 23:51:24 GMT
ARG SWIFT_PLATFORM=ubi9
# Mon, 31 Aug 2026 23:51:24 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Mon, 31 Aug 2026 23:51:24 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Mon, 31 Aug 2026 23:51:24 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Mon, 31 Aug 2026 23:51:24 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Mon, 31 Aug 2026 23:52:11 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Mon, 31 Aug 2026 23:52:11 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:e9b48f0e754ad7cd11877a260fa5d4d5d3f07aa50d0e60bf7d7230b5c62cafde`  
		Last Modified: Mon, 31 Aug 2026 18:09:58 GMT  
		Size: 78.2 MB (78165058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca659bf7e42ec22903bef9d09c4d02b4040380d069340acbc8ceba05b80ed9fd`  
		Last Modified: Mon, 31 Aug 2026 23:54:22 GMT  
		Size: 120.0 MB (119965718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c59e44e5b4941d0f98cb2a8ec6ba7366987ff035e2e1466055c82431ab29fbd3`  
		Last Modified: Tue, 30 Jun 2026 18:59:37 GMT  
		Size: 1.1 GB (1080122320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ddfd3c6e8f340bdec7f80b9e16ffa77036627ad3712ebb4613436d0e4776e44`  
		Last Modified: Mon, 31 Aug 2026 23:54:19 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9` - unknown; unknown

```console
$ docker pull swift@sha256:543b339cbe523f4234de0cc293780551d31ed2061dabc73ba00a0307ba242062
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12887165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e0de1abba871e5396df968d7de124679f120c1170eebb4f22084234bc178454`

```dockerfile
```

-	Layers:
	-	`sha256:e6d36df322525d78ac96407614488e02ec92a257f57bdd7444cd89c919d559de`  
		Last Modified: Mon, 31 Aug 2026 23:54:20 GMT  
		Size: 12.9 MB (12872607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f96f917ea078f641e30a9fafe3e00fbce34342b5662a087d2194ff2159b3d967`  
		Last Modified: Mon, 31 Aug 2026 23:54:19 GMT  
		Size: 14.6 KB (14558 bytes)  
		MIME: application/vnd.in-toto+json
