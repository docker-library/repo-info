## `swift:rhel-ubi10`

```console
$ docker pull swift@sha256:1be28064b049b6f56fedd2e80beecfb41aba080040721c7d34c1a5f96dcf1e46
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi10` - linux; amd64

```console
$ docker pull swift@sha256:25470c07acd102a04a9e59245cedb5e726923a9db0250105177d44960232247d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1372388803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fcb17e29af45a42562128c21e4ebf247a7760a9d5afa46737178637b641fdf4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 03 Nov 2026 09:23:51 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."       url="https://catalog.redhat.com/en/search?searchType=containers"       com.redhat.component="ubi10-container"       name="ubi10/ubi"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       version="10.2"       distribution-scope="public"
# Tue, 03 Nov 2026 09:23:51 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 03 Nov 2026 09:23:51 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 10."
# Tue, 03 Nov 2026 09:23:51 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 03 Nov 2026 09:23:51 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 03 Nov 2026 09:23:51 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10"
# Tue, 03 Nov 2026 09:23:51 GMT
LABEL io.openshift.expose-services=""
# Tue, 03 Nov 2026 09:23:51 GMT
LABEL io.openshift.tags="base rhel10"
# Tue, 03 Nov 2026 09:23:51 GMT
ENV container oci
# Tue, 03 Nov 2026 09:23:53 GMT
COPY dir:26ade060b4713512d07093bca383bc99c1c05d78c44a452f634bc41d59a68d2c in /      
# Tue, 03 Nov 2026 09:23:53 GMT
COPY file:7434e7ac38eae122961f7433f94f69681ae6b7673c89bc0a33c8831ed9c5dbfc in /etc/yum.repos.d/.      
# Tue, 03 Nov 2026 09:23:53 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 09:23:54 GMT
COPY dir:dd8b73c46afc812eb8a567b118e49d9e7210f28b14f2ca47903173b4d301edb0 in /usr/share/buildinfo/      
# Tue, 03 Nov 2026 09:23:54 GMT
COPY dir:dd8b73c46afc812eb8a567b118e49d9e7210f28b14f2ca47903173b4d301edb0 in /root/buildinfo/      
# Tue, 03 Nov 2026 09:23:55 GMT
LABEL "org.opencontainers.image.created"="2026-11-03T09:23:24Z" "org.opencontainers.image.revision"="e89a64cd5627b2bf209ce66d6d1c279a6f1b7885" "build-date"="2026-11-03T09:23:24Z" "architecture"="x86_64" "vcs-ref"="e89a64cd5627b2bf209ce66d6d1c279a6f1b7885" "vcs-type"="git" "release"="1793697573"org.opencontainers.image.created=2026-11-03T09:23:24Z,org.opencontainers.image.revision=e89a64cd5627b2bf209ce66d6d1c279a6f1b7885
# Tue, 03 Nov 2026 22:23:51 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 03 Nov 2026 22:23:51 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 03 Nov 2026 22:23:51 GMT
RUN yum -y install   git                 gnupg2              gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Tue, 03 Nov 2026 22:23:51 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 03 Nov 2026 22:23:51 GMT
ARG SWIFT_PLATFORM=ubi10
# Tue, 03 Nov 2026 22:23:51 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Tue, 03 Nov 2026 22:23:51 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Tue, 03 Nov 2026 22:23:51 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 03 Nov 2026 22:23:51 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 03 Nov 2026 22:24:28 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Tue, 03 Nov 2026 22:24:28 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:ca90096e6ee8acde10e19dac5f812859a22cd6ec38843137a809880ac0a556cb`  
		Last Modified: Tue, 03 Nov 2026 10:23:28 GMT  
		Size: 81.0 MB (81026143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38303013a0a0e032ec3de573987a46398d0fbf8955581a27d36def9c79bcd6c1`  
		Last Modified: Tue, 03 Nov 2026 22:26:53 GMT  
		Size: 147.2 MB (147247160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0db4e1d30169a83021f418e966b236d81449575c98e2d3010bf66e4add90f658`  
		Last Modified: Fri, 30 Oct 2026 17:36:17 GMT  
		Size: 1.1 GB (1144115326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f6d966d0c7c46b244e6f98ddfb640d97fc8a5d8d3fea56d19de5b3f7092997a`  
		Last Modified: Tue, 03 Nov 2026 22:26:49 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10` - unknown; unknown

```console
$ docker pull swift@sha256:826f2bef6fb522887e94c7ee6e5b568eddda79db15834ece2521237be4227461
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14141183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fb94caa43acbcf0f2a28f0d0f46b786f0209c13855a1f31bf93902d370ec785`

```dockerfile
```

-	Layers:
	-	`sha256:bfb1e7a4a9e473099198813fc566d7854a784026d9d38c6cea81e452ff5c044d`  
		Last Modified: Tue, 03 Nov 2026 22:26:50 GMT  
		Size: 14.1 MB (14126659 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3acfada39f17484c468da126fd3bd2d87b8346d3be032f6c4d7b914c0e6c8f69`  
		Last Modified: Tue, 03 Nov 2026 22:26:49 GMT  
		Size: 14.5 KB (14524 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi10` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:3872568d26159ac91377c183c6ddcec1b9fd2edf99723a49907da89b29c8c77f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1350810657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:755fab642662250aa9225d479b6c92640c9450b9e583bd9efebde96860237589`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 03 Nov 2026 09:26:13 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."       url="https://catalog.redhat.com/en/search?searchType=containers"       com.redhat.component="ubi10-container"       name="ubi10/ubi"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       version="10.2"       distribution-scope="public"
# Tue, 03 Nov 2026 09:26:13 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 03 Nov 2026 09:26:13 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 10."
# Tue, 03 Nov 2026 09:26:13 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 03 Nov 2026 09:26:13 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 03 Nov 2026 09:26:13 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10"
# Tue, 03 Nov 2026 09:26:13 GMT
LABEL io.openshift.expose-services=""
# Tue, 03 Nov 2026 09:26:13 GMT
LABEL io.openshift.tags="base rhel10"
# Tue, 03 Nov 2026 09:26:13 GMT
ENV container oci
# Tue, 03 Nov 2026 09:26:16 GMT
COPY dir:29d3ffd32b8bc02ec07bdb7a88107cf8871ddc499b4ec2f1fd7275808e759e0b in /      
# Tue, 03 Nov 2026 09:26:17 GMT
COPY file:7434e7ac38eae122961f7433f94f69681ae6b7673c89bc0a33c8831ed9c5dbfc in /etc/yum.repos.d/.      
# Tue, 03 Nov 2026 09:26:17 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 09:26:17 GMT
COPY dir:bfde4e102b0f87a2dfac1334ac9a6ed727b26862ba8d93dd3452de181e7f3aa8 in /usr/share/buildinfo/      
# Tue, 03 Nov 2026 09:26:17 GMT
COPY dir:bfde4e102b0f87a2dfac1334ac9a6ed727b26862ba8d93dd3452de181e7f3aa8 in /root/buildinfo/      
# Tue, 03 Nov 2026 09:26:18 GMT
LABEL "org.opencontainers.image.created"="2026-11-03T09:25:42Z" "org.opencontainers.image.revision"="e89a64cd5627b2bf209ce66d6d1c279a6f1b7885" "build-date"="2026-11-03T09:25:42Z" "architecture"="aarch64" "vcs-ref"="e89a64cd5627b2bf209ce66d6d1c279a6f1b7885" "vcs-type"="git" "release"="1793697573"org.opencontainers.image.created=2026-11-03T09:25:42Z,org.opencontainers.image.revision=e89a64cd5627b2bf209ce66d6d1c279a6f1b7885
# Tue, 03 Nov 2026 22:23:54 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 03 Nov 2026 22:23:54 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 03 Nov 2026 22:23:54 GMT
RUN yum -y install   git                 gnupg2              gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Tue, 03 Nov 2026 22:23:54 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 03 Nov 2026 22:23:54 GMT
ARG SWIFT_PLATFORM=ubi10
# Tue, 03 Nov 2026 22:23:54 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Tue, 03 Nov 2026 22:23:54 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Tue, 03 Nov 2026 22:23:54 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 03 Nov 2026 22:23:54 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 03 Nov 2026 22:24:31 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Tue, 03 Nov 2026 22:24:32 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:2ef80e29526a14eac547021a9fe07ed8e5e32de3c1696fae25fc5480df802ae7`  
		Last Modified: Tue, 03 Nov 2026 10:23:28 GMT  
		Size: 78.6 MB (78560741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86b7acd4ff60b84659a83f4d3769c363f8d2b78a1fe90214a1a3afdf9257e247`  
		Last Modified: Tue, 03 Nov 2026 22:26:54 GMT  
		Size: 138.6 MB (138607310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56328df8ea45a4dc99af3bba3175f69d788a7101264bd79c730835084c4b194d`  
		Last Modified: Fri, 30 Oct 2026 17:36:03 GMT  
		Size: 1.1 GB (1133642432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6362b75aab04f10899848955fdcceb2f444f9f97b48a0591a5411065b3159ed`  
		Last Modified: Tue, 03 Nov 2026 22:26:51 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10` - unknown; unknown

```console
$ docker pull swift@sha256:2677c23913a721bf01ac82882bf75e2b0e5696cb21c0745c95f82d5cfd562324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14009865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbdf0fde9c66ec57a271497bb5408f445e698ea5064aa6caab26941cff5e45d0`

```dockerfile
```

-	Layers:
	-	`sha256:ea138cd17e4653752bcc583442b67cd6ac9d70ecb401b7781c023c85e447d8ce`  
		Last Modified: Tue, 03 Nov 2026 22:26:52 GMT  
		Size: 14.0 MB (13995225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a931a0bc20e09be1dae0b49a0fff085281a9975539734f80eb64fe1d9d26e29`  
		Last Modified: Tue, 03 Nov 2026 22:26:51 GMT  
		Size: 14.6 KB (14640 bytes)  
		MIME: application/vnd.in-toto+json
