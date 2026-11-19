## `swift:amazonlinux2023-slim`

```console
$ docker pull swift@sha256:17da14d3e0e56ad2f02d28646b4511761d646457a32bf073b14fedc0bfa85d49
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:amazonlinux2023-slim` - linux; amd64

```console
$ docker pull swift@sha256:d6957d48d281beedd25a9a21c52bc4614725d6c33421e4ea04280bc7c98b8070
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.6 MB (314599244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:300e15f6791bacaad6d75f203d0cd3b453e8121c07ecf2b614aa502d0aba0d95`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:24 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:24 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:35:59 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 18 Nov 2026 21:35:59 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 18 Nov 2026 21:35:59 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 18 Nov 2026 21:35:59 GMT
ARG SWIFT_PLATFORM=amazonlinux2023
# Wed, 18 Nov 2026 21:35:59 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Wed, 18 Nov 2026 21:35:59 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Wed, 18 Nov 2026 21:35:59 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 18 Nov 2026 21:35:59 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 18 Nov 2026 21:35:59 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN dnf -y swap gnupg2-minimal gnupg2-full # buildkit
# Wed, 18 Nov 2026 21:36:42 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && dnf -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:48c7a3aa33f84b2fa7af701f558c0a97251fe0ca6790119c6f912decc8cad76d`  
		Last Modified: Tue, 17 Nov 2026 23:01:37 GMT  
		Size: 54.6 MB (54569091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c4dad2758325faace318360445d9b05759319d29932f73e4882ce23adc8cde0`  
		Last Modified: Wed, 18 Nov 2026 21:37:13 GMT  
		Size: 203.7 MB (203656489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd89c450d6d31ab0cedaea3165da38460f35a851b300cca9d75911eec3ee7daf`  
		Last Modified: Wed, 18 Nov 2026 21:37:06 GMT  
		Size: 56.4 MB (56373664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2023-slim` - unknown; unknown

```console
$ docker pull swift@sha256:7f004a69040981b2235ba36d1a8fe17ca933019814819c6a52e352ea78933681
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7744246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:862eaf1713eef37a98f20ad2b8ff3b4478d3272dfb38a66c1cea495ee9a9ede8`

```dockerfile
```

-	Layers:
	-	`sha256:384762d06d89f09fa35e21b9db7f49fa68a69ff8d167fe294b5e0b1f96f3d4bf`  
		Last Modified: Wed, 18 Nov 2026 21:37:01 GMT  
		Size: 7.7 MB (7731116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8832423fa0cb2b76ab1f8d5ebdac0a3196502cfe03bcaf7ab67afdcff723530`  
		Last Modified: Wed, 18 Nov 2026 21:37:01 GMT  
		Size: 13.1 KB (13130 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:amazonlinux2023-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:97ae5104aebb1252750382581ac57566cc7d7ba5168dd0b4d7036cccf73c81cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.9 MB (310882497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9606d4faa4792d40c8f3386afbb1ba422a14324040c14f70530a318fbbe5d951`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:23 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:36:47 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 18 Nov 2026 21:36:47 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 18 Nov 2026 21:36:47 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 18 Nov 2026 21:36:47 GMT
ARG SWIFT_PLATFORM=amazonlinux2023
# Wed, 18 Nov 2026 21:36:47 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Wed, 18 Nov 2026 21:36:47 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Wed, 18 Nov 2026 21:36:47 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 18 Nov 2026 21:36:47 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 18 Nov 2026 21:36:47 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN dnf -y swap gnupg2-minimal gnupg2-full # buildkit
# Wed, 18 Nov 2026 21:37:25 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && dnf -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:7dd5afb185e9abad9919aa0d5eaa430bb9babdb805532cdb871320227597f486`  
		Last Modified: Wed, 18 Nov 2026 01:44:00 GMT  
		Size: 53.5 MB (53453550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33fbde350d7431457b1f1c3a286ddc7a32cc47fd875a044e3aa6af2000847788`  
		Last Modified: Wed, 18 Nov 2026 21:37:53 GMT  
		Size: 201.6 MB (201638392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:961eeeb327380dbb996b4f18c72995a23630a26b8f0d4ccc05f8a61cc1a5dbf4`  
		Last Modified: Wed, 18 Nov 2026 21:37:50 GMT  
		Size: 55.8 MB (55790555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2023-slim` - unknown; unknown

```console
$ docker pull swift@sha256:ae184072f7e8d818b32a9db0617696f9244d9ac75b81d0f86116b65697aabd9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7743860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2bc3b5049e4ad49b628d33a5507d6a7551e39f42c5b44476eb12948b807c370`

```dockerfile
```

-	Layers:
	-	`sha256:3456e3eb9c8cb15899f290c0e35b445e034b21e66e1a981b9e5b7e28f8c132bd`  
		Last Modified: Wed, 18 Nov 2026 21:37:48 GMT  
		Size: 7.7 MB (7730623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b3988bef8316a84eb7fbb2ecb3cfe3a375d255376bf2a0d1574f7f2213a0b76`  
		Last Modified: Wed, 18 Nov 2026 21:37:47 GMT  
		Size: 13.2 KB (13237 bytes)  
		MIME: application/vnd.in-toto+json
