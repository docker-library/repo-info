## `swift:rhel-ubi9-slim`

```console
$ docker pull swift@sha256:09eef75187c20f984ee659ce054437ac1c598e72ce94a0e305ca60025c35072d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9-slim` - linux; amd64

```console
$ docker pull swift@sha256:0e4ae8501321d99c1453b46b8d2ef0d3c8bd4d79c8f5f6e38f669c63a950ce0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140254374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe91df272b9fb1f4194c8bf394ba20148ebc713f0847a96d22a16d49a48291e4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 26 Oct 2026 08:50:55 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Mon, 26 Oct 2026 08:50:55 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 26 Oct 2026 08:50:55 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 26 Oct 2026 08:50:55 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 26 Oct 2026 08:50:55 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Mon, 26 Oct 2026 08:50:55 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 08:50:55 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 08:50:55 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Mon, 26 Oct 2026 08:50:55 GMT
LABEL io.openshift.expose-services=""
# Mon, 26 Oct 2026 08:50:55 GMT
LABEL io.openshift.tags="base rhel9"
# Mon, 26 Oct 2026 08:50:55 GMT
ENV container oci
# Mon, 26 Oct 2026 08:50:57 GMT
COPY dir:dd8355ce303579f7c801db09ffc474aa525f90eab5fd56d6570bd4e8fec88879 in /      
# Mon, 26 Oct 2026 08:50:57 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 26 Oct 2026 08:50:57 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 08:50:57 GMT
COPY dir:135737fd8ca518262fb10c0dd74ac1f9db5b8b7e7d336b585367e01cd166abcf in /usr/share/buildinfo/      
# Mon, 26 Oct 2026 08:50:58 GMT
COPY dir:135737fd8ca518262fb10c0dd74ac1f9db5b8b7e7d336b585367e01cd166abcf in /root/buildinfo/      
# Mon, 26 Oct 2026 08:50:59 GMT
LABEL "org.opencontainers.image.created"="2026-10-26T08:50:30Z" "org.opencontainers.image.revision"="fc6f6060a2bff02af1c1b54fb2036a6eb7955359" "build-date"="2026-10-26T08:50:30Z" "architecture"="x86_64" "vcs-ref"="fc6f6060a2bff02af1c1b54fb2036a6eb7955359" "vcs-type"="git" "release"="1793004556"org.opencontainers.image.created=2026-10-26T08:50:30Z,org.opencontainers.image.revision=fc6f6060a2bff02af1c1b54fb2036a6eb7955359
# Tue, 27 Oct 2026 17:46:11 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 27 Oct 2026 17:46:11 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 27 Oct 2026 17:46:11 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 27 Oct 2026 17:46:11 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 27 Oct 2026 17:46:11 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Tue, 27 Oct 2026 17:46:11 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Tue, 27 Oct 2026 17:46:11 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 27 Oct 2026 17:46:11 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 27 Oct 2026 17:46:11 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:f8d52b369c86dbd277e65deb6c4d961fa4880b88a637f831cd15e954c5694e6c`  
		Last Modified: Mon, 26 Oct 2026 10:25:43 GMT  
		Size: 80.4 MB (80423744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b45c99082f052389b7d15cd189d72db45d98a904b03bfc3401017d05140c0c`  
		Last Modified: Tue, 27 Oct 2026 17:46:27 GMT  
		Size: 59.8 MB (59830630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:1d99b69c6837e31f587da6f06797636f147bee9457d6b372896b5a3130c5e923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6401568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bca2ced13a1c00ea1bd7bc348a91a84f3bb4f4345b87da80450bd47c87a325b`

```dockerfile
```

-	Layers:
	-	`sha256:4bb07150dd743ff1a6923bcc267163e3502a111d22c32cb641fc9dc6e0220742`  
		Last Modified: Tue, 27 Oct 2026 17:46:25 GMT  
		Size: 6.4 MB (6390100 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b9fbf98be7ef5f1e2ef7009bb9df76c863918601f21d0329c370913b75c58ff`  
		Last Modified: Tue, 27 Oct 2026 17:46:25 GMT  
		Size: 11.5 KB (11468 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:d99240a971447f02989878c183050ab7d44bac7d1d67fb62d0f357590c409d7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.2 MB (136249615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffc2f1f498eabe4cd7f35ead0bad78b8aae42b14896e35c22a1ac30e696d542f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 26 Oct 2026 08:52:50 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Mon, 26 Oct 2026 08:52:50 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 26 Oct 2026 08:52:50 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 26 Oct 2026 08:52:50 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 26 Oct 2026 08:52:50 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Mon, 26 Oct 2026 08:52:51 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 08:52:51 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 08:52:51 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Mon, 26 Oct 2026 08:52:51 GMT
LABEL io.openshift.expose-services=""
# Mon, 26 Oct 2026 08:52:51 GMT
LABEL io.openshift.tags="base rhel9"
# Mon, 26 Oct 2026 08:52:51 GMT
ENV container oci
# Mon, 26 Oct 2026 08:52:54 GMT
COPY dir:6de9ba290f419df7c0edacfcba1a34e009c551b7b68216258f298f11603b1800 in /      
# Mon, 26 Oct 2026 08:52:54 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 26 Oct 2026 08:52:54 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 08:52:55 GMT
COPY dir:8643ba3adced02eb696caa161adffd8cf07924e40ba8414082b79d96a0156850 in /usr/share/buildinfo/      
# Mon, 26 Oct 2026 08:52:55 GMT
COPY dir:8643ba3adced02eb696caa161adffd8cf07924e40ba8414082b79d96a0156850 in /root/buildinfo/      
# Mon, 26 Oct 2026 08:52:56 GMT
LABEL "org.opencontainers.image.created"="2026-10-26T08:52:19Z" "org.opencontainers.image.revision"="fc6f6060a2bff02af1c1b54fb2036a6eb7955359" "build-date"="2026-10-26T08:52:19Z" "architecture"="aarch64" "vcs-ref"="fc6f6060a2bff02af1c1b54fb2036a6eb7955359" "vcs-type"="git" "release"="1793004556"org.opencontainers.image.created=2026-10-26T08:52:19Z,org.opencontainers.image.revision=fc6f6060a2bff02af1c1b54fb2036a6eb7955359
# Tue, 27 Oct 2026 17:43:23 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 27 Oct 2026 17:43:23 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 27 Oct 2026 17:43:23 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 27 Oct 2026 17:43:23 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 27 Oct 2026 17:43:23 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Tue, 27 Oct 2026 17:43:23 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Tue, 27 Oct 2026 17:43:23 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 27 Oct 2026 17:43:23 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 27 Oct 2026 17:43:23 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:79c114c97ec291dbb7cdc46bc481cba208eb1ef8c98e7181eefba8ad710218ee`  
		Last Modified: Mon, 26 Oct 2026 10:41:27 GMT  
		Size: 78.2 MB (78185379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:268741e3af78afa0a7046a2473803b33f924b94c6b6f94076534951bd44e0ea0`  
		Last Modified: Tue, 27 Oct 2026 17:43:40 GMT  
		Size: 58.1 MB (58064236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:e049139b2c65e27d3744bc32be0afb1d85248627f3f26e4e106ee7b0f4d60b38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6397453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5601fa8e57ac483aebb7a244025e47e05c12cfe7b47dd9305f33c355efaabf6`

```dockerfile
```

-	Layers:
	-	`sha256:e82997f1edaee2db36f18274936c648e44c828667e3cdf297a5fbf0b81099ba1`  
		Last Modified: Tue, 27 Oct 2026 17:43:37 GMT  
		Size: 6.4 MB (6385899 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57694499d676d17ff11b1eb5065e469b01ce31a713c8a00b9aa7b904049a5e59`  
		Last Modified: Tue, 27 Oct 2026 17:43:37 GMT  
		Size: 11.6 KB (11554 bytes)  
		MIME: application/vnd.in-toto+json
