## `swift:rhel-ubi10-slim`

```console
$ docker pull swift@sha256:df1b2b68dbec45a4188f78dd1a8266798d2002e3a8ceeb09697f4cd4e937739a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi10-slim` - linux; amd64

```console
$ docker pull swift@sha256:a787e50c58adfdb4b86eb6b9bf34ea8780c25ee3817da25750a99ac225b69dbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.0 MB (144015887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4818bd35d03b81a04719d3bf2456a7a8af4b02e7e7548d32591fe790ad65e62b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Oct 2026 12:29:55 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."       url="https://catalog.redhat.com/en/search?searchType=containers"       com.redhat.component="ubi10-container"       name="ubi10/ubi"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       version="10.2"       distribution-scope="public"
# Tue, 13 Oct 2026 12:29:55 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 12:29:55 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 10."
# Tue, 13 Oct 2026 12:29:55 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 12:29:55 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 12:29:56 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10"
# Tue, 13 Oct 2026 12:29:56 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 12:29:56 GMT
LABEL io.openshift.tags="base rhel10"
# Tue, 13 Oct 2026 12:29:56 GMT
ENV container oci
# Tue, 13 Oct 2026 12:29:58 GMT
COPY dir:4f4ed41359f19126748b344801521c78ba558dec98faef34fd9712ff9429f92f in /      
# Tue, 13 Oct 2026 12:29:58 GMT
COPY file:7434e7ac38eae122961f7433f94f69681ae6b7673c89bc0a33c8831ed9c5dbfc in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 12:29:58 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 12:29:58 GMT
COPY dir:222f6db8c9ed28f061272a6841f8a1aac5f40e2081257c04bebb75f779a430a1 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 12:29:58 GMT
COPY dir:222f6db8c9ed28f061272a6841f8a1aac5f40e2081257c04bebb75f779a430a1 in /root/buildinfo/      
# Tue, 13 Oct 2026 12:29:59 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T12:26:02Z" "org.opencontainers.image.revision"="418c9c2d9672935daa5ff80fd601b254e433ecef" "build-date"="2026-10-13T12:26:02Z" "architecture"="x86_64" "vcs-ref"="418c9c2d9672935daa5ff80fd601b254e433ecef" "vcs-type"="git" "release"="1791893534"org.opencontainers.image.created=2026-10-13T12:26:02Z,org.opencontainers.image.revision=418c9c2d9672935daa5ff80fd601b254e433ecef
# Tue, 13 Oct 2026 23:01:56 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 13 Oct 2026 23:01:56 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 13 Oct 2026 23:01:56 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 13 Oct 2026 23:01:56 GMT
ARG SWIFT_PLATFORM=ubi10
# Tue, 13 Oct 2026 23:01:56 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Tue, 13 Oct 2026 23:01:56 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Tue, 13 Oct 2026 23:01:56 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 23:01:56 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 23:01:56 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && yum -y install gnupg2     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:fe589022641070f84c2da695cc198afe5d092428c2c0f88c2095d764ce0d23fc`  
		Last Modified: Tue, 13 Oct 2026 14:03:05 GMT  
		Size: 81.1 MB (81069987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0851771b86521d74c3af755df715a963a538c1e06358456a754e11040203667`  
		Last Modified: Tue, 13 Oct 2026 23:02:12 GMT  
		Size: 62.9 MB (62945900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10-slim` - unknown; unknown

```console
$ docker pull swift@sha256:82717ee2d2c2e18314c7a56c548f1887ba91187a85b43f22eecad8e590dcfe6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5967682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f86d9d2ca35a83e0d37ed00889929dcb6bbce17b3c079de450fa937d8bb3ecd`

```dockerfile
```

-	Layers:
	-	`sha256:11a3594da2c3c9176cfcfeb73442c802bc9acffe9b7b3f8cb14366a4b5a305ee`  
		Last Modified: Tue, 13 Oct 2026 23:02:10 GMT  
		Size: 6.0 MB (5955978 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e95303b2203e947b5fca8f56af9b0768e406483f403761b68ccb063614cae08`  
		Last Modified: Tue, 13 Oct 2026 23:02:10 GMT  
		Size: 11.7 KB (11704 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi10-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:0ec82c488f26b473d3961e1ad6aedebd0e12c785ee5b4d38da6ab01cb19e2329
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.6 MB (140645826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49b3136a10f79ff0e6bda89efabe97bcd688f1380597045822951fa643663e33`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Oct 2026 12:19:11 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."       url="https://catalog.redhat.com/en/search?searchType=containers"       com.redhat.component="ubi10-container"       name="ubi10/ubi"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       version="10.2"       distribution-scope="public"
# Tue, 13 Oct 2026 12:19:11 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 12:19:12 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 10."
# Tue, 13 Oct 2026 12:19:12 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 12:19:12 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 12:19:12 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10"
# Tue, 13 Oct 2026 12:19:12 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 12:19:12 GMT
LABEL io.openshift.tags="base rhel10"
# Tue, 13 Oct 2026 12:19:12 GMT
ENV container oci
# Tue, 13 Oct 2026 12:19:15 GMT
COPY dir:e08d5cf2130a3d3e63b2217b648c9b3632aa54d1aff1889f386909e443b24616 in /      
# Tue, 13 Oct 2026 12:19:15 GMT
COPY file:7434e7ac38eae122961f7433f94f69681ae6b7673c89bc0a33c8831ed9c5dbfc in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 12:19:15 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 12:19:16 GMT
COPY dir:95403a5be580d501b4546ae57d86498f4c69ee2ff37d4f85b934ec0aeb9d3a92 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 12:19:16 GMT
COPY dir:95403a5be580d501b4546ae57d86498f4c69ee2ff37d4f85b934ec0aeb9d3a92 in /root/buildinfo/      
# Tue, 13 Oct 2026 12:19:17 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T12:18:39Z" "org.opencontainers.image.revision"="418c9c2d9672935daa5ff80fd601b254e433ecef" "build-date"="2026-10-13T12:18:39Z" "architecture"="aarch64" "vcs-ref"="418c9c2d9672935daa5ff80fd601b254e433ecef" "vcs-type"="git" "release"="1791893534"org.opencontainers.image.created=2026-10-13T12:18:39Z,org.opencontainers.image.revision=418c9c2d9672935daa5ff80fd601b254e433ecef
# Tue, 13 Oct 2026 23:00:47 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 13 Oct 2026 23:00:47 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 13 Oct 2026 23:00:47 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 13 Oct 2026 23:00:47 GMT
ARG SWIFT_PLATFORM=ubi10
# Tue, 13 Oct 2026 23:00:47 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Tue, 13 Oct 2026 23:00:47 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Tue, 13 Oct 2026 23:00:47 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 23:00:47 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 23:00:47 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && yum -y install gnupg2     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:867268001839c78cae4b949177b66a1ce16404680dcd314da152e96a6202fa34`  
		Last Modified: Tue, 13 Oct 2026 14:03:02 GMT  
		Size: 78.6 MB (78621142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b41450df135e33781e0b6fb9400c1195d7fb48ade07e77b12819f6c21628e074`  
		Last Modified: Tue, 13 Oct 2026 23:01:05 GMT  
		Size: 62.0 MB (62024684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10-slim` - unknown; unknown

```console
$ docker pull swift@sha256:38b8aba6160c9d8bc2add691da82b54c1bcfdb0b150dde00e3437b9ab15a5449
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5964170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98a26d338264f7f0d83aa5cf3d211f6e3c8a3c3df7bd1ab26cf6430be0481190`

```dockerfile
```

-	Layers:
	-	`sha256:51231a4208507e921eed70a2aa28b14e8253b99d0d7d6eff13b427e655dbd852`  
		Last Modified: Tue, 13 Oct 2026 23:01:03 GMT  
		Size: 6.0 MB (5952380 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afee424973733cf90dab98daf79495ebafda0336b9cc2e5acd3b8e5dfda5fffc`  
		Last Modified: Tue, 13 Oct 2026 23:01:03 GMT  
		Size: 11.8 KB (11790 bytes)  
		MIME: application/vnd.in-toto+json
