## `swift:rhel-ubi10`

```console
$ docker pull swift@sha256:11bd99c2eba5da3d8979fa9e7537a6e83d8188854f30fb1246d5877c51d64d6e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi10` - linux; amd64

```console
$ docker pull swift@sha256:564e8b7ef6f484363564ece11b0bd46ec87c958806e5f07e249203bc57fe1d8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1372343217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6492de8842a05418fbc3474a22bffcce8439b9f26ca40123b57fdfdaff7fe99c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Oct 2026 00:44:49 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."       url="https://catalog.redhat.com/en/search?searchType=containers"       com.redhat.component="ubi10-container"       name="ubi10/ubi"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       version="10.2"       distribution-scope="public"
# Tue, 20 Oct 2026 00:44:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 20 Oct 2026 00:44:49 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 10."
# Tue, 20 Oct 2026 00:44:49 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:44:49 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:44:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10"
# Tue, 20 Oct 2026 00:44:49 GMT
LABEL io.openshift.expose-services=""
# Tue, 20 Oct 2026 00:44:49 GMT
LABEL io.openshift.tags="base rhel10"
# Tue, 20 Oct 2026 00:44:49 GMT
ENV container oci
# Tue, 20 Oct 2026 00:44:51 GMT
COPY dir:43f253fd9478f59cbc9d6b28ddeae6517145f350d36c2c468d6f8a781e8a706c in /      
# Tue, 20 Oct 2026 00:44:51 GMT
COPY file:7434e7ac38eae122961f7433f94f69681ae6b7673c89bc0a33c8831ed9c5dbfc in /etc/yum.repos.d/.      
# Tue, 20 Oct 2026 00:44:52 GMT
CMD ["/bin/bash"]
# Tue, 20 Oct 2026 00:44:52 GMT
COPY dir:32dd0cb3d52f00cc7891ceb06eed341abbbfdc8706354bb7b7043c14557f9326 in /usr/share/buildinfo/      
# Tue, 20 Oct 2026 00:44:52 GMT
COPY dir:32dd0cb3d52f00cc7891ceb06eed341abbbfdc8706354bb7b7043c14557f9326 in /root/buildinfo/      
# Tue, 20 Oct 2026 00:44:53 GMT
LABEL "org.opencontainers.image.created"="2026-10-20T00:44:18Z" "org.opencontainers.image.revision"="7abe5ed4830a79bd136df9e5cac6f6ce2481141a" "build-date"="2026-10-20T00:44:18Z" "architecture"="x86_64" "vcs-ref"="7abe5ed4830a79bd136df9e5cac6f6ce2481141a" "vcs-type"="git" "release"="1792456870"org.opencontainers.image.created=2026-10-20T00:44:18Z,org.opencontainers.image.revision=7abe5ed4830a79bd136df9e5cac6f6ce2481141a
# Wed, 21 Oct 2026 21:52:47 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 21 Oct 2026 21:52:47 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 21 Oct 2026 21:52:47 GMT
RUN yum -y install   git                 gnupg2              gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Wed, 21 Oct 2026 21:52:47 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 21 Oct 2026 21:52:47 GMT
ARG SWIFT_PLATFORM=ubi10
# Wed, 21 Oct 2026 21:52:47 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Wed, 21 Oct 2026 21:52:47 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Wed, 21 Oct 2026 21:52:47 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 21 Oct 2026 21:52:47 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 21 Oct 2026 21:53:24 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Wed, 21 Oct 2026 21:53:24 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:1a9888b4d8761db803a39df71d3f4d060b50c89e9a6286e0831e076806b0ebfb`  
		Last Modified: Tue, 20 Oct 2026 04:04:27 GMT  
		Size: 81.0 MB (81042492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:880884c6b568f59f4055833ef34d25b19bd6418e8b0130dfbeacdb3dd5966ac2`  
		Last Modified: Wed, 21 Oct 2026 21:55:47 GMT  
		Size: 147.3 MB (147265209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a617626de53e5bb4f04297ce4b982f7d85cbe8f7f9de55e176a9284580976745`  
		Last Modified: Tue, 13 Oct 2026 20:34:32 GMT  
		Size: 1.1 GB (1144035342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fe3ce2e4c4b750f88ae7e3ef8c36bd469fc21262f9ef65bdff41f0c080aa443`  
		Last Modified: Wed, 21 Oct 2026 21:55:42 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10` - unknown; unknown

```console
$ docker pull swift@sha256:d50d42461b1ef2195126b7753cf3bbc164330bc3d440956fba6d1b4d42d34b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14159638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e78beff8a71d48de60955f921736837cde33843ab916a01a9998a6228ae58a`

```dockerfile
```

-	Layers:
	-	`sha256:5c6a5036da2d77da36c90cfbdb1081f101b528034f4e20a75a200d55dd8133dd`  
		Last Modified: Wed, 21 Oct 2026 21:55:45 GMT  
		Size: 14.1 MB (14145114 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb891206422c276b521c2ccaa4be2ef1f78aaa418255fe36f650ae92d9344e48`  
		Last Modified: Wed, 21 Oct 2026 21:55:44 GMT  
		Size: 14.5 KB (14524 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi10` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:16f408b2bf302c2c337ce9f60acf69ecc197f4f0520fa4e08638b655cefcde79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1350705607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0bf656f1ec007e8a4b2b1f43a164078acba528669094b513bb50e381f4e18d5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Oct 2026 00:47:30 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."       url="https://catalog.redhat.com/en/search?searchType=containers"       com.redhat.component="ubi10-container"       name="ubi10/ubi"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       version="10.2"       distribution-scope="public"
# Tue, 20 Oct 2026 00:47:31 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 20 Oct 2026 00:47:31 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 10."
# Tue, 20 Oct 2026 00:47:31 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:47:31 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:47:31 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10"
# Tue, 20 Oct 2026 00:47:31 GMT
LABEL io.openshift.expose-services=""
# Tue, 20 Oct 2026 00:47:31 GMT
LABEL io.openshift.tags="base rhel10"
# Tue, 20 Oct 2026 00:47:31 GMT
ENV container oci
# Tue, 20 Oct 2026 00:47:34 GMT
COPY dir:57b128f1d0166d355a09488fc5bdef12ad32e51b338185e4a5ed50c3384a3e3a in /      
# Tue, 20 Oct 2026 00:47:34 GMT
COPY file:7434e7ac38eae122961f7433f94f69681ae6b7673c89bc0a33c8831ed9c5dbfc in /etc/yum.repos.d/.      
# Tue, 20 Oct 2026 00:47:35 GMT
CMD ["/bin/bash"]
# Tue, 20 Oct 2026 00:47:35 GMT
COPY dir:904ee8abcaad98e476c65a52cbf1e612772416531059a7cefce7cbf587895a04 in /usr/share/buildinfo/      
# Tue, 20 Oct 2026 00:47:35 GMT
COPY dir:904ee8abcaad98e476c65a52cbf1e612772416531059a7cefce7cbf587895a04 in /root/buildinfo/      
# Tue, 20 Oct 2026 00:47:36 GMT
LABEL "org.opencontainers.image.created"="2026-10-20T00:46:57Z" "org.opencontainers.image.revision"="7abe5ed4830a79bd136df9e5cac6f6ce2481141a" "build-date"="2026-10-20T00:46:57Z" "architecture"="aarch64" "vcs-ref"="7abe5ed4830a79bd136df9e5cac6f6ce2481141a" "vcs-type"="git" "release"="1792456870"org.opencontainers.image.created=2026-10-20T00:46:57Z,org.opencontainers.image.revision=7abe5ed4830a79bd136df9e5cac6f6ce2481141a
# Wed, 21 Oct 2026 22:46:53 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 21 Oct 2026 22:46:53 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 21 Oct 2026 22:46:53 GMT
RUN yum -y install   git                 gnupg2              gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Wed, 21 Oct 2026 22:46:53 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 21 Oct 2026 22:46:53 GMT
ARG SWIFT_PLATFORM=ubi10
# Wed, 21 Oct 2026 22:46:53 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Wed, 21 Oct 2026 22:46:53 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Wed, 21 Oct 2026 22:46:53 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 21 Oct 2026 22:46:53 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 21 Oct 2026 22:47:30 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Wed, 21 Oct 2026 22:47:30 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:300e2373a6b5406b581dc57725447d253e3ef6e79c547f520d4ddd7273cfec9d`  
		Last Modified: Tue, 20 Oct 2026 04:05:05 GMT  
		Size: 78.5 MB (78533226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6534a7b90fb25251270a598f4314f0ee7f9359f17c54d8da1a73090e390afb9f`  
		Last Modified: Wed, 21 Oct 2026 22:49:53 GMT  
		Size: 138.6 MB (138610017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ad5abdfcb373bdfbbd39d55c5250ebe0a64b6dd13fa122538f0f9f5dd12ee98`  
		Last Modified: Tue, 13 Oct 2026 20:34:05 GMT  
		Size: 1.1 GB (1133562190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d855d662d589d06353b61b47da17d7fdba3f47456005428933516b04893a5a37`  
		Last Modified: Wed, 21 Oct 2026 22:49:49 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10` - unknown; unknown

```console
$ docker pull swift@sha256:aef7f2d2cd7663cccfb883ee1ba694e333269b67075ac912e10f2a9aea111754
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14028320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ccd5dbca208178eb59d4b0f6b80010323d09c677d83fc296dd3c8180541942b`

```dockerfile
```

-	Layers:
	-	`sha256:beb6b224bc450837085c0b6a627d092cab77e7ff9cf49d60ddc6167eca23489d`  
		Last Modified: Wed, 21 Oct 2026 22:49:50 GMT  
		Size: 14.0 MB (14013680 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7a0d5319917fcd52c500eb08e193c70c75fefb87711e19343c16c1be35f5021`  
		Last Modified: Wed, 21 Oct 2026 22:49:50 GMT  
		Size: 14.6 KB (14640 bytes)  
		MIME: application/vnd.in-toto+json
