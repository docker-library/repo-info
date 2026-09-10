## `swift:rhel-ubi9-slim`

```console
$ docker pull swift@sha256:cd701ba01b41290cd40328ed973f3acc2de8982942123719948c5bb6a791555c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9-slim` - linux; amd64

```console
$ docker pull swift@sha256:269d8dfc07fa11a62cb99cbe808148f6b18e8de12cb0056771bdf33a56182152
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138883662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b29a184585b3854ed45158eeaa437ff1e3b3757de6336180f08b1f16cd87ad1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 09 Sep 2026 07:33:20 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 07:33:20 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 07:33:20 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 09 Sep 2026 07:33:20 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 07:33:20 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Wed, 09 Sep 2026 07:33:20 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:33:20 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:33:20 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Wed, 09 Sep 2026 07:33:20 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 07:33:20 GMT
LABEL io.openshift.tags="base rhel9"
# Wed, 09 Sep 2026 07:33:20 GMT
ENV container oci
# Wed, 09 Sep 2026 07:33:22 GMT
COPY dir:4f56d031b0a5af19d0b469cc805932f827970486dc3abcb2d17130d7907938b3 in /      
# Wed, 09 Sep 2026 07:33:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 07:33:22 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 07:33:22 GMT
COPY dir:a426024fbd6d4a973f248b10c1264d511dc2be99fd57e753fcfb595844339081 in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 07:33:22 GMT
COPY dir:a426024fbd6d4a973f248b10c1264d511dc2be99fd57e753fcfb595844339081 in /root/buildinfo/      
# Wed, 09 Sep 2026 07:33:23 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T07:32:57Z" "org.opencontainers.image.revision"="843fd747812760f27f802aede252fdd84ab4605c" "build-date"="2026-09-09T07:32:57Z" "architecture"="x86_64" "vcs-ref"="843fd747812760f27f802aede252fdd84ab4605c" "vcs-type"="git" "release"="1788939089"org.opencontainers.image.created=2026-09-09T07:32:57Z,org.opencontainers.image.revision=843fd747812760f27f802aede252fdd84ab4605c
# Wed, 09 Sep 2026 22:43:24 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 09 Sep 2026 22:43:24 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 09 Sep 2026 22:43:24 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 09 Sep 2026 22:43:24 GMT
ARG SWIFT_PLATFORM=ubi9
# Wed, 09 Sep 2026 22:43:24 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Wed, 09 Sep 2026 22:43:24 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Wed, 09 Sep 2026 22:43:24 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 09 Sep 2026 22:43:24 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 09 Sep 2026 22:43:24 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:cc6c54df811b0867866d695d6ce1e04fa5e1309584057d4101d43395a4551ff3`  
		Last Modified: Wed, 09 Sep 2026 08:30:45 GMT  
		Size: 80.5 MB (80470556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f835d1f5f83daa8b591fce336fc871b08adf70c077271de4c0f11e0d8d9d03`  
		Last Modified: Wed, 09 Sep 2026 22:43:41 GMT  
		Size: 58.4 MB (58413106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:df836f2ce212c5e8c84b8ebf90c0b3bdfbb8b807aa825cccbd1d1f5ef0d60b2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6420071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fc6058696266a63f8d0c99c0ca589a89cd0e425bd304b1224849dc31ebd076b`

```dockerfile
```

-	Layers:
	-	`sha256:3542231ad457af1b49fe6dc265bfad042d5cf54f7c6a63bd37f31bfea2928a58`  
		Last Modified: Wed, 09 Sep 2026 22:43:39 GMT  
		Size: 6.4 MB (6408603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6dfa82ac191ea38aa6b38737d178f82c1c810cd34bd1ed9ecb2712d31ddb29cc`  
		Last Modified: Wed, 09 Sep 2026 22:43:39 GMT  
		Size: 11.5 KB (11468 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:a4e57b7fe799c023dc1e5166d3847fe96ff6825310908a4003e5143a76be8261
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 MB (134844087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4814d7e7f61e1ccf7a261f0d3081fcf41d36f0ae0b41c7c0f90d258b0e15aa07`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 09 Sep 2026 07:36:11 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 07:36:11 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 07:36:11 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 09 Sep 2026 07:36:11 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 07:36:11 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Wed, 09 Sep 2026 07:36:11 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:36:11 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:36:11 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Wed, 09 Sep 2026 07:36:11 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 07:36:11 GMT
LABEL io.openshift.tags="base rhel9"
# Wed, 09 Sep 2026 07:36:11 GMT
ENV container oci
# Wed, 09 Sep 2026 07:36:14 GMT
COPY dir:fe17554aa2f52510ed4c823962a692ba84cfc9b9d521b662affadfb08d605b80 in /      
# Wed, 09 Sep 2026 07:36:14 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 07:36:14 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 07:36:15 GMT
COPY dir:fa6ddb81e929d4e76bb4266413ca776f422ff6f89125fa9444fe47f0efe365c6 in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 07:36:15 GMT
COPY dir:fa6ddb81e929d4e76bb4266413ca776f422ff6f89125fa9444fe47f0efe365c6 in /root/buildinfo/      
# Wed, 09 Sep 2026 07:36:15 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T07:35:47Z" "org.opencontainers.image.revision"="843fd747812760f27f802aede252fdd84ab4605c" "build-date"="2026-09-09T07:35:47Z" "architecture"="aarch64" "vcs-ref"="843fd747812760f27f802aede252fdd84ab4605c" "vcs-type"="git" "release"="1788939089"org.opencontainers.image.created=2026-09-09T07:35:47Z,org.opencontainers.image.revision=843fd747812760f27f802aede252fdd84ab4605c
# Wed, 09 Sep 2026 22:41:27 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 09 Sep 2026 22:41:27 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 09 Sep 2026 22:41:27 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 09 Sep 2026 22:41:27 GMT
ARG SWIFT_PLATFORM=ubi9
# Wed, 09 Sep 2026 22:41:27 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Wed, 09 Sep 2026 22:41:27 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Wed, 09 Sep 2026 22:41:27 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 09 Sep 2026 22:41:27 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 09 Sep 2026 22:41:27 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:1d528cef78efeed291a9f71bfa137acec48792c73f11f9ed8be0dedcc7fe6b70`  
		Last Modified: Wed, 09 Sep 2026 08:30:38 GMT  
		Size: 78.2 MB (78217966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f4bd13c1902b19edbb7e2a5535902e6973280d0929b797b156b2ed178c66266`  
		Last Modified: Wed, 09 Sep 2026 22:41:43 GMT  
		Size: 56.6 MB (56626121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:ecd4150829d16f2d0a278cf690080da2d753ab2345ef7bd9636d73eedb681939
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6415955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:182e60e6175a32813a4974f64e3e4108b6df7717246fee2f6ae386d2fb773598`

```dockerfile
```

-	Layers:
	-	`sha256:4f71139ec81d338b3fbfdee2fe1b0836f4e153e01e1091553e8a67f28960302a`  
		Last Modified: Wed, 09 Sep 2026 22:41:41 GMT  
		Size: 6.4 MB (6404402 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfe6558a653fbada4b1bae2a97e64995078e21ad93b136f3f6b227f371735b55`  
		Last Modified: Wed, 09 Sep 2026 22:41:41 GMT  
		Size: 11.6 KB (11553 bytes)  
		MIME: application/vnd.in-toto+json
