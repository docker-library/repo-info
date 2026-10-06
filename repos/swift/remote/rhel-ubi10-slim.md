## `swift:rhel-ubi10-slim`

```console
$ docker pull swift@sha256:e2d750799dcbef6f47375c62e17b9d77144cfb0e1152cf96ad0f51667a599025
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi10-slim` - linux; amd64

```console
$ docker pull swift@sha256:be10b12cbbccb7bf37828eaf8dfcd0335403ffacf9aa34d97366c8002911abac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.0 MB (143963180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6722e9e2eebe6f5cd969ec60d74751ab2de0258482991966ed61f66ff03e755`
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
# Mon, 05 Oct 2026 21:37:00 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Mon, 05 Oct 2026 21:37:00 GMT
LABEL description=Docker Container for the Swift programming language
# Mon, 05 Oct 2026 21:37:00 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Mon, 05 Oct 2026 21:37:00 GMT
ARG SWIFT_PLATFORM=ubi10
# Mon, 05 Oct 2026 21:37:00 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Mon, 05 Oct 2026 21:37:00 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Mon, 05 Oct 2026 21:37:00 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Mon, 05 Oct 2026 21:37:00 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Mon, 05 Oct 2026 21:37:00 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && yum -y install gnupg2     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:694102a938a2c92f6709e62111fc9a5517307ea01fb81067c1e9c87821204726`  
		Last Modified: Thu, 01 Oct 2026 08:46:42 GMT  
		Size: 81.0 MB (81031446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20a1dbd120d250cff252140596b0a17c930da66d4b75abf62bec80cd60641136`  
		Last Modified: Mon, 05 Oct 2026 21:37:17 GMT  
		Size: 62.9 MB (62931734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10-slim` - unknown; unknown

```console
$ docker pull swift@sha256:1f83141094bf4564631c7d9c749014cfdc721bb74f235a58e6bc1035d1961c2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5967666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee07db087597951a28b0a49d55afbcd4edd7d3e9525b9cf8fd68c24cf58fb780`

```dockerfile
```

-	Layers:
	-	`sha256:08ccd625bd4caf12f0f7088f40267deaf0c15fd1c472a7d8c2b7e2be20eb74b3`  
		Last Modified: Mon, 05 Oct 2026 21:37:14 GMT  
		Size: 6.0 MB (5955962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e616c1b2276866a7893c671b4e9bf089bbe2bd135456263baa7712e6e6ec5a1a`  
		Last Modified: Mon, 05 Oct 2026 21:37:14 GMT  
		Size: 11.7 KB (11704 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi10-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:018f1cace2bf743ac86ae78f06ddc92f74366072879d1f43e90dfd3168dd914e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.5 MB (140464620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9ae0de2489c0efae86a9e9fdae7e9cbf84d5ae8ee93aac8ce3df84ef43a3962`
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
# Mon, 05 Oct 2026 21:44:51 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Mon, 05 Oct 2026 21:44:51 GMT
LABEL description=Docker Container for the Swift programming language
# Mon, 05 Oct 2026 21:44:51 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Mon, 05 Oct 2026 21:44:51 GMT
ARG SWIFT_PLATFORM=ubi10
# Mon, 05 Oct 2026 21:44:51 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Mon, 05 Oct 2026 21:44:51 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Mon, 05 Oct 2026 21:44:51 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Mon, 05 Oct 2026 21:44:51 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Mon, 05 Oct 2026 21:44:51 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && yum -y install gnupg2     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:7388e54a4b87b9d1b806f083475a3e00a585e22a34723ffd2524f0249d9f99fc`  
		Last Modified: Thu, 01 Oct 2026 08:46:40 GMT  
		Size: 78.5 MB (78451694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18f37d8be387564e008dd5b3e4f894995416a4fb911cd98ac36f4543633771f1`  
		Last Modified: Mon, 05 Oct 2026 21:45:10 GMT  
		Size: 62.0 MB (62012926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10-slim` - unknown; unknown

```console
$ docker pull swift@sha256:afaa9daf6faa18c8f5d1ade9851d1e3c65ec3c321125f17c92ea892bd147cb09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5964154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fc0d0c974b900af8610b845cd2a95f40bdb9d45c0b14bc2d9cfc1e2d5735c2b`

```dockerfile
```

-	Layers:
	-	`sha256:3c4e1da856219dea1a1f6730f700dae941d18fbf4b95db98045b996f6132a343`  
		Last Modified: Mon, 05 Oct 2026 21:45:07 GMT  
		Size: 6.0 MB (5952364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90535bede8c5702393661c04cc756de9f895d864a83940eff6b1fbd9cb178b60`  
		Last Modified: Mon, 05 Oct 2026 21:45:07 GMT  
		Size: 11.8 KB (11790 bytes)  
		MIME: application/vnd.in-toto+json
