## `swift:rhel-ubi10`

```console
$ docker pull swift@sha256:c2911d3da03915e9abe412c1706e69e88deb7eeca8a15253e2f77f4a437daf15
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi10` - linux; amd64

```console
$ docker pull swift@sha256:b78e1b079930ef7574f2ba76c77e6e1408669df98b0d015759b72b47de29c579
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1372293315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2377f7c60e73ba2d139598609aba3b31fbe0137bb3bf45091668bd05ad669fad`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 08 Oct 2026 07:24:04 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."       url="https://catalog.redhat.com/en/search?searchType=containers"       com.redhat.component="ubi10-container"       name="ubi10/ubi"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       version="10.2"       distribution-scope="public"
# Thu, 08 Oct 2026 07:24:04 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 08 Oct 2026 07:24:04 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 10."
# Thu, 08 Oct 2026 07:24:04 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 08 Oct 2026 07:24:04 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 08 Oct 2026 07:24:04 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10"
# Thu, 08 Oct 2026 07:24:04 GMT
LABEL io.openshift.expose-services=""
# Thu, 08 Oct 2026 07:24:04 GMT
LABEL io.openshift.tags="base rhel10"
# Thu, 08 Oct 2026 07:24:04 GMT
ENV container oci
# Thu, 08 Oct 2026 07:24:05 GMT
COPY dir:15aabdbd9d267c4b26ab9920fe785a5e83fdb3ffc3c0b1b953373cf02e080d72 in /      
# Thu, 08 Oct 2026 07:24:05 GMT
COPY file:7434e7ac38eae122961f7433f94f69681ae6b7673c89bc0a33c8831ed9c5dbfc in /etc/yum.repos.d/.      
# Thu, 08 Oct 2026 07:24:05 GMT
CMD ["/bin/bash"]
# Thu, 08 Oct 2026 07:24:05 GMT
COPY dir:be76e1b734e348232f42138ede195174077b5ed7b2da03c08d703b45363a1889 in /usr/share/buildinfo/      
# Thu, 08 Oct 2026 07:24:05 GMT
COPY dir:be76e1b734e348232f42138ede195174077b5ed7b2da03c08d703b45363a1889 in /root/buildinfo/      
# Thu, 08 Oct 2026 07:24:06 GMT
LABEL "org.opencontainers.image.created"="2026-10-08T07:23:41Z" "org.opencontainers.image.revision"="e119a402cb491b3f63d2d3f374c67a7bdbc13323" "build-date"="2026-10-08T07:23:41Z" "architecture"="x86_64" "vcs-ref"="e119a402cb491b3f63d2d3f374c67a7bdbc13323" "vcs-type"="git" "release"="1791444044"org.opencontainers.image.created=2026-10-08T07:23:41Z,org.opencontainers.image.revision=e119a402cb491b3f63d2d3f374c67a7bdbc13323
# Thu, 08 Oct 2026 21:54:43 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Thu, 08 Oct 2026 21:54:43 GMT
LABEL description=Docker Container for the Swift programming language
# Thu, 08 Oct 2026 21:54:43 GMT
RUN yum -y install   git                 gnupg2              gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Thu, 08 Oct 2026 21:54:43 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Thu, 08 Oct 2026 21:54:43 GMT
ARG SWIFT_PLATFORM=ubi10
# Thu, 08 Oct 2026 21:54:43 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Thu, 08 Oct 2026 21:54:43 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Thu, 08 Oct 2026 21:54:43 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Thu, 08 Oct 2026 21:54:43 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Thu, 08 Oct 2026 21:55:20 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Thu, 08 Oct 2026 21:55:20 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:6fc7444accd7a9ed6ac556b00dc73b825689d767f21f184c3535e7316bee7b8f`  
		Last Modified: Thu, 08 Oct 2026 08:40:00 GMT  
		Size: 81.1 MB (81099872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d97d75ccf4bb4bfdd4be5e57d045f4336c9f7f3e386e9a645edc2950ead238e3`  
		Last Modified: Thu, 08 Oct 2026 21:57:42 GMT  
		Size: 147.2 MB (147150739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8f719ccf8731f28c4ac125969f81b6b343c4d2fed3124bfff9822cc5eea5fc5`  
		Last Modified: Fri, 18 Sep 2026 23:53:51 GMT  
		Size: 1.1 GB (1144042530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b6c8020a876eba4799fe4ad55047be2401e193672292666a5c194d60c3125a9`  
		Last Modified: Thu, 08 Oct 2026 21:57:39 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10` - unknown; unknown

```console
$ docker pull swift@sha256:5c13ca8f1a25199ed6baba0f462309eee76d764656ae2a6ac0b1f1d65b89088f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14154778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcddf4cb60bbc2d76f407877da4e1dbee731be1c54efdd150e20076338f76b4e`

```dockerfile
```

-	Layers:
	-	`sha256:a917bcf4daf9cb87a14f3434923d05f368651da1675ab0996b0fe15c590f45ff`  
		Last Modified: Thu, 08 Oct 2026 21:57:40 GMT  
		Size: 14.1 MB (14140254 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:246193cd8e6d247bea3bff817b24164fa54685f7a9b5ffe2d929642f32218cad`  
		Last Modified: Thu, 08 Oct 2026 21:57:39 GMT  
		Size: 14.5 KB (14524 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi10` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:5e53fc4c0615ce3b8c14ee8b2399734af6f818e608cb5a72d174d46256b8fa64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1350644242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f20b92ad64b6b0fbd51e9b5498daff728f566415673fffac3c1586818c5d635f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 08 Oct 2026 07:27:24 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."       url="https://catalog.redhat.com/en/search?searchType=containers"       com.redhat.component="ubi10-container"       name="ubi10/ubi"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       version="10.2"       distribution-scope="public"
# Thu, 08 Oct 2026 07:27:24 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 08 Oct 2026 07:27:24 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 10."
# Thu, 08 Oct 2026 07:27:24 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 08 Oct 2026 07:27:24 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 08 Oct 2026 07:27:24 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10"
# Thu, 08 Oct 2026 07:27:24 GMT
LABEL io.openshift.expose-services=""
# Thu, 08 Oct 2026 07:27:24 GMT
LABEL io.openshift.tags="base rhel10"
# Thu, 08 Oct 2026 07:27:24 GMT
ENV container oci
# Thu, 08 Oct 2026 07:27:27 GMT
COPY dir:5c5b7b209c4796824d07af1eca38aa97cf5407db3f9bf4eabe39a5ed7e0fbf64 in /      
# Thu, 08 Oct 2026 07:27:27 GMT
COPY file:7434e7ac38eae122961f7433f94f69681ae6b7673c89bc0a33c8831ed9c5dbfc in /etc/yum.repos.d/.      
# Thu, 08 Oct 2026 07:27:27 GMT
CMD ["/bin/bash"]
# Thu, 08 Oct 2026 07:27:27 GMT
COPY dir:f52a72a9782b4e1ef4691c2736fc803e006e8f47e326954e88fa3d9eeca1f586 in /usr/share/buildinfo/      
# Thu, 08 Oct 2026 07:27:27 GMT
COPY dir:f52a72a9782b4e1ef4691c2736fc803e006e8f47e326954e88fa3d9eeca1f586 in /root/buildinfo/      
# Thu, 08 Oct 2026 07:27:28 GMT
LABEL "org.opencontainers.image.created"="2026-10-08T07:26:58Z" "org.opencontainers.image.revision"="e119a402cb491b3f63d2d3f374c67a7bdbc13323" "build-date"="2026-10-08T07:26:58Z" "architecture"="aarch64" "vcs-ref"="e119a402cb491b3f63d2d3f374c67a7bdbc13323" "vcs-type"="git" "release"="1791444044"org.opencontainers.image.created=2026-10-08T07:26:58Z,org.opencontainers.image.revision=e119a402cb491b3f63d2d3f374c67a7bdbc13323
# Thu, 08 Oct 2026 22:46:52 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Thu, 08 Oct 2026 22:46:52 GMT
LABEL description=Docker Container for the Swift programming language
# Thu, 08 Oct 2026 22:46:52 GMT
RUN yum -y install   git                 gnupg2              gcc-c++             libcurl-devel       libedit-devel       libuuid-devel       libxml2-devel       ncurses-devel       python3-devel       rsync               sqlite-devel        unzip               zip # buildkit
# Thu, 08 Oct 2026 22:46:52 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Thu, 08 Oct 2026 22:46:52 GMT
ARG SWIFT_PLATFORM=ubi10
# Thu, 08 Oct 2026 22:46:52 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Thu, 08 Oct 2026 22:46:52 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Thu, 08 Oct 2026 22:46:52 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Thu, 08 Oct 2026 22:46:52 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Thu, 08 Oct 2026 22:47:28 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Thu, 08 Oct 2026 22:47:29 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:77f46db000855c22057634739d4d71ca37fefa93060ebfd307e5e1ca95001314`  
		Last Modified: Thu, 08 Oct 2026 08:40:00 GMT  
		Size: 78.6 MB (78576628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20fd82bbe96c4da93f26179e624c474aad4eafd3eb6a42e9ee7c11b05fa2701d`  
		Last Modified: Thu, 08 Oct 2026 22:49:50 GMT  
		Size: 138.5 MB (138493046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73fd997c5bd279753105ef69eccd9790f8314532c0d23cc51581923bcaf7d271`  
		Last Modified: Fri, 18 Sep 2026 23:53:53 GMT  
		Size: 1.1 GB (1133574394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb89287a4f44ffa8fadc3800c3dba623d2e00e8840dfc61ec5ea83ea33760ca`  
		Last Modified: Thu, 08 Oct 2026 22:49:47 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10` - unknown; unknown

```console
$ docker pull swift@sha256:81028a9369feaf654b4c1a2a442cedd98983caf037584bf0828bd3280ee5846f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14023460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c491e174e6cf148f09f3daafd85fced43cd0e9d10e976d065a4182236372dbe`

```dockerfile
```

-	Layers:
	-	`sha256:98248395f9e28b03a2cc41e82b310088bdaf57c49182c45e61b476bbc2163fff`  
		Last Modified: Thu, 08 Oct 2026 22:49:48 GMT  
		Size: 14.0 MB (14008820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:512e6bbdfa46e3d2d8b0cc0ba09b1e07d46e0ff0da5a2bf3d90f9dfc7a24c982`  
		Last Modified: Thu, 08 Oct 2026 22:49:47 GMT  
		Size: 14.6 KB (14640 bytes)  
		MIME: application/vnd.in-toto+json
