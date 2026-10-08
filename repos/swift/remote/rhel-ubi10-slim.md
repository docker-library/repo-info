## `swift:rhel-ubi10-slim`

```console
$ docker pull swift@sha256:60ad68477a35e8b885fe44a352c4abb3a767ece5f2c5b99f6661026c39113a0a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi10-slim` - linux; amd64

```console
$ docker pull swift@sha256:6e1a779c8f5aec74987ac342bb6592beac3234d5fd540c135dc43a2f9cce686c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.9 MB (143913419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7e861e48b1d6438ce6367dfeb0bc5e8c76e33d22f86858e6f534746f92f68c5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 07 Oct 2026 12:21:59 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."       url="https://catalog.redhat.com/en/search?searchType=containers"       com.redhat.component="ubi10-container"       name="ubi10/ubi"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       version="10.2"       distribution-scope="public"
# Wed, 07 Oct 2026 12:21:59 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 07 Oct 2026 12:21:59 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 10."
# Wed, 07 Oct 2026 12:21:59 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 12:21:59 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 12:21:59 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10"
# Wed, 07 Oct 2026 12:21:59 GMT
LABEL io.openshift.expose-services=""
# Wed, 07 Oct 2026 12:21:59 GMT
LABEL io.openshift.tags="base rhel10"
# Wed, 07 Oct 2026 12:21:59 GMT
ENV container oci
# Wed, 07 Oct 2026 12:22:01 GMT
COPY dir:c3382caa618026295dacd8f86f76b0917131d9651216e8a28a1e28f4e22dab4d in /      
# Wed, 07 Oct 2026 12:22:01 GMT
COPY file:7434e7ac38eae122961f7433f94f69681ae6b7673c89bc0a33c8831ed9c5dbfc in /etc/yum.repos.d/.      
# Wed, 07 Oct 2026 12:22:01 GMT
CMD ["/bin/bash"]
# Wed, 07 Oct 2026 12:22:01 GMT
COPY dir:44d9f3b764d853276b818a73fea3f55abeaa3fb43f6b36d2f862fd1fca45e743 in /usr/share/buildinfo/      
# Wed, 07 Oct 2026 12:22:01 GMT
COPY dir:44d9f3b764d853276b818a73fea3f55abeaa3fb43f6b36d2f862fd1fca45e743 in /root/buildinfo/      
# Wed, 07 Oct 2026 12:22:02 GMT
LABEL "org.opencontainers.image.created"="2026-10-07T12:21:35Z" "org.opencontainers.image.revision"="9f7e707ee951e21c001a4d419b46ad9285dcb66a" "build-date"="2026-10-07T12:21:35Z" "architecture"="x86_64" "vcs-ref"="9f7e707ee951e21c001a4d419b46ad9285dcb66a" "vcs-type"="git" "release"="1791375475"org.opencontainers.image.created=2026-10-07T12:21:35Z,org.opencontainers.image.revision=9f7e707ee951e21c001a4d419b46ad9285dcb66a
# Wed, 07 Oct 2026 22:09:43 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 07 Oct 2026 22:09:43 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 07 Oct 2026 22:09:43 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 07 Oct 2026 22:09:43 GMT
ARG SWIFT_PLATFORM=ubi10
# Wed, 07 Oct 2026 22:09:43 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Wed, 07 Oct 2026 22:09:43 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Wed, 07 Oct 2026 22:09:43 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 07 Oct 2026 22:09:43 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 07 Oct 2026 22:09:43 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && yum -y install gnupg2     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:6d2b0c809b0916b23e0f924f7fc417a0f800759cc58585633d4eeec7f64620e0`  
		Last Modified: Wed, 07 Oct 2026 14:21:10 GMT  
		Size: 81.0 MB (80980092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498af3a6505024984f650e7ab31a27b80772b7d7b5702551758c3fe88557ae01`  
		Last Modified: Wed, 07 Oct 2026 22:10:02 GMT  
		Size: 62.9 MB (62933327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10-slim` - unknown; unknown

```console
$ docker pull swift@sha256:faa13f5103ab62262af73a78c6b30188194125bafb33f6ccc82e3b65f10793d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5967674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b37a3a6c2d297147dfa65afbff0f46e0dfdc9cbe63ca5e10dea639ec5f131352`

```dockerfile
```

-	Layers:
	-	`sha256:4171447abe5ccaa2d9182571cf1ce2f5dfb79f1fc86e52b14eb54a495e051b3a`  
		Last Modified: Wed, 07 Oct 2026 22:09:59 GMT  
		Size: 6.0 MB (5955970 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5645f7bca861413bb7cef39a35ac809f6b2f30a7a21c3ffceeb9f8d53c99de01`  
		Last Modified: Wed, 07 Oct 2026 22:09:58 GMT  
		Size: 11.7 KB (11704 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi10-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:0a1c34484a4ba35560d42545d366d60d4695699a7b82f75e3e5946caacccf684
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.4 MB (140438392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cb2bb4eee1f12f136fefafc2ad184c69eb48d5d9173e9287a7bb7fc83d54b16`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 07 Oct 2026 12:24:29 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."       url="https://catalog.redhat.com/en/search?searchType=containers"       com.redhat.component="ubi10-container"       name="ubi10/ubi"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       version="10.2"       distribution-scope="public"
# Wed, 07 Oct 2026 12:24:29 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 07 Oct 2026 12:24:29 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 10."
# Wed, 07 Oct 2026 12:24:29 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 12:24:29 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 12:24:29 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10"
# Wed, 07 Oct 2026 12:24:29 GMT
LABEL io.openshift.expose-services=""
# Wed, 07 Oct 2026 12:24:29 GMT
LABEL io.openshift.tags="base rhel10"
# Wed, 07 Oct 2026 12:24:29 GMT
ENV container oci
# Wed, 07 Oct 2026 12:24:31 GMT
COPY dir:88d0c287f52669e62ebc90eaa8f867841dd83ba525dad1d4bf40e3f5362fe14f in /      
# Wed, 07 Oct 2026 12:24:32 GMT
COPY file:7434e7ac38eae122961f7433f94f69681ae6b7673c89bc0a33c8831ed9c5dbfc in /etc/yum.repos.d/.      
# Wed, 07 Oct 2026 12:24:32 GMT
CMD ["/bin/bash"]
# Wed, 07 Oct 2026 12:24:32 GMT
COPY dir:2b4044fc8494fb0e4e18263696f95667396d7b50d97e5b66b9437eaa5bdd6c3c in /usr/share/buildinfo/      
# Wed, 07 Oct 2026 12:24:32 GMT
COPY dir:2b4044fc8494fb0e4e18263696f95667396d7b50d97e5b66b9437eaa5bdd6c3c in /root/buildinfo/      
# Wed, 07 Oct 2026 12:24:32 GMT
LABEL "org.opencontainers.image.created"="2026-10-07T12:24:02Z" "org.opencontainers.image.revision"="9f7e707ee951e21c001a4d419b46ad9285dcb66a" "build-date"="2026-10-07T12:24:02Z" "architecture"="aarch64" "vcs-ref"="9f7e707ee951e21c001a4d419b46ad9285dcb66a" "vcs-type"="git" "release"="1791375475"org.opencontainers.image.created=2026-10-07T12:24:02Z,org.opencontainers.image.revision=9f7e707ee951e21c001a4d419b46ad9285dcb66a
# Wed, 07 Oct 2026 22:09:23 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 07 Oct 2026 22:09:23 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 07 Oct 2026 22:09:23 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 07 Oct 2026 22:09:23 GMT
ARG SWIFT_PLATFORM=ubi10
# Wed, 07 Oct 2026 22:09:23 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Wed, 07 Oct 2026 22:09:23 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Wed, 07 Oct 2026 22:09:23 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 07 Oct 2026 22:09:23 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 07 Oct 2026 22:09:23 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && yum -y install gnupg2     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:0d6748182d6063b61912711b90f8f6ab7d74cef1438cfe0792f1d0936d832b16`  
		Last Modified: Wed, 07 Oct 2026 14:21:14 GMT  
		Size: 78.4 MB (78428334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44b59eedcc45001215d85c2f732f8ea49d0c2149e6be14634486f8091230ec4d`  
		Last Modified: Wed, 07 Oct 2026 22:09:42 GMT  
		Size: 62.0 MB (62010058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10-slim` - unknown; unknown

```console
$ docker pull swift@sha256:0b1e1a83a68c66ca3c8e4fc6e2dfa6f4a56a1cad063d4ecbc3ec3951832fd352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5964162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e95200f6d3d850c4a36bcd52dfdd4b3d5f22fca600917a34a67fc27399639acf`

```dockerfile
```

-	Layers:
	-	`sha256:5066857af77299e590605fb9030e6faa398fec371e49ba90ea138ad668e8d248`  
		Last Modified: Wed, 07 Oct 2026 22:09:39 GMT  
		Size: 6.0 MB (5952372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d6ac38698de6a56c17403a33c9cce830f38b1c9b62cddc055b5e280a14bbe3a`  
		Last Modified: Wed, 07 Oct 2026 22:09:39 GMT  
		Size: 11.8 KB (11790 bytes)  
		MIME: application/vnd.in-toto+json
