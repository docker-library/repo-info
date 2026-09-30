## `swift:rhel-ubi10-slim`

```console
$ docker pull swift@sha256:84322efde225100a73b723ee6483e79f0eb80530824c8c35f9b788e62d000a2b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi10-slim` - linux; amd64

```console
$ docker pull swift@sha256:cdcc4c196099b097ab7160add23d86ca0911d65b89bd159ba32df07a590a4768
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.0 MB (143977624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96f671836a30ec7d7d23aa68da6006abc3ec3193f9462f54524ce152510a08ae`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 30 Sep 2026 07:37:09 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."       url="https://catalog.redhat.com/en/search?searchType=containers"       com.redhat.component="ubi10-container"       name="ubi10/ubi"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       version="10.2"       distribution-scope="public"
# Wed, 30 Sep 2026 07:37:09 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 07:37:09 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 10."
# Wed, 30 Sep 2026 07:37:09 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:37:09 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:37:09 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10"
# Wed, 30 Sep 2026 07:37:09 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 07:37:09 GMT
LABEL io.openshift.tags="base rhel10"
# Wed, 30 Sep 2026 07:37:09 GMT
ENV container oci
# Wed, 30 Sep 2026 07:37:11 GMT
COPY dir:8f753b068dc569a2bcabbef6454b3c57adb983462c00e0c38527274382f0d9fb in /      
# Wed, 30 Sep 2026 07:37:11 GMT
COPY file:7434e7ac38eae122961f7433f94f69681ae6b7673c89bc0a33c8831ed9c5dbfc in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 07:37:11 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 07:37:11 GMT
COPY dir:7e99c96972bc84052fda2533d0f2db721d80972953ca0534bdc3aa47b5919a5a in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 07:37:11 GMT
COPY dir:7e99c96972bc84052fda2533d0f2db721d80972953ca0534bdc3aa47b5919a5a in /root/buildinfo/      
# Wed, 30 Sep 2026 07:37:12 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T07:35:18Z" "org.opencontainers.image.revision"="13b7d6b9a11e811b5b4778128d6c31bbe5ada4ad" "build-date"="2026-09-30T07:35:18Z" "architecture"="x86_64" "vcs-ref"="13b7d6b9a11e811b5b4778128d6c31bbe5ada4ad" "vcs-type"="git" "release"="1790753515"org.opencontainers.image.created=2026-09-30T07:35:18Z,org.opencontainers.image.revision=13b7d6b9a11e811b5b4778128d6c31bbe5ada4ad
# Wed, 30 Sep 2026 21:07:34 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 30 Sep 2026 21:07:34 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 30 Sep 2026 21:07:34 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 30 Sep 2026 21:07:34 GMT
ARG SWIFT_PLATFORM=ubi10
# Wed, 30 Sep 2026 21:07:34 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Wed, 30 Sep 2026 21:07:34 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Wed, 30 Sep 2026 21:07:34 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 30 Sep 2026 21:07:34 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 30 Sep 2026 21:07:34 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && yum -y install gnupg2     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:176122974e8cb9a6ddea311fcfcb6c231c2d4cb5b6ae6a510038254411351934`  
		Last Modified: Wed, 30 Sep 2026 09:01:07 GMT  
		Size: 81.0 MB (81042022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9b7c7edd0508d9932a13445a1c040a1968fc973e7c78ad91d2acd2a48dc8e6`  
		Last Modified: Wed, 30 Sep 2026 21:07:51 GMT  
		Size: 62.9 MB (62935602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10-slim` - unknown; unknown

```console
$ docker pull swift@sha256:850ee82e56c958346efb5913e3d4d3e5c7cd4a0bd9958a0631ba681f380c04c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5967666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:520c84dadfb847cc0a1dcbf19650cc0b340e743a714e1aebe23d6876296a93e9`

```dockerfile
```

-	Layers:
	-	`sha256:97aa6829c47fb126a635ab25bc56c845d594bc092b0995e4295efa24ea44c0b5`  
		Last Modified: Wed, 30 Sep 2026 21:07:48 GMT  
		Size: 6.0 MB (5955962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30ae3f4a0fb98fe96f1c07bda24b3ee3fd07639abda0255f7cca0ed51e29f758`  
		Last Modified: Wed, 30 Sep 2026 21:07:48 GMT  
		Size: 11.7 KB (11704 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi10-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:63e9e37a4aec4277be21312da9e3b336d87e6945657c8378bdc2ced5a222173c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.5 MB (140471221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:518510351bae09bbdf497ee70ff3b05927dba7730990dca320060b9eeea0aa50`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 30 Sep 2026 07:37:48 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."       url="https://catalog.redhat.com/en/search?searchType=containers"       com.redhat.component="ubi10-container"       name="ubi10/ubi"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       version="10.2"       distribution-scope="public"
# Wed, 30 Sep 2026 07:37:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 07:37:48 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 10."
# Wed, 30 Sep 2026 07:37:48 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:37:48 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:37:48 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10"
# Wed, 30 Sep 2026 07:37:48 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 07:37:48 GMT
LABEL io.openshift.tags="base rhel10"
# Wed, 30 Sep 2026 07:37:48 GMT
ENV container oci
# Wed, 30 Sep 2026 07:37:50 GMT
COPY dir:9cf80a19b46d048a9c76eb705b59179d15bfafdf2c9af5222fa3a4e792958f68 in /      
# Wed, 30 Sep 2026 07:37:50 GMT
COPY file:7434e7ac38eae122961f7433f94f69681ae6b7673c89bc0a33c8831ed9c5dbfc in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 07:37:50 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 07:37:51 GMT
COPY dir:319fe322f21ccf76547251d02358f573f2e9e5eeb66cc0d36cc2a3980116719b in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 07:37:51 GMT
COPY dir:319fe322f21ccf76547251d02358f573f2e9e5eeb66cc0d36cc2a3980116719b in /root/buildinfo/      
# Wed, 30 Sep 2026 07:37:51 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T07:37:23Z" "org.opencontainers.image.revision"="13b7d6b9a11e811b5b4778128d6c31bbe5ada4ad" "build-date"="2026-09-30T07:37:23Z" "architecture"="aarch64" "vcs-ref"="13b7d6b9a11e811b5b4778128d6c31bbe5ada4ad" "vcs-type"="git" "release"="1790753515"org.opencontainers.image.created=2026-09-30T07:37:23Z,org.opencontainers.image.revision=13b7d6b9a11e811b5b4778128d6c31bbe5ada4ad
# Wed, 30 Sep 2026 21:06:15 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 30 Sep 2026 21:06:15 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 30 Sep 2026 21:06:15 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 30 Sep 2026 21:06:15 GMT
ARG SWIFT_PLATFORM=ubi10
# Wed, 30 Sep 2026 21:06:15 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Wed, 30 Sep 2026 21:06:15 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Wed, 30 Sep 2026 21:06:15 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 30 Sep 2026 21:06:15 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 30 Sep 2026 21:06:15 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && yum -y install gnupg2     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:05eacb906d3fd5ad2c6e4de4073f0b705351bbf3868b0fca63bdd7bdd471ad5b`  
		Last Modified: Wed, 30 Sep 2026 09:01:10 GMT  
		Size: 78.5 MB (78453609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:747f11b46ccffac8a9e045da590026c33dd4871ef58e1f9a5d6e0b4f10bf657b`  
		Last Modified: Wed, 30 Sep 2026 21:06:33 GMT  
		Size: 62.0 MB (62017612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10-slim` - unknown; unknown

```console
$ docker pull swift@sha256:c6e67a9e5e35b31b2a8860843fee096441f038bad4dadfeb664f3c2aa4bf2bb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5964154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6644e94aa4671d09ea5da76bd5fa945d9586603a0bb5c8043f3ab87035f3d6a1`

```dockerfile
```

-	Layers:
	-	`sha256:b6299ac2efec00995ab6180a22913f1dc714d4575b92fdcaeff9b5c64dd1a4f7`  
		Last Modified: Wed, 30 Sep 2026 21:06:31 GMT  
		Size: 6.0 MB (5952364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55c4b34c3f1b5f1fe1edac91f639d6bf867c689a93a49cfcafba4f0c2b1d852a`  
		Last Modified: Wed, 30 Sep 2026 21:06:30 GMT  
		Size: 11.8 KB (11790 bytes)  
		MIME: application/vnd.in-toto+json
