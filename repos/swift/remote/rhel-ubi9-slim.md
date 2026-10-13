## `swift:rhel-ubi9-slim`

```console
$ docker pull swift@sha256:4d71523b92caf37edd82c20819109def03cb6de3eaf01d1ae83b3e4e1669c7d8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9-slim` - linux; amd64

```console
$ docker pull swift@sha256:b66642d5039d094f0c51dffa8301dee57a8149f3a41051b00f8e7578eb20374a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.4 MB (140386195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e24e69536e9c10737e75993ae19d36f380bcf1965ca10f5549c5e0b709840c6`
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
# Tue, 13 Oct 2026 00:38:31 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 13 Oct 2026 00:38:31 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 13 Oct 2026 00:38:31 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 13 Oct 2026 00:38:31 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 13 Oct 2026 00:38:31 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Tue, 13 Oct 2026 00:38:31 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Tue, 13 Oct 2026 00:38:31 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 00:38:31 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 00:38:31 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:2ff14d0ff6d5bdd6fdf39770d7cb39c18f79f73b28a999af57650508d22bfbb7`  
		Last Modified: Mon, 12 Oct 2026 14:53:50 GMT  
		Size: 80.5 MB (80529959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87d1afe016c58827724ad770d464fa456ffff86ecbca5d1dd97675559e2237d6`  
		Last Modified: Tue, 13 Oct 2026 00:38:48 GMT  
		Size: 59.9 MB (59856236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:efdc54b393ad457a0a505170046939384a5122c4167f3ecde94b451da3e3cfc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6420103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8efc545cab165da5da8185b18b011d0e286db45019447584a7aa17720c550b5`

```dockerfile
```

-	Layers:
	-	`sha256:6889fb64f49b09db11fa217d45ffb9653e1593d820312ea9cda52029c2d229b9`  
		Last Modified: Tue, 13 Oct 2026 00:38:46 GMT  
		Size: 6.4 MB (6408635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e829d4b53938542cb26fe61ecea5229b0ba090d662b0bf892da06a834542d846`  
		Last Modified: Tue, 13 Oct 2026 00:38:45 GMT  
		Size: 11.5 KB (11468 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:bc8e9f6414b3f534de34ae9b8bd2fe38c27e16911dfe8eea4f883897673bd390
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.3 MB (136253390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1175842e728b71f800d0674f6f5d33e24a6fb39ffc2234bad7cef8deb04f596c`
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
# Tue, 13 Oct 2026 00:36:36 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 13 Oct 2026 00:36:36 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 13 Oct 2026 00:36:36 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 13 Oct 2026 00:36:36 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 13 Oct 2026 00:36:36 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Tue, 13 Oct 2026 00:36:36 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Tue, 13 Oct 2026 00:36:36 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 00:36:36 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 00:36:36 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:898f646d219650940eb2b0d1adc5bb423ce1305dcb800c00f52bf3d7de6b6003`  
		Last Modified: Mon, 12 Oct 2026 14:53:41 GMT  
		Size: 78.2 MB (78195425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d2d27fe36ba182ceee5f9199de5a6a1dac84e48cabb9ae936bd19a64a408db`  
		Last Modified: Tue, 13 Oct 2026 00:36:53 GMT  
		Size: 58.1 MB (58057965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:7e407f5b19c8b9f0d440e4847d2681892cc64ebf9f663669c8ef118b8766df00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6415986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53a4b45f9fa0cd4c187f62bd33b8145292fb17448b6a85f80c8a3cd4ddc7969f`

```dockerfile
```

-	Layers:
	-	`sha256:28a13fcd8fbbb981737ae2c3050c99d60ba5bfb4c2d844d6de1495a222981c8b`  
		Last Modified: Tue, 13 Oct 2026 00:36:50 GMT  
		Size: 6.4 MB (6404434 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bff108104165aaf66683814c757eb614d6d51c0f5d00e8910ba5d5ff0d81be72`  
		Last Modified: Tue, 13 Oct 2026 00:36:50 GMT  
		Size: 11.6 KB (11552 bytes)  
		MIME: application/vnd.in-toto+json
