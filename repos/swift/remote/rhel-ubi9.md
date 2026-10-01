## `swift:rhel-ubi9`

```console
$ docker pull swift@sha256:4d3c0befca3ab8d2e8dd64dd5be371885d03f1f90e120ec762b972988de9486b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9` - linux; amd64

```console
$ docker pull swift@sha256:ec55221b2ce1d3aceab0c0ba1b990fcf7a9aa74cd6c68833051e71b70069b03b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1352651496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0051354717c0546a16699bd54ec7a38b92c86b414cad28145f27fe74ca60d90c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 29 Sep 2026 07:00:28 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Tue, 29 Sep 2026 07:00:28 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 29 Sep 2026 07:00:28 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 29 Sep 2026 07:00:28 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 29 Sep 2026 07:00:28 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Tue, 29 Sep 2026 07:00:28 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 29 Sep 2026 07:00:28 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 29 Sep 2026 07:00:28 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Tue, 29 Sep 2026 07:00:28 GMT
LABEL io.openshift.expose-services=""
# Tue, 29 Sep 2026 07:00:28 GMT
LABEL io.openshift.tags="base rhel9"
# Tue, 29 Sep 2026 07:00:28 GMT
ENV container oci
# Tue, 29 Sep 2026 07:00:29 GMT
COPY dir:055bac04503a767f21dfd1ba52df3dddc42aea6d2daecb2e7842fa263bea84c3 in /      
# Tue, 29 Sep 2026 07:00:29 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 29 Sep 2026 07:00:29 GMT
CMD ["/bin/bash"]
# Tue, 29 Sep 2026 07:00:29 GMT
COPY dir:cccf074457cc2d7739da3085afe8fb8b7111386db30e978ce5402d2d80211c7d in /usr/share/buildinfo/      
# Tue, 29 Sep 2026 07:00:30 GMT
COPY dir:cccf074457cc2d7739da3085afe8fb8b7111386db30e978ce5402d2d80211c7d in /root/buildinfo/      
# Tue, 29 Sep 2026 07:00:30 GMT
LABEL "org.opencontainers.image.created"="2026-09-29T07:00:09Z" "org.opencontainers.image.revision"="22381a618a3a13188050f82d3818c75672229f94" "build-date"="2026-09-29T07:00:09Z" "architecture"="x86_64" "vcs-ref"="22381a618a3a13188050f82d3818c75672229f94" "vcs-type"="git" "release"="1790665138"org.opencontainers.image.created=2026-09-29T07:00:09Z,org.opencontainers.image.revision=22381a618a3a13188050f82d3818c75672229f94
# Wed, 30 Sep 2026 21:06:40 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 30 Sep 2026 21:06:40 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 30 Sep 2026 21:06:40 GMT
RUN yum -y install   git                 gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Wed, 30 Sep 2026 21:06:40 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 30 Sep 2026 21:06:40 GMT
ARG SWIFT_PLATFORM=ubi9
# Wed, 30 Sep 2026 21:06:40 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Wed, 30 Sep 2026 21:06:40 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Wed, 30 Sep 2026 21:06:40 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 30 Sep 2026 21:06:40 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 30 Sep 2026 21:07:19 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Wed, 30 Sep 2026 21:07:19 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:934b708799d96e06246f338bdafd1a133caf4e3ebc7f3e7d83cf6ea832cca95b`  
		Last Modified: Tue, 29 Sep 2026 07:58:22 GMT  
		Size: 80.5 MB (80500030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4acb2af0a7aa97d15a9b63a1201d14e8297e26ac80ba2e5463af81e7c9cceeb1`  
		Last Modified: Wed, 30 Sep 2026 21:09:37 GMT  
		Size: 126.7 MB (126689423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d63a07ce8196e061c10e51f879ee10c16c2b568108a5a5311a967e65e68773e1`  
		Last Modified: Fri, 18 Sep 2026 23:53:31 GMT  
		Size: 1.1 GB (1145461870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a586deecca8d7b9131de432ad8507ee1efad06004ed6605d1ad7c5f5d0cb9760`  
		Last Modified: Wed, 30 Sep 2026 21:09:34 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9` - unknown; unknown

```console
$ docker pull swift@sha256:76673e9da61d5a79044defde40a723bb011b2bf68d20cc33e9ebb3fc5fad97ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13015425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97ccb442ca39908952a6d6614f75f91918d2a071a3b992045c7d414ca6052bfb`

```dockerfile
```

-	Layers:
	-	`sha256:cfe7ecb5fd0ec85bbad79631d2d9124e0c205ea847c9262ab720bc58850bbd3d`  
		Last Modified: Wed, 30 Sep 2026 21:09:35 GMT  
		Size: 13.0 MB (13000983 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e4850710d33360a4509725f78f4a1ef09a9d1fe5487fdad59bf2aa5d5bf8004`  
		Last Modified: Wed, 30 Sep 2026 21:09:34 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:1f5c66752caec6bd26c5ea8969a61a724b9f6f50e7fb32382d7b4356ee92297d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1340208309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a8c3d16c0adf7662c4856b0e5c073027929e763b5bf7adac57b45a586c93e2a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 29 Sep 2026 07:02:39 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Tue, 29 Sep 2026 07:02:39 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 29 Sep 2026 07:02:39 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 29 Sep 2026 07:02:39 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 29 Sep 2026 07:02:39 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Tue, 29 Sep 2026 07:02:39 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 29 Sep 2026 07:02:39 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 29 Sep 2026 07:02:39 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Tue, 29 Sep 2026 07:02:39 GMT
LABEL io.openshift.expose-services=""
# Tue, 29 Sep 2026 07:02:39 GMT
LABEL io.openshift.tags="base rhel9"
# Tue, 29 Sep 2026 07:02:39 GMT
ENV container oci
# Tue, 29 Sep 2026 07:02:42 GMT
COPY dir:87b4e711cf89a1ec534b8532729e8141650400e590085b51566697f4b3f2e33b in /      
# Tue, 29 Sep 2026 07:02:42 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 29 Sep 2026 07:02:42 GMT
CMD ["/bin/bash"]
# Tue, 29 Sep 2026 07:02:42 GMT
COPY dir:7fd37f3ba22fcb3779cb9ad2ad861d29717a6fea7a51d40e2b22a96050aa4611 in /usr/share/buildinfo/      
# Tue, 29 Sep 2026 07:02:42 GMT
COPY dir:7fd37f3ba22fcb3779cb9ad2ad861d29717a6fea7a51d40e2b22a96050aa4611 in /root/buildinfo/      
# Tue, 29 Sep 2026 07:02:43 GMT
LABEL "org.opencontainers.image.created"="2026-09-29T07:02:14Z" "org.opencontainers.image.revision"="22381a618a3a13188050f82d3818c75672229f94" "build-date"="2026-09-29T07:02:14Z" "architecture"="aarch64" "vcs-ref"="22381a618a3a13188050f82d3818c75672229f94" "vcs-type"="git" "release"="1790665138"org.opencontainers.image.created=2026-09-29T07:02:14Z,org.opencontainers.image.revision=22381a618a3a13188050f82d3818c75672229f94
# Wed, 30 Sep 2026 21:05:50 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 30 Sep 2026 21:05:50 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 30 Sep 2026 21:05:50 GMT
RUN yum -y install   git                 gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Wed, 30 Sep 2026 21:05:50 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 30 Sep 2026 21:05:50 GMT
ARG SWIFT_PLATFORM=ubi9
# Wed, 30 Sep 2026 21:05:50 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Wed, 30 Sep 2026 21:05:50 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Wed, 30 Sep 2026 21:05:50 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 30 Sep 2026 21:05:50 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 30 Sep 2026 21:06:31 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Wed, 30 Sep 2026 21:06:31 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:d737070660d72478710c13cdb36e82c2de51283eed167bb4a9c6d6d5ea600ae0`  
		Last Modified: Tue, 29 Sep 2026 07:59:28 GMT  
		Size: 78.2 MB (78190151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dfc346c59a993ab2359d6dc992180045993767cebb25e507a033f042cba06df`  
		Last Modified: Wed, 30 Sep 2026 21:08:52 GMT  
		Size: 120.0 MB (119972481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c718624100c98820206167ab755ac2b44f8e6956643eab861a60f6e2f106ffa`  
		Last Modified: Fri, 18 Sep 2026 23:53:21 GMT  
		Size: 1.1 GB (1142045503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2d204e22013cad54bf5387e1e0842f4641187df363fc3dd783914bfa63cb0c4`  
		Last Modified: Wed, 30 Sep 2026 21:08:49 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9` - unknown; unknown

```console
$ docker pull swift@sha256:7c690152d53bb503b5465110477081913e13303abe91189616a2cc7a823aa450
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12888240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4927c647507b141cddbf6faa563e22e1d4bfc4f6e71013d08650d107803707`

```dockerfile
```

-	Layers:
	-	`sha256:070c19637f2b2020938bb3aef585e7a0f42c9b5db270f93064912e884eef6fd4`  
		Last Modified: Wed, 30 Sep 2026 21:08:49 GMT  
		Size: 12.9 MB (12873682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6db14211813be80a3a65db614b98915a99d21c86059ccb24d2eaacd85a19e741`  
		Last Modified: Wed, 30 Sep 2026 21:08:49 GMT  
		Size: 14.6 KB (14558 bytes)  
		MIME: application/vnd.in-toto+json
