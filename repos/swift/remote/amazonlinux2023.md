## `swift:amazonlinux2023`

```console
$ docker pull swift@sha256:84c3fe09247b97e92547d71498eccc36b641a2a96c017bd6c50a553e17f7400b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:amazonlinux2023` - linux; amd64

```console
$ docker pull swift@sha256:54875eae2d346ba3a5f7614a5d11c80d68edbcb397c9bf177555fffe35d9585c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 GB (1590548194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:427a9564cfd864e002c9d976a656bd181d5930d0f9b078b6c53ca5efb2ee7b71`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:11:46 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Mon, 16 Nov 2026 23:11:46 GMT
LABEL description=Docker Container for the Swift programming language
# Mon, 16 Nov 2026 23:11:46 GMT
RUN dnf -y install   binutils   gcc   git   unzip   glibc-static   gzip   libbsd   libcurl-devel   libedit   libicu   libstdc++-static   libuuid   libxml2-devel   openssl-devel   tar   tzdata # buildkit
# Mon, 16 Nov 2026 23:11:56 GMT
RUN dnf -y swap gnupg2-minimal gnupg2-full # buildkit
# Mon, 16 Nov 2026 23:11:56 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Mon, 16 Nov 2026 23:11:56 GMT
ARG SWIFT_PLATFORM=amazonlinux2023
# Mon, 16 Nov 2026 23:11:56 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Mon, 16 Nov 2026 23:11:56 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Mon, 16 Nov 2026 23:11:56 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Mon, 16 Nov 2026 23:11:56 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Mon, 16 Nov 2026 23:12:34 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Mon, 16 Nov 2026 23:12:34 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f1b063d86409e421535e9ea2854196b5501906b411fbee928c46649ce02035`  
		Last Modified: Mon, 16 Nov 2026 23:15:18 GMT  
		Size: 322.5 MB (322511019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e435b280c36a8b8d36a8618c99d30199c3be1469685073b1e23f22e79a52ba9`  
		Last Modified: Mon, 16 Nov 2026 23:15:12 GMT  
		Size: 33.1 MB (33070056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2f3c8e220b50b667b679dec2588069f47ddaace235ffddf6fe2e39f15968393`  
		Last Modified: Fri, 30 Oct 2026 17:35:10 GMT  
		Size: 1.2 GB (1180397654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e54ba2b75dfbfd0bcfb29b2a627549ab384b14d441d3f73db1643b59f8ab71`  
		Last Modified: Mon, 16 Nov 2026 23:15:11 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2023` - unknown; unknown

```console
$ docker pull swift@sha256:4fb6263ede53b172afb4f5bb1512565c0e3f165013111ec549e4742a138a5948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15096396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aebc91e116c830ecd0d63de54f356b724caf87cfd3065bc32295a3df8eaf60d`

```dockerfile
```

-	Layers:
	-	`sha256:b848c6954c30fc296213f9a9f789c0dd7db61873eac4739f6ec68a5363ea0ff6`  
		Last Modified: Mon, 16 Nov 2026 23:15:11 GMT  
		Size: 15.1 MB (15080169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:759775e6f27ec06c7028870f28ef45ae2bf257ee19de0bea16952d99b8e7a6a9`  
		Last Modified: Mon, 16 Nov 2026 23:15:10 GMT  
		Size: 16.2 KB (16227 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:amazonlinux2023` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:584a8f604095bb1d3498740f8ecce9421db82d1be2f6d5fac565c1c323757647
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 GB (1572605111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d35e5fcbcd90687e14dbe273b05fab964c02f3cf69240719169d9ae095b3d6d5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:11:35 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Mon, 16 Nov 2026 23:11:35 GMT
LABEL description=Docker Container for the Swift programming language
# Mon, 16 Nov 2026 23:11:35 GMT
RUN dnf -y install   binutils   gcc   git   unzip   glibc-static   gzip   libbsd   libcurl-devel   libedit   libicu   libstdc++-static   libuuid   libxml2-devel   openssl-devel   tar   tzdata # buildkit
# Mon, 16 Nov 2026 23:11:46 GMT
RUN dnf -y swap gnupg2-minimal gnupg2-full # buildkit
# Mon, 16 Nov 2026 23:11:46 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Mon, 16 Nov 2026 23:11:46 GMT
ARG SWIFT_PLATFORM=amazonlinux2023
# Mon, 16 Nov 2026 23:11:46 GMT
ARG SWIFT_BRANCH=swift-6.4.2-release
# Mon, 16 Nov 2026 23:11:46 GMT
ARG SWIFT_VERSION=swift-6.4.2-RELEASE
# Mon, 16 Nov 2026 23:11:46 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Mon, 16 Nov 2026 23:11:46 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Mon, 16 Nov 2026 23:12:26 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Mon, 16 Nov 2026 23:12:26 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.2-release SWIFT_VERSION=swift-6.4.2-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9f8c073c4015d76d79d85c84f234109bf4e26ed9d110b0e554c8a8173d226e`  
		Last Modified: Mon, 16 Nov 2026 23:15:02 GMT  
		Size: 313.2 MB (313157808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed6102235323301994d4da9a35dacb026d2109a87377d0d5246e0013659fdee`  
		Last Modified: Mon, 16 Nov 2026 23:14:57 GMT  
		Size: 32.7 MB (32696623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf9e051495f2c9ecfef3cf775a34edb3280d16604e1ef46c13389be7c93fe373`  
		Last Modified: Fri, 30 Oct 2026 17:36:17 GMT  
		Size: 1.2 GB (1173297429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7057f8cdf290150145bb6cafbaa1dc9bb37a3784fbd99d8f2f39c0d3c2daa29`  
		Last Modified: Mon, 16 Nov 2026 23:14:56 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2023` - unknown; unknown

```console
$ docker pull swift@sha256:692218c497f056f952d5f0959a9cf81d98ba5fc80378097bcc99fb1b5bd5695e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14966586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18f6e1e81bc71ac79ba80c8537573b28835a33b50e5d6212c373b4b88a33be4a`

```dockerfile
```

-	Layers:
	-	`sha256:8baf8368f738dafbb19a59693b76a288c4a7614b910b602facca7e4d5d280d7c`  
		Last Modified: Mon, 16 Nov 2026 23:14:57 GMT  
		Size: 15.0 MB (14950222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52bf9590fceb0baaee4e8f61d6393fc3a03da2df029ac2d2d05ead85fa9792b0`  
		Last Modified: Mon, 16 Nov 2026 23:14:56 GMT  
		Size: 16.4 KB (16364 bytes)  
		MIME: application/vnd.in-toto+json
