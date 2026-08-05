## `swift:rhel-ubi9-slim`

```console
$ docker pull swift@sha256:8b80d03b7dd9ee9db6add958535af4a7b995e54fa0cee9cee4108e979dd79b3f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9-slim` - linux; amd64

```console
$ docker pull swift@sha256:b0d501012baca88774595fb7dfdbf8d78b5f606c5cdd6e5f7da64cc91b6c554e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (138955328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb3e6388c47fe7e033ea7d788495a1eec3ed0b320b25000b1cde936ab3cb9fcc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 01:41:12 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Tue, 04 Aug 2026 01:41:12 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 04 Aug 2026 01:41:12 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 04 Aug 2026 01:41:12 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 04 Aug 2026 01:41:12 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Tue, 04 Aug 2026 01:41:12 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 04 Aug 2026 01:41:12 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 04 Aug 2026 01:41:12 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Tue, 04 Aug 2026 01:41:12 GMT
LABEL io.openshift.expose-services=""
# Tue, 04 Aug 2026 01:41:12 GMT
LABEL io.openshift.tags="base rhel9"
# Tue, 04 Aug 2026 01:41:12 GMT
ENV container oci
# Tue, 04 Aug 2026 01:41:14 GMT
COPY dir:bbfbb14309967fac63f39305a8d0373dacc404f3d28ccb765101b6bb4ec864ba in /      
# Tue, 04 Aug 2026 01:41:14 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 04 Aug 2026 01:41:14 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:14 GMT
COPY dir:0134d9062c26b1c0c9f16b1cfcf7b2642459e0da6f6fd2dd55757a139643ae28 in /usr/share/buildinfo/      
# Tue, 04 Aug 2026 01:41:14 GMT
COPY dir:0134d9062c26b1c0c9f16b1cfcf7b2642459e0da6f6fd2dd55757a139643ae28 in /root/buildinfo/      
# Tue, 04 Aug 2026 01:41:15 GMT
LABEL "org.opencontainers.image.created"="2026-08-04T01:40:47Z" "org.opencontainers.image.revision"="da6ca466d8cbf92e00e0c05c0f54e9789fe71165" "build-date"="2026-08-04T01:40:47Z" "architecture"="x86_64" "vcs-ref"="da6ca466d8cbf92e00e0c05c0f54e9789fe71165" "vcs-type"="git" "release"="1785807559"org.opencontainers.image.created=2026-08-04T01:40:47Z,org.opencontainers.image.revision=da6ca466d8cbf92e00e0c05c0f54e9789fe71165
# Tue, 04 Aug 2026 21:09:46 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 04 Aug 2026 21:09:46 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 04 Aug 2026 21:09:46 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 04 Aug 2026 21:09:46 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 04 Aug 2026 21:09:46 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Tue, 04 Aug 2026 21:09:46 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Tue, 04 Aug 2026 21:09:46 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 04 Aug 2026 21:09:46 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 04 Aug 2026 21:09:46 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:f9d34c84259bb5634501c03040d65ce29e21ab18bb7c847c29a228965f28ca55`  
		Last Modified: Tue, 04 Aug 2026 02:39:12 GMT  
		Size: 80.5 MB (80531831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8d20491689e5d14e07c9d44e060181b64925e00e8af8fc4e1098f5c9a9a2846`  
		Last Modified: Tue, 04 Aug 2026 21:10:03 GMT  
		Size: 58.4 MB (58423497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:c053054ca36dbd4bfd238d93b827116e32013a85df4bb83f5ef655b29def2140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6419394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88de28fefb114b1c183f75d4557ba60451bb55286655c1608cf4a7c9d96853dd`

```dockerfile
```

-	Layers:
	-	`sha256:a365160301a1f809a0bcc119899a7c082a5c2d6e96366c940d7c94766052a0a8`  
		Last Modified: Tue, 04 Aug 2026 21:10:01 GMT  
		Size: 6.4 MB (6407926 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:303adc777f40a4feeb89f216cdceea4c5470c6a25762f59ebebd90d15f3b65c9`  
		Last Modified: Tue, 04 Aug 2026 21:10:01 GMT  
		Size: 11.5 KB (11468 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:f1c4cb5d851f828879280c4bb90995e371a98ed187ed3e2ce1e22bb4aa941cb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 MB (134794407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d80189b9f773fa8862ce6709c9778d46267d26adcae943f69d4fde2f84cecf16`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 01:42:46 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Tue, 04 Aug 2026 01:42:46 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 04 Aug 2026 01:42:46 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 04 Aug 2026 01:42:46 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 04 Aug 2026 01:42:46 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Tue, 04 Aug 2026 01:42:46 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 04 Aug 2026 01:42:46 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 04 Aug 2026 01:42:46 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Tue, 04 Aug 2026 01:42:46 GMT
LABEL io.openshift.expose-services=""
# Tue, 04 Aug 2026 01:42:46 GMT
LABEL io.openshift.tags="base rhel9"
# Tue, 04 Aug 2026 01:42:46 GMT
ENV container oci
# Tue, 04 Aug 2026 01:42:48 GMT
COPY dir:df61ccc8e63c2f5f21a20693ef0e5161f77dd574d119be228d0e971b694293cd in /      
# Tue, 04 Aug 2026 01:42:49 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 04 Aug 2026 01:42:49 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:42:49 GMT
COPY dir:479d8c73f7b0b2cec839096a4e6cc8fd9a8651ebadb7f95a54e1715e00c012e8 in /usr/share/buildinfo/      
# Tue, 04 Aug 2026 01:42:49 GMT
COPY dir:479d8c73f7b0b2cec839096a4e6cc8fd9a8651ebadb7f95a54e1715e00c012e8 in /root/buildinfo/      
# Tue, 04 Aug 2026 01:42:49 GMT
LABEL "org.opencontainers.image.created"="2026-08-04T01:42:19Z" "org.opencontainers.image.revision"="da6ca466d8cbf92e00e0c05c0f54e9789fe71165" "build-date"="2026-08-04T01:42:19Z" "architecture"="aarch64" "vcs-ref"="da6ca466d8cbf92e00e0c05c0f54e9789fe71165" "vcs-type"="git" "release"="1785807559"org.opencontainers.image.created=2026-08-04T01:42:19Z,org.opencontainers.image.revision=da6ca466d8cbf92e00e0c05c0f54e9789fe71165
# Tue, 04 Aug 2026 21:12:51 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 04 Aug 2026 21:12:51 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 04 Aug 2026 21:12:51 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 04 Aug 2026 21:12:51 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 04 Aug 2026 21:12:51 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Tue, 04 Aug 2026 21:12:51 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Tue, 04 Aug 2026 21:12:51 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 04 Aug 2026 21:12:51 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 04 Aug 2026 21:12:51 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:37f8d1cfc669c24896c33f67b75c890a296dd43b447324e4715ddcfa427ae0c4`  
		Last Modified: Tue, 04 Aug 2026 02:53:02 GMT  
		Size: 78.2 MB (78166849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6546e359126f57d65e52fdf0749a22094db809e8afe93cc1c99da8afc302a96f`  
		Last Modified: Tue, 04 Aug 2026 21:13:08 GMT  
		Size: 56.6 MB (56627558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:d423ddaf638f453df84effadb00209c229ea6ba3bdc40ef9fa1d00b67f3754d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6415279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:986ec8b19746fc117a0ffc4b0c87e9f3da4c5e60f4b9fdf9ac7d4427fbe32d74`

```dockerfile
```

-	Layers:
	-	`sha256:825eaa79076d101fdc7448f75bef9be0868fa6243593402d3ecd1f7eb8932d48`  
		Last Modified: Tue, 04 Aug 2026 21:13:06 GMT  
		Size: 6.4 MB (6403725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3a15396497967071f30fa66e245fdd07473660e683c6be9273a5dbb4ad89051`  
		Last Modified: Tue, 04 Aug 2026 21:13:05 GMT  
		Size: 11.6 KB (11554 bytes)  
		MIME: application/vnd.in-toto+json
