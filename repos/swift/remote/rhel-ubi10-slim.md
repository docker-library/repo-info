## `swift:rhel-ubi10-slim`

```console
$ docker pull swift@sha256:b0f814f8abf2932b9150f5e7a0dcd6c9d25ea9cc745914c5c278320e6cd3198a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi10-slim` - linux; amd64

```console
$ docker pull swift@sha256:a7ba6a51b4221f1d9ab5b50fe981016e1a65ef1aacd09fcc128b98fa3a30697d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.0 MB (143983018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50de4e88e3fb489d983bbf13ef4690f4b06a51555c9468c4a940cf6226a78f78`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 03 Nov 2026 09:23:51 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."       url="https://catalog.redhat.com/en/search?searchType=containers"       com.redhat.component="ubi10-container"       name="ubi10/ubi"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       version="10.2"       distribution-scope="public"
# Tue, 03 Nov 2026 09:23:51 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 03 Nov 2026 09:23:51 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 10."
# Tue, 03 Nov 2026 09:23:51 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 03 Nov 2026 09:23:51 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 03 Nov 2026 09:23:51 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10"
# Tue, 03 Nov 2026 09:23:51 GMT
LABEL io.openshift.expose-services=""
# Tue, 03 Nov 2026 09:23:51 GMT
LABEL io.openshift.tags="base rhel10"
# Tue, 03 Nov 2026 09:23:51 GMT
ENV container oci
# Tue, 03 Nov 2026 09:23:53 GMT
COPY dir:26ade060b4713512d07093bca383bc99c1c05d78c44a452f634bc41d59a68d2c in /      
# Tue, 03 Nov 2026 09:23:53 GMT
COPY file:7434e7ac38eae122961f7433f94f69681ae6b7673c89bc0a33c8831ed9c5dbfc in /etc/yum.repos.d/.      
# Tue, 03 Nov 2026 09:23:53 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 09:23:54 GMT
COPY dir:dd8b73c46afc812eb8a567b118e49d9e7210f28b14f2ca47903173b4d301edb0 in /usr/share/buildinfo/      
# Tue, 03 Nov 2026 09:23:54 GMT
COPY dir:dd8b73c46afc812eb8a567b118e49d9e7210f28b14f2ca47903173b4d301edb0 in /root/buildinfo/      
# Tue, 03 Nov 2026 09:23:55 GMT
LABEL "org.opencontainers.image.created"="2026-11-03T09:23:24Z" "org.opencontainers.image.revision"="e89a64cd5627b2bf209ce66d6d1c279a6f1b7885" "build-date"="2026-11-03T09:23:24Z" "architecture"="x86_64" "vcs-ref"="e89a64cd5627b2bf209ce66d6d1c279a6f1b7885" "vcs-type"="git" "release"="1793697573"org.opencontainers.image.created=2026-11-03T09:23:24Z,org.opencontainers.image.revision=e89a64cd5627b2bf209ce66d6d1c279a6f1b7885
# Tue, 03 Nov 2026 22:24:14 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 03 Nov 2026 22:24:14 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 03 Nov 2026 22:24:14 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 03 Nov 2026 22:24:14 GMT
ARG SWIFT_PLATFORM=ubi10
# Tue, 03 Nov 2026 22:24:14 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Tue, 03 Nov 2026 22:24:14 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Tue, 03 Nov 2026 22:24:14 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 03 Nov 2026 22:24:14 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 03 Nov 2026 22:24:14 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && yum -y install gnupg2     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:ca90096e6ee8acde10e19dac5f812859a22cd6ec38843137a809880ac0a556cb`  
		Last Modified: Tue, 03 Nov 2026 10:23:28 GMT  
		Size: 81.0 MB (81026143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75c3e37e0ceb82da509726c4d8565c90664c657fbba03a0ca6dbbae8f1e8bd7e`  
		Last Modified: Tue, 03 Nov 2026 22:24:30 GMT  
		Size: 63.0 MB (62956875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10-slim` - unknown; unknown

```console
$ docker pull swift@sha256:468a31499dbb6c690708267fb41039fdb7201bb75c531d91825b906a9fdcfb33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5949205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3cec0e257a4584cb3cdabaf9b03fd7e8aacf1fd8cd3f712c1a0528e07d092f1`

```dockerfile
```

-	Layers:
	-	`sha256:3eb4cc3adc2740029c6fca7d9c7a30496725763eedfb770fddeec24c61052e16`  
		Last Modified: Tue, 03 Nov 2026 22:24:28 GMT  
		Size: 5.9 MB (5937501 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c82ffe0fc02f86930ad51048e7112d571add9e15bff8d4f04036adbbf8525d2`  
		Last Modified: Tue, 03 Nov 2026 22:24:28 GMT  
		Size: 11.7 KB (11704 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi10-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:c2de9ebd247ef1021ffd7f87881b87f3043427e23322cd6c32c358b46993d421
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.6 MB (140596975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfaaf1dcefdaf3f486a9a1a7cf7a676d7a3f92507e1ade78f549a9bac44ef6ad`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 03 Nov 2026 09:26:13 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."       url="https://catalog.redhat.com/en/search?searchType=containers"       com.redhat.component="ubi10-container"       name="ubi10/ubi"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       version="10.2"       distribution-scope="public"
# Tue, 03 Nov 2026 09:26:13 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 03 Nov 2026 09:26:13 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 10."
# Tue, 03 Nov 2026 09:26:13 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 03 Nov 2026 09:26:13 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 03 Nov 2026 09:26:13 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10"
# Tue, 03 Nov 2026 09:26:13 GMT
LABEL io.openshift.expose-services=""
# Tue, 03 Nov 2026 09:26:13 GMT
LABEL io.openshift.tags="base rhel10"
# Tue, 03 Nov 2026 09:26:13 GMT
ENV container oci
# Tue, 03 Nov 2026 09:26:16 GMT
COPY dir:29d3ffd32b8bc02ec07bdb7a88107cf8871ddc499b4ec2f1fd7275808e759e0b in /      
# Tue, 03 Nov 2026 09:26:17 GMT
COPY file:7434e7ac38eae122961f7433f94f69681ae6b7673c89bc0a33c8831ed9c5dbfc in /etc/yum.repos.d/.      
# Tue, 03 Nov 2026 09:26:17 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 09:26:17 GMT
COPY dir:bfde4e102b0f87a2dfac1334ac9a6ed727b26862ba8d93dd3452de181e7f3aa8 in /usr/share/buildinfo/      
# Tue, 03 Nov 2026 09:26:17 GMT
COPY dir:bfde4e102b0f87a2dfac1334ac9a6ed727b26862ba8d93dd3452de181e7f3aa8 in /root/buildinfo/      
# Tue, 03 Nov 2026 09:26:18 GMT
LABEL "org.opencontainers.image.created"="2026-11-03T09:25:42Z" "org.opencontainers.image.revision"="e89a64cd5627b2bf209ce66d6d1c279a6f1b7885" "build-date"="2026-11-03T09:25:42Z" "architecture"="aarch64" "vcs-ref"="e89a64cd5627b2bf209ce66d6d1c279a6f1b7885" "vcs-type"="git" "release"="1793697573"org.opencontainers.image.created=2026-11-03T09:25:42Z,org.opencontainers.image.revision=e89a64cd5627b2bf209ce66d6d1c279a6f1b7885
# Tue, 03 Nov 2026 22:24:22 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 03 Nov 2026 22:24:22 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 03 Nov 2026 22:24:22 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 03 Nov 2026 22:24:22 GMT
ARG SWIFT_PLATFORM=ubi10
# Tue, 03 Nov 2026 22:24:22 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Tue, 03 Nov 2026 22:24:22 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Tue, 03 Nov 2026 22:24:22 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 03 Nov 2026 22:24:22 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 03 Nov 2026 22:24:22 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && yum -y install gnupg2     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:2ef80e29526a14eac547021a9fe07ed8e5e32de3c1696fae25fc5480df802ae7`  
		Last Modified: Tue, 03 Nov 2026 10:23:28 GMT  
		Size: 78.6 MB (78560741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aae8c4758860e2e139084764840eac651ad61f8207ef8e3de9ea74ba7bf6a106`  
		Last Modified: Tue, 03 Nov 2026 22:24:41 GMT  
		Size: 62.0 MB (62036234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10-slim` - unknown; unknown

```console
$ docker pull swift@sha256:5008fa821c444d8d518c7857e4d07e8492971da2d5a57bca68ea0dcfaab02584
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5945693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06540c0928e2982560434cde862f7418de83da8fc4267ae1c9d761d1623f7edd`

```dockerfile
```

-	Layers:
	-	`sha256:295a70e57f1879986339dd0ca13c38e3ae1540bfc8b6f5c5392c0b3fa81d4a44`  
		Last Modified: Tue, 03 Nov 2026 22:24:38 GMT  
		Size: 5.9 MB (5933903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ebcb7578b9138755c2eed90cce9323a01b5b930451069f25f8866916b406520`  
		Last Modified: Tue, 03 Nov 2026 22:24:38 GMT  
		Size: 11.8 KB (11790 bytes)  
		MIME: application/vnd.in-toto+json
