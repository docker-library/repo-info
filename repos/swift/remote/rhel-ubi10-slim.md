## `swift:rhel-ubi10-slim`

```console
$ docker pull swift@sha256:950f355510d87ef1d6256411da25a51038cac01bb189e31bebda841449eb1b8e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi10-slim` - linux; amd64

```console
$ docker pull swift@sha256:5328dba2e05e10833a5a2b65e3420950eb8d67600bb70d14bee0e79a9f45185e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.4 MB (144356632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aefcc9fe1db55e32ca14f5b8aa6ef4cb66bfec605412e5ad01f74aed4eccef64`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 04 Nov 2026 22:40:45 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."       url="https://catalog.redhat.com/en/search?searchType=containers"       com.redhat.component="ubi10-container"       name="ubi10/ubi"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       version="10.3"       distribution-scope="public"
# Wed, 04 Nov 2026 22:40:45 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 22:40:45 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 10."
# Wed, 04 Nov 2026 22:40:45 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:40:45 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:40:45 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10"
# Wed, 04 Nov 2026 22:40:45 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 22:40:45 GMT
LABEL io.openshift.tags="base rhel10"
# Wed, 04 Nov 2026 22:40:45 GMT
LABEL compose-id="RHEL-10.3-updates-20261104.2"
# Wed, 04 Nov 2026 22:40:45 GMT
ENV container oci
# Wed, 04 Nov 2026 22:40:47 GMT
COPY dir:3567f2a85168f09081b267e1a0dafe2c59096ef9fd518116d962b52b36e2c40d in /      
# Wed, 04 Nov 2026 22:40:47 GMT
COPY file:7434e7ac38eae122961f7433f94f69681ae6b7673c89bc0a33c8831ed9c5dbfc in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 22:40:47 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 22:40:48 GMT
COPY dir:fba775a83642edba375e809fe0a5a7dc7d08e29d792b783d5609bacc13ed74c4 in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 22:40:48 GMT
COPY dir:fba775a83642edba375e809fe0a5a7dc7d08e29d792b783d5609bacc13ed74c4 in /root/buildinfo/      
# Wed, 04 Nov 2026 22:40:49 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T22:40:19Z" "org.opencontainers.image.revision"="42c51337d62747097ebce9a8dab7ef18d41bbe62" "build-date"="2026-11-04T22:40:19Z" "architecture"="x86_64" "vcs-ref"="42c51337d62747097ebce9a8dab7ef18d41bbe62" "vcs-type"="git" "release"="1793831871"org.opencontainers.image.created=2026-11-04T22:40:19Z,org.opencontainers.image.revision=42c51337d62747097ebce9a8dab7ef18d41bbe62
# Wed, 11 Nov 2026 22:52:55 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 11 Nov 2026 22:52:55 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 11 Nov 2026 22:52:55 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 11 Nov 2026 22:52:55 GMT
ARG SWIFT_PLATFORM=ubi10
# Wed, 11 Nov 2026 22:52:55 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Wed, 11 Nov 2026 22:52:55 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Wed, 11 Nov 2026 22:52:55 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 11 Nov 2026 22:52:55 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 11 Nov 2026 22:52:55 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && yum -y install gnupg2     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:fe40e6dce929e5ee255c0c157c9921fbcfcb24f3a61c5040d5cf6d890c89d5d3`  
		Last Modified: Wed, 11 Nov 2026 05:47:43 GMT  
		Size: 81.3 MB (81287335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e59bd755dbfd1add1ad17b723d2af5008370d32c6ae6edfe59e5df5d31ed195c`  
		Last Modified: Wed, 11 Nov 2026 22:53:11 GMT  
		Size: 63.1 MB (63069297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10-slim` - unknown; unknown

```console
$ docker pull swift@sha256:d7486ff436045ed159c21d1687fb2b991588db7c3067c51812c64208653f8227
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5954778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07f5808806edd6e1416bd1933f0df1125b534697cd6a15cfe694a8104f2e8e84`

```dockerfile
```

-	Layers:
	-	`sha256:c0078b7bc3e8bb67e0c52cbf0eba70ea32433b5cecde4f503f5901cfa471ae71`  
		Last Modified: Wed, 11 Nov 2026 22:53:09 GMT  
		Size: 5.9 MB (5943074 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e548fdf53d584b2a0bdf3f6b5ca640f4a0e2c777fd8ff2ced30d690fdbac49e5`  
		Last Modified: Wed, 11 Nov 2026 22:53:09 GMT  
		Size: 11.7 KB (11704 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi10-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:528ddb4df370fce336a3c14fc2b78863bd3ea7ec5af213b80450bf1a26ba78d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.9 MB (140864045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ef7e1361bda9da7f7f6ede3af735c97d3e52095edf685a3b05990887ac68315`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 04 Nov 2026 22:44:17 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."       url="https://catalog.redhat.com/en/search?searchType=containers"       com.redhat.component="ubi10-container"       name="ubi10/ubi"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       version="10.3"       distribution-scope="public"
# Wed, 04 Nov 2026 22:44:17 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 22:44:17 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 10."
# Wed, 04 Nov 2026 22:44:17 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:44:18 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:44:18 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10"
# Wed, 04 Nov 2026 22:44:18 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 22:44:18 GMT
LABEL io.openshift.tags="base rhel10"
# Wed, 04 Nov 2026 22:44:18 GMT
LABEL compose-id="RHEL-10.3-updates-20261104.2"
# Wed, 04 Nov 2026 22:44:18 GMT
ENV container oci
# Wed, 04 Nov 2026 22:44:21 GMT
COPY dir:cf36c39cdc60499b40da768fea2f714e87badcfca9770c4522872096b43342e8 in /      
# Wed, 04 Nov 2026 22:44:21 GMT
COPY file:7434e7ac38eae122961f7433f94f69681ae6b7673c89bc0a33c8831ed9c5dbfc in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 22:44:21 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 22:44:22 GMT
COPY dir:522092b8ab448990025743dc806def4d61010816a936727e301be82b4b382cd4 in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 22:44:22 GMT
COPY dir:522092b8ab448990025743dc806def4d61010816a936727e301be82b4b382cd4 in /root/buildinfo/      
# Wed, 04 Nov 2026 22:44:23 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T22:43:45Z" "org.opencontainers.image.revision"="42c51337d62747097ebce9a8dab7ef18d41bbe62" "build-date"="2026-11-04T22:43:45Z" "architecture"="aarch64" "vcs-ref"="42c51337d62747097ebce9a8dab7ef18d41bbe62" "vcs-type"="git" "release"="1793831871"org.opencontainers.image.created=2026-11-04T22:43:45Z,org.opencontainers.image.revision=42c51337d62747097ebce9a8dab7ef18d41bbe62
# Wed, 11 Nov 2026 22:42:28 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 11 Nov 2026 22:42:28 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 11 Nov 2026 22:42:28 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 11 Nov 2026 22:42:28 GMT
ARG SWIFT_PLATFORM=ubi10
# Wed, 11 Nov 2026 22:42:28 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Wed, 11 Nov 2026 22:42:28 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Wed, 11 Nov 2026 22:42:28 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 11 Nov 2026 22:42:28 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 11 Nov 2026 22:42:28 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && yum -y install gnupg2     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:cf8bd94d88861648df579a5f60649e905e0165f790dd8f323e3e6659ea96ea15`  
		Last Modified: Wed, 11 Nov 2026 05:48:24 GMT  
		Size: 78.7 MB (78714476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:730566a9afda630aeba5b50c998db90d2cae6ce3c944533ed6a8cd20dcb08c4c`  
		Last Modified: Wed, 11 Nov 2026 22:42:45 GMT  
		Size: 62.1 MB (62149569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10-slim` - unknown; unknown

```console
$ docker pull swift@sha256:3a7936f365da71cf5ffbc50f9ed488908a1f0f2b5627c890790c02906ef01a46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5951266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b9e62989ea10f280471469ccea5fff77d0992462c208a4a6472c3b97cde7811`

```dockerfile
```

-	Layers:
	-	`sha256:058d68e244249406ed30ea0e2c46e56e13e60e0cb3683ce7882add9d8eedb5cf`  
		Last Modified: Wed, 11 Nov 2026 22:42:44 GMT  
		Size: 5.9 MB (5939476 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7a3ec8e59a0e53df6c490252ac477444c808f004772aa93115b8775de2435fe`  
		Last Modified: Wed, 11 Nov 2026 22:42:43 GMT  
		Size: 11.8 KB (11790 bytes)  
		MIME: application/vnd.in-toto+json
