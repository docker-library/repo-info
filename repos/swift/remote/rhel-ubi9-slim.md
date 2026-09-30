## `swift:rhel-ubi9-slim`

```console
$ docker pull swift@sha256:80cfa822f2d3f04d82aa88c340cc1b3ae6f28a7f9cd6f086413be07880248e74
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9-slim` - linux; amd64

```console
$ docker pull swift@sha256:c7bcde3238898178429358e38bdb7b1bfe79920b3869dd81bab2e62fabd65a25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.4 MB (140380489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2913116a9a93f708677e6dc68f3eaaa0884cd87ca53c88859abdcc4e2fd9532`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 29 Sep 2026 07:00:28 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Tue, 29 Sep 2026 07:00:28 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 29 Sep 2026 07:00:28 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 29 Sep 2026 07:00:28 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 29 Sep 2026 07:00:28 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Tue, 29 Sep 2026 07:00:28 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 29 Sep 2026 07:00:28 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 29 Sep 2026 07:00:28 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Tue, 29 Sep 2026 07:00:28 GMT
LABEL io.openshift.expose-services=""
# Tue, 29 Sep 2026 07:00:28 GMT
LABEL io.openshift.tags="base rhel9"
# Tue, 29 Sep 2026 07:00:28 GMT
ENV container oci
# Tue, 29 Sep 2026 07:00:29 GMT
COPY dir:055bac04503a767f21dfd1ba52df3dddc42aea6d2daecb2e7842fa263bea84c3 in /      
# Tue, 29 Sep 2026 07:00:29 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 29 Sep 2026 07:00:29 GMT
CMD ["/bin/bash"]
# Tue, 29 Sep 2026 07:00:29 GMT
COPY dir:cccf074457cc2d7739da3085afe8fb8b7111386db30e978ce5402d2d80211c7d in /usr/share/buildinfo/      
# Tue, 29 Sep 2026 07:00:30 GMT
COPY dir:cccf074457cc2d7739da3085afe8fb8b7111386db30e978ce5402d2d80211c7d in /root/buildinfo/      
# Tue, 29 Sep 2026 07:00:30 GMT
LABEL "org.opencontainers.image.created"="2026-09-29T07:00:09Z" "org.opencontainers.image.revision"="22381a618a3a13188050f82d3818c75672229f94" "build-date"="2026-09-29T07:00:09Z" "architecture"="x86_64" "vcs-ref"="22381a618a3a13188050f82d3818c75672229f94" "vcs-type"="git" "release"="1790665138"org.opencontainers.image.created=2026-09-29T07:00:09Z,org.opencontainers.image.revision=22381a618a3a13188050f82d3818c75672229f94
# Wed, 30 Sep 2026 21:07:07 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 30 Sep 2026 21:07:07 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 30 Sep 2026 21:07:07 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 30 Sep 2026 21:07:07 GMT
ARG SWIFT_PLATFORM=ubi9
# Wed, 30 Sep 2026 21:07:07 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Wed, 30 Sep 2026 21:07:07 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Wed, 30 Sep 2026 21:07:07 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 30 Sep 2026 21:07:07 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 30 Sep 2026 21:07:07 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:934b708799d96e06246f338bdafd1a133caf4e3ebc7f3e7d83cf6ea832cca95b`  
		Last Modified: Tue, 29 Sep 2026 07:58:22 GMT  
		Size: 80.5 MB (80500030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8d8d942159a06cb6b755f1132180c75a1be20ae8b770de205364dd5e770097f`  
		Last Modified: Wed, 30 Sep 2026 21:07:23 GMT  
		Size: 59.9 MB (59880459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:535caabf6a999c24100cbbf34fd0a210e41ef08509c7b3e5df8e775764ba9588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6420079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d4d0d20e5eb5904e227094e936dbe4d28ff118ed4b8b35f0bdcb445f9a1dadb`

```dockerfile
```

-	Layers:
	-	`sha256:3c7a83c9de347c69e597ae2ceb6a0310f1184c4be309a5f3d7f60f3052314732`  
		Last Modified: Wed, 30 Sep 2026 21:07:20 GMT  
		Size: 6.4 MB (6408611 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:104583d6ce32642badd5e29121ea694f4a0f240c0ab368495e89c9e4aada1bf8`  
		Last Modified: Wed, 30 Sep 2026 21:07:20 GMT  
		Size: 11.5 KB (11468 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:16b21c70931a26caedcd94b5ff741611ebab0f53a3e5ece1fd6969a870b12b89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.2 MB (136248442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d170d6b7a9154291f5f0803e13c241a3046930425c099558b1ccbfaf0d5e6d61`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 29 Sep 2026 07:02:39 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Tue, 29 Sep 2026 07:02:39 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 29 Sep 2026 07:02:39 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 29 Sep 2026 07:02:39 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 29 Sep 2026 07:02:39 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Tue, 29 Sep 2026 07:02:39 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 29 Sep 2026 07:02:39 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 29 Sep 2026 07:02:39 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Tue, 29 Sep 2026 07:02:39 GMT
LABEL io.openshift.expose-services=""
# Tue, 29 Sep 2026 07:02:39 GMT
LABEL io.openshift.tags="base rhel9"
# Tue, 29 Sep 2026 07:02:39 GMT
ENV container oci
# Tue, 29 Sep 2026 07:02:42 GMT
COPY dir:87b4e711cf89a1ec534b8532729e8141650400e590085b51566697f4b3f2e33b in /      
# Tue, 29 Sep 2026 07:02:42 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 29 Sep 2026 07:02:42 GMT
CMD ["/bin/bash"]
# Tue, 29 Sep 2026 07:02:42 GMT
COPY dir:7fd37f3ba22fcb3779cb9ad2ad861d29717a6fea7a51d40e2b22a96050aa4611 in /usr/share/buildinfo/      
# Tue, 29 Sep 2026 07:02:42 GMT
COPY dir:7fd37f3ba22fcb3779cb9ad2ad861d29717a6fea7a51d40e2b22a96050aa4611 in /root/buildinfo/      
# Tue, 29 Sep 2026 07:02:43 GMT
LABEL "org.opencontainers.image.created"="2026-09-29T07:02:14Z" "org.opencontainers.image.revision"="22381a618a3a13188050f82d3818c75672229f94" "build-date"="2026-09-29T07:02:14Z" "architecture"="aarch64" "vcs-ref"="22381a618a3a13188050f82d3818c75672229f94" "vcs-type"="git" "release"="1790665138"org.opencontainers.image.created=2026-09-29T07:02:14Z,org.opencontainers.image.revision=22381a618a3a13188050f82d3818c75672229f94
# Wed, 30 Sep 2026 21:06:18 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 30 Sep 2026 21:06:18 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 30 Sep 2026 21:06:18 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 30 Sep 2026 21:06:18 GMT
ARG SWIFT_PLATFORM=ubi9
# Wed, 30 Sep 2026 21:06:18 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Wed, 30 Sep 2026 21:06:18 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Wed, 30 Sep 2026 21:06:18 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 30 Sep 2026 21:06:18 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 30 Sep 2026 21:06:18 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:d737070660d72478710c13cdb36e82c2de51283eed167bb4a9c6d6d5ea600ae0`  
		Last Modified: Tue, 29 Sep 2026 07:59:28 GMT  
		Size: 78.2 MB (78190151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03531422965f65d5051a515782e196ef6fc3a8d11812e284a8ff7a9533f596c2`  
		Last Modified: Wed, 30 Sep 2026 21:06:35 GMT  
		Size: 58.1 MB (58058291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:11697a1c29e2d0dbf43acf018e91369b9b430bf7df188d10eedfc4813c719375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6415964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e6440572d9d0be5ba0441b32cfc145f9ac30b51938046817fe265fa13785241`

```dockerfile
```

-	Layers:
	-	`sha256:601d4dc9ca7e34e60640bb9887ab0f863b36e3a5cb87430edb54593a41274952`  
		Last Modified: Wed, 30 Sep 2026 21:06:33 GMT  
		Size: 6.4 MB (6404410 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0310d214a126bb5936f2392d80d8909d5288f6de79ab8f5caf1ac1007bdfe388`  
		Last Modified: Wed, 30 Sep 2026 21:06:32 GMT  
		Size: 11.6 KB (11554 bytes)  
		MIME: application/vnd.in-toto+json
