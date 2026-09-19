## `swift:rhel-ubi10`

```console
$ docker pull swift@sha256:852e7e33a4106a6b00214fff24e899c0239faf4ce51280bb096813c208d2608e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi10` - linux; amd64

```console
$ docker pull swift@sha256:d0f879a60f3ac65396f5c526fa1cbfe23beaf2c13bf43bfa5d97cb2c02181bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1372196057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2868d7a3a7c60ec534f5be310cc22b60c8039ce9963b971ee744ae79f5063dc2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 15 Sep 2026 08:06:54 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."       url="https://catalog.redhat.com/en/search?searchType=containers"       com.redhat.component="ubi10-container"       name="ubi10/ubi"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       version="10.2"       distribution-scope="public"
# Tue, 15 Sep 2026 08:06:54 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:06:54 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 10."
# Tue, 15 Sep 2026 08:06:54 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:06:54 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:06:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10"
# Tue, 15 Sep 2026 08:06:54 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:06:54 GMT
LABEL io.openshift.tags="base rhel10"
# Tue, 15 Sep 2026 08:06:54 GMT
ENV container oci
# Tue, 15 Sep 2026 08:06:56 GMT
COPY dir:b4cc4d6f0c4fa861f536d5c52587d887da225d9274641fa66a8c721d64cdb088 in /      
# Tue, 15 Sep 2026 08:06:56 GMT
COPY file:7434e7ac38eae122961f7433f94f69681ae6b7673c89bc0a33c8831ed9c5dbfc in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:06:56 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:06:56 GMT
COPY dir:5db843ff84a199100abb7297c415a36c926cf094f128fdb0d6714e8559ac986f in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:06:56 GMT
COPY dir:5db843ff84a199100abb7297c415a36c926cf094f128fdb0d6714e8559ac986f in /root/buildinfo/      
# Tue, 15 Sep 2026 08:06:57 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:06:22Z" "org.opencontainers.image.revision"="a1583fbe1727394aa38e45d8595fbd6e0c578c77" "build-date"="2026-09-15T08:06:22Z" "architecture"="x86_64" "vcs-ref"="a1583fbe1727394aa38e45d8595fbd6e0c578c77" "vcs-type"="git" "release"="1789459392"org.opencontainers.image.created=2026-09-15T08:06:22Z,org.opencontainers.image.revision=a1583fbe1727394aa38e45d8595fbd6e0c578c77
# Fri, 18 Sep 2026 23:50:36 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 18 Sep 2026 23:50:36 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 18 Sep 2026 23:50:36 GMT
RUN yum -y install   git                 gnupg2              gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Fri, 18 Sep 2026 23:50:36 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 18 Sep 2026 23:50:36 GMT
ARG SWIFT_PLATFORM=ubi10
# Fri, 18 Sep 2026 23:50:36 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Fri, 18 Sep 2026 23:50:36 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Fri, 18 Sep 2026 23:50:36 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 18 Sep 2026 23:50:36 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 18 Sep 2026 23:51:14 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Fri, 18 Sep 2026 23:51:14 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:b16fd576ace9ccf3b278f835529a47a1798f1ce3675b36bb78287d211666549c`  
		Last Modified: Tue, 15 Sep 2026 09:34:17 GMT  
		Size: 81.0 MB (81035116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93d156d64b06519c5cfa1bd23e8b84ec69c4f66e730eaa29f848bee66bd7d9b4`  
		Last Modified: Fri, 18 Sep 2026 23:53:34 GMT  
		Size: 147.1 MB (147118237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8f719ccf8731f28c4ac125969f81b6b343c4d2fed3124bfff9822cc5eea5fc5`  
		Last Modified: Fri, 18 Sep 2026 23:53:51 GMT  
		Size: 1.1 GB (1144042530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df57c4908e7960baea0f396af56c1cc0b298cb8dc5b3a33df73f0146b18c4ddf`  
		Last Modified: Fri, 18 Sep 2026 23:53:28 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10` - unknown; unknown

```console
$ docker pull swift@sha256:0860b2681e5129885287448bd610f122307748a6822ef8a59badc05875a004f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14153958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07f5eee7907f8b6b77062c049eb8affb5f0af1ac1580f7c3115d3165aa8686c3`

```dockerfile
```

-	Layers:
	-	`sha256:8ebd0439bf2c019953c9c9f20738b8ba5abbd6a31d59142f2b41355e7e75c3ec`  
		Last Modified: Fri, 18 Sep 2026 23:53:29 GMT  
		Size: 14.1 MB (14139434 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f96ed2bce2eb89b5de1434c03120f31cdda5ff3f39a352ddae1b7c7175a4731`  
		Last Modified: Fri, 18 Sep 2026 23:53:28 GMT  
		Size: 14.5 KB (14524 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi10` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:18e82807373079483ab55f566c7497317451a8fa1d193033fff276e6dadbaa94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1350493731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1d1e46e487db861ab8947dd6655fa7defc5a28192d31625de07d6c997623e3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 15 Sep 2026 08:09:41 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."       url="https://catalog.redhat.com/en/search?searchType=containers"       com.redhat.component="ubi10-container"       name="ubi10/ubi"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       version="10.2"       distribution-scope="public"
# Tue, 15 Sep 2026 08:09:41 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:09:41 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 10."
# Tue, 15 Sep 2026 08:09:41 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:09:41 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:09:41 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10"
# Tue, 15 Sep 2026 08:09:41 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:09:41 GMT
LABEL io.openshift.tags="base rhel10"
# Tue, 15 Sep 2026 08:09:41 GMT
ENV container oci
# Tue, 15 Sep 2026 08:09:44 GMT
COPY dir:11fb7eda4d1d82dd516d7a50a39e10a86c9f19fac5f6fc3e6713386c2dab6ca6 in /      
# Tue, 15 Sep 2026 08:09:44 GMT
COPY file:7434e7ac38eae122961f7433f94f69681ae6b7673c89bc0a33c8831ed9c5dbfc in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:09:44 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:09:44 GMT
COPY dir:71fdda20519e6ddfffaeeb8551ab2ef6acbcbbfe5f1da9d1994c966deb671d26 in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:09:44 GMT
COPY dir:71fdda20519e6ddfffaeeb8551ab2ef6acbcbbfe5f1da9d1994c966deb671d26 in /root/buildinfo/      
# Tue, 15 Sep 2026 08:09:45 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:09:09Z" "org.opencontainers.image.revision"="a1583fbe1727394aa38e45d8595fbd6e0c578c77" "build-date"="2026-09-15T08:09:09Z" "architecture"="aarch64" "vcs-ref"="a1583fbe1727394aa38e45d8595fbd6e0c578c77" "vcs-type"="git" "release"="1789459392"org.opencontainers.image.created=2026-09-15T08:09:09Z,org.opencontainers.image.revision=a1583fbe1727394aa38e45d8595fbd6e0c578c77
# Fri, 18 Sep 2026 23:50:30 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 18 Sep 2026 23:50:30 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 18 Sep 2026 23:50:30 GMT
RUN yum -y install   git                 gnupg2              gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Fri, 18 Sep 2026 23:50:30 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 18 Sep 2026 23:50:30 GMT
ARG SWIFT_PLATFORM=ubi10
# Fri, 18 Sep 2026 23:50:30 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Fri, 18 Sep 2026 23:50:30 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Fri, 18 Sep 2026 23:50:30 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 18 Sep 2026 23:50:30 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 18 Sep 2026 23:51:14 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Fri, 18 Sep 2026 23:51:14 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:30ae5c265653d9115d702b4fb82474eeb93ed5cbcef6ac56f15887396670d52d`  
		Last Modified: Tue, 15 Sep 2026 09:34:19 GMT  
		Size: 78.5 MB (78469716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bede733f333c66875c29e91bfd3a2d67c1841f31baec13af0de2a7c263c4e25`  
		Last Modified: Fri, 18 Sep 2026 23:53:38 GMT  
		Size: 138.4 MB (138449447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73fd997c5bd279753105ef69eccd9790f8314532c0d23cc51581923bcaf7d271`  
		Last Modified: Fri, 18 Sep 2026 23:53:53 GMT  
		Size: 1.1 GB (1133574394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e8f0057c205e7f927db752c79c7af3795785a685ddc8c6bde7536033f61760`  
		Last Modified: Fri, 18 Sep 2026 23:53:33 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10` - unknown; unknown

```console
$ docker pull swift@sha256:4545d839a19ad3c132b75e2f2ab01313f1a4f96b726c2e53795be24f87f9f57d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14022640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc362916b94004ce5238531f297f5ee31f1681370a002761e4130c4d1c000667`

```dockerfile
```

-	Layers:
	-	`sha256:5b0cac00afd4c308283c997f5c390b9042e3c5c0bbecfa9b2ba72ebad6600970`  
		Last Modified: Fri, 18 Sep 2026 23:53:34 GMT  
		Size: 14.0 MB (14008000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73af55051fa3d0f673524941536682c483fdecc9f507ecc1b87606b6f4e1c194`  
		Last Modified: Fri, 18 Sep 2026 23:53:33 GMT  
		Size: 14.6 KB (14640 bytes)  
		MIME: application/vnd.in-toto+json
