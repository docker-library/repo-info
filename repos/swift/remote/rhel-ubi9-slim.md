## `swift:rhel-ubi9-slim`

```console
$ docker pull swift@sha256:a08cfa446af5763bb00b93c6363462f11410cbab274b2819f956faabf9a3aa09
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi9-slim` - linux; amd64

```console
$ docker pull swift@sha256:c981488259ad8bb3e0aa9480eb6cd8cb1505c9e97cb6467dcc38578be51c909e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138930174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a88a731009d2ce36342f736485a6e0d12eccca90c39648cfce1fc9d45b4f183`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 01 Sep 2026 06:46:05 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Tue, 01 Sep 2026 06:46:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 01 Sep 2026 06:46:05 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 01 Sep 2026 06:46:05 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 01 Sep 2026 06:46:05 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Tue, 01 Sep 2026 06:46:05 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 01 Sep 2026 06:46:05 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 01 Sep 2026 06:46:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Tue, 01 Sep 2026 06:46:05 GMT
LABEL io.openshift.expose-services=""
# Tue, 01 Sep 2026 06:46:05 GMT
LABEL io.openshift.tags="base rhel9"
# Tue, 01 Sep 2026 06:46:05 GMT
ENV container oci
# Tue, 01 Sep 2026 06:46:07 GMT
COPY dir:dcd8adb14ab0b626ff5731dfede47e124eeb5273ca37b4e753bdaf71f708442c in /      
# Tue, 01 Sep 2026 06:46:07 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 01 Sep 2026 06:46:07 GMT
CMD ["/bin/bash"]
# Tue, 01 Sep 2026 06:46:07 GMT
COPY dir:7f466420cfd6ca2b38b00f077e8fe6ec473b08dd1e9d964dde7271600c4679db in /usr/share/buildinfo/      
# Tue, 01 Sep 2026 06:46:07 GMT
COPY dir:7f466420cfd6ca2b38b00f077e8fe6ec473b08dd1e9d964dde7271600c4679db in /root/buildinfo/      
# Tue, 01 Sep 2026 06:46:08 GMT
LABEL "org.opencontainers.image.created"="2026-09-01T06:45:46Z" "org.opencontainers.image.revision"="b353a7c5167fc9b52dde0d7483a39f41ea885fef" "build-date"="2026-09-01T06:45:46Z" "architecture"="x86_64" "vcs-ref"="b353a7c5167fc9b52dde0d7483a39f41ea885fef" "vcs-type"="git" "release"="1788245065"org.opencontainers.image.created=2026-09-01T06:45:46Z,org.opencontainers.image.revision=b353a7c5167fc9b52dde0d7483a39f41ea885fef
# Thu, 03 Sep 2026 23:15:43 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Thu, 03 Sep 2026 23:15:43 GMT
LABEL description=Docker Container for the Swift programming language
# Thu, 03 Sep 2026 23:15:43 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Thu, 03 Sep 2026 23:15:43 GMT
ARG SWIFT_PLATFORM=ubi9
# Thu, 03 Sep 2026 23:15:43 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Thu, 03 Sep 2026 23:15:43 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Thu, 03 Sep 2026 23:15:43 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Thu, 03 Sep 2026 23:15:43 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Thu, 03 Sep 2026 23:15:43 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:535c9115bc652471a345fed2b23bfcbd903430c8a9536d1799d18b6c62b5f5d5`  
		Last Modified: Tue, 01 Sep 2026 08:17:37 GMT  
		Size: 80.5 MB (80508727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b02d24fc7d54bec8cd6843b740ca96553a7558b7f0e8d1f5229b8744c831e5ed`  
		Last Modified: Thu, 03 Sep 2026 23:16:00 GMT  
		Size: 58.4 MB (58421447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:7c026cee306f42b6c3c07818e0ae6cb4c25dbdfcbff9cc51999cb3740d8ae939
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6420060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7a58092a5cbb1a38209a95527a31651f3cb0062e5b974e69b14c3f909071c84`

```dockerfile
```

-	Layers:
	-	`sha256:eb57e17d8bf39fa3e4dba71376f87b4420801b878742eda7e556fa0f0500bb94`  
		Last Modified: Thu, 03 Sep 2026 23:15:58 GMT  
		Size: 6.4 MB (6408593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:949d8f19604b4c0851d72d124817108e3b7c5ffc812370f031d373c31034abaf`  
		Last Modified: Thu, 03 Sep 2026 23:15:58 GMT  
		Size: 11.5 KB (11467 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi9-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:caec82b3debd8ec1edb2f5994b87d7a750f0cb428f1e275d14fc1abf419745b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 MB (134840758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25457ab33421d4b547e0607c25dc302d689afea7dd2e61e52056a3d46aeddf2f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 01 Sep 2026 06:47:50 GMT
LABEL maintainer="Red Hat, Inc."       vendor="Red Hat, Inc."
# Tue, 01 Sep 2026 06:47:50 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 01 Sep 2026 06:47:50 GMT
LABEL com.redhat.component="ubi9-container"       name="ubi9/ubi"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 01 Sep 2026 06:47:50 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 01 Sep 2026 06:47:50 GMT
LABEL summary="Provides the latest release of Red Hat Universal Base Image 9."
# Tue, 01 Sep 2026 06:47:50 GMT
LABEL description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 01 Sep 2026 06:47:50 GMT
LABEL io.k8s.description="The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 01 Sep 2026 06:47:50 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9"
# Tue, 01 Sep 2026 06:47:50 GMT
LABEL io.openshift.expose-services=""
# Tue, 01 Sep 2026 06:47:50 GMT
LABEL io.openshift.tags="base rhel9"
# Tue, 01 Sep 2026 06:47:50 GMT
ENV container oci
# Tue, 01 Sep 2026 06:47:53 GMT
COPY dir:9d64a2750053beed0aafd178feaa053ee1910212423cc6de44732c0af27cc8df in /      
# Tue, 01 Sep 2026 06:47:53 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 01 Sep 2026 06:47:53 GMT
CMD ["/bin/bash"]
# Tue, 01 Sep 2026 06:47:53 GMT
COPY dir:6e06b444a7bfbd1d81f98d8c2d87e4dfaf7c7782d604afe953717d5075367c25 in /usr/share/buildinfo/      
# Tue, 01 Sep 2026 06:47:53 GMT
COPY dir:6e06b444a7bfbd1d81f98d8c2d87e4dfaf7c7782d604afe953717d5075367c25 in /root/buildinfo/      
# Tue, 01 Sep 2026 06:47:54 GMT
LABEL "org.opencontainers.image.created"="2026-09-01T06:47:26Z" "org.opencontainers.image.revision"="b353a7c5167fc9b52dde0d7483a39f41ea885fef" "build-date"="2026-09-01T06:47:26Z" "architecture"="aarch64" "vcs-ref"="b353a7c5167fc9b52dde0d7483a39f41ea885fef" "vcs-type"="git" "release"="1788245065"org.opencontainers.image.created=2026-09-01T06:47:26Z,org.opencontainers.image.revision=b353a7c5167fc9b52dde0d7483a39f41ea885fef
# Thu, 03 Sep 2026 23:15:35 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Thu, 03 Sep 2026 23:15:35 GMT
LABEL description=Docker Container for the Swift programming language
# Thu, 03 Sep 2026 23:15:35 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Thu, 03 Sep 2026 23:15:35 GMT
ARG SWIFT_PLATFORM=ubi9
# Thu, 03 Sep 2026 23:15:35 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Thu, 03 Sep 2026 23:15:35 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Thu, 03 Sep 2026 23:15:35 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Thu, 03 Sep 2026 23:15:35 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Thu, 03 Sep 2026 23:15:35 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi9 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:51673f5e488685d622dc82ecebbb0674784935f30cb31004db0c8acf6fb73e28`  
		Last Modified: Tue, 01 Sep 2026 08:18:08 GMT  
		Size: 78.2 MB (78213326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa46e20925ae67b9bb555082097cb24d2afecda71128463b95d63b5a4383c6bf`  
		Last Modified: Thu, 03 Sep 2026 23:15:52 GMT  
		Size: 56.6 MB (56627432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi9-slim` - unknown; unknown

```console
$ docker pull swift@sha256:8beb3d5117a68fd4a1c29343590678a10c42b4d16c2ce4690b14ca162a3eb682
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6415946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e018156dfe221a39f344e02ba2ab1e022692378da4364b6c0693450cde9f90f3`

```dockerfile
```

-	Layers:
	-	`sha256:e167831dc3c7e60e50cdca3e5d60380c3126eb1eee68692b5c9fe01b0dc77c6b`  
		Last Modified: Thu, 03 Sep 2026 23:15:50 GMT  
		Size: 6.4 MB (6404392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e14116eb63d1d9dd21387c7e938b39dcd7eb63f15c44a5fbaa0483be80442b70`  
		Last Modified: Thu, 03 Sep 2026 23:15:50 GMT  
		Size: 11.6 KB (11554 bytes)  
		MIME: application/vnd.in-toto+json
