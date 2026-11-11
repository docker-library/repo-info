## `swift:rhel-ubi9-slim`

```console
$ docker pull swift@sha256:fc5231e330c9c883c2814c496870fb0d450bc30136069c8d04e1057e731eac9d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9-slim` - linux; amd64

```console
$ docker pull swift@sha256:0777fc634931826150b898a854e54e5dc1f49ad27d30e28a2825edc702ab2505
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140282078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b952ec30753f237b6237b41bae3e11a3b32b75430815177cd9b232d26b369fd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 09 Nov 2026 01:07:21 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 01:07:21 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 01:07:21 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 09 Nov 2026 01:07:21 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 01:07:21 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Mon, 09 Nov 2026 01:07:21 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:07:21 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:07:21 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Mon, 09 Nov 2026 01:07:21 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 01:07:21 GMT
LABEL io.openshift.tags="base rhel9"
# Mon, 09 Nov 2026 01:07:22 GMT
ENV container oci
# Mon, 09 Nov 2026 01:07:23 GMT
COPY dir:76fad5dd3fa562529b212d7bcc911de9f28db9ad6b3c42331467750b24236db7 in /      
# Mon, 09 Nov 2026 01:07:24 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 01:07:24 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 01:07:24 GMT
COPY dir:19f0614e22db850d78ebacfac0a138c8c0a8d6ed8383e805e831ce8556304e81 in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 01:07:24 GMT
COPY dir:19f0614e22db850d78ebacfac0a138c8c0a8d6ed8383e805e831ce8556304e81 in /root/buildinfo/      
# Mon, 09 Nov 2026 01:07:25 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T01:06:56Z" "org.opencontainers.image.revision"="e542105bb8ae51af20aab95ac81bf0c1a111e828" "build-date"="2026-11-09T01:06:56Z" "architecture"="x86_64" "vcs-ref"="e542105bb8ae51af20aab95ac81bf0c1a111e828" "vcs-type"="git" "release"="1794186345"org.opencontainers.image.created=2026-11-09T01:06:56Z,org.opencontainers.image.revision=e542105bb8ae51af20aab95ac81bf0c1a111e828
# Tue, 10 Nov 2026 21:51:57 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 10 Nov 2026 21:51:57 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 10 Nov 2026 21:51:57 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 10 Nov 2026 21:51:57 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 10 Nov 2026 21:51:57 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Tue, 10 Nov 2026 21:51:57 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Tue, 10 Nov 2026 21:51:57 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 10 Nov 2026 21:51:57 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 10 Nov 2026 21:51:57 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:6077255e68adcea49ebbbfa130c77a0d3832fc6ec97963618e963168ec1f79a4`  
		Last Modified: Mon, 09 Nov 2026 03:11:18 GMT  
		Size: 80.4 MB (80421348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5a3ddffd84f4c05665c2c67f6be02b5ebd3057c934e909f7e1c6a6dd84ab68c`  
		Last Modified: Tue, 10 Nov 2026 21:52:14 GMT  
		Size: 59.9 MB (59860730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:a4c9e5c00070c9740c1396f6ed1b87ee45563570ce7da32275eb512088a68872
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6401596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2d7018f1938231f4c865183297caa93d3256d045d6497b637bb8da5c4938271`

```dockerfile
```

-	Layers:
	-	`sha256:f0165c0a2e09102916a238851714e9f1cf867af1777714197acc7e85c341716e`  
		Last Modified: Tue, 10 Nov 2026 21:52:11 GMT  
		Size: 6.4 MB (6390128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fc06d06d4a920af1689c581a415cddbf50af52980762ab7e284033b777918e2`  
		Last Modified: Tue, 10 Nov 2026 21:52:10 GMT  
		Size: 11.5 KB (11468 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:ed41457f55bc8ce27bdf30c068e8e182e3d8cb4acc598199746c2a86932b9763
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.3 MB (136278036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e072db04af1de0bc70b82254b93fa6824b98f1d5909e5f0ee79d99eb8e40937`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 09 Nov 2026 01:09:31 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 01:09:31 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 01:09:31 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 09 Nov 2026 01:09:31 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 01:09:31 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Mon, 09 Nov 2026 01:09:31 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:09:31 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:09:31 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Mon, 09 Nov 2026 01:09:31 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 01:09:32 GMT
LABEL io.openshift.tags="base rhel9"
# Mon, 09 Nov 2026 01:09:32 GMT
ENV container oci
# Mon, 09 Nov 2026 01:09:35 GMT
COPY dir:cce502314061d907c53cb3b1cad8d22a9681aa7e79cd269cdfa7a91f4331f37c in /      
# Mon, 09 Nov 2026 01:09:35 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 01:09:35 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 01:09:36 GMT
COPY dir:1e778bc2b589073bc057729a8edb4540b6996691b7509ae7b1eb24fca3ebc877 in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 01:09:36 GMT
COPY dir:1e778bc2b589073bc057729a8edb4540b6996691b7509ae7b1eb24fca3ebc877 in /root/buildinfo/      
# Mon, 09 Nov 2026 01:09:37 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T01:08:59Z" "org.opencontainers.image.revision"="e542105bb8ae51af20aab95ac81bf0c1a111e828" "build-date"="2026-11-09T01:08:59Z" "architecture"="aarch64" "vcs-ref"="e542105bb8ae51af20aab95ac81bf0c1a111e828" "vcs-type"="git" "release"="1794186345"org.opencontainers.image.created=2026-11-09T01:08:59Z,org.opencontainers.image.revision=e542105bb8ae51af20aab95ac81bf0c1a111e828
# Tue, 10 Nov 2026 21:55:07 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 10 Nov 2026 21:55:07 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 10 Nov 2026 21:55:07 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 10 Nov 2026 21:55:07 GMT
ARG SWIFT_PLATFORM=ubi9
# Tue, 10 Nov 2026 21:55:07 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Tue, 10 Nov 2026 21:55:07 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Tue, 10 Nov 2026 21:55:07 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 10 Nov 2026 21:55:07 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 10 Nov 2026 21:55:07 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:00e67207eec2d7450c96782f78af70b38000470d490f8e7900a9b36388dc8ed0`  
		Last Modified: Mon, 09 Nov 2026 03:17:34 GMT  
		Size: 78.2 MB (78193164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9bfa4d74f4430f3ebd643016c80a989f976ad51bbab30082ea46b30f0c35c2c`  
		Last Modified: Tue, 10 Nov 2026 21:55:24 GMT  
		Size: 58.1 MB (58084872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:c1da22862c38cca67e594ab236f0e97268f590250b5a9ff88d3b0feb52bb5b45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6397480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a2ca3bbb3bc290326584c2cfeb190f68f38f944882c69e7517baefbc02e4189`

```dockerfile
```

-	Layers:
	-	`sha256:e9134bc0277ab3b33c00a85d4069a2bc5cd5fd88f5691032ea91e400d465f863`  
		Last Modified: Tue, 10 Nov 2026 21:55:22 GMT  
		Size: 6.4 MB (6385927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:226dda8532c85959178f155cb92d09db7479ef863b828fc7b13a94da86f83ef7`  
		Last Modified: Tue, 10 Nov 2026 21:55:21 GMT  
		Size: 11.6 KB (11553 bytes)  
		MIME: application/vnd.in-toto+json
