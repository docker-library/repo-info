## `swift:rhel-ubi9-slim`

```console
$ docker pull swift@sha256:da5136210fc8ab646eec60fe67b57ff106afe58967ac14976725cbe5e8120995
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9-slim` - linux; amd64

```console
$ docker pull swift@sha256:ed5bd5d216cf583e67b2ee324d0dad82d39542bb4841ea1568a46b94c8da0d03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140308999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce5e1340de537be3c1dc875fce98c1352f4e1f1be5c1d61b158d229eb9cc9d2c`
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
# Fri, 18 Sep 2026 23:50:40 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 18 Sep 2026 23:50:40 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 18 Sep 2026 23:50:40 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 18 Sep 2026 23:50:40 GMT
ARG SWIFT_PLATFORM=ubi9
# Fri, 18 Sep 2026 23:50:40 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Fri, 18 Sep 2026 23:50:40 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Fri, 18 Sep 2026 23:50:40 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 18 Sep 2026 23:50:40 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 18 Sep 2026 23:50:40 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:31b6ac2e5db505f4bd7da56bc0241b5660a2bb7b856368331e9fb287e5f7dc1a`  
		Last Modified: Wed, 16 Sep 2026 11:07:09 GMT  
		Size: 80.5 MB (80454149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:218d83a7eaaa76476b8af9b599502c76c3a56d401e0968ae1aaca80a2ab1bc8a`  
		Last Modified: Fri, 18 Sep 2026 23:50:55 GMT  
		Size: 59.9 MB (59854850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:68eecafdb089c7fe9f6c6a0e16a100a2adf38f4be196ce7fda7b0ec8c1d8fef7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6420077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33624074712802b7408c03840db1f691aeaf7b4a3df6a989f768681a910daad2`

```dockerfile
```

-	Layers:
	-	`sha256:4e62ddd0a3e8c4e4c1639f2f1fc5615a244c332819166d6823947f4895860cf6`  
		Last Modified: Fri, 18 Sep 2026 23:50:54 GMT  
		Size: 6.4 MB (6408611 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14d5a3d5ffbf05c06bf1ed5283af13e56edab63981c83abfbfc99534ce70cd49`  
		Last Modified: Fri, 18 Sep 2026 23:50:54 GMT  
		Size: 11.5 KB (11466 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:3099126ccf361424c91b3bf367e25e64cbfa5c57c3a4e05a8f14a3a057abbaf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.2 MB (136215239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e0c80091fa9990ec470b92ca8642dd63a4d2147f1a8bc85d0aeb2e6d915aeb`
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
# Fri, 18 Sep 2026 23:50:31 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 18 Sep 2026 23:50:31 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 18 Sep 2026 23:50:31 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 18 Sep 2026 23:50:31 GMT
ARG SWIFT_PLATFORM=ubi9
# Fri, 18 Sep 2026 23:50:31 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Fri, 18 Sep 2026 23:50:31 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Fri, 18 Sep 2026 23:50:31 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 18 Sep 2026 23:50:31 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 18 Sep 2026 23:50:31 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:470103ecbbe3130390e73c8595165595961e55d5fb83cfb735a2d133c21e1307`  
		Last Modified: Wed, 16 Sep 2026 10:52:27 GMT  
		Size: 78.2 MB (78154346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcd2c8b9a44992278c0ce22ad8821f62c51064077c741a710a95a6942f1e0b78`  
		Last Modified: Fri, 18 Sep 2026 23:50:47 GMT  
		Size: 58.1 MB (58060893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:1f0f6628b67cc248a498e17c4153105048948a78ac41c41a21417a96042e8a72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6415964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94a064fb93bb32aa663ac02c5df07b93c1381b92e54aeee9c50eca89d2647552`

```dockerfile
```

-	Layers:
	-	`sha256:31591058757bf4388f5b7cb73ff0154aa3053263a843ad77aba16eec48743fa8`  
		Last Modified: Fri, 18 Sep 2026 23:50:45 GMT  
		Size: 6.4 MB (6404410 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78581acb97d45132b0d4d716d947e39a4ca4f2f6d15f0792461786155e28ff7c`  
		Last Modified: Fri, 18 Sep 2026 23:50:45 GMT  
		Size: 11.6 KB (11554 bytes)  
		MIME: application/vnd.in-toto+json
