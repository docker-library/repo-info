## `swift:amazonlinux2-slim`

```console
$ docker pull swift@sha256:7c2243e60029cbf6499c8f57d8e163588514bc1453793198bbdcd0bd7835b2ac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:amazonlinux2-slim` - linux; amd64

```console
$ docker pull swift@sha256:cb837f8201cd458c1f0f417a0f286b9c37a467de0e2e2db4a3162f4e878d6a7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.1 MB (301057584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02712e4f4f0c07d4838a4e08c72712fa946befb0c83e8c5414e4bf9606ea9ca0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:32 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:32 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:30:00 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Thu, 17 Sep 2026 22:30:00 GMT
LABEL description=Docker Container for the Swift programming language
# Thu, 17 Sep 2026 22:30:00 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Thu, 17 Sep 2026 22:30:00 GMT
ARG SWIFT_PLATFORM=amazonlinux2
# Thu, 17 Sep 2026 22:30:00 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Thu, 17 Sep 2026 22:30:00 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Thu, 17 Sep 2026 22:30:00 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Thu, 17 Sep 2026 22:30:00 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Thu, 17 Sep 2026 22:30:00 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && yum autoremove -y tar gzip # buildkit
```

-	Layers:
	-	`sha256:0f31d1fce1dda0c9a2775f71f278a80f752c07ac8026cd44ad345d9d5c45de7e`  
		Last Modified: Fri, 04 Sep 2026 16:19:27 GMT  
		Size: 63.0 MB (62964596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65914d343a590d25a1fafd7a6fa213e71ed8de54dd8a97546144fd44b77eec9`  
		Last Modified: Thu, 17 Sep 2026 22:30:31 GMT  
		Size: 238.1 MB (238092988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2-slim` - unknown; unknown

```console
$ docker pull swift@sha256:4a7ce1c10af1c1cad96cdb366447c801d7cd17c59a121907ce32b0a02244bf0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5094174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c78813d01b001d5b4e24a22a6992895a750cbedad5d2a5dcd5b1bc0e049e66b3`

```dockerfile
```

-	Layers:
	-	`sha256:9fe95c4789e91011c6ff6e46d608f7a9629999ed8b2edcccc4d96a68099c0857`  
		Last Modified: Thu, 17 Sep 2026 22:30:26 GMT  
		Size: 5.1 MB (5082320 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c92a84afe22f1d68ddbcefaae691fb884a79f9b0cad3177d5608951ed36b4d5`  
		Last Modified: Thu, 17 Sep 2026 22:30:26 GMT  
		Size: 11.9 KB (11854 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:amazonlinux2-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:fc6fc788107dcfb1caf74ffb91b55defb9ed7c05d296180eafaa848f1c33de08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.3 MB (277335178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e425ca2db1fb320e444e6f7a289c0994c1cd4eca9e3bb2c13d920c4de023a6f6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:18 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:54:09 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Thu, 17 Sep 2026 22:54:09 GMT
LABEL description=Docker Container for the Swift programming language
# Thu, 17 Sep 2026 22:54:09 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Thu, 17 Sep 2026 22:54:09 GMT
ARG SWIFT_PLATFORM=amazonlinux2
# Thu, 17 Sep 2026 22:54:09 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Thu, 17 Sep 2026 22:54:09 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Thu, 17 Sep 2026 22:54:09 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Thu, 17 Sep 2026 22:54:09 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Thu, 17 Sep 2026 22:54:09 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && yum autoremove -y tar gzip # buildkit
```

-	Layers:
	-	`sha256:17ad0bfad52234371433d04d036616a4bd4db51019fc530e40379ee1fcd6957a`  
		Last Modified: Fri, 04 Sep 2026 16:20:29 GMT  
		Size: 64.8 MB (64805101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc474ef4f1dbffdf181f928bdd8fcedf54360bc2703b2864325e18d1936ab57a`  
		Last Modified: Thu, 17 Sep 2026 22:54:38 GMT  
		Size: 212.5 MB (212530077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2-slim` - unknown; unknown

```console
$ docker pull swift@sha256:ee2c5107672923d60f9fc30d2f9aa32417f15f34f9da3c8dd51a469eb489f675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5093700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba62241c53a1b80e6c3e0b50c7c3f3b188a146b7e6b597cdb2480dd153e496b`

```dockerfile
```

-	Layers:
	-	`sha256:dcc88bb260acfc2d6c2aad2a3c59d0e6069844675badd6787940587da8dea9c9`  
		Last Modified: Thu, 17 Sep 2026 22:54:34 GMT  
		Size: 5.1 MB (5081754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6876a6fe0dcd87cab2180a1177fe68f5111ad85db9e81cbc51936f6df2f5c3db`  
		Last Modified: Thu, 17 Sep 2026 22:54:34 GMT  
		Size: 11.9 KB (11946 bytes)  
		MIME: application/vnd.in-toto+json
