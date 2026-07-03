## `swift:rhel-ubi9`

```console
$ docker pull swift@sha256:13ffb7cac187a4ee7f3fa7c251a4409d59f825d1e439813fccf6e7e2e9eacf30
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9` - linux; amd64

```console
$ docker pull swift@sha256:88640854d8624765891b4f4a25eaa715dafbfc6dac51af1e38ae73fc2788306a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1290911789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1028de153d4c73a07c3c384c173b91134c20af9623ec0a0dec161df2337b2733`
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
# Fri, 03 Jul 2026 00:30:01 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 03 Jul 2026 00:30:01 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 03 Jul 2026 00:30:01 GMT
RUN yum -y install   git                 gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Fri, 03 Jul 2026 00:30:01 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 03 Jul 2026 00:30:01 GMT
ARG SWIFT_PLATFORM=ubi9
# Fri, 03 Jul 2026 00:30:01 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Fri, 03 Jul 2026 00:30:01 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Fri, 03 Jul 2026 00:30:01 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 03 Jul 2026 00:30:01 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 03 Jul 2026 00:30:39 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Fri, 03 Jul 2026 00:30:40 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:4659f647ba9358e423d7a6d11b064756eae785fadb68f83b36a662a36dcc1d2d`  
		Last Modified: Tue, 30 Jun 2026 18:46:05 GMT  
		Size: 80.5 MB (80531961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:793b5bc3097ed5b5ffba1fb721fe7d71b6c6b9b44c52bf6ebd3cbf7ac4ee4674`  
		Last Modified: Fri, 03 Jul 2026 00:33:00 GMT  
		Size: 126.5 MB (126468751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ca386ad94e60caedf102a203693712f03b2c9f33363ba6b4ea4538cd685899`  
		Last Modified: Tue, 30 Jun 2026 19:00:34 GMT  
		Size: 1.1 GB (1083910902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eb8c91bb18737fcfbb14033877fafb2746d229771d61c02f4f2acad4b98c87d`  
		Last Modified: Fri, 03 Jul 2026 00:32:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9` - unknown; unknown

```console
$ docker pull swift@sha256:87dbe8b1e40d48e7105eb7536e24fc109c6ff133d0d296d7d27fd23213825977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13014271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7f8e56dba4a6d5ab88de09292223cef03357423de36b1e2f19897bc22c477d3`

```dockerfile
```

-	Layers:
	-	`sha256:bd28e07500dbacebbc173bbbf9bfef05a8ce9259e37bd426a7d11b4e32e14e79`  
		Last Modified: Fri, 03 Jul 2026 00:32:57 GMT  
		Size: 13.0 MB (12999829 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8b82b12b4441f865d7aa3ef52a393430c9da78b348307230408abf71f253846`  
		Last Modified: Fri, 03 Jul 2026 00:32:56 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:dbda7f070af024201265bebbec97ad3326524936c7265b3cc250e657118f25cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1278112583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5a60817f3ecb699f3f5c467a66ecf0d7f0fb25825f412ee36c340d6af620edb`
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
# Fri, 03 Jul 2026 00:29:52 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 03 Jul 2026 00:29:52 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 03 Jul 2026 00:29:52 GMT
RUN yum -y install   git                 gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Fri, 03 Jul 2026 00:29:52 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 03 Jul 2026 00:29:52 GMT
ARG SWIFT_PLATFORM=ubi9
# Fri, 03 Jul 2026 00:29:52 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Fri, 03 Jul 2026 00:29:52 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Fri, 03 Jul 2026 00:29:52 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 03 Jul 2026 00:29:52 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 03 Jul 2026 00:30:45 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Fri, 03 Jul 2026 00:30:45 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:2805f23930b94e4fadba157f8e60c288f9b7e8ad3a60899eeb411349c6bf9687`  
		Last Modified: Tue, 30 Jun 2026 18:59:01 GMT  
		Size: 78.1 MB (78135945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26502b3e44fd66e01b8e8b3c3a42a6b23ca2540b8a70befb4c5307a3429fb93b`  
		Last Modified: Fri, 03 Jul 2026 00:32:58 GMT  
		Size: 119.9 MB (119854146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c59e44e5b4941d0f98cb2a8ec6ba7366987ff035e2e1466055c82431ab29fbd3`  
		Last Modified: Tue, 30 Jun 2026 18:59:37 GMT  
		Size: 1.1 GB (1080122320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7ca76d1432a173a8992b5a8a98c8e1a140f966632f870f3fd98a687666c4b7`  
		Last Modified: Fri, 03 Jul 2026 00:32:54 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9` - unknown; unknown

```console
$ docker pull swift@sha256:e6002edd47e7e6f2d9b2d37fe5649ea6b596f3f25776c2745eb98b65c5188788
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12887086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b6994c153ae4f9000fb940509936b41995eb220147592eb0e9f3bc7ab1ac346`

```dockerfile
```

-	Layers:
	-	`sha256:2b453f8c8004d41398f7335e2419a8cc78aaea5b021dbabac54c25e3cb9bd7f8`  
		Last Modified: Fri, 03 Jul 2026 00:32:55 GMT  
		Size: 12.9 MB (12872528 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e33ea0b0c1ea9917537c90e32e4ed83cee5a1c7cb8fe6ea5d319f93645753d33`  
		Last Modified: Fri, 03 Jul 2026 00:32:54 GMT  
		Size: 14.6 KB (14558 bytes)  
		MIME: application/vnd.in-toto+json
