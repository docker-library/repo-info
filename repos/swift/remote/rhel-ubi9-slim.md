## `swift:rhel-ubi9-slim`

```console
$ docker pull swift@sha256:ccee41f20790bcfe1668d734824af1ee00f80a019054735e2d9d4d6a2c4a5f3d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9-slim` - linux; amd64

```console
$ docker pull swift@sha256:219ddcc313696bd628d663583ad371aeecac60c26e9479b712fd12850d48541d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140324358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2979f4230b153ef00151aa1d1f965cce3ffa069b2103a78f06c4d748aa5f9e56`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 22 Sep 2026 09:06:34 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 09:06:34 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 09:06:34 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 09:06:34 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 09:06:34 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 09:06:34 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 09:06:34 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 09:06:34 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Tue, 22 Sep 2026 09:06:34 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 09:06:34 GMT
LABEL io.openshift.tags="base rhel9"
# Tue, 22 Sep 2026 09:06:34 GMT
ENV container oci
# Tue, 22 Sep 2026 09:06:35 GMT
COPY dir:a3b5837b26cc0e33c75d80b0a3efe839713de4b4152c59f0938b4f50bd57266b in /      
# Tue, 22 Sep 2026 09:06:36 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 09:06:36 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 09:06:36 GMT
COPY dir:2df47eef1232a080ffcd15078e6caecd7c4733b9af660fe16b32ecc44a2d6cc1 in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 09:06:36 GMT
COPY dir:2df47eef1232a080ffcd15078e6caecd7c4733b9af660fe16b32ecc44a2d6cc1 in /root/buildinfo/      
# Tue, 22 Sep 2026 09:06:36 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T09:06:13Z" "org.opencontainers.image.revision"="eb94d3799bf4dea186e4f799b9033a31d1b4cebc" "build-date"="2026-09-22T09:06:13Z" "architecture"="x86_64" "vcs-ref"="eb94d3799bf4dea186e4f799b9033a31d1b4cebc" "vcs-type"="git" "release"="1790067847"org.opencontainers.image.created=2026-09-22T09:06:13Z,org.opencontainers.image.revision=eb94d3799bf4dea186e4f799b9033a31d1b4cebc
# Tue, 22 Sep 2026 18:52:45 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 22 Sep 2026 18:52:45 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 22 Sep 2026 18:52:45 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 22 Sep 2026 18:52:45 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 22 Sep 2026 18:52:45 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Tue, 22 Sep 2026 18:52:45 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Tue, 22 Sep 2026 18:52:45 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 22 Sep 2026 18:52:45 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 22 Sep 2026 18:52:45 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:3c2656b653d9d2edda649bbf31b531ed53c776c9f1c5b2f3675df25fe2d56d20`  
		Last Modified: Tue, 22 Sep 2026 09:48:06 GMT  
		Size: 80.5 MB (80456264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13761b17df879512bd23f1b23b3735b87779d973fcc8d5470012d204abe2000d`  
		Last Modified: Tue, 22 Sep 2026 18:53:01 GMT  
		Size: 59.9 MB (59868094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:404fde783ffa53473139ef2c8b052e16962faf94b36db38fd62b212c628f79a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6420079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffc598f7847fc4ba476668dbb4565bc4b02e5b60c8be689c78afe9a23e9c5e87`

```dockerfile
```

-	Layers:
	-	`sha256:4b5b95fcb9d1e12edc888d0e348315d740a61d4de5dc4ae1ddae4f2de49a9d42`  
		Last Modified: Tue, 22 Sep 2026 18:52:59 GMT  
		Size: 6.4 MB (6408611 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97d0f0c97d625c6d36e2db79ba85b74b2bee1dda5991d59a36b1ab5cfe2e7a7e`  
		Last Modified: Tue, 22 Sep 2026 18:52:59 GMT  
		Size: 11.5 KB (11468 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:3e590556e487882476752a476c267d170ce11c7fe13b281e01eb10043aae8df0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.2 MB (136249928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:892d42e5df28068492574bd4a864938f42eea7f85a7cc02373e43a85c470d663`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 22 Sep 2026 09:09:23 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 09:09:23 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 09:09:23 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 09:09:23 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 09:09:23 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 09:09:23 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 09:09:23 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 09:09:23 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Tue, 22 Sep 2026 09:09:23 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 09:09:23 GMT
LABEL io.openshift.tags="base rhel9"
# Tue, 22 Sep 2026 09:09:23 GMT
ENV container oci
# Tue, 22 Sep 2026 09:09:26 GMT
COPY dir:95728af08d4b60637b6a37ed159bd3bb0d853f5450015f266c4371d4a2415418 in /      
# Tue, 22 Sep 2026 09:09:26 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 09:09:26 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 09:09:26 GMT
COPY dir:e3d8929116038722052f48869246659df261ec841097294771b9ef69adf8dab3 in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 09:09:26 GMT
COPY dir:e3d8929116038722052f48869246659df261ec841097294771b9ef69adf8dab3 in /root/buildinfo/      
# Tue, 22 Sep 2026 09:09:27 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T09:08:55Z" "org.opencontainers.image.revision"="eb94d3799bf4dea186e4f799b9033a31d1b4cebc" "build-date"="2026-09-22T09:08:55Z" "architecture"="aarch64" "vcs-ref"="eb94d3799bf4dea186e4f799b9033a31d1b4cebc" "vcs-type"="git" "release"="1790067847"org.opencontainers.image.created=2026-09-22T09:08:55Z,org.opencontainers.image.revision=eb94d3799bf4dea186e4f799b9033a31d1b4cebc
# Tue, 22 Sep 2026 18:53:09 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 22 Sep 2026 18:53:09 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 22 Sep 2026 18:53:09 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 22 Sep 2026 18:53:09 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 22 Sep 2026 18:53:09 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Tue, 22 Sep 2026 18:53:09 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Tue, 22 Sep 2026 18:53:09 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 22 Sep 2026 18:53:09 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 22 Sep 2026 18:53:09 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:625fdf70b44e913d2a18e65ce42a9321d1e587e80307003f4f646061eab80ffe`  
		Last Modified: Tue, 22 Sep 2026 10:00:24 GMT  
		Size: 78.2 MB (78184341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02571037d5befa3d0a75cb000379a5b2908e55343c5e2369d9e6b5635b2275a1`  
		Last Modified: Tue, 22 Sep 2026 18:53:26 GMT  
		Size: 58.1 MB (58065587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:3f969aaa3ac755774ac91326a3f6d0f6fd6c9786bf316c7264d5b177656f8c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6415964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2713085634f36a48b9414f3245c654d3ba0a81ef88f0d06bf86bc5bb2f61c9de`

```dockerfile
```

-	Layers:
	-	`sha256:50f8d125479bb443d5683ed96ac5e88c5a6e73adbfe1777687297875618c81dd`  
		Last Modified: Tue, 22 Sep 2026 18:53:24 GMT  
		Size: 6.4 MB (6404410 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b2378da2de64c55c8f9f0adfaaaa8b43da31c050d620c3d12b08a99273b2e84`  
		Last Modified: Tue, 22 Sep 2026 18:53:23 GMT  
		Size: 11.6 KB (11554 bytes)  
		MIME: application/vnd.in-toto+json
