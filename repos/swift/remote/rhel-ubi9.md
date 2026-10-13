## `swift:rhel-ubi9`

```console
$ docker pull swift@sha256:802a003f1eacbca9c20664a8ba79621d13f4538c3d329e745b7f8d53c70604a3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9` - linux; amd64

```console
$ docker pull swift@sha256:6b1afbd45e9d7c1bbbd7116f8edb226b1b31d0c01af9c64148ef0b59766553d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1352648769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c8bf22238d472ab49dfe0bbf3ed366474fb9ba1627ce566e26443946ea4452f`
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
# Tue, 13 Oct 2026 00:38:04 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 13 Oct 2026 00:38:04 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 13 Oct 2026 00:38:04 GMT
RUN yum -y install   git                 gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Tue, 13 Oct 2026 00:38:04 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 13 Oct 2026 00:38:04 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 13 Oct 2026 00:38:04 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Tue, 13 Oct 2026 00:38:04 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Tue, 13 Oct 2026 00:38:04 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 00:38:04 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 00:38:43 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Tue, 13 Oct 2026 00:38:44 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:2ff14d0ff6d5bdd6fdf39770d7cb39c18f79f73b28a999af57650508d22bfbb7`  
		Last Modified: Mon, 12 Oct 2026 14:53:50 GMT  
		Size: 80.5 MB (80529959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a867b7196fde6757a10d720c7964e9a3c0172e4255d6aa2ce863c7466353d44`  
		Last Modified: Tue, 13 Oct 2026 00:40:56 GMT  
		Size: 126.7 MB (126656766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d63a07ce8196e061c10e51f879ee10c16c2b568108a5a5311a967e65e68773e1`  
		Last Modified: Fri, 18 Sep 2026 23:53:31 GMT  
		Size: 1.1 GB (1145461870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2683aa2aaaf9bde1adfefdae369cefe4c4dadc9126e08893e4d82f8cc11bc952`  
		Last Modified: Tue, 13 Oct 2026 00:40:53 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9` - unknown; unknown

```console
$ docker pull swift@sha256:218d9fa5ff8d827e2fea409793767c816b05c7c8eb3e297b4acffb5cd8b99c69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13015449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3669ab18354d74053d9810bbc32b0f8fed497a1597e9bd54560e2b8a0cd84f9`

```dockerfile
```

-	Layers:
	-	`sha256:06b2b4576c9c79444b917fa9823b4155b6e32de653266674b995e4a4d2d674f3`  
		Last Modified: Tue, 13 Oct 2026 00:40:54 GMT  
		Size: 13.0 MB (13001007 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2664cbb7404aa592fd0e8cfac548b28558cf543d6b2333544dae7db74764e1ce`  
		Last Modified: Tue, 13 Oct 2026 00:40:53 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:87fe7b1c12ddfdbcfd4f03d4111cae9d812a153c32ebe9617901a4f8f706d6f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1340212117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72f50d660818824879e4077a2c62b6ba4b010e5f6fe0492740d99bacd8fab0b9`
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
# Tue, 13 Oct 2026 00:35:56 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 13 Oct 2026 00:35:56 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 13 Oct 2026 00:35:56 GMT
RUN yum -y install   git                 gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Tue, 13 Oct 2026 00:35:56 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 13 Oct 2026 00:35:56 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 13 Oct 2026 00:35:56 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Tue, 13 Oct 2026 00:35:56 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Tue, 13 Oct 2026 00:35:56 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 00:35:56 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 00:36:43 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Tue, 13 Oct 2026 00:36:43 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:898f646d219650940eb2b0d1adc5bb423ce1305dcb800c00f52bf3d7de6b6003`  
		Last Modified: Mon, 12 Oct 2026 14:53:41 GMT  
		Size: 78.2 MB (78195425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:056ab6d0f1a4fd4c50fe26a979f089d578c64e303da502c3a3a31585a975925a`  
		Last Modified: Tue, 13 Oct 2026 00:39:00 GMT  
		Size: 120.0 MB (119971016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c718624100c98820206167ab755ac2b44f8e6956643eab861a60f6e2f106ffa`  
		Last Modified: Fri, 18 Sep 2026 23:53:21 GMT  
		Size: 1.1 GB (1142045503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99194195a0c24b47a5260208b032a0042f70b7b0c5ac972c6cde66f67de6a550`  
		Last Modified: Tue, 13 Oct 2026 00:38:57 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9` - unknown; unknown

```console
$ docker pull swift@sha256:22fa0e269ab10dd144e93045c97b176545573769336630ebe3957ec143d7fcac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12888264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d16e7812bac3dc96104f8f2f4090693e4ba4d9766646932e5e2ad90fddac6b28`

```dockerfile
```

-	Layers:
	-	`sha256:7899ec35ae3949adc7eefbfca46aca22f9cb0603083c7f9bd4e3e287f3e4cbdf`  
		Last Modified: Tue, 13 Oct 2026 00:38:58 GMT  
		Size: 12.9 MB (12873706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fde1d8eaa30de7e514c39c7c332d04e753294fecf8e86db555e1e4d263153838`  
		Last Modified: Tue, 13 Oct 2026 00:38:57 GMT  
		Size: 14.6 KB (14558 bytes)  
		MIME: application/vnd.in-toto+json
