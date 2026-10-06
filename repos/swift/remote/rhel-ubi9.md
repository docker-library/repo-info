## `swift:rhel-ubi9`

```console
$ docker pull swift@sha256:45290faa88c1516c795709f5c60986863668e0d4e73e3a59bd7a13763543ac3b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9` - linux; amd64

```console
$ docker pull swift@sha256:498c91a1812e869eef7bf55d806baea6c590a19f9ed2a1e8a5cbec05b1da872f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1352588024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdcaddbbed6f04c6d4dd9cf03bcffc4c80c1491a3ba11f63f4616997d1692cc5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 05:51:47 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Mon, 05 Oct 2026 05:51:47 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 05 Oct 2026 05:51:47 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 05 Oct 2026 05:51:47 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 05 Oct 2026 05:51:47 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Mon, 05 Oct 2026 05:51:47 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 05 Oct 2026 05:51:47 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 05 Oct 2026 05:51:47 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Mon, 05 Oct 2026 05:51:47 GMT
LABEL io.openshift.expose-services=""
# Mon, 05 Oct 2026 05:51:47 GMT
LABEL io.openshift.tags="base rhel9"
# Mon, 05 Oct 2026 05:51:47 GMT
ENV container oci
# Mon, 05 Oct 2026 05:51:49 GMT
COPY dir:4fd78772815dcc995930f30457a6b471934654d337a43b6d57cd6050962e539e in /      
# Mon, 05 Oct 2026 05:51:49 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 05 Oct 2026 05:51:49 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 05:51:49 GMT
COPY dir:5daa5d387558973a857ff219d2cfa1c6f579680245c2103f9e3a7a4d54f06159 in /usr/share/buildinfo/      
# Mon, 05 Oct 2026 05:51:49 GMT
COPY dir:5daa5d387558973a857ff219d2cfa1c6f579680245c2103f9e3a7a4d54f06159 in /root/buildinfo/      
# Mon, 05 Oct 2026 05:51:50 GMT
LABEL "org.opencontainers.image.created"="2026-10-05T05:51:22Z" "org.opencontainers.image.revision"="536f9bb525251d7e6880ee0c8bd82202bc1a1daf" "build-date"="2026-10-05T05:51:22Z" "architecture"="x86_64" "vcs-ref"="536f9bb525251d7e6880ee0c8bd82202bc1a1daf" "vcs-type"="git" "release"="1791179325"org.opencontainers.image.created=2026-10-05T05:51:22Z,org.opencontainers.image.revision=536f9bb525251d7e6880ee0c8bd82202bc1a1daf
# Mon, 05 Oct 2026 21:36:37 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Mon, 05 Oct 2026 21:36:37 GMT
LABEL description=Docker Container for the Swift programming language
# Mon, 05 Oct 2026 21:36:37 GMT
RUN yum -y install   git                 gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Mon, 05 Oct 2026 21:36:37 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Mon, 05 Oct 2026 21:36:37 GMT
ARG SWIFT_PLATFORM=ubi9
# Mon, 05 Oct 2026 21:36:37 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Mon, 05 Oct 2026 21:36:37 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Mon, 05 Oct 2026 21:36:37 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Mon, 05 Oct 2026 21:36:37 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Mon, 05 Oct 2026 21:37:16 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Mon, 05 Oct 2026 21:37:16 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:657ba7c0db9407abb9cd900407b4404a11b327cea89512539a62391321c8e58e`  
		Last Modified: Mon, 05 Oct 2026 06:45:16 GMT  
		Size: 80.5 MB (80463064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1341dc625503557fb874a92a8c259ad2cd13e952a8cae585aa20ed5ba49dde12`  
		Last Modified: Mon, 05 Oct 2026 21:39:31 GMT  
		Size: 126.7 MB (126662916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d63a07ce8196e061c10e51f879ee10c16c2b568108a5a5311a967e65e68773e1`  
		Last Modified: Fri, 18 Sep 2026 23:53:31 GMT  
		Size: 1.1 GB (1145461870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73932e7944f0ba4214e87392accc4b94871724c208addec709cff1d82da3cc10`  
		Last Modified: Mon, 05 Oct 2026 21:39:28 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9` - unknown; unknown

```console
$ docker pull swift@sha256:a1d2fb757601f1ea83d8d8edef8db3a0a3287719f6d0d5a39c0c1211509ef4f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13015449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bce88f54165ff763bbedb323a811d6a59f9da76cf9475799eeee414a4ed386b`

```dockerfile
```

-	Layers:
	-	`sha256:e4bc0c210b48764082aa2fef026263559de98d965ff78d75b4c53ee9d1ebfe1f`  
		Last Modified: Mon, 05 Oct 2026 21:39:29 GMT  
		Size: 13.0 MB (13001007 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40d6f58b0d82a81372e212695ccd6930b42f82c2e1c4aadf424abfdce1b265eb`  
		Last Modified: Mon, 05 Oct 2026 21:39:29 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:3722d8d0d5d2b31aa541705e0889bb8f85601d7aa15de25e66d1630fbca78cb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1340190561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda2c4a69ab6bbe6a151d0b88f674bef781f32628cf304bb9dc8084660d4b0ee`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 05:53:26 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Mon, 05 Oct 2026 05:53:26 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 05 Oct 2026 05:53:26 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 05 Oct 2026 05:53:26 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 05 Oct 2026 05:53:26 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Mon, 05 Oct 2026 05:53:26 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 05 Oct 2026 05:53:26 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 05 Oct 2026 05:53:26 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Mon, 05 Oct 2026 05:53:26 GMT
LABEL io.openshift.expose-services=""
# Mon, 05 Oct 2026 05:53:26 GMT
LABEL io.openshift.tags="base rhel9"
# Mon, 05 Oct 2026 05:53:26 GMT
ENV container oci
# Mon, 05 Oct 2026 05:53:29 GMT
COPY dir:d25b93149ff19c65847554efad1fd2396e198a003f7f481c9ed11af2c0e69cea in /      
# Mon, 05 Oct 2026 05:53:29 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 05 Oct 2026 05:53:29 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 05:53:29 GMT
COPY dir:b9ec8fdc7da6ef0eef613952a780b47b12373fca0c37e651ec9b9320674af54c in /usr/share/buildinfo/      
# Mon, 05 Oct 2026 05:53:29 GMT
COPY dir:b9ec8fdc7da6ef0eef613952a780b47b12373fca0c37e651ec9b9320674af54c in /root/buildinfo/      
# Mon, 05 Oct 2026 05:53:30 GMT
LABEL "org.opencontainers.image.created"="2026-10-05T05:53:02Z" "org.opencontainers.image.revision"="536f9bb525251d7e6880ee0c8bd82202bc1a1daf" "build-date"="2026-10-05T05:53:02Z" "architecture"="aarch64" "vcs-ref"="536f9bb525251d7e6880ee0c8bd82202bc1a1daf" "vcs-type"="git" "release"="1791179325"org.opencontainers.image.created=2026-10-05T05:53:02Z,org.opencontainers.image.revision=536f9bb525251d7e6880ee0c8bd82202bc1a1daf
# Mon, 05 Oct 2026 21:43:39 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Mon, 05 Oct 2026 21:43:39 GMT
LABEL description=Docker Container for the Swift programming language
# Mon, 05 Oct 2026 21:43:39 GMT
RUN yum -y install   git                 gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Mon, 05 Oct 2026 21:43:39 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Mon, 05 Oct 2026 21:43:39 GMT
ARG SWIFT_PLATFORM=ubi9
# Mon, 05 Oct 2026 21:43:39 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Mon, 05 Oct 2026 21:43:39 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Mon, 05 Oct 2026 21:43:39 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Mon, 05 Oct 2026 21:43:39 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Mon, 05 Oct 2026 21:44:26 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Mon, 05 Oct 2026 21:44:26 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:345f7aba5dd6cd6e0955c1870a843de0732c2b1156a17a2aec2f58d775463708`  
		Last Modified: Mon, 05 Oct 2026 06:44:02 GMT  
		Size: 78.2 MB (78187774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d528de67a2f75867b4186eb50f187cc7268b236b628e1967301115a2a74539`  
		Last Modified: Mon, 05 Oct 2026 21:46:46 GMT  
		Size: 120.0 MB (119957115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c718624100c98820206167ab755ac2b44f8e6956643eab861a60f6e2f106ffa`  
		Last Modified: Fri, 18 Sep 2026 23:53:21 GMT  
		Size: 1.1 GB (1142045503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0944a1861ea2781042c756b100a8be8229cb19d1e68252d2002fbe3c9fd48ca`  
		Last Modified: Mon, 05 Oct 2026 21:46:43 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9` - unknown; unknown

```console
$ docker pull swift@sha256:c3d75282209b6dfe7af0210c6d2f179e0fe7802f7463e4c0010066a60dee186e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12888264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8f03ca01cfdae0d3e0bfd3cd7191ab7338a986658825b2d75dac962372c4f5`

```dockerfile
```

-	Layers:
	-	`sha256:8daf9ffc76174c027f1403317e67d2a48e78d04b62642fef27d6026536223c12`  
		Last Modified: Mon, 05 Oct 2026 21:46:44 GMT  
		Size: 12.9 MB (12873706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36c17119361d781bd3eee3ee3f8e67a1f597112903deb2cb3fd3343a2124debc`  
		Last Modified: Mon, 05 Oct 2026 21:46:43 GMT  
		Size: 14.6 KB (14558 bytes)  
		MIME: application/vnd.in-toto+json
