## `swift:rhel-ubi10-slim`

```console
$ docker pull swift@sha256:4d87e1fb73edc4c1bdbfde2ee616a9d53c416351aff6de03b4774475e0dd5ec1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi10-slim` - linux; amd64

```console
$ docker pull swift@sha256:25092b371bd0944d42ac3b60d8e086592b053e4481853fbd3adcbb6843a0ff77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.4 MB (144443824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8827d16cbda55cf45e59e42c078bc213b60239669114d87d763eb7491e2e0ba8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 12 Nov 2026 21:48:04 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."       url="https://catalog.redhat.com/en/search?searchType=containers"       com.redhat.component="ubi10-container"       name="ubi10/ubi"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       version="10.3"       distribution-scope="public"
# Thu, 12 Nov 2026 21:48:04 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 21:48:04 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 10."
# Thu, 12 Nov 2026 21:48:04 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 21:48:04 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 21:48:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10"
# Thu, 12 Nov 2026 21:48:05 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 21:48:05 GMT
LABEL io.openshift.tags="base rhel10"
# Thu, 12 Nov 2026 21:48:05 GMT
ENV container oci
# Thu, 12 Nov 2026 21:48:07 GMT
COPY dir:4c9f08186be7ea05b5244fdafe0b43844fcc385a7f93b4eeae067d405b4a245a in /      
# Thu, 12 Nov 2026 21:48:07 GMT
COPY file:7434e7ac38eae122961f7433f94f69681ae6b7673c89bc0a33c8831ed9c5dbfc in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 21:48:07 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 21:48:07 GMT
COPY dir:86a3f7beb638abef894afec946c6be289816f7109ce9817930145dc5698ad928 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 21:48:07 GMT
COPY dir:86a3f7beb638abef894afec946c6be289816f7109ce9817930145dc5698ad928 in /root/buildinfo/      
# Thu, 12 Nov 2026 21:48:08 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T21:47:37Z" "org.opencontainers.image.revision"="97551a94e07d5be05c01208a5449cdfa10f657e7" "build-date"="2026-11-12T21:47:37Z" "architecture"="x86_64" "vcs-ref"="97551a94e07d5be05c01208a5449cdfa10f657e7" "vcs-type"="git" "release"="1794519911"org.opencontainers.image.created=2026-11-12T21:47:37Z,org.opencontainers.image.revision=97551a94e07d5be05c01208a5449cdfa10f657e7
# Fri, 20 Nov 2026 20:09:41 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 20 Nov 2026 20:09:41 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 20 Nov 2026 20:09:41 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 20 Nov 2026 20:09:41 GMT
ARG SWIFT_PLATFORM=ubi10
# Fri, 20 Nov 2026 20:09:41 GMT
ARG SWIFT_BRANCH=swift-6.4.3-release
# Fri, 20 Nov 2026 20:09:41 GMT
ARG SWIFT_VERSION=swift-6.4.3-RELEASE
# Fri, 20 Nov 2026 20:09:41 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 20 Nov 2026 20:09:41 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 20 Nov 2026 20:09:41 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && yum -y install gnupg2     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:6cbfcbeb6614ca56cc578910888f60653e3d6fe6af78c3f49c45e81200d04618`  
		Last Modified: Fri, 13 Nov 2026 00:16:00 GMT  
		Size: 81.2 MB (81247896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e8f17e3ef55629247b7edc1761490f792e172ed29ed9fa72e386087eb6cdd42`  
		Last Modified: Fri, 20 Nov 2026 20:09:57 GMT  
		Size: 63.2 MB (63195928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10-slim` - unknown; unknown

```console
$ docker pull swift@sha256:45bb3a5df2f37fd3849a98dc982acb81bae907a2c0badc8d33ae0d0cb5bfe854
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5954922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:945bba5f4d9fca1152b301dabbc7e7361c00c86aa4b378fe0fb25ce2d2ced52d`

```dockerfile
```

-	Layers:
	-	`sha256:aa9235ade184f56931147a4669b39b304a3278e190b46083c2f305381087d321`  
		Last Modified: Fri, 20 Nov 2026 20:09:55 GMT  
		Size: 5.9 MB (5943202 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da10c8cfe445177d8362e72a6874fcbd212982d3b87d29bd319ada8ed7c8aaad`  
		Last Modified: Fri, 20 Nov 2026 20:09:55 GMT  
		Size: 11.7 KB (11720 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi10-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:665e11f040f6d438c39674720205a4102b14afbeb3b42c387d6bd998751025de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (140985973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d47d54f29dc60804bc2ea828cae1e1e2ca99f4eda2b22f8933eb81fdac6f41a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 12 Nov 2026 21:50:48 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."       url="https://catalog.redhat.com/en/search?searchType=containers"       com.redhat.component="ubi10-container"       name="ubi10/ubi"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       version="10.3"       distribution-scope="public"
# Thu, 12 Nov 2026 21:50:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 21:50:48 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 10."
# Thu, 12 Nov 2026 21:50:49 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 21:50:49 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 21:50:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10"
# Thu, 12 Nov 2026 21:50:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 21:50:49 GMT
LABEL io.openshift.tags="base rhel10"
# Thu, 12 Nov 2026 21:50:49 GMT
ENV container oci
# Thu, 12 Nov 2026 21:50:52 GMT
COPY dir:59ef57515c8341ce283c76c83baae2766c5877684b14c31f3d2bd92bafb2af53 in /      
# Thu, 12 Nov 2026 21:50:52 GMT
COPY file:7434e7ac38eae122961f7433f94f69681ae6b7673c89bc0a33c8831ed9c5dbfc in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 21:50:52 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 21:50:53 GMT
COPY dir:12bf3f49629986b67f2f14278e38a93f792d36d2ada92568f4569c7a54575851 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 21:50:53 GMT
COPY dir:12bf3f49629986b67f2f14278e38a93f792d36d2ada92568f4569c7a54575851 in /root/buildinfo/      
# Thu, 12 Nov 2026 21:50:54 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T21:50:16Z" "org.opencontainers.image.revision"="97551a94e07d5be05c01208a5449cdfa10f657e7" "build-date"="2026-11-12T21:50:16Z" "architecture"="aarch64" "vcs-ref"="97551a94e07d5be05c01208a5449cdfa10f657e7" "vcs-type"="git" "release"="1794519911"org.opencontainers.image.created=2026-11-12T21:50:16Z,org.opencontainers.image.revision=97551a94e07d5be05c01208a5449cdfa10f657e7
# Fri, 20 Nov 2026 20:05:57 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 20 Nov 2026 20:05:57 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 20 Nov 2026 20:05:57 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 20 Nov 2026 20:05:57 GMT
ARG SWIFT_PLATFORM=ubi10
# Fri, 20 Nov 2026 20:05:57 GMT
ARG SWIFT_BRANCH=swift-6.4.3-release
# Fri, 20 Nov 2026 20:05:57 GMT
ARG SWIFT_VERSION=swift-6.4.3-RELEASE
# Fri, 20 Nov 2026 20:05:57 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 20 Nov 2026 20:05:57 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 20 Nov 2026 20:05:57 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && yum -y install gnupg2     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:6036fe06f83d836a578ccf9fc22808274a808fbea9f12e28da1f7341e6e783f6`  
		Last Modified: Fri, 13 Nov 2026 00:16:25 GMT  
		Size: 78.7 MB (78717952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f759949882bb1c447d673c148a2259bdabe9366c335ede892cc3bedb02ca8e4f`  
		Last Modified: Fri, 20 Nov 2026 20:06:15 GMT  
		Size: 62.3 MB (62268021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10-slim` - unknown; unknown

```console
$ docker pull swift@sha256:4f5580c9402dd3728a2cd443bf6ac3988baa1009140b4ac2ddc1e60e66081d70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5951410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abf3c79493e4c3910e1e2240b2017d70fe8c56221e7b4067b9f46b015391b17c`

```dockerfile
```

-	Layers:
	-	`sha256:b6e39d486c9f3200e794d255253fc59a9eb9ee868bbde553dea08e1db395e92d`  
		Last Modified: Fri, 20 Nov 2026 20:06:13 GMT  
		Size: 5.9 MB (5939604 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:476012e630c76dd347eb532e3a493a41afb41c3cc155880cf16e0327b60e8b1f`  
		Last Modified: Fri, 20 Nov 2026 20:06:13 GMT  
		Size: 11.8 KB (11806 bytes)  
		MIME: application/vnd.in-toto+json
