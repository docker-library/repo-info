## `swift:rhel-ubi10`

```console
$ docker pull swift@sha256:02b6a84c76df795c10f8f754bda9c354e77f6878f1e3e21a569f5cd8c58f7840
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi10` - linux; amd64

```console
$ docker pull swift@sha256:a7727ce6f97cba9fe79501eb376fb21c06770078537abc423a682492c8e99c06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1372194757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8870543aa806857173fb73f7dc66e98424e71ce36556bff2b78c0fe20eb08e20`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 01 Oct 2026 07:58:28 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."       url="https://catalog.redhat.com/en/search?searchType=containers"       com.redhat.component="ubi10-container"       name="ubi10/ubi"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       version="10.2"       distribution-scope="public"
# Thu, 01 Oct 2026 07:58:28 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 01 Oct 2026 07:58:28 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 10."
# Thu, 01 Oct 2026 07:58:28 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 01 Oct 2026 07:58:28 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 01 Oct 2026 07:58:28 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10"
# Thu, 01 Oct 2026 07:58:28 GMT
LABEL io.openshift.expose-services=""
# Thu, 01 Oct 2026 07:58:28 GMT
LABEL io.openshift.tags="base rhel10"
# Thu, 01 Oct 2026 07:58:28 GMT
ENV container oci
# Thu, 01 Oct 2026 07:58:30 GMT
COPY dir:39640356a4738c7f4c9174fe5f3fbe7235ff33b4e994308a46c8c3e84dfef208 in /      
# Thu, 01 Oct 2026 07:58:30 GMT
COPY file:7434e7ac38eae122961f7433f94f69681ae6b7673c89bc0a33c8831ed9c5dbfc in /etc/yum.repos.d/.      
# Thu, 01 Oct 2026 07:58:30 GMT
CMD ["/bin/bash"]
# Thu, 01 Oct 2026 07:58:31 GMT
COPY dir:ca1b03dda25b8a6891136b685de71bf3c6dcc4404eabf1aa6fc9745bf864cdd1 in /usr/share/buildinfo/      
# Thu, 01 Oct 2026 07:58:31 GMT
COPY dir:ca1b03dda25b8a6891136b685de71bf3c6dcc4404eabf1aa6fc9745bf864cdd1 in /root/buildinfo/      
# Thu, 01 Oct 2026 07:58:32 GMT
LABEL "org.opencontainers.image.created"="2026-10-01T07:58:04Z" "org.opencontainers.image.revision"="629fc86a1ac20602c12ce7fe869d4dbbfea65b1b" "build-date"="2026-10-01T07:58:04Z" "architecture"="x86_64" "vcs-ref"="629fc86a1ac20602c12ce7fe869d4dbbfea65b1b" "vcs-type"="git" "release"="1790841271"org.opencontainers.image.created=2026-10-01T07:58:04Z,org.opencontainers.image.revision=629fc86a1ac20602c12ce7fe869d4dbbfea65b1b
# Mon, 05 Oct 2026 21:36:44 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Mon, 05 Oct 2026 21:36:44 GMT
LABEL description=Docker Container for the Swift programming language
# Mon, 05 Oct 2026 21:36:44 GMT
RUN yum -y install   git                 gnupg2              gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Mon, 05 Oct 2026 21:36:44 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Mon, 05 Oct 2026 21:36:44 GMT
ARG SWIFT_PLATFORM=ubi10
# Mon, 05 Oct 2026 21:36:44 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Mon, 05 Oct 2026 21:36:44 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Mon, 05 Oct 2026 21:36:44 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Mon, 05 Oct 2026 21:36:44 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Mon, 05 Oct 2026 21:37:22 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Mon, 05 Oct 2026 21:37:22 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:694102a938a2c92f6709e62111fc9a5517307ea01fb81067c1e9c87821204726`  
		Last Modified: Thu, 01 Oct 2026 08:46:42 GMT  
		Size: 81.0 MB (81031446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd70b47011424a62e26f82f2407f7434732d1740e5797f1bf6eea05a0cfd2416`  
		Last Modified: Mon, 05 Oct 2026 21:39:57 GMT  
		Size: 147.1 MB (147120607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8f719ccf8731f28c4ac125969f81b6b343c4d2fed3124bfff9822cc5eea5fc5`  
		Last Modified: Fri, 18 Sep 2026 23:53:51 GMT  
		Size: 1.1 GB (1144042530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cea52401f3b9b4ff50ad0e2c94b82b2c9be55064a225344cf849a7400e908ae`  
		Last Modified: Mon, 05 Oct 2026 21:39:54 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10` - unknown; unknown

```console
$ docker pull swift@sha256:80addac93183ce48ec5863135dd36f028d9e8c40c46471787d2743fcce2de896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14153990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70f112d31fec6c1670703502b85458305eeccc8cd89861d46dff0bd184ac1ae2`

```dockerfile
```

-	Layers:
	-	`sha256:8a89e7788272cdbc7ecebb7b5edad21d05f00c4da3e05956c55213bdb273c476`  
		Last Modified: Mon, 05 Oct 2026 21:39:55 GMT  
		Size: 14.1 MB (14139466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0155d077e7edb25604c15b715cc6e9153b6caafe3089fbcd569919734983fab4`  
		Last Modified: Mon, 05 Oct 2026 21:39:54 GMT  
		Size: 14.5 KB (14524 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi10` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:7f7bee69c0888b18666bdeb3b84489e0eb97e2db88213d148e567bd7dbd47d53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1350492947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34a37f977a40ab357b25092bfff369b41be79b786a5e1507034e60c0273bcd6c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 01 Oct 2026 08:00:49 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."       url="https://catalog.redhat.com/en/search?searchType=containers"       com.redhat.component="ubi10-container"       name="ubi10/ubi"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       version="10.2"       distribution-scope="public"
# Thu, 01 Oct 2026 08:00:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 01 Oct 2026 08:00:49 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 10."
# Thu, 01 Oct 2026 08:00:49 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 01 Oct 2026 08:00:49 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 01 Oct 2026 08:00:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10"
# Thu, 01 Oct 2026 08:00:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 01 Oct 2026 08:00:49 GMT
LABEL io.openshift.tags="base rhel10"
# Thu, 01 Oct 2026 08:00:49 GMT
ENV container oci
# Thu, 01 Oct 2026 08:00:52 GMT
COPY dir:3674827d6d6258a402e9973b4a77ea5fa5208d5d4675b599a8c5a84b3c9640cb in /      
# Thu, 01 Oct 2026 08:00:52 GMT
COPY file:7434e7ac38eae122961f7433f94f69681ae6b7673c89bc0a33c8831ed9c5dbfc in /etc/yum.repos.d/.      
# Thu, 01 Oct 2026 08:00:52 GMT
CMD ["/bin/bash"]
# Thu, 01 Oct 2026 08:00:52 GMT
COPY dir:d0c7be029a04e8f18f3b17d1cf255cd86649822d773157438f1fb070fb1208af in /usr/share/buildinfo/      
# Thu, 01 Oct 2026 08:00:52 GMT
COPY dir:d0c7be029a04e8f18f3b17d1cf255cd86649822d773157438f1fb070fb1208af in /root/buildinfo/      
# Thu, 01 Oct 2026 08:00:53 GMT
LABEL "org.opencontainers.image.created"="2026-10-01T08:00:23Z" "org.opencontainers.image.revision"="629fc86a1ac20602c12ce7fe869d4dbbfea65b1b" "build-date"="2026-10-01T08:00:23Z" "architecture"="aarch64" "vcs-ref"="629fc86a1ac20602c12ce7fe869d4dbbfea65b1b" "vcs-type"="git" "release"="1790841271"org.opencontainers.image.created=2026-10-01T08:00:23Z,org.opencontainers.image.revision=629fc86a1ac20602c12ce7fe869d4dbbfea65b1b
# Mon, 05 Oct 2026 21:44:21 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Mon, 05 Oct 2026 21:44:21 GMT
LABEL description=Docker Container for the Swift programming language
# Mon, 05 Oct 2026 21:44:21 GMT
RUN yum -y install   git                 gnupg2              gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Mon, 05 Oct 2026 21:44:21 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Mon, 05 Oct 2026 21:44:21 GMT
ARG SWIFT_PLATFORM=ubi10
# Mon, 05 Oct 2026 21:44:21 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Mon, 05 Oct 2026 21:44:21 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Mon, 05 Oct 2026 21:44:21 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Mon, 05 Oct 2026 21:44:21 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Mon, 05 Oct 2026 21:44:59 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Mon, 05 Oct 2026 21:44:59 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:7388e54a4b87b9d1b806f083475a3e00a585e22a34723ffd2524f0249d9f99fc`  
		Last Modified: Thu, 01 Oct 2026 08:46:40 GMT  
		Size: 78.5 MB (78451694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c362124f1ceff5c431a983db36f886b9f5e8ced409e643318b2c9a9cc1d590f`  
		Last Modified: Mon, 05 Oct 2026 21:47:44 GMT  
		Size: 138.5 MB (138466686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73fd997c5bd279753105ef69eccd9790f8314532c0d23cc51581923bcaf7d271`  
		Last Modified: Fri, 18 Sep 2026 23:53:53 GMT  
		Size: 1.1 GB (1133574394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:870d206ffe70d3c33a19e0f390b7bdb39c9cfaf3dc2d9b3afa930183273964cc`  
		Last Modified: Mon, 05 Oct 2026 21:47:19 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10` - unknown; unknown

```console
$ docker pull swift@sha256:a89f03960e868981cc3cd3cb58a8145e92dab4e7ffb41fd85db9ac330996b17c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14022672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7262e60e8096ad42663d12b31888c6194d37c7714421760d3a2a8f0596b553b`

```dockerfile
```

-	Layers:
	-	`sha256:01a1992c22ab03dbe7daac39e7542b8954d30abf8ba1dea22b51045b61d893b2`  
		Last Modified: Mon, 05 Oct 2026 21:47:23 GMT  
		Size: 14.0 MB (14008032 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1496e0a79a648597da792e76b7984d7853842f172701d8fad7f8ae102a2e3896`  
		Last Modified: Mon, 05 Oct 2026 21:47:20 GMT  
		Size: 14.6 KB (14640 bytes)  
		MIME: application/vnd.in-toto+json
