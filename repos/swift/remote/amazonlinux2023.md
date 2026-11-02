## `swift:amazonlinux2023`

```console
$ docker pull swift@sha256:10797abc851e5dfea73397708e764c848f7a4bbdc6703272ac74d99dfc646d23
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:amazonlinux2023` - linux; amd64

```console
$ docker pull swift@sha256:546f50291f587c426df86f69e9cf689a025d7937e82f3d4f5f0b747b1204b45f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 GB (1585965628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e964ebef7009754e3ceedfb23a035d9e1ff2504dd7d1ffa94460c81ec8ec16c9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:48 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:48 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:12:07 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Mon, 02 Nov 2026 20:12:07 GMT
LABEL description=Docker Container for the Swift programming language
# Mon, 02 Nov 2026 20:12:07 GMT
RUN dnf -y install   binutils   gcc   git   unzip   glibc-static   gzip   libbsd   libcurl-devel   libedit   libicu   libstdc++-static   libuuid   libxml2-devel   openssl-devel   tar   tzdata # buildkit
# Mon, 02 Nov 2026 20:12:15 GMT
RUN dnf -y swap gnupg2-minimal gnupg2-full # buildkit
# Mon, 02 Nov 2026 20:12:15 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Mon, 02 Nov 2026 20:12:15 GMT
ARG SWIFT_PLATFORM=amazonlinux2023
# Mon, 02 Nov 2026 20:12:15 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Mon, 02 Nov 2026 20:12:15 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Mon, 02 Nov 2026 20:12:15 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Mon, 02 Nov 2026 20:12:15 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Mon, 02 Nov 2026 20:12:59 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Mon, 02 Nov 2026 20:13:00 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a039a3f45e226dc3b03f84d52f68fb05a8b24720d7c374ed510f8bda8188aa7b`  
		Last Modified: Mon, 02 Nov 2026 20:15:31 GMT  
		Size: 317.9 MB (317928436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb7e9582c9ebc89a7c4fba81733d93c233d12cc083711304a166b28208f445a8`  
		Last Modified: Mon, 02 Nov 2026 20:15:26 GMT  
		Size: 33.1 MB (33069752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2f3c8e220b50b667b679dec2588069f47ddaace235ffddf6fe2e39f15968393`  
		Last Modified: Fri, 30 Oct 2026 17:35:10 GMT  
		Size: 1.2 GB (1180397654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f9718dddce83b2d13dcd7c7faf16ded5d7c1420e29ef829b3d4c1979765ca09`  
		Last Modified: Mon, 02 Nov 2026 20:15:24 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2023` - unknown; unknown

```console
$ docker pull swift@sha256:36350058116a9e9952a2e4a40c0a9ad76a9ca4e15bd451ddc10dac6c9df9e930
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15091591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:057d8d71314f0a8965eac520235ec031a8ea322263b34e990eaadeff3e3f275e`

```dockerfile
```

-	Layers:
	-	`sha256:e33f0f625689b74fb82d8380209367667369240970192805877eac562e7b6672`  
		Last Modified: Mon, 02 Nov 2026 20:15:25 GMT  
		Size: 15.1 MB (15075364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:454dc9c9445b0516f69a5a6fbe32148cb8de8937cceff08c75f80c85f281389a`  
		Last Modified: Mon, 02 Nov 2026 20:15:24 GMT  
		Size: 16.2 KB (16227 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:amazonlinux2023` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:338bf4d659975fdc8cb645bd25ee53e8f1cf244c2afa007a47c999721afda992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 GB (1568234225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7b9914a16a98ca2c63ad5a773964f4f3afe459bcaeaacdb7c1acabb9bd1e886`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:47 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:47 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:55 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Mon, 02 Nov 2026 20:11:55 GMT
LABEL description=Docker Container for the Swift programming language
# Mon, 02 Nov 2026 20:11:55 GMT
RUN dnf -y install   binutils   gcc   git   unzip   glibc-static   gzip   libbsd   libcurl-devel   libedit   libicu   libstdc++-static   libuuid   libxml2-devel   openssl-devel   tar   tzdata # buildkit
# Mon, 02 Nov 2026 20:12:06 GMT
RUN dnf -y swap gnupg2-minimal gnupg2-full # buildkit
# Mon, 02 Nov 2026 20:12:06 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Mon, 02 Nov 2026 20:12:06 GMT
ARG SWIFT_PLATFORM=amazonlinux2023
# Mon, 02 Nov 2026 20:12:06 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Mon, 02 Nov 2026 20:12:06 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Mon, 02 Nov 2026 20:12:06 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Mon, 02 Nov 2026 20:12:06 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Mon, 02 Nov 2026 20:12:45 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Mon, 02 Nov 2026 20:12:45 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3671d9df2004edbcf458f3966909d7ef9e53754a28ef5f43384aa9561c0f61d7`  
		Last Modified: Mon, 02 Nov 2026 20:15:21 GMT  
		Size: 308.8 MB (308787227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bc47a5ae5bc919ae175c8750d4a1c4be84f199a18d46b884c0ba3a210eb35d3`  
		Last Modified: Mon, 02 Nov 2026 20:15:16 GMT  
		Size: 32.7 MB (32693271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf9e051495f2c9ecfef3cf775a34edb3280d16604e1ef46c13389be7c93fe373`  
		Last Modified: Fri, 30 Oct 2026 17:36:17 GMT  
		Size: 1.2 GB (1173297429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:647ab6b5a19ec8abfba4123cd3072c3d7e4ea557c81ae87b26cd670352b85b23`  
		Last Modified: Mon, 02 Nov 2026 20:15:15 GMT  
		Size: 175.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2023` - unknown; unknown

```console
$ docker pull swift@sha256:e8a9af2b628a5997d30537bde92a0cf523cbe511406c5c7bf003045502902b11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14961781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27b32c57e155a2221c94bd567bf1863c60d45c12ae8c624cb5baa3e936f46fe0`

```dockerfile
```

-	Layers:
	-	`sha256:38cf5a16a7f27141bea7cba086ab84d7f24d2ab6f87d377ec9eb95a9fd0ccb64`  
		Last Modified: Mon, 02 Nov 2026 20:15:16 GMT  
		Size: 14.9 MB (14945417 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3467fbc3da17435fd4c7a661262bb63b79b0e5841ba58fa258b28cead6dec766`  
		Last Modified: Mon, 02 Nov 2026 20:15:15 GMT  
		Size: 16.4 KB (16364 bytes)  
		MIME: application/vnd.in-toto+json
