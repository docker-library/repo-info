## `swift:rhel-ubi9-slim`

```console
$ docker pull swift@sha256:d4344effa9dcc8c3d2af18f3765cd53288df1f215eed35eb592975f81d3acc23
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9-slim` - linux; amd64

```console
$ docker pull swift@sha256:65c28d23ca6c0a78f5a9425c625d135162c41da7a626f7728760e28f5db1d443
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138895393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5592d44b2e3a1bbe0d0ab995f6d8007cc58b72d9b8aafb7f73d189b6632ad7b2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 15 Sep 2026 08:36:41 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:36:41 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:36:41 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:36:41 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:36:41 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:36:41 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:36:41 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:36:41 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Tue, 15 Sep 2026 08:36:41 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:36:41 GMT
LABEL io.openshift.tags="base rhel9"
# Tue, 15 Sep 2026 08:36:41 GMT
ENV container oci
# Tue, 15 Sep 2026 08:36:42 GMT
COPY dir:637d81b56f17180a4305d7b1bd7f80bf14567ccbec4f316fb911fb5c767ccca2 in /      
# Tue, 15 Sep 2026 08:36:42 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:36:42 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:36:43 GMT
COPY dir:443b03571e9de0ac237e9e53b7b20d612f378e009ab7310fdff6e44a50709eb2 in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:36:43 GMT
COPY dir:443b03571e9de0ac237e9e53b7b20d612f378e009ab7310fdff6e44a50709eb2 in /root/buildinfo/      
# Tue, 15 Sep 2026 08:36:43 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:36:09Z" "org.opencontainers.image.revision"="ce0a8ec434ee95f236722d09da7d50bad6f3cf0e" "build-date"="2026-09-15T08:36:09Z" "architecture"="x86_64" "vcs-ref"="ce0a8ec434ee95f236722d09da7d50bad6f3cf0e" "vcs-type"="git" "release"="1789461287"org.opencontainers.image.created=2026-09-15T08:36:09Z,org.opencontainers.image.revision=ce0a8ec434ee95f236722d09da7d50bad6f3cf0e
# Tue, 15 Sep 2026 22:56:44 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 15 Sep 2026 22:56:44 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 15 Sep 2026 22:56:44 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 15 Sep 2026 22:56:44 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 15 Sep 2026 22:56:44 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Tue, 15 Sep 2026 22:56:44 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Tue, 15 Sep 2026 22:56:44 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 15 Sep 2026 22:56:44 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 15 Sep 2026 22:56:44 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:ecf8bc5638cfc94e94940ac67454f057b989bcb94a1e7a17f81b258c9cc5e89e`  
		Last Modified: Tue, 15 Sep 2026 09:21:46 GMT  
		Size: 80.5 MB (80506377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:864ae9828a72ed35a55c16ab558244ffaf4d9c9fc16db6c3373a38ec254dfc88`  
		Last Modified: Tue, 15 Sep 2026 22:57:01 GMT  
		Size: 58.4 MB (58389016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:1559eff5127ef86d44dd0a76bca8b12dafc6fe277cd1d4de59969bb0191d7a2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6420078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c0d435c3e8c7ab9ee42f0243b62fcdfee7fa8af76a9660d8f7fc7957628a6f5`

```dockerfile
```

-	Layers:
	-	`sha256:b9cebc70d34fa03c2cf3eb17374507f6b41cb05649e1e9965b291c4afef2903e`  
		Last Modified: Tue, 15 Sep 2026 22:56:59 GMT  
		Size: 6.4 MB (6408611 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14688e55901b6f99714cf6e4bc7ab67fc5bda7fcea9ab3e753ff275d20c264e7`  
		Last Modified: Tue, 15 Sep 2026 22:56:58 GMT  
		Size: 11.5 KB (11467 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:e3090852ff1c1de6b0130327781f1a33d98598d340e8dba990449b31b6262fb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 MB (134773779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbf41959c87ae87fc86705784485fdc4e9338861a4d99664179cd33bb69ea697`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 15 Sep 2026 08:40:25 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:40:25 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:40:25 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:40:25 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:40:25 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:40:25 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:40:25 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:40:25 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Tue, 15 Sep 2026 08:40:25 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:40:25 GMT
LABEL io.openshift.tags="base rhel9"
# Tue, 15 Sep 2026 08:40:25 GMT
ENV container oci
# Tue, 15 Sep 2026 08:40:28 GMT
COPY dir:87a714fb45f138094b3e1ae484a95b9f7706cb91cf8ed0a7cec1f9fa158efcdb in /      
# Tue, 15 Sep 2026 08:40:28 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:40:28 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:40:28 GMT
COPY dir:e2fe25ac7568481085d5dc8a4f8ccc0c9056a0ce7884065229deaa87e52fea31 in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:40:28 GMT
COPY dir:e2fe25ac7568481085d5dc8a4f8ccc0c9056a0ce7884065229deaa87e52fea31 in /root/buildinfo/      
# Tue, 15 Sep 2026 08:40:29 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:39:59Z" "org.opencontainers.image.revision"="ce0a8ec434ee95f236722d09da7d50bad6f3cf0e" "build-date"="2026-09-15T08:39:59Z" "architecture"="aarch64" "vcs-ref"="ce0a8ec434ee95f236722d09da7d50bad6f3cf0e" "vcs-type"="git" "release"="1789461287"org.opencontainers.image.created=2026-09-15T08:39:59Z,org.opencontainers.image.revision=ce0a8ec434ee95f236722d09da7d50bad6f3cf0e
# Tue, 15 Sep 2026 22:49:07 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 15 Sep 2026 22:49:07 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 15 Sep 2026 22:49:07 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 15 Sep 2026 22:49:07 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 15 Sep 2026 22:49:07 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Tue, 15 Sep 2026 22:49:07 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Tue, 15 Sep 2026 22:49:07 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 15 Sep 2026 22:49:07 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 15 Sep 2026 22:49:07 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:29a30ff97c5b4b13721a891bb511a5eee79e8345dd36c68ec91dc56011b6e04c`  
		Last Modified: Tue, 15 Sep 2026 09:19:54 GMT  
		Size: 78.2 MB (78169883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dab1c5209070dfdb01fe1ff1c4985a8e192216bbe18e74b4b555f463a2633bd0`  
		Last Modified: Tue, 15 Sep 2026 22:49:23 GMT  
		Size: 56.6 MB (56603896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:2db45cb6a2107060f964f3118f85d3b404066d9b581276d12fd1c4ada05cde21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6415964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acb8b542ca4a37d1e96fe93ddab43a0841e0e37e47688acde48b47c0dbc21b4a`

```dockerfile
```

-	Layers:
	-	`sha256:4350cc606c5525d28e166aebaa249d7a21fe20acea366951ef4da862074faa56`  
		Last Modified: Tue, 15 Sep 2026 22:49:21 GMT  
		Size: 6.4 MB (6404410 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48c7daaa9d054a2305dd7f48b290201abf4bc3e066ea4c9ebc6da165646f8a46`  
		Last Modified: Tue, 15 Sep 2026 22:49:20 GMT  
		Size: 11.6 KB (11554 bytes)  
		MIME: application/vnd.in-toto+json
