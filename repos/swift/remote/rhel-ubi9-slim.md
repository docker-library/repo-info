## `swift:rhel-ubi9-slim`

```console
$ docker pull swift@sha256:5853cd545da9cc90843205d5a30203107b1d11f54eafbe9c67c1ec7ef263f3de
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9-slim` - linux; amd64

```console
$ docker pull swift@sha256:06d880859fa4fb3bd50ffa2fe17cbf587432183a80dcf15ef912deac99a03929
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.4 MB (140363089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:191934d01f6c66e3ee8abb5e23d43f5fe72328de551d4cff54f26245b6b4b074`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 12 Oct 2026 13:18:26 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 13:18:26 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 13:18:26 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 12 Oct 2026 13:18:26 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 13:18:26 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Mon, 12 Oct 2026 13:18:26 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 13:18:26 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 13:18:26 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Mon, 12 Oct 2026 13:18:26 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 13:18:26 GMT
LABEL io.openshift.tags="base rhel9"
# Mon, 12 Oct 2026 13:18:26 GMT
ENV container oci
# Mon, 12 Oct 2026 13:18:28 GMT
COPY dir:336d3f918620edbde91b2ade41a321115e94169b31bfa4fc71279ba6a15aa6eb in /      
# Mon, 12 Oct 2026 13:18:28 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 13:18:28 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 13:18:28 GMT
COPY dir:d92127d2dbcba1ec5d38bd09415aa0d5db9d79fe386a5b4528a8974c2775598a in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 13:18:29 GMT
COPY dir:d92127d2dbcba1ec5d38bd09415aa0d5db9d79fe386a5b4528a8974c2775598a in /root/buildinfo/      
# Mon, 12 Oct 2026 13:18:30 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T13:18:01Z" "org.opencontainers.image.revision"="ce61fb1d0048f076cfad70881faf27192e21d8cb" "build-date"="2026-10-12T13:18:01Z" "architecture"="x86_64" "vcs-ref"="ce61fb1d0048f076cfad70881faf27192e21d8cb" "vcs-type"="git" "release"="1791810986"org.opencontainers.image.created=2026-10-12T13:18:01Z,org.opencontainers.image.revision=ce61fb1d0048f076cfad70881faf27192e21d8cb
# Tue, 13 Oct 2026 20:30:55 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 13 Oct 2026 20:30:55 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 13 Oct 2026 20:30:55 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 13 Oct 2026 20:30:55 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 13 Oct 2026 20:30:55 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Tue, 13 Oct 2026 20:30:55 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Tue, 13 Oct 2026 20:30:55 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 20:30:55 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 20:30:55 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:2ff14d0ff6d5bdd6fdf39770d7cb39c18f79f73b28a999af57650508d22bfbb7`  
		Last Modified: Mon, 12 Oct 2026 14:53:50 GMT  
		Size: 80.5 MB (80529959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8a7e61c05df269a1b17ac86a1d75b10a29aeaa6c66b5cb9ffaa0aec84e2de4`  
		Last Modified: Tue, 13 Oct 2026 20:31:09 GMT  
		Size: 59.8 MB (59833130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:31bd8a5681e68369ab013a523b3afa7842d7b45e41e56269d1c0c6444cc005fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6420103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb48ab1c7f4dcb30b35fc28f206c817f2b65bdd08d1c9f33248b78023964205a`

```dockerfile
```

-	Layers:
	-	`sha256:09fe54b9e76c82151359af9fd03c6f23477a76cf34a1ac9727f4b7e169a23a79`  
		Last Modified: Tue, 13 Oct 2026 20:31:08 GMT  
		Size: 6.4 MB (6408635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99be9d916282405461003cd04a510c5d33cad7980bad0a7b15804e1db8fce130`  
		Last Modified: Tue, 13 Oct 2026 20:31:08 GMT  
		Size: 11.5 KB (11468 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:c9e0fb157612b071d120d5d28b0e6e81663dea7c09166fc8260dece25d3436d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.3 MB (136260321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e90ce0751bf1b5eb0501de8dc47b6fa5b3264f7fc62d13673d0b00ff35ffc8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 12 Oct 2026 13:20:25 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 13:20:25 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 13:20:25 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 12 Oct 2026 13:20:25 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 13:20:25 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Mon, 12 Oct 2026 13:20:25 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 13:20:25 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 13:20:25 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Mon, 12 Oct 2026 13:20:25 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 13:20:26 GMT
LABEL io.openshift.tags="base rhel9"
# Mon, 12 Oct 2026 13:20:26 GMT
ENV container oci
# Mon, 12 Oct 2026 13:20:29 GMT
COPY dir:ca53ee8472bd4eeb0913caef02dbff8bfc4cd145dfdd4122fefc5290a137cc0e in /      
# Mon, 12 Oct 2026 13:20:29 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 13:20:29 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 13:20:30 GMT
COPY dir:12d34427c018e6ffbf02a4d6d9bb54a7ab1070fee87bd832b0de9794fbda20e9 in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 13:20:30 GMT
COPY dir:12d34427c018e6ffbf02a4d6d9bb54a7ab1070fee87bd832b0de9794fbda20e9 in /root/buildinfo/      
# Mon, 12 Oct 2026 13:20:31 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T13:19:54Z" "org.opencontainers.image.revision"="ce61fb1d0048f076cfad70881faf27192e21d8cb" "build-date"="2026-10-12T13:19:54Z" "architecture"="aarch64" "vcs-ref"="ce61fb1d0048f076cfad70881faf27192e21d8cb" "vcs-type"="git" "release"="1791810986"org.opencontainers.image.created=2026-10-12T13:19:54Z,org.opencontainers.image.revision=ce61fb1d0048f076cfad70881faf27192e21d8cb
# Tue, 13 Oct 2026 20:30:51 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 13 Oct 2026 20:30:51 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 13 Oct 2026 20:30:51 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 13 Oct 2026 20:30:51 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 13 Oct 2026 20:30:51 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Tue, 13 Oct 2026 20:30:51 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Tue, 13 Oct 2026 20:30:51 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 20:30:51 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 20:30:51 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:898f646d219650940eb2b0d1adc5bb423ce1305dcb800c00f52bf3d7de6b6003`  
		Last Modified: Mon, 12 Oct 2026 14:53:41 GMT  
		Size: 78.2 MB (78195425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80e2384f1dc7976dedaad71106cef72b84d3a13945911404d3c3ec74b596145d`  
		Last Modified: Tue, 13 Oct 2026 20:31:07 GMT  
		Size: 58.1 MB (58064896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:575102d97a33fed50d315b12c19bf7fe13c4ba80b4b1df982c7918d249bafac4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6415988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7bdc45c9450ea96779c664cc76e1080ef1ef174626b2865a071213df58e8854`

```dockerfile
```

-	Layers:
	-	`sha256:6f389030e01310fab180c182a5042566445e612fed1e3dc7d077a1041fe9567f`  
		Last Modified: Tue, 13 Oct 2026 20:31:05 GMT  
		Size: 6.4 MB (6404434 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24b0cdce6fc818572b02af1b62c19cfae246704d52cb5578864db0f5f5a54fe7`  
		Last Modified: Tue, 13 Oct 2026 20:31:05 GMT  
		Size: 11.6 KB (11554 bytes)  
		MIME: application/vnd.in-toto+json
