## `swift:rhel-ubi9-slim`

```console
$ docker pull swift@sha256:8cc0ed0521049f5d58df9195b74fa6f0edd8d5a714933c1486fb74cf842ba474
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9-slim` - linux; amd64

```console
$ docker pull swift@sha256:a5d9ec4ae5ca3d2eef2d9a129239151db1892e1d2025516d9aa4ad93b0b0017e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.5 MB (143513683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14288be3a2926a76c8556add7e7315a35d75f3fecc21ec5c5aaaf7dc526472a2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 31 Aug 2026 15:57:14 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 15:57:14 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 15:57:14 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 15:57:14 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 15:57:14 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 15:57:14 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 15:57:14 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 15:57:14 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Mon, 31 Aug 2026 15:57:14 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 15:57:14 GMT
LABEL io.openshift.tags="base rhel9"
# Mon, 31 Aug 2026 15:57:14 GMT
ENV container oci
# Mon, 31 Aug 2026 15:57:16 GMT
COPY dir:b88d71e67e8eed034613e7a4d26850ac712e60b8380b9cf9e885308e17fc5d56 in /      
# Mon, 31 Aug 2026 15:57:16 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 15:57:16 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 15:57:16 GMT
COPY dir:69b157d03ed9e602d9aa7a96da26a442c5fbb59cfef45c263074f626b5618483 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 15:57:16 GMT
COPY dir:69b157d03ed9e602d9aa7a96da26a442c5fbb59cfef45c263074f626b5618483 in /root/buildinfo/      
# Mon, 31 Aug 2026 15:57:17 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T15:56:45Z" "org.opencontainers.image.revision"="a843a58318bb7558aeae89306d0e3d2d3d21dfa1" "build-date"="2026-08-31T15:56:45Z" "architecture"="x86_64" "vcs-ref"="a843a58318bb7558aeae89306d0e3d2d3d21dfa1" "vcs-type"="git" "release"="1788191706"org.opencontainers.image.created=2026-08-31T15:56:45Z,org.opencontainers.image.revision=a843a58318bb7558aeae89306d0e3d2d3d21dfa1
# Tue, 01 Sep 2026 00:13:49 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 01 Sep 2026 00:13:49 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 01 Sep 2026 00:13:49 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 01 Sep 2026 00:13:49 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 01 Sep 2026 00:13:49 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Tue, 01 Sep 2026 00:13:49 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Tue, 01 Sep 2026 00:13:49 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 01 Sep 2026 00:13:49 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 01 Sep 2026 00:13:49 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:c7cacd194b55ecf482524e1403199ccb3a5c985c131374d7916ea9e89a33c760`  
		Last Modified: Mon, 31 Aug 2026 18:06:58 GMT  
		Size: 80.5 MB (80476467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1009a923d689566770a8a2cc637cddc96d70daa5771768a512b98bee148c9c9`  
		Last Modified: Tue, 01 Sep 2026 00:14:07 GMT  
		Size: 63.0 MB (63037216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:434b3a4bcb9e8ad3ace0f5167dbd4feb04493bc58aeba8eba4afba7c45781c7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6436597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62d8bfe12a02f0926b03c63fdc9346759c70f64f03219691f65a2cae8eec2397`

```dockerfile
```

-	Layers:
	-	`sha256:2b636a536516e70685de9f7d825c36254b0105411280f3be013439a3ab0e392e`  
		Last Modified: Tue, 01 Sep 2026 00:14:04 GMT  
		Size: 6.4 MB (6425129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f843eb4b66613374fc03a5a18e69d0d598e2dfbdcfd4449ac3049d5d732d0fc`  
		Last Modified: Tue, 01 Sep 2026 00:14:05 GMT  
		Size: 11.5 KB (11468 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:be7b907a9d3ee647af39be02afa4e9438ddc05bc6468e12bce1aadc50b78ed40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.4 MB (139396378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8be93141d34b0c433fe23fe20c82aafd14f5d62f838cd06e01a06986818fdfa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 31 Aug 2026 16:01:58 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 16:01:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 16:01:58 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 16:01:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 16:01:58 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 16:01:58 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 16:01:58 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 16:01:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Mon, 31 Aug 2026 16:01:58 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 16:01:58 GMT
LABEL io.openshift.tags="base rhel9"
# Mon, 31 Aug 2026 16:01:58 GMT
ENV container oci
# Mon, 31 Aug 2026 16:02:01 GMT
COPY dir:1d1fb8d9f211e44f315afee608a9f8cd3cb16598857ba512fe251669fc92aa0e in /      
# Mon, 31 Aug 2026 16:02:01 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 16:02:01 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 16:02:02 GMT
COPY dir:728cdba861c52128accc79aba59d14dacefcae14b34b5b16414bcc0e2c4d4eab in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 16:02:02 GMT
COPY dir:728cdba861c52128accc79aba59d14dacefcae14b34b5b16414bcc0e2c4d4eab in /root/buildinfo/      
# Mon, 31 Aug 2026 16:02:03 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T16:01:31Z" "org.opencontainers.image.revision"="a843a58318bb7558aeae89306d0e3d2d3d21dfa1" "build-date"="2026-08-31T16:01:31Z" "architecture"="aarch64" "vcs-ref"="a843a58318bb7558aeae89306d0e3d2d3d21dfa1" "vcs-type"="git" "release"="1788191706"org.opencontainers.image.created=2026-08-31T16:01:31Z,org.opencontainers.image.revision=a843a58318bb7558aeae89306d0e3d2d3d21dfa1
# Mon, 31 Aug 2026 23:52:14 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Mon, 31 Aug 2026 23:52:14 GMT
LABEL description=Docker Container for the Swift programming language
# Mon, 31 Aug 2026 23:52:14 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Mon, 31 Aug 2026 23:52:14 GMT
ARG SWIFT_PLATFORM=ubi9
# Mon, 31 Aug 2026 23:52:14 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Mon, 31 Aug 2026 23:52:14 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Mon, 31 Aug 2026 23:52:14 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Mon, 31 Aug 2026 23:52:14 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Mon, 31 Aug 2026 23:52:14 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:e9b48f0e754ad7cd11877a260fa5d4d5d3f07aa50d0e60bf7d7230b5c62cafde`  
		Last Modified: Mon, 31 Aug 2026 18:09:58 GMT  
		Size: 78.2 MB (78165058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5147cf67221af9ddbb712aedd635ee7013ae8cddcccf544eb8b9ee67e88c7887`  
		Last Modified: Mon, 31 Aug 2026 23:52:31 GMT  
		Size: 61.2 MB (61231320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:7d50bab151ef1271e6ee90ceee840aad1b6eaceb607c5d137c123a90a93497d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6432481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dca51a4176251cbd1f5e484859827f4d474dd3467beeacbe1ff1085ee1369122`

```dockerfile
```

-	Layers:
	-	`sha256:1b514a0c4805b61aa7efbafbb51df11ad90fdf99ef9fb5d4ce9284bd4b59acf2`  
		Last Modified: Mon, 31 Aug 2026 23:52:29 GMT  
		Size: 6.4 MB (6420928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1483a54d544f707fb32e83c43a8bdfcfe9821a1c29bb0c6a6fa321b7de801979`  
		Last Modified: Mon, 31 Aug 2026 23:52:28 GMT  
		Size: 11.6 KB (11553 bytes)  
		MIME: application/vnd.in-toto+json
