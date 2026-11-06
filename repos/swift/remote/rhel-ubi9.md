## `swift:rhel-ubi9`

```console
$ docker pull swift@sha256:4604bf32748cd4af148ee429801fdb865f5a9d77c2738acc0209037725e78611
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9` - linux; amd64

```console
$ docker pull swift@sha256:566f2e677d1014937d14fda93b70ad02b1254d1da5682433dc1a786cd186228d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1352820536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd3773231de509f9a9367a601806e135a2c78e075551c7639233dfbac0782da`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 06:53:49 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 06:53:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 06:53:49 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 06:53:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 06:53:49 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 06:53:49 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 06:53:50 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 06:53:50 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Thu, 05 Nov 2026 06:53:50 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 06:53:50 GMT
LABEL io.openshift.tags="base rhel9"
# Thu, 05 Nov 2026 06:53:50 GMT
ENV container oci
# Thu, 05 Nov 2026 06:53:52 GMT
COPY dir:84f9dacc9003a385d511c3ef5759e382ff708051136f68f6d50315ca128f8c93 in /      
# Thu, 05 Nov 2026 06:53:52 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 06:53:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 06:53:52 GMT
COPY dir:477e205255221639b7717e03aad2575fbe5cf70ee79b08c06f45d1ee423c6f53 in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 06:53:52 GMT
COPY dir:477e205255221639b7717e03aad2575fbe5cf70ee79b08c06f45d1ee423c6f53 in /root/buildinfo/      
# Thu, 05 Nov 2026 06:53:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T06:53:11Z" "org.opencontainers.image.revision"="5c590161c7d0954dbfbc380a66393434e8bdae44" "build-date"="2026-11-05T06:53:11Z" "architecture"="x86_64" "vcs-ref"="5c590161c7d0954dbfbc380a66393434e8bdae44" "vcs-type"="git" "release"="1793861509"org.opencontainers.image.created=2026-11-05T06:53:11Z,org.opencontainers.image.revision=5c590161c7d0954dbfbc380a66393434e8bdae44
# Thu, 05 Nov 2026 22:54:16 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Thu, 05 Nov 2026 22:54:16 GMT
LABEL description=Docker Container for the Swift programming language
# Thu, 05 Nov 2026 22:54:16 GMT
RUN yum -y install   git                 gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Thu, 05 Nov 2026 22:54:16 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Thu, 05 Nov 2026 22:54:16 GMT
ARG SWIFT_PLATFORM=ubi9
# Thu, 05 Nov 2026 22:54:16 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Thu, 05 Nov 2026 22:54:16 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Thu, 05 Nov 2026 22:54:16 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Thu, 05 Nov 2026 22:54:16 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Thu, 05 Nov 2026 22:54:56 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Thu, 05 Nov 2026 22:54:56 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:214e07e7b5da754f03d407c00580401cac67a2d48a131e4c5dd321b523bf5da7`  
		Last Modified: Thu, 05 Nov 2026 08:33:03 GMT  
		Size: 80.5 MB (80475774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f942914e32b8021ee8a7c556c2cda19c987d796c0492595bfaad9bf5e7ce6266`  
		Last Modified: Thu, 05 Nov 2026 22:57:14 GMT  
		Size: 126.8 MB (126760658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4f571ff8b4986f8c37033c9475334721f955624d1b810d969965fcd63e860e4`  
		Last Modified: Fri, 30 Oct 2026 17:35:13 GMT  
		Size: 1.1 GB (1145583931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eacd7b31b262a0cdc3b353ff89560105543100fd3e863ea4dd01e9134f573b4`  
		Last Modified: Thu, 05 Nov 2026 22:57:10 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9` - unknown; unknown

```console
$ docker pull swift@sha256:0f52a851179d9ffe100a16767e036719eb23f07c8f7cef58e7bf085e5ad228fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13001713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10c1841eacc9a5feeb8b6b21fb4ec41415fc390a50e315e7a40928b0df1c5e6d`

```dockerfile
```

-	Layers:
	-	`sha256:d12dcf5c527252a25d4879c7bfec9e5deb68498e4df4bb948d997eb2e9ef849a`  
		Last Modified: Thu, 05 Nov 2026 22:57:11 GMT  
		Size: 13.0 MB (12987271 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:579a67ebf9361afb89a340b486ad2ac778615738aed154188276a47186c53c56`  
		Last Modified: Thu, 05 Nov 2026 22:57:10 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:15f9e77972ffce7e434be7c4dbf468e232d81bebfb91ab98151f142b0ea519d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1340424022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed7e8344b568333544f1f1874015d6cf37da930704546dc3b088b7cce18ad617`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 06:56:47 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 06:56:47 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 06:56:47 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 06:56:47 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 06:56:47 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 06:56:47 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 06:56:47 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 06:56:47 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Thu, 05 Nov 2026 06:56:47 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 06:56:48 GMT
LABEL io.openshift.tags="base rhel9"
# Thu, 05 Nov 2026 06:56:48 GMT
ENV container oci
# Thu, 05 Nov 2026 06:56:51 GMT
COPY dir:0aaa93d5a04c87af268cbfb38e299461299798ea6f282df764d4c2c57c2dc14c in /      
# Thu, 05 Nov 2026 06:56:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 06:56:51 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 06:56:52 GMT
COPY dir:4330f6d1dc592b01da540da7ac47dd8ff3521eb167fd8696173a9dda95aeddb0 in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 06:56:52 GMT
COPY dir:4330f6d1dc592b01da540da7ac47dd8ff3521eb167fd8696173a9dda95aeddb0 in /root/buildinfo/      
# Thu, 05 Nov 2026 06:56:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T06:56:16Z" "org.opencontainers.image.revision"="5c590161c7d0954dbfbc380a66393434e8bdae44" "build-date"="2026-11-05T06:56:16Z" "architecture"="aarch64" "vcs-ref"="5c590161c7d0954dbfbc380a66393434e8bdae44" "vcs-type"="git" "release"="1793861509"org.opencontainers.image.created=2026-11-05T06:56:16Z,org.opencontainers.image.revision=5c590161c7d0954dbfbc380a66393434e8bdae44
# Thu, 05 Nov 2026 23:32:14 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Thu, 05 Nov 2026 23:32:14 GMT
LABEL description=Docker Container for the Swift programming language
# Thu, 05 Nov 2026 23:32:14 GMT
RUN yum -y install   git                 gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Thu, 05 Nov 2026 23:32:14 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Thu, 05 Nov 2026 23:32:14 GMT
ARG SWIFT_PLATFORM=ubi9
# Thu, 05 Nov 2026 23:32:14 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Thu, 05 Nov 2026 23:32:14 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Thu, 05 Nov 2026 23:32:14 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Thu, 05 Nov 2026 23:32:14 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Thu, 05 Nov 2026 23:32:55 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Thu, 05 Nov 2026 23:32:56 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:e1b0ec038d235ede1903a3aca879026be3e70e45351b9975de3267e41bb12db3`  
		Last Modified: Thu, 05 Nov 2026 08:44:04 GMT  
		Size: 78.2 MB (78193560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f7e5319538069f7ece364b9998190593e5bfc1e50683d8b76894d91444ca632`  
		Last Modified: Thu, 05 Nov 2026 23:35:18 GMT  
		Size: 120.1 MB (120091375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acec1760ea5b65f9fd922cf42ed3ff2e8edaa8947507f65dea6e7de3fec9dc4c`  
		Last Modified: Fri, 30 Oct 2026 17:35:02 GMT  
		Size: 1.1 GB (1142138913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7eebdab5a1d38695dfc4cbd9a253b7a793962f823abac0aecfa3e7e5e9a9944`  
		Last Modified: Thu, 05 Nov 2026 23:35:14 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9` - unknown; unknown

```console
$ docker pull swift@sha256:5a9c1171d8e496d2e059209286f90c623472d4111a98e354906d6f46abd303fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12874528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e23b37f036b0e590db9721dda79b47c3bd737dc11ba1d6871dc0c7739d8ff245`

```dockerfile
```

-	Layers:
	-	`sha256:a7d21cabb88f6b69cc3a3cad7cc26087063ce221a0c00b50b8a8a2e789424e23`  
		Last Modified: Thu, 05 Nov 2026 23:35:15 GMT  
		Size: 12.9 MB (12859970 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0286aad420df92fa0f6d7d94baf223c9b09a1ee0da4fe4359b43d0d9f11299a`  
		Last Modified: Thu, 05 Nov 2026 23:35:14 GMT  
		Size: 14.6 KB (14558 bytes)  
		MIME: application/vnd.in-toto+json
