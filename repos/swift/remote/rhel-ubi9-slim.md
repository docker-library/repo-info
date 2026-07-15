## `swift:rhel-ubi9-slim`

```console
$ docker pull swift@sha256:d6af2b2746222682cdcff3aaedcc3bf66a6e472f80e666625815cd3ce2ad26b3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9-slim` - linux; amd64

```console
$ docker pull swift@sha256:d50ed22273328d395a4b4b9663f6a4f5085bb6f7b87df5ffe9fa27015ee14710
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.8 MB (138779703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8df0252a4a28777f9b7f3b04cf1ade9240a5a941918db0f5060723998ca4667`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 14 Jul 2026 04:51:34 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Tue, 14 Jul 2026 04:51:34 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 14 Jul 2026 04:51:34 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 14 Jul 2026 04:51:34 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 14 Jul 2026 04:51:34 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Tue, 14 Jul 2026 04:51:34 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 14 Jul 2026 04:51:34 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 14 Jul 2026 04:51:34 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Tue, 14 Jul 2026 04:51:34 GMT
LABEL io.openshift.expose-services=""
# Tue, 14 Jul 2026 04:51:34 GMT
LABEL io.openshift.tags="base rhel9"
# Tue, 14 Jul 2026 04:51:34 GMT
ENV container oci
# Tue, 14 Jul 2026 04:51:35 GMT
COPY dir:ecc7f67233762cb3037d6f5fa96988e5ed0c21fecfa37c232ce4f3cf82f3d126 in /      
# Tue, 14 Jul 2026 04:51:35 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 14 Jul 2026 04:51:35 GMT
CMD ["/bin/bash"]
# Tue, 14 Jul 2026 04:51:36 GMT
COPY dir:936e3970fa57a59550d78a32be7d29f3a16406ee57fba0637a1eaa1dccaee3da in /usr/share/buildinfo/      
# Tue, 14 Jul 2026 04:51:36 GMT
COPY dir:936e3970fa57a59550d78a32be7d29f3a16406ee57fba0637a1eaa1dccaee3da in /root/buildinfo/      
# Tue, 14 Jul 2026 04:51:36 GMT
LABEL "org.opencontainers.image.created"="2026-07-14T04:51:13Z" "org.opencontainers.image.revision"="2a95ea232004e5358b74f24fe8e22523f97364b7" "build-date"="2026-07-14T04:51:13Z" "architecture"="x86_64" "vcs-ref"="2a95ea232004e5358b74f24fe8e22523f97364b7" "vcs-type"="git" "release"="1784004572"org.opencontainers.image.created=2026-07-14T04:51:13Z,org.opencontainers.image.revision=2a95ea232004e5358b74f24fe8e22523f97364b7
# Tue, 14 Jul 2026 20:35:15 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 14 Jul 2026 20:35:15 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 14 Jul 2026 20:35:15 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 14 Jul 2026 20:35:15 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 14 Jul 2026 20:35:15 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Tue, 14 Jul 2026 20:35:15 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Tue, 14 Jul 2026 20:35:15 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 14 Jul 2026 20:35:15 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 14 Jul 2026 20:35:15 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:f2456c363cc4742b349452a67627243a00319910d7f653961cce6b7966751d76`  
		Last Modified: Tue, 14 Jul 2026 06:05:21 GMT  
		Size: 80.5 MB (80532533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f070522d0d223780748ceb24cdf09d8ac52f6bc82210dacd513f658a97b30fec`  
		Last Modified: Tue, 14 Jul 2026 20:35:32 GMT  
		Size: 58.2 MB (58247170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:26f72641fa5883eb41debac1861103ba05f51bae44f37d5b6bb8bfce7cabc333
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6419365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea5194cbe4a788df0a690062c05ad5252f92260627e512e28dc716734458aae6`

```dockerfile
```

-	Layers:
	-	`sha256:a31e0d0ad991ff264e886842f3dd43ce9b22450c5a79cdfca42517c34ae3ac79`  
		Last Modified: Tue, 14 Jul 2026 20:35:30 GMT  
		Size: 6.4 MB (6407897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0f9021c7638ad2f33768d07b78f32d42f218de8330efa662ccb77fc26bb3cad`  
		Last Modified: Tue, 14 Jul 2026 20:35:30 GMT  
		Size: 11.5 KB (11468 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:f76e34d0708d4743a2794f2d6f07e29358b99d8535b76957d5e42e40ab5dea5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.6 MB (134648560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04ecb3db6fb1adc3a3885a3275a386ea009fbbc572bfee383a67210225b7da51`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 14 Jul 2026 04:53:14 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Tue, 14 Jul 2026 04:53:14 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 14 Jul 2026 04:53:14 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 14 Jul 2026 04:53:14 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 14 Jul 2026 04:53:14 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Tue, 14 Jul 2026 04:53:14 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 14 Jul 2026 04:53:14 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 14 Jul 2026 04:53:14 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Tue, 14 Jul 2026 04:53:14 GMT
LABEL io.openshift.expose-services=""
# Tue, 14 Jul 2026 04:53:14 GMT
LABEL io.openshift.tags="base rhel9"
# Tue, 14 Jul 2026 04:53:14 GMT
ENV container oci
# Tue, 14 Jul 2026 04:53:17 GMT
COPY dir:8e6031ca0c459b64eccd21d6a6745de86ce01e84316c8e4588f9dd1e90135ccd in /      
# Tue, 14 Jul 2026 04:53:17 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 14 Jul 2026 04:53:17 GMT
CMD ["/bin/bash"]
# Tue, 14 Jul 2026 04:53:17 GMT
COPY dir:8cdaf0b48b4b8baa492edadb117d544160cb93ff23e985daa46f9e575087a6b5 in /usr/share/buildinfo/      
# Tue, 14 Jul 2026 04:53:17 GMT
COPY dir:8cdaf0b48b4b8baa492edadb117d544160cb93ff23e985daa46f9e575087a6b5 in /root/buildinfo/      
# Tue, 14 Jul 2026 04:53:18 GMT
LABEL "org.opencontainers.image.created"="2026-07-14T04:52:47Z" "org.opencontainers.image.revision"="2a95ea232004e5358b74f24fe8e22523f97364b7" "build-date"="2026-07-14T04:52:47Z" "architecture"="aarch64" "vcs-ref"="2a95ea232004e5358b74f24fe8e22523f97364b7" "vcs-type"="git" "release"="1784004572"org.opencontainers.image.created=2026-07-14T04:52:47Z,org.opencontainers.image.revision=2a95ea232004e5358b74f24fe8e22523f97364b7
# Tue, 14 Jul 2026 20:35:09 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 14 Jul 2026 20:35:09 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 14 Jul 2026 20:35:09 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 14 Jul 2026 20:35:09 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 14 Jul 2026 20:35:09 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Tue, 14 Jul 2026 20:35:09 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Tue, 14 Jul 2026 20:35:09 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 14 Jul 2026 20:35:09 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 14 Jul 2026 20:35:09 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:4df1e24ba67c925e90780ea2893fd3bea109e38b7f2c04844f08584b120b0886`  
		Last Modified: Tue, 14 Jul 2026 06:03:51 GMT  
		Size: 78.1 MB (78134834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca4fb89f50cb1a790e72ea72cc73df5ad404d518dae5a46bae1ef4bec9a744e`  
		Last Modified: Tue, 14 Jul 2026 20:35:26 GMT  
		Size: 56.5 MB (56513726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:bbc80015a3d020a09ad94afb6dac820647ead4d27aef234253646390ad50b4f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6415250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6491cb5fa1b23d29a27e57d430f0a3f6d68573339bcaf626269151e316d90a`

```dockerfile
```

-	Layers:
	-	`sha256:42c1971b91658a082d086198033c241b0c4fdc9142f1d5ca30e05b338b71cfa0`  
		Last Modified: Tue, 14 Jul 2026 20:35:24 GMT  
		Size: 6.4 MB (6403696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53a58108479ac9d070b43767e300c2014bef40be01f2a944cc5049440d52cbe3`  
		Last Modified: Tue, 14 Jul 2026 20:35:23 GMT  
		Size: 11.6 KB (11554 bytes)  
		MIME: application/vnd.in-toto+json
