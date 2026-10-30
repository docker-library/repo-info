## `swift:rhel-ubi10`

```console
$ docker pull swift@sha256:eafe2be7d5e8fe562bda32b2055d54f7e56d6be18ac519068d7a96860aef27cd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi10` - linux; amd64

```console
$ docker pull swift@sha256:c827e74d68b2227fccb658241a55e35aed682d96c31217a16424508a6f243362
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1372350448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b171b0b3c1547ea172916823b9b50e6e68c2c070136afe4313d19ad7cbabd961`
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
# Fri, 30 Oct 2026 17:32:33 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 30 Oct 2026 17:32:33 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 30 Oct 2026 17:32:33 GMT
RUN yum -y install   git                 gnupg2              gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Fri, 30 Oct 2026 17:32:33 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 30 Oct 2026 17:32:33 GMT
ARG SWIFT_PLATFORM=ubi10
# Fri, 30 Oct 2026 17:32:33 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Fri, 30 Oct 2026 17:32:33 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Fri, 30 Oct 2026 17:32:33 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 30 Oct 2026 17:32:33 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 30 Oct 2026 17:33:18 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Fri, 30 Oct 2026 17:33:18 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:7a109e94866ee2e45f0efaa7dc82b5fd18eef6cbfc0167e3c455944f368d27b5`  
		Last Modified: Fri, 23 Oct 2026 10:03:18 GMT  
		Size: 81.0 MB (80983676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b17679d3473f02438a07797821589adfea3e8bd181439f9bb1bd70114c3eec6`  
		Last Modified: Fri, 30 Oct 2026 17:35:58 GMT  
		Size: 147.3 MB (147251272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0db4e1d30169a83021f418e966b236d81449575c98e2d3010bf66e4add90f658`  
		Last Modified: Fri, 30 Oct 2026 17:36:17 GMT  
		Size: 1.1 GB (1144115326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1554e91efc0f3f55b0ef1ecb4cafa4eea117a1bee6d7f5b26b5c1a6ddebb60c3`  
		Last Modified: Fri, 30 Oct 2026 17:35:52 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10` - unknown; unknown

```console
$ docker pull swift@sha256:488a58bfa790a7a3901c75594aa6d7c38c8d0480ff8d516f1f5058033d083ab6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14141103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7715300e1f7546d42b2c0f14431fc014dea1c38d146fe88e82b26d0cb76908db`

```dockerfile
```

-	Layers:
	-	`sha256:421ad48c2bd01ca4e3e132420659b0911f06fb7ed0105fcdcec4f5b732bdd0a5`  
		Last Modified: Fri, 30 Oct 2026 17:35:53 GMT  
		Size: 14.1 MB (14126579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a403addcf56a4aad712654a432d66f07300d3908f3ba701acc202de6ce45a25c`  
		Last Modified: Fri, 30 Oct 2026 17:35:52 GMT  
		Size: 14.5 KB (14524 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi10` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:eb3cfda2e1001ea6ee52f8ca48d8479fe985560eed379e2147327c7b2aceaa96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1350820191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7a9d10cc3cc3e078711beba6842e6ea2ffdc77373eacee5f58e0dfb122c26e9`
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
# Fri, 30 Oct 2026 17:32:39 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 30 Oct 2026 17:32:39 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 30 Oct 2026 17:32:39 GMT
RUN yum -y install   git                 gnupg2              gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Fri, 30 Oct 2026 17:32:39 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 30 Oct 2026 17:32:39 GMT
ARG SWIFT_PLATFORM=ubi10
# Fri, 30 Oct 2026 17:32:39 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Fri, 30 Oct 2026 17:32:39 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Fri, 30 Oct 2026 17:32:39 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 30 Oct 2026 17:32:39 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 30 Oct 2026 17:33:23 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Fri, 30 Oct 2026 17:33:23 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:531df693c870ffd82bdb14ee43677198d6063cb057ef9e7ca38163f64a8bf4c2`  
		Last Modified: Fri, 23 Oct 2026 10:03:17 GMT  
		Size: 78.6 MB (78571798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df1ae1cc0f39bcf4d9475ad7f859a42e03bf4f77e5c8eb84a05791d643d0b799`  
		Last Modified: Fri, 30 Oct 2026 17:35:47 GMT  
		Size: 138.6 MB (138605787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56328df8ea45a4dc99af3bba3175f69d788a7101264bd79c730835084c4b194d`  
		Last Modified: Fri, 30 Oct 2026 17:36:03 GMT  
		Size: 1.1 GB (1133642432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f18f97cc15ff9d14e7bd94f35c4239c70445d9c868244395176656a6d21b79c`  
		Last Modified: Fri, 30 Oct 2026 17:35:41 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10` - unknown; unknown

```console
$ docker pull swift@sha256:33ecfeeb647fd00ea54131e636098943a112a6259f3d0724f3da6157f237465d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14009785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f1ff3f6d1f1fe0418c8ba9f33825b8b231a8d4107fc14dfb7604b5424325122`

```dockerfile
```

-	Layers:
	-	`sha256:389ccc7e097d8a737a800e51559f46b08a339f29a6d8045306728ee178c9bc94`  
		Last Modified: Fri, 30 Oct 2026 17:35:42 GMT  
		Size: 14.0 MB (13995145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cac097bae648363b7a31a0652f05cd38f80dfb0021c2a96bd9fba4fca901b129`  
		Last Modified: Fri, 30 Oct 2026 17:35:41 GMT  
		Size: 14.6 KB (14640 bytes)  
		MIME: application/vnd.in-toto+json
