## `swift:rhel-ubi9-slim`

```console
$ docker pull swift@sha256:4fdbd12c7630dd3102f885ebf3f5b0cce1de226e8414291d5776d2d7ac6c12e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9-slim` - linux; amd64

```console
$ docker pull swift@sha256:3c951799b6246ff9f8ce3b5a7a467224c7aa1dc1b2ae9d8b40c2faceb32d13a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138899792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f416f9f13bced03e92973f1467ec35c8ed493587453367a036a27f581b8ab4aa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 11 Aug 2026 02:52:08 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Tue, 11 Aug 2026 02:52:08 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 11 Aug 2026 02:52:08 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 11 Aug 2026 02:52:08 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 11 Aug 2026 02:52:08 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Tue, 11 Aug 2026 02:52:08 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 11 Aug 2026 02:52:08 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 11 Aug 2026 02:52:08 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Tue, 11 Aug 2026 02:52:08 GMT
LABEL io.openshift.expose-services=""
# Tue, 11 Aug 2026 02:52:08 GMT
LABEL io.openshift.tags="base rhel9"
# Tue, 11 Aug 2026 02:52:08 GMT
ENV container oci
# Tue, 11 Aug 2026 02:52:10 GMT
COPY dir:cf5305b5df6de41c2f789978d0cdb1dc0a21e276f671bfe4da5a64c58116950a in /      
# Tue, 11 Aug 2026 02:52:10 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 11 Aug 2026 02:52:10 GMT
CMD ["/bin/bash"]
# Tue, 11 Aug 2026 02:52:10 GMT
COPY dir:811295abbf17d5dc5cac2fdf6ea53b9bcf4c43d0c0c6c076156e522c522c8af5 in /usr/share/buildinfo/      
# Tue, 11 Aug 2026 02:52:10 GMT
COPY dir:811295abbf17d5dc5cac2fdf6ea53b9bcf4c43d0c0c6c076156e522c522c8af5 in /root/buildinfo/      
# Tue, 11 Aug 2026 02:52:11 GMT
LABEL "org.opencontainers.image.created"="2026-08-11T02:51:25Z" "org.opencontainers.image.revision"="e2261e02ac177db555c78b0e2852b088d69d74a7" "build-date"="2026-08-11T02:51:25Z" "architecture"="x86_64" "vcs-ref"="e2261e02ac177db555c78b0e2852b088d69d74a7" "vcs-type"="git" "release"="1786416589"org.opencontainers.image.created=2026-08-11T02:51:25Z,org.opencontainers.image.revision=e2261e02ac177db555c78b0e2852b088d69d74a7
# Tue, 11 Aug 2026 17:54:11 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 11 Aug 2026 17:54:11 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 11 Aug 2026 17:54:11 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 11 Aug 2026 17:54:11 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 11 Aug 2026 17:54:11 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Tue, 11 Aug 2026 17:54:11 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Tue, 11 Aug 2026 17:54:11 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 11 Aug 2026 17:54:11 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 11 Aug 2026 17:54:11 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:d6b3f66248586ce5cf93559faef9fe4cc0efa803df4a867f647e981818315089`  
		Last Modified: Tue, 11 Aug 2026 03:51:50 GMT  
		Size: 80.5 MB (80490256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7240dd4794c3368da3e27be8617a0f252c5db2295cbdfa7d75240dc0b63cb07e`  
		Last Modified: Tue, 11 Aug 2026 17:54:26 GMT  
		Size: 58.4 MB (58409536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:0c442427c7248b204bd7faea328d9cb9dd2a6907a81acad971b42d417e9d7949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6419404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63cb0f3109c55d9e966297175c291b698e117df64aa807cc8ee341da1b88be9b`

```dockerfile
```

-	Layers:
	-	`sha256:934699eb860afe1f4383e5d35b7254793d396dc7c53e84387a77611b268459af`  
		Last Modified: Tue, 11 Aug 2026 17:54:24 GMT  
		Size: 6.4 MB (6407936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0dea9b4a1a7ef2b7c6cccec851991ec2c80f12563ac3692b19f0b95f41a82dd`  
		Last Modified: Tue, 11 Aug 2026 17:54:24 GMT  
		Size: 11.5 KB (11468 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:189331e8623153767b960d0e8ad20b93f103c5cb2eaf997e6ef521ff8ae683ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 MB (134794328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:692ad0c3dd23e79f149bf504547cbe0684216e138490ec9a90bafe650b4ec97f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 05 Aug 2026 05:16:09 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Wed, 05 Aug 2026 05:16:09 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 05 Aug 2026 05:16:09 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 05 Aug 2026 05:16:09 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 05 Aug 2026 05:16:09 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Wed, 05 Aug 2026 05:16:09 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:16:09 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:16:09 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Wed, 05 Aug 2026 05:16:09 GMT
LABEL io.openshift.expose-services=""
# Wed, 05 Aug 2026 05:16:09 GMT
LABEL io.openshift.tags="base rhel9"
# Wed, 05 Aug 2026 05:16:09 GMT
ENV container oci
# Wed, 05 Aug 2026 05:16:12 GMT
COPY dir:d925683bc838dfe7b3584ee4dbbd90c41f579532e6677f726efe33d331d004ad in /      
# Wed, 05 Aug 2026 05:16:12 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 05 Aug 2026 05:16:12 GMT
CMD ["/bin/bash"]
# Wed, 05 Aug 2026 05:16:12 GMT
COPY dir:53559a4c2506295e698d908d933f99ee730c4fb00ab186dc1e8832e8fb84e749 in /usr/share/buildinfo/      
# Wed, 05 Aug 2026 05:16:12 GMT
COPY dir:53559a4c2506295e698d908d933f99ee730c4fb00ab186dc1e8832e8fb84e749 in /root/buildinfo/      
# Wed, 05 Aug 2026 05:16:13 GMT
LABEL "org.opencontainers.image.created"="2026-08-05T05:15:45Z" "org.opencontainers.image.revision"="ad7d02c5b1e2d8ea1992e965dacf8e1c78e5ec69" "build-date"="2026-08-05T05:15:45Z" "architecture"="aarch64" "vcs-ref"="ad7d02c5b1e2d8ea1992e965dacf8e1c78e5ec69" "vcs-type"="git" "release"="1785906690"org.opencontainers.image.created=2026-08-05T05:15:45Z,org.opencontainers.image.revision=ad7d02c5b1e2d8ea1992e965dacf8e1c78e5ec69
# Wed, 05 Aug 2026 18:17:00 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 05 Aug 2026 18:17:00 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 05 Aug 2026 18:17:00 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 05 Aug 2026 18:17:00 GMT
ARG SWIFT_PLATFORM=ubi9
# Wed, 05 Aug 2026 18:17:00 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Wed, 05 Aug 2026 18:17:00 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Wed, 05 Aug 2026 18:17:00 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 05 Aug 2026 18:17:00 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 05 Aug 2026 18:17:00 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:4c7f40720c9e0c5b6a5f968ac026b8a1955d2e80b800854e8eec519ad5675fc8`  
		Last Modified: Wed, 05 Aug 2026 06:05:02 GMT  
		Size: 78.2 MB (78164406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad266d30f53c24da22c4e1998c2b3b7d0398fe2c63464feeaea2edbb6c814876`  
		Last Modified: Wed, 05 Aug 2026 18:17:17 GMT  
		Size: 56.6 MB (56629922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:2d8bd1317954c34658999ac7e3c1cc426f9fa847b48fa950832607340600977e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6415283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a4c9ec876a470019e7ee673de254a98a3ea7419e80d3afba409e9be294a9970`

```dockerfile
```

-	Layers:
	-	`sha256:b823df696b477bd91e65fa6207e7f3c24b9755e7b7e3dd014dea15a73e87bd88`  
		Last Modified: Wed, 05 Aug 2026 18:17:14 GMT  
		Size: 6.4 MB (6403729 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce6f012c082132a218ec526aa14644ca682261f0d92b069effd0171a9966350f`  
		Last Modified: Wed, 05 Aug 2026 18:17:14 GMT  
		Size: 11.6 KB (11554 bytes)  
		MIME: application/vnd.in-toto+json
