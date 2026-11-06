## `swift:rhel-ubi9-slim`

```console
$ docker pull swift@sha256:143799ec56e48421b1bce87673387d220d2cc810d5d4aa82239b7692e34108f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9-slim` - linux; amd64

```console
$ docker pull swift@sha256:829d45276ebfd5772a7852a152c7644ac6855ff73b0da202a3134921d8f3dcf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140325406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:909a120a527246d5e0510374f4a42b2fa775d7a2c7f09008049c5c9b846524da`
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
# Thu, 05 Nov 2026 22:54:42 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Thu, 05 Nov 2026 22:54:42 GMT
LABEL description=Docker Container for the Swift programming language
# Thu, 05 Nov 2026 22:54:42 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Thu, 05 Nov 2026 22:54:42 GMT
ARG SWIFT_PLATFORM=ubi9
# Thu, 05 Nov 2026 22:54:42 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Thu, 05 Nov 2026 22:54:42 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Thu, 05 Nov 2026 22:54:42 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Thu, 05 Nov 2026 22:54:42 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Thu, 05 Nov 2026 22:54:42 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:214e07e7b5da754f03d407c00580401cac67a2d48a131e4c5dd321b523bf5da7`  
		Last Modified: Thu, 05 Nov 2026 08:33:03 GMT  
		Size: 80.5 MB (80475774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76df8a223539a47efcb745d51258ca1232a6193f438ce24ffe7ea2f221466a8b`  
		Last Modified: Thu, 05 Nov 2026 22:54:59 GMT  
		Size: 59.8 MB (59849632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:d4f36698e790bd34a49f210964713ae36a4fb72a62e80bd80f223542de4c7129
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6401583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecc346e839a7538db9a47db4da70e2456aa8721058d79e6dfdf0e296d2aeba3e`

```dockerfile
```

-	Layers:
	-	`sha256:02609d12f2920bc7e7066569fc7db7ee39e93552e9d38d3b6ef4df751d0b7a30`  
		Last Modified: Thu, 05 Nov 2026 22:54:57 GMT  
		Size: 6.4 MB (6390116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f620bfefc2c172ed523b8e26d3dda42481ec0f5593b87ef8e89980087ab41781`  
		Last Modified: Thu, 05 Nov 2026 22:54:56 GMT  
		Size: 11.5 KB (11467 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:c75bfa19462868eee3140771a7e232eea76d2f3a4183c2a7d2db260d7520adba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.3 MB (136261601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:879a364c3129d189ec25b041c6e9e8dbc1453fe0f0e65fe002d4edb5ec3352f4`
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
# Thu, 05 Nov 2026 23:32:45 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Thu, 05 Nov 2026 23:32:45 GMT
LABEL description=Docker Container for the Swift programming language
# Thu, 05 Nov 2026 23:32:45 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Thu, 05 Nov 2026 23:32:45 GMT
ARG SWIFT_PLATFORM=ubi9
# Thu, 05 Nov 2026 23:32:45 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Thu, 05 Nov 2026 23:32:45 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Thu, 05 Nov 2026 23:32:45 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Thu, 05 Nov 2026 23:32:45 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Thu, 05 Nov 2026 23:32:45 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:e1b0ec038d235ede1903a3aca879026be3e70e45351b9975de3267e41bb12db3`  
		Last Modified: Thu, 05 Nov 2026 08:44:04 GMT  
		Size: 78.2 MB (78193560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:690676cfaed795c4ba9b00e7a08bbb95f2bb81ce701b3553e85dbca1003ab4dc`  
		Last Modified: Thu, 05 Nov 2026 23:33:02 GMT  
		Size: 58.1 MB (58068041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:17a95f983fc5201b8c1822ec9788736db035fb110354070ad2210fc0be2ddcbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6397469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70b93fa120ab68b0eea229411bbf37757cde6853fab07b2b7edc279785e3bb1e`

```dockerfile
```

-	Layers:
	-	`sha256:80576ba9386a4c284163a9e88298d894172464220f5821d2bf5bf09d0dcc7cdf`  
		Last Modified: Thu, 05 Nov 2026 23:33:00 GMT  
		Size: 6.4 MB (6385915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d60a1fa633064301d6f0bd19841643d3ca187f5900bdb29564de57dab614ffc`  
		Last Modified: Thu, 05 Nov 2026 23:32:59 GMT  
		Size: 11.6 KB (11554 bytes)  
		MIME: application/vnd.in-toto+json
