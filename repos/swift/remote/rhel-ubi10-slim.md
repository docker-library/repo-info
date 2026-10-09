## `swift:rhel-ubi10-slim`

```console
$ docker pull swift@sha256:f4caa95f1413b9cde498b85ac0ef8babfdef9ec87b94b0561042ad54c50c2670
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:rhel-ubi10-slim` - linux; amd64

```console
$ docker pull swift@sha256:84856ca4af700c0c5828587cde91b1f93b9ccccc4825033365996aad7565a8b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.0 MB (144032919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015505f52d28984e9f16492b8a98468ccf6445629dcbaa7037f3aba0a7148818`
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
# Thu, 08 Oct 2026 21:55:31 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Thu, 08 Oct 2026 21:55:31 GMT
LABEL description=Docker Container for the Swift programming language
# Thu, 08 Oct 2026 21:55:31 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Thu, 08 Oct 2026 21:55:31 GMT
ARG SWIFT_PLATFORM=ubi10
# Thu, 08 Oct 2026 21:55:31 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Thu, 08 Oct 2026 21:55:31 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Thu, 08 Oct 2026 21:55:31 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Thu, 08 Oct 2026 21:55:31 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Thu, 08 Oct 2026 21:55:31 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && yum -y install gnupg2     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:6fc7444accd7a9ed6ac556b00dc73b825689d767f21f184c3535e7316bee7b8f`  
		Last Modified: Thu, 08 Oct 2026 08:40:00 GMT  
		Size: 81.1 MB (81099872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37cf08c8319ef98d43be9ead1f3e050dfbd6a0c1ae8b9d38cb09fd156507ca0e`  
		Last Modified: Thu, 08 Oct 2026 21:55:50 GMT  
		Size: 62.9 MB (62933047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10-slim` - unknown; unknown

```console
$ docker pull swift@sha256:98ccaeb8e36fd57d04ad51b57c61235e36e000d0f3d993fe45b44f1e08c66a57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5967674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f891f6871595b6f2c6643822c0dff0122e91c481567ba4dcaeb3c9b602436ed`

```dockerfile
```

-	Layers:
	-	`sha256:93395ecdf157d4f321a784f015ec5235a85e723a1f4519a8df5f0725e4195da7`  
		Last Modified: Thu, 08 Oct 2026 21:55:47 GMT  
		Size: 6.0 MB (5955970 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d6a43a438419e411017e610b6d7a260cb53e9530026b6f45470a4fa10aed280`  
		Last Modified: Thu, 08 Oct 2026 21:55:46 GMT  
		Size: 11.7 KB (11704 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:rhel-ubi10-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:a554d5cef2e781adff9b4e7340b3a371684ea5fb6ef67b1814425911aa6ede75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.6 MB (140592690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96f75b1e4573f3494ef2ff325611b566858bdd030bad5be5ce9bffdc39b7c061`
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
# Thu, 08 Oct 2026 22:47:15 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Thu, 08 Oct 2026 22:47:15 GMT
LABEL description=Docker Container for the Swift programming language
# Thu, 08 Oct 2026 22:47:15 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Thu, 08 Oct 2026 22:47:15 GMT
ARG SWIFT_PLATFORM=ubi10
# Thu, 08 Oct 2026 22:47:15 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Thu, 08 Oct 2026 22:47:15 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Thu, 08 Oct 2026 22:47:15 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Thu, 08 Oct 2026 22:47:15 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Thu, 08 Oct 2026 22:47:15 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubi10 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && yum -y install gnupg2     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:77f46db000855c22057634739d4d71ca37fefa93060ebfd307e5e1ca95001314`  
		Last Modified: Thu, 08 Oct 2026 08:40:00 GMT  
		Size: 78.6 MB (78576628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7671344e70b9850dd934eae2a5b0a9edcab70859d3ec86ac97cda9ed6c3af2bd`  
		Last Modified: Thu, 08 Oct 2026 22:47:34 GMT  
		Size: 62.0 MB (62016062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:rhel-ubi10-slim` - unknown; unknown

```console
$ docker pull swift@sha256:628d8664547b57dc5187ed43f7b0a654ab6774b59d00180a14c73495e2cc2ad7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5964162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120bf6c243c2c7338e4d6a777473093caab365cbdeb6f646676d4e27eebcd5c4`

```dockerfile
```

-	Layers:
	-	`sha256:0b63794d86866060e8c0ef9f4015030e8b69536cfa056477289f71883f6556be`  
		Last Modified: Thu, 08 Oct 2026 22:47:31 GMT  
		Size: 6.0 MB (5952372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8dce8388ebc7fa8fd8217181a732b8e38c0fbf8b7c33b0583af2b02bfa0eb71`  
		Last Modified: Thu, 08 Oct 2026 22:47:31 GMT  
		Size: 11.8 KB (11790 bytes)  
		MIME: application/vnd.in-toto+json
