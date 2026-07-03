## `swift:rhel-ubi9-slim`

```console
$ docker pull swift@sha256:2b211f238955bfbaec898ef8a4acab64b937ba2e2b1e34c04fd876a0aed0a418
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9-slim` - linux; amd64

```console
$ docker pull swift@sha256:a24393d937c5f840d54416d55c2baba7f7843579408e60108bf699bfe2409308
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.8 MB (138781573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f219e876faa347c82927de5674bf12a58f26cb09f5f0d244530214f05d0470dd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Jun 2026 17:50:07 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Tue, 30 Jun 2026 17:50:07 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 30 Jun 2026 17:50:07 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 30 Jun 2026 17:50:07 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 30 Jun 2026 17:50:07 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Tue, 30 Jun 2026 17:50:07 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 17:50:07 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 17:50:07 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Tue, 30 Jun 2026 17:50:07 GMT
LABEL io.openshift.expose-services=""
# Tue, 30 Jun 2026 17:50:07 GMT
LABEL io.openshift.tags="base rhel9"
# Tue, 30 Jun 2026 17:50:08 GMT
ENV container oci
# Tue, 30 Jun 2026 17:50:09 GMT
COPY dir:83aaa84b109bcf106c30af78cd3673da95c6cdcdaea849870c30ac578da997d4 in /      
# Tue, 30 Jun 2026 17:50:09 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 30 Jun 2026 17:50:09 GMT
CMD ["/bin/bash"]
# Tue, 30 Jun 2026 17:50:09 GMT
COPY dir:f44734d5c79ab3753b28d073a8b5791bb1b704ba0ba3011de6e08f518c7e14c0 in /usr/share/buildinfo/      
# Tue, 30 Jun 2026 17:50:10 GMT
COPY dir:f44734d5c79ab3753b28d073a8b5791bb1b704ba0ba3011de6e08f518c7e14c0 in /root/buildinfo/      
# Tue, 30 Jun 2026 17:50:10 GMT
LABEL "org.opencontainers.image.created"="2026-06-30T17:49:35Z" "org.opencontainers.image.revision"="f55fcf2a35c9fe343a15bb3cfbc2f2ee52a0d6a1" "build-date"="2026-06-30T17:49:35Z" "architecture"="x86_64" "vcs-ref"="f55fcf2a35c9fe343a15bb3cfbc2f2ee52a0d6a1" "vcs-type"="git" "release"="1782841664"org.opencontainers.image.created=2026-06-30T17:49:35Z,org.opencontainers.image.revision=f55fcf2a35c9fe343a15bb3cfbc2f2ee52a0d6a1
# Fri, 03 Jul 2026 00:30:24 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 03 Jul 2026 00:30:24 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 03 Jul 2026 00:30:24 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 03 Jul 2026 00:30:24 GMT
ARG SWIFT_PLATFORM=ubi9
# Fri, 03 Jul 2026 00:30:24 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Fri, 03 Jul 2026 00:30:24 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Fri, 03 Jul 2026 00:30:24 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 03 Jul 2026 00:30:24 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 03 Jul 2026 00:30:24 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:4659f647ba9358e423d7a6d11b064756eae785fadb68f83b36a662a36dcc1d2d`  
		Last Modified: Tue, 30 Jun 2026 18:46:05 GMT  
		Size: 80.5 MB (80531961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2b278db17dce59e5f68c6f22cf5705611abbb9d041e9a396691e2eeb7b90b33`  
		Last Modified: Fri, 03 Jul 2026 00:30:41 GMT  
		Size: 58.2 MB (58249612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:3dc7542b68d99c5af627018a9c0ca900a445144c43736753dc69398236e6ba20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6419361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab25064a8fe781d0bc38cbe533aaa0ffcbfa823bd80f966200d6b707fd7545f`

```dockerfile
```

-	Layers:
	-	`sha256:1af16fe28fef023414e24b71c070ec3c5e5a0482456019d7798ba03bebdf3f27`  
		Last Modified: Fri, 03 Jul 2026 00:30:38 GMT  
		Size: 6.4 MB (6407893 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62c7338cec236f6eebf8c2251e453a8a4f333876befd848c083bf6c22f63d427`  
		Last Modified: Fri, 03 Jul 2026 00:30:38 GMT  
		Size: 11.5 KB (11468 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:518790c9a82040329fb0f8231e1f8d07df1804c6e9a42229d2a80640147ade3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.7 MB (134653554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a08df6e3c83ffc3cd0ee18d8c85bb3e616ab938444f6a900ea236d8b3892719e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Jun 2026 17:53:01 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Tue, 30 Jun 2026 17:53:01 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 30 Jun 2026 17:53:01 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 30 Jun 2026 17:53:01 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 30 Jun 2026 17:53:01 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Tue, 30 Jun 2026 17:53:01 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 17:53:01 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 17:53:01 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Tue, 30 Jun 2026 17:53:01 GMT
LABEL io.openshift.expose-services=""
# Tue, 30 Jun 2026 17:53:01 GMT
LABEL io.openshift.tags="base rhel9"
# Tue, 30 Jun 2026 17:53:01 GMT
ENV container oci
# Tue, 30 Jun 2026 17:53:04 GMT
COPY dir:f88a9cf04f1ecc0240a56c93fa9270b063dece900d59269e105cbf31eb4e3e6b in /      
# Tue, 30 Jun 2026 17:53:04 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 30 Jun 2026 17:53:04 GMT
CMD ["/bin/bash"]
# Tue, 30 Jun 2026 17:53:04 GMT
COPY dir:481c904cc4277c4433cff35a71dc85077dd6d379088f8a2587600be8447cb9ff in /usr/share/buildinfo/      
# Tue, 30 Jun 2026 17:53:04 GMT
COPY dir:481c904cc4277c4433cff35a71dc85077dd6d379088f8a2587600be8447cb9ff in /root/buildinfo/      
# Tue, 30 Jun 2026 17:53:05 GMT
LABEL "org.opencontainers.image.created"="2026-06-30T17:52:36Z" "org.opencontainers.image.revision"="f55fcf2a35c9fe343a15bb3cfbc2f2ee52a0d6a1" "build-date"="2026-06-30T17:52:36Z" "architecture"="aarch64" "vcs-ref"="f55fcf2a35c9fe343a15bb3cfbc2f2ee52a0d6a1" "vcs-type"="git" "release"="1782841664"org.opencontainers.image.created=2026-06-30T17:52:36Z,org.opencontainers.image.revision=f55fcf2a35c9fe343a15bb3cfbc2f2ee52a0d6a1
# Fri, 03 Jul 2026 00:30:38 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 03 Jul 2026 00:30:38 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 03 Jul 2026 00:30:38 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 03 Jul 2026 00:30:38 GMT
ARG SWIFT_PLATFORM=ubi9
# Fri, 03 Jul 2026 00:30:38 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Fri, 03 Jul 2026 00:30:38 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Fri, 03 Jul 2026 00:30:38 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 03 Jul 2026 00:30:38 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 03 Jul 2026 00:30:38 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:2805f23930b94e4fadba157f8e60c288f9b7e8ad3a60899eeb411349c6bf9687`  
		Last Modified: Tue, 30 Jun 2026 18:59:01 GMT  
		Size: 78.1 MB (78135945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:319312e3a9cc075a8bd74e7446a2e30d8a10f35bba3a49fcf5dd8cf4dfafa3e2`  
		Last Modified: Fri, 03 Jul 2026 00:30:54 GMT  
		Size: 56.5 MB (56517609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:f271d0163d421d9cb69774e316321b0a366f494981d4d5e5ca50044451f03e2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6415246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e95780e76abc5244c5e4fec4bb3382910e05a8862f3851be8171ce0ed41ff79`

```dockerfile
```

-	Layers:
	-	`sha256:3510220e59f0ad0875eb4216eac184fe5228d5466bb9fcb7caad8cb84c1a7d8f`  
		Last Modified: Fri, 03 Jul 2026 00:30:52 GMT  
		Size: 6.4 MB (6403692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1a5a216ba93da0510fa005969215f7fa9dfbeabe6a5c2ef317daff0b0534deb`  
		Last Modified: Fri, 03 Jul 2026 00:30:52 GMT  
		Size: 11.6 KB (11554 bytes)  
		MIME: application/vnd.in-toto+json
