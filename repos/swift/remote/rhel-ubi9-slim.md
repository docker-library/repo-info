## `swift:rhel-ubi9-slim`

```console
$ docker pull swift@sha256:9c81a13837b929bb29cf95bad40f166d20e9d705385d9b4ba8e38dae3e5bccf8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9-slim` - linux; amd64

```console
$ docker pull swift@sha256:de85c564a0d488f21f4c5668f8f4703a9e253d2b8bc6f60335b10d0fe5de5166
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.7 MB (138709462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4df78fbab1425c3351c2f0a3c9539e4ee71c4ca50116a5234dcbaf0b31e8a25`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 22 Jul 2026 11:37:54 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Wed, 22 Jul 2026 11:37:54 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 22 Jul 2026 11:37:54 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 22 Jul 2026 11:37:54 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 22 Jul 2026 11:37:54 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Wed, 22 Jul 2026 11:37:54 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 11:37:54 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 11:37:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Wed, 22 Jul 2026 11:37:54 GMT
LABEL io.openshift.expose-services=""
# Wed, 22 Jul 2026 11:37:54 GMT
LABEL io.openshift.tags="base rhel9"
# Wed, 22 Jul 2026 11:37:54 GMT
ENV container oci
# Wed, 22 Jul 2026 11:37:55 GMT
COPY dir:767aa30958a7ac52dca8d4da233b8c8c8a024a0481dfa0aba82d25131999f75d in /      
# Wed, 22 Jul 2026 11:37:56 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 22 Jul 2026 11:37:56 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 11:37:56 GMT
COPY dir:b51bbafe6184e1cfe8066a2495edc66cb251b837a55df6321e49a37e783a8510 in /usr/share/buildinfo/      
# Wed, 22 Jul 2026 11:37:56 GMT
COPY dir:b51bbafe6184e1cfe8066a2495edc66cb251b837a55df6321e49a37e783a8510 in /root/buildinfo/      
# Wed, 22 Jul 2026 11:37:56 GMT
LABEL "org.opencontainers.image.created"="2026-07-22T11:37:32Z" "org.opencontainers.image.revision"="0e23037f45ca78f09c0eff2b8a93c84c78bd62c4" "build-date"="2026-07-22T11:37:32Z" "architecture"="x86_64" "vcs-ref"="0e23037f45ca78f09c0eff2b8a93c84c78bd62c4" "vcs-type"="git" "release"="1784720169"org.opencontainers.image.created=2026-07-22T11:37:32Z,org.opencontainers.image.revision=0e23037f45ca78f09c0eff2b8a93c84c78bd62c4
# Wed, 22 Jul 2026 22:15:48 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 22 Jul 2026 22:15:48 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 22 Jul 2026 22:15:48 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 22 Jul 2026 22:15:48 GMT
ARG SWIFT_PLATFORM=ubi9
# Wed, 22 Jul 2026 22:15:48 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Wed, 22 Jul 2026 22:15:48 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Wed, 22 Jul 2026 22:15:48 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 22 Jul 2026 22:15:48 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 22 Jul 2026 22:15:48 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:2745c1efad1692af1d3cf3b3683f99411344726b5fb0a203b8c959f7462f4630`  
		Last Modified: Wed, 22 Jul 2026 12:46:41 GMT  
		Size: 80.5 MB (80475623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce09478d5a73e8d3c6dfd9302b408e0390a92f3fd1a02b8f12396bcd36239cb6`  
		Last Modified: Wed, 22 Jul 2026 22:16:06 GMT  
		Size: 58.2 MB (58233839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:57eb6bca60edc702b8e0708303e1921daad0d16581c6efd2a1a6cc208ce0206d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6419384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d9c6899802ecc5035bff7c04cfa4e8e1d03e217a6a446e643fa85112731b8ee`

```dockerfile
```

-	Layers:
	-	`sha256:a7ccff2c4cd40ae8f32effdf7466d7a0bb3bdeb5890e233aeff92e424975f04b`  
		Last Modified: Wed, 22 Jul 2026 22:16:03 GMT  
		Size: 6.4 MB (6407917 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33a1bd24264dca28c64f5f53c57b2e16641fa83ee111a5486755e2fbe37d894e`  
		Last Modified: Wed, 22 Jul 2026 22:16:03 GMT  
		Size: 11.5 KB (11467 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:a2c321133db2d9354202cbe2608987567499c96d8676d36d95f844895a253426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.7 MB (134693950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6973d7e659fee2dafa00eeecc8d5f7fa1e6cfec8fbd0c3cb2780ce256f56ea90`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 22 Jul 2026 11:40:43 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Wed, 22 Jul 2026 11:40:43 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 22 Jul 2026 11:40:43 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 22 Jul 2026 11:40:43 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 22 Jul 2026 11:40:43 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Wed, 22 Jul 2026 11:40:43 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 11:40:43 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 11:40:43 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Wed, 22 Jul 2026 11:40:43 GMT
LABEL io.openshift.expose-services=""
# Wed, 22 Jul 2026 11:40:43 GMT
LABEL io.openshift.tags="base rhel9"
# Wed, 22 Jul 2026 11:40:43 GMT
ENV container oci
# Wed, 22 Jul 2026 11:40:46 GMT
COPY dir:da3ef4cfe957875e89a9aba9a6fecc2d1f7e9b28329d46c887d76810cab44495 in /      
# Wed, 22 Jul 2026 11:40:46 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 22 Jul 2026 11:40:46 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 11:40:46 GMT
COPY dir:548bfcb618dc49d7293298de4a3dadd8483669ce5eca56dc742e0dfa9c27b280 in /usr/share/buildinfo/      
# Wed, 22 Jul 2026 11:40:46 GMT
COPY dir:548bfcb618dc49d7293298de4a3dadd8483669ce5eca56dc742e0dfa9c27b280 in /root/buildinfo/      
# Wed, 22 Jul 2026 11:40:47 GMT
LABEL "org.opencontainers.image.created"="2026-07-22T11:40:19Z" "org.opencontainers.image.revision"="0e23037f45ca78f09c0eff2b8a93c84c78bd62c4" "build-date"="2026-07-22T11:40:19Z" "architecture"="aarch64" "vcs-ref"="0e23037f45ca78f09c0eff2b8a93c84c78bd62c4" "vcs-type"="git" "release"="1784720169"org.opencontainers.image.created=2026-07-22T11:40:19Z,org.opencontainers.image.revision=0e23037f45ca78f09c0eff2b8a93c84c78bd62c4
# Wed, 22 Jul 2026 22:15:56 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 22 Jul 2026 22:15:56 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 22 Jul 2026 22:15:56 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 22 Jul 2026 22:15:56 GMT
ARG SWIFT_PLATFORM=ubi9
# Wed, 22 Jul 2026 22:15:56 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Wed, 22 Jul 2026 22:15:56 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Wed, 22 Jul 2026 22:15:56 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 22 Jul 2026 22:15:56 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 22 Jul 2026 22:15:56 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:7ef24ee69a92d2bce86328a6dffc85aad78ed710e555b8245b3152b26d42f8e4`  
		Last Modified: Wed, 22 Jul 2026 12:52:28 GMT  
		Size: 78.2 MB (78167482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983cd722788578a1155d64908814fa85bf4e66c346736d0fcad93b50a0d410cf`  
		Last Modified: Wed, 22 Jul 2026 22:16:12 GMT  
		Size: 56.5 MB (56526468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:13e68457560caebbffd7c57c2f619ad7c4e4ea5f8ecd08c2cc04c21335a24ce2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6415270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17b9a4dd0a653e00d38a7c8832e3e83fbe1cee01bc3289e17304cc218a311eae`

```dockerfile
```

-	Layers:
	-	`sha256:dac4d75c1990cddfcc87d534acb549bce2e17f51f7ae26819fb36e9a3e5bb4c9`  
		Last Modified: Wed, 22 Jul 2026 22:16:10 GMT  
		Size: 6.4 MB (6403716 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33fe5641a4f80a711e43744da9e12c615315ea7a192634c6b71f039805727cb9`  
		Last Modified: Wed, 22 Jul 2026 22:16:09 GMT  
		Size: 11.6 KB (11554 bytes)  
		MIME: application/vnd.in-toto+json
