## `swift:rhel-ubi10-slim`

```console
$ docker pull swift@sha256:b9aab915572552a2ee0e63642c0d5025820a6d4e08c552957e0ac399f88bab9a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi10-slim` - linux; amd64

```console
$ docker pull swift@sha256:bfcfe94e5af40e9647a62c302aaacdbd1ca87001e6bbfd8c9e7c7a97c2158f67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.9 MB (143925263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef56c882283744fc64b25099abee1cdedd6f5948d4b54a88df133835753a1909`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 08:37:28 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."       url="https://catalog.redhat.com/en/search?searchType=containers"       com.redhat.component="ubi10-container"       name="ubi10/ubi"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       version="10.2"       distribution-scope="public"
# Fri, 23 Oct 2026 08:37:28 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 08:37:28 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 10."
# Fri, 23 Oct 2026 08:37:28 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:37:28 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:37:28 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10"
# Fri, 23 Oct 2026 08:37:28 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 08:37:28 GMT
LABEL io.openshift.tags="base rhel10"
# Fri, 23 Oct 2026 08:37:28 GMT
ENV container oci
# Fri, 23 Oct 2026 08:37:30 GMT
COPY dir:f5a0a04d88f98f6054feca5401895b64085bc7c96a973b445beda3ddb41dd404 in /      
# Fri, 23 Oct 2026 08:37:30 GMT
COPY file:7434e7ac38eae122961f7433f94f69681ae6b7673c89bc0a33c8831ed9c5dbfc in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 08:37:30 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 08:37:30 GMT
COPY dir:38505f4467530535384b2b321d481c81aa45ae724df3fc75f87d8609534e5f1d in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 08:37:30 GMT
COPY dir:38505f4467530535384b2b321d481c81aa45ae724df3fc75f87d8609534e5f1d in /root/buildinfo/      
# Fri, 23 Oct 2026 08:37:31 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T08:37:04Z" "org.opencontainers.image.revision"="12b42c0df97d412ddb00ce5e581fc0c5b97a06c9" "build-date"="2026-10-23T08:37:04Z" "architecture"="x86_64" "vcs-ref"="12b42c0df97d412ddb00ce5e581fc0c5b97a06c9" "vcs-type"="git" "release"="1792744468"org.opencontainers.image.created=2026-10-23T08:37:04Z,org.opencontainers.image.revision=12b42c0df97d412ddb00ce5e581fc0c5b97a06c9
# Fri, 23 Oct 2026 16:59:27 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 23 Oct 2026 16:59:27 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 23 Oct 2026 16:59:27 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 23 Oct 2026 16:59:27 GMT
ARG SWIFT_PLATFORM=ubi10
# Fri, 23 Oct 2026 16:59:27 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Fri, 23 Oct 2026 16:59:27 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Fri, 23 Oct 2026 16:59:27 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 23 Oct 2026 16:59:27 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 23 Oct 2026 16:59:27 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && yum -y install gnupg2     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:7a109e94866ee2e45f0efaa7dc82b5fd18eef6cbfc0167e3c455944f368d27b5`  
		Last Modified: Fri, 23 Oct 2026 10:03:18 GMT  
		Size: 81.0 MB (80983676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33dab149bf16fc2f443407d5196c0782a422a6b12e5e1baad7cf76766da4824b`  
		Last Modified: Fri, 23 Oct 2026 16:59:46 GMT  
		Size: 62.9 MB (62941587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10-slim` - unknown; unknown

```console
$ docker pull swift@sha256:ac942c7397200f5cd4632cadff9dc3a769aec861e474d4af25e54c3f966d1616
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5949135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cde73a891c606999ad7251c72045dc55b50feb3a4b6fff46ced26120541035d`

```dockerfile
```

-	Layers:
	-	`sha256:2aa0b61d5baad2937d9e40fb94b94a3fb93879bbd2ba65e73690e7593b20748a`  
		Last Modified: Fri, 23 Oct 2026 16:59:44 GMT  
		Size: 5.9 MB (5937431 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ef04e0888c062c96092bf76b67b78964c77e473262f1abdafb93bf58196b8cf`  
		Last Modified: Fri, 23 Oct 2026 16:59:43 GMT  
		Size: 11.7 KB (11704 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi10-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:bdabdc43499bc419d9b82a215442ce852fdf34c9582150575882815c09e8967c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.6 MB (140595256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad5d971ec1228a78a788792b6434e51bf32f7eba0028ca858bb363fac1dc572d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 08:41:03 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."       url="https://catalog.redhat.com/en/search?searchType=containers"       com.redhat.component="ubi10-container"       name="ubi10/ubi"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       version="10.2"       distribution-scope="public"
# Fri, 23 Oct 2026 08:41:04 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 08:41:04 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 10."
# Fri, 23 Oct 2026 08:41:04 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:41:04 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:41:04 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10"
# Fri, 23 Oct 2026 08:41:04 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 08:41:04 GMT
LABEL io.openshift.tags="base rhel10"
# Fri, 23 Oct 2026 08:41:04 GMT
ENV container oci
# Fri, 23 Oct 2026 08:41:07 GMT
COPY dir:97de47c4e563db339adc694f4d075fb6cf2218f19c3436117510733d4cbfdcce in /      
# Fri, 23 Oct 2026 08:41:07 GMT
COPY file:7434e7ac38eae122961f7433f94f69681ae6b7673c89bc0a33c8831ed9c5dbfc in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 08:41:08 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 08:41:08 GMT
COPY dir:31327e5dfa4a5da326156be057f518d9858739d98c5ee586cd6810abbe179d08 in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 08:41:08 GMT
COPY dir:31327e5dfa4a5da326156be057f518d9858739d98c5ee586cd6810abbe179d08 in /root/buildinfo/      
# Fri, 23 Oct 2026 08:41:09 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T08:40:32Z" "org.opencontainers.image.revision"="12b42c0df97d412ddb00ce5e581fc0c5b97a06c9" "build-date"="2026-10-23T08:40:32Z" "architecture"="aarch64" "vcs-ref"="12b42c0df97d412ddb00ce5e581fc0c5b97a06c9" "vcs-type"="git" "release"="1792744468"org.opencontainers.image.created=2026-10-23T08:40:32Z,org.opencontainers.image.revision=12b42c0df97d412ddb00ce5e581fc0c5b97a06c9
# Fri, 23 Oct 2026 16:56:59 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 23 Oct 2026 16:56:59 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 23 Oct 2026 16:56:59 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 23 Oct 2026 16:56:59 GMT
ARG SWIFT_PLATFORM=ubi10
# Fri, 23 Oct 2026 16:56:59 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Fri, 23 Oct 2026 16:56:59 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Fri, 23 Oct 2026 16:56:59 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 23 Oct 2026 16:56:59 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 23 Oct 2026 16:56:59 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && yum -y install gnupg2     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:531df693c870ffd82bdb14ee43677198d6063cb057ef9e7ca38163f64a8bf4c2`  
		Last Modified: Fri, 23 Oct 2026 10:03:17 GMT  
		Size: 78.6 MB (78571798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89c38b87a5784c9ee706bed8d801e65f2c439b35294f5a83cbb7d901be6fdd14`  
		Last Modified: Fri, 23 Oct 2026 16:57:18 GMT  
		Size: 62.0 MB (62023458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10-slim` - unknown; unknown

```console
$ docker pull swift@sha256:39e92e1d6b63c1296a7461759ed5d6cf4aceaa4946dd060f795463a8a2bc0103
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5945623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d1832a27d37eda3e9f0f83328a0d0a20f5dde836d6af5133fd6f73506c6c227`

```dockerfile
```

-	Layers:
	-	`sha256:013c57e4caff0e78f6452ac02628cdadf3874bc39905e38ecd625b204111d70c`  
		Last Modified: Fri, 23 Oct 2026 16:57:16 GMT  
		Size: 5.9 MB (5933833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0cc7692cb108fa4db2d9bac77c2c9b3df8f390095d174526b6d2a4292f2aed35`  
		Last Modified: Fri, 23 Oct 2026 16:57:15 GMT  
		Size: 11.8 KB (11790 bytes)  
		MIME: application/vnd.in-toto+json
