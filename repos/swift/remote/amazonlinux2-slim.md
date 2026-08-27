## `swift:amazonlinux2-slim`

```console
$ docker pull swift@sha256:f501215cfad3330a466c5477683025ef690ba1803780bc10fd4d36a3d0f282da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:amazonlinux2-slim` - linux; amd64

```console
$ docker pull swift@sha256:369b80b87bd3c163a817e36d089191d78e2062830b2ba342c55e288e1caa66c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.4 MB (299416047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e13378cc9cf5a9cf957a654096ad945951a32869a0fb321ba82c4fabc5d159aa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 27 Aug 2026 18:29:06 GMT
COPY /rootfs/ / # buildkit
# Thu, 27 Aug 2026 18:29:06 GMT
CMD ["/bin/bash"]
# Thu, 27 Aug 2026 19:12:25 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Thu, 27 Aug 2026 19:12:25 GMT
LABEL description=Docker Container for the Swift programming language
# Thu, 27 Aug 2026 19:12:25 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Thu, 27 Aug 2026 19:12:25 GMT
ARG SWIFT_PLATFORM=amazonlinux2
# Thu, 27 Aug 2026 19:12:25 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Thu, 27 Aug 2026 19:12:25 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Thu, 27 Aug 2026 19:12:25 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Thu, 27 Aug 2026 19:12:25 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Thu, 27 Aug 2026 19:12:25 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && yum autoremove -y tar gzip # buildkit
```

-	Layers:
	-	`sha256:7b5924e8d322730e9c4e8894d8783a6efb8f7553b1186599f35e97dfa4b7372d`  
		Last Modified: Thu, 27 Aug 2026 17:56:29 GMT  
		Size: 63.0 MB (62973824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d573b5b59fd994ba901c8af32ec61806ed4430b38888b32a6501fc25f608b5b5`  
		Last Modified: Thu, 27 Aug 2026 19:12:56 GMT  
		Size: 236.4 MB (236442223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2-slim` - unknown; unknown

```console
$ docker pull swift@sha256:5c0266d552e37f341d0756068225f19ea3aa221b377029df92500542b9fc498d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5094167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e872f9f0c1108ca22200b3e56235faa999ffe48c395418268b81aa1c659a6af0`

```dockerfile
```

-	Layers:
	-	`sha256:6942c1e24b77e5c5689a61493223f4405e18c6df1ba39523aee52e6ee018ccd8`  
		Last Modified: Thu, 27 Aug 2026 19:12:51 GMT  
		Size: 5.1 MB (5082314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bdf5a15b258bf5913db16c0b385c7bce2513d1ec5d32d128492186823a76374`  
		Last Modified: Thu, 27 Aug 2026 19:12:51 GMT  
		Size: 11.9 KB (11853 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:amazonlinux2-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:2b0ecc6c62c3d4d237e02179e10ac12a6e64cc0eed008a500459a2c82f151760
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.9 MB (275889889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb412689b39638871c739234bea75315c2e2bda03d3661399c5cf5cdcafde632`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 27 Aug 2026 18:28:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 27 Aug 2026 18:28:04 GMT
CMD ["/bin/bash"]
# Thu, 27 Aug 2026 19:12:18 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Thu, 27 Aug 2026 19:12:18 GMT
LABEL description=Docker Container for the Swift programming language
# Thu, 27 Aug 2026 19:12:18 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Thu, 27 Aug 2026 19:12:18 GMT
ARG SWIFT_PLATFORM=amazonlinux2
# Thu, 27 Aug 2026 19:12:18 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Thu, 27 Aug 2026 19:12:18 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Thu, 27 Aug 2026 19:12:18 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Thu, 27 Aug 2026 19:12:18 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Thu, 27 Aug 2026 19:12:18 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && yum autoremove -y tar gzip # buildkit
```

-	Layers:
	-	`sha256:2b41bf6c0b7311e7e581c43ef89dcfd7673d76db2f93fc00703cb6394c88ccf2`  
		Last Modified: Thu, 27 Aug 2026 18:15:57 GMT  
		Size: 64.8 MB (64790556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e692dbc375b846de3d4b14913a66ff8f9074c811cb4cacad0e784795637f2d`  
		Last Modified: Thu, 27 Aug 2026 19:12:48 GMT  
		Size: 211.1 MB (211099333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2-slim` - unknown; unknown

```console
$ docker pull swift@sha256:1dc217f204b09c2760e4c9d0a3496d54ee88745a0b8769036c3b4104a3cba0ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5093694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02730b4677802975e00517265e6f680987cbb90964b4124c845db5db786cdd6c`

```dockerfile
```

-	Layers:
	-	`sha256:87a750959469dee406bbb319ff22c31c64c2d25bbd852b96a6b6f58a46fab026`  
		Last Modified: Thu, 27 Aug 2026 19:12:44 GMT  
		Size: 5.1 MB (5081748 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09d31030145fc0cbfd9903f253d549aabd5716c420f37c6b73872f0fd0e347bc`  
		Last Modified: Thu, 27 Aug 2026 19:12:44 GMT  
		Size: 11.9 KB (11946 bytes)  
		MIME: application/vnd.in-toto+json
