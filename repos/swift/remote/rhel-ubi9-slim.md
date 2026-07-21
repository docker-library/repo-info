## `swift:rhel-ubi9-slim`

```console
$ docker pull swift@sha256:97d41c5457c9bc0a685ac4b1c5f15f11d73d5cf6b191a92af38b9b653561f4c8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9-slim` - linux; amd64

```console
$ docker pull swift@sha256:289aef23cd9665c0356adc5d79f94bc126a7f3b3b64250b915c9ab943000d657
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.8 MB (138802289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bab017d5f11fac3f9bb91601d83faa85ea13930432301bd1f3c08f40b395cb6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Jul 2026 09:24:21 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 09:24:21 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 09:24:21 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 21 Jul 2026 09:24:21 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 09:24:21 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Tue, 21 Jul 2026 09:24:21 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 09:24:21 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 09:24:21 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Tue, 21 Jul 2026 09:24:21 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 09:24:21 GMT
LABEL io.openshift.tags="base rhel9"
# Tue, 21 Jul 2026 09:24:21 GMT
ENV container oci
# Tue, 21 Jul 2026 09:24:22 GMT
COPY dir:0e0ba7aef09c7da2c56a9b962f997ae845dc0f0da9fb1d7b1c4923cbc81a4c13 in /      
# Tue, 21 Jul 2026 09:24:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 09:24:22 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 09:24:23 GMT
COPY dir:11cc17d5d14c72bee4715a88171cd0a44aedc4f8a1d876d92ad6ce9f43f8ffe0 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 09:24:23 GMT
COPY dir:11cc17d5d14c72bee4715a88171cd0a44aedc4f8a1d876d92ad6ce9f43f8ffe0 in /root/buildinfo/      
# Tue, 21 Jul 2026 09:24:23 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T09:24:00Z" "org.opencontainers.image.revision"="e3160102d08efa0f4df95caeaeca1779bd1d9461" "build-date"="2026-07-21T09:24:00Z" "architecture"="x86_64" "vcs-ref"="e3160102d08efa0f4df95caeaeca1779bd1d9461" "vcs-type"="git" "release"="1784625744"org.opencontainers.image.created=2026-07-21T09:24:00Z,org.opencontainers.image.revision=e3160102d08efa0f4df95caeaeca1779bd1d9461
# Tue, 21 Jul 2026 17:10:17 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 21 Jul 2026 17:10:17 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 21 Jul 2026 17:10:17 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 21 Jul 2026 17:10:17 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 21 Jul 2026 17:10:17 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Tue, 21 Jul 2026 17:10:17 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Tue, 21 Jul 2026 17:10:17 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 21 Jul 2026 17:10:17 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 21 Jul 2026 17:10:17 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:e98eb95596e6dabe30e92bee550dad901996204374b8a53539fc112d0a0b02a5`  
		Last Modified: Tue, 21 Jul 2026 10:17:40 GMT  
		Size: 80.6 MB (80567721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeccc1db8fc83de9e7193834d6e9a73a0ccb8e3e7d3173e1f8fd9b7ee583c12d`  
		Last Modified: Tue, 21 Jul 2026 17:10:33 GMT  
		Size: 58.2 MB (58234568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:d395d585d0c66929e833abf7aae5948a28213016d157feb539330dc496debafe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6419377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59636465b176561790311893c9fe899a83045fa0bd4811e44719ed7240375718`

```dockerfile
```

-	Layers:
	-	`sha256:ad3873c33d2f84ccd003e526a06c133610fab3bcc99b452498edf008680f022f`  
		Last Modified: Tue, 21 Jul 2026 17:10:31 GMT  
		Size: 6.4 MB (6407909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f152db7626c65b5fafcd400884ae25d1048a59145e7ea81ff4d9ff50c5e9ef2`  
		Last Modified: Tue, 21 Jul 2026 17:10:30 GMT  
		Size: 11.5 KB (11468 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:346b44d6419664a5060617cda4acdd61c7b7f3b51cce0ee28ba254c0c67e9e7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.7 MB (134687053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0faa2a93bf8dbf062b9cfcf3df9907830c23e73f5efe7d042a5af868935b4489`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Jul 2026 09:26:55 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 09:26:55 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 09:26:55 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 21 Jul 2026 09:26:55 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 09:26:55 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Tue, 21 Jul 2026 09:26:55 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 09:26:55 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 09:26:55 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Tue, 21 Jul 2026 09:26:55 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 09:26:55 GMT
LABEL io.openshift.tags="base rhel9"
# Tue, 21 Jul 2026 09:26:55 GMT
ENV container oci
# Tue, 21 Jul 2026 09:26:58 GMT
COPY dir:48cb7f9cb87f516c8adf3fd842e554f1c36a3d40ec1a6a1c69ba623834f59f75 in /      
# Tue, 21 Jul 2026 09:26:58 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 09:26:58 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 09:26:58 GMT
COPY dir:695c7e6f2d8b8b20a19b0e798af68110244589b78cd4aa4b60942218fa3e314d in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 09:26:58 GMT
COPY dir:695c7e6f2d8b8b20a19b0e798af68110244589b78cd4aa4b60942218fa3e314d in /root/buildinfo/      
# Tue, 21 Jul 2026 09:26:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T09:26:30Z" "org.opencontainers.image.revision"="e3160102d08efa0f4df95caeaeca1779bd1d9461" "build-date"="2026-07-21T09:26:30Z" "architecture"="aarch64" "vcs-ref"="e3160102d08efa0f4df95caeaeca1779bd1d9461" "vcs-type"="git" "release"="1784625744"org.opencontainers.image.created=2026-07-21T09:26:30Z,org.opencontainers.image.revision=e3160102d08efa0f4df95caeaeca1779bd1d9461
# Tue, 21 Jul 2026 17:06:20 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 21 Jul 2026 17:06:20 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 21 Jul 2026 17:06:20 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 21 Jul 2026 17:06:20 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 21 Jul 2026 17:06:20 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Tue, 21 Jul 2026 17:06:20 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Tue, 21 Jul 2026 17:06:20 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 21 Jul 2026 17:06:20 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 21 Jul 2026 17:06:20 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:27fd889f395f23bcdedd79d17bd2566cd1de69f8c5308db330f26e19cc315bfc`  
		Last Modified: Tue, 21 Jul 2026 10:16:05 GMT  
		Size: 78.2 MB (78159311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eba08a02d8784e4e8478e26c1a045bb60cf9448abc63feaa20ecfe756717b79`  
		Last Modified: Tue, 21 Jul 2026 17:06:36 GMT  
		Size: 56.5 MB (56527742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:24f369f58c713644af1ec0e9bcfc27e7939ece0b6000bc6fd5515e549de63cb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6415262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:833a32bec7da275848507029b2fdb5ab059a0263b19cb8f950efa267de39177b`

```dockerfile
```

-	Layers:
	-	`sha256:62f9399acb66fe69645262658fcdebeaf33d41d0d1374ab625d955150184a5f5`  
		Last Modified: Tue, 21 Jul 2026 17:06:36 GMT  
		Size: 6.4 MB (6403708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:750e97586464fd2316d903990ca740107c6cd18e49c11bbcc2a9002ac894a6fe`  
		Last Modified: Tue, 21 Jul 2026 17:06:35 GMT  
		Size: 11.6 KB (11554 bytes)  
		MIME: application/vnd.in-toto+json
