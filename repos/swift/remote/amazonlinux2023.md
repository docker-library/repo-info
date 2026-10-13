## `swift:amazonlinux2023`

```console
$ docker pull swift@sha256:59970c26355c63d75348b4e6b6d055bc90f601918064d61be203b4c9ce73b992
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:amazonlinux2023` - linux; amd64

```console
$ docker pull swift@sha256:690d0bf8d6e9530ca8fabc141b58c24cf8f6fe3867965d9846fe8d68a1cfac7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 GB (1575585125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5719c436ed7bba9ef0c0b6b22b036f6676c9299df3aba6c4a37642940dff6f23`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 20:29:45 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 13 Oct 2026 20:29:45 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 13 Oct 2026 20:29:45 GMT
RUN dnf -y install   binutils   gcc   git   unzip   glibc-static   gzip   libbsd   libcurl-devel   libedit   libicu   libstdc++-static   libuuid   libxml2-devel   openssl-devel   tar   tzdata # buildkit
# Tue, 13 Oct 2026 20:29:53 GMT
RUN dnf -y swap gnupg2-minimal gnupg2-full # buildkit
# Tue, 13 Oct 2026 20:29:53 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 13 Oct 2026 20:29:53 GMT
ARG SWIFT_PLATFORM=amazonlinux2023
# Tue, 13 Oct 2026 20:29:53 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Tue, 13 Oct 2026 20:29:53 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Tue, 13 Oct 2026 20:29:53 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 20:29:53 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 20:30:37 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Tue, 13 Oct 2026 20:30:37 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:126ec70b9694b01fb8dc20071aeabeb64820988f04c112188a95dc0041ecd21a`  
		Last Modified: Tue, 13 Oct 2026 20:33:16 GMT  
		Size: 307.6 MB (307575863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a6408497c689f37f6339705eaec8672f8eefd3c258ceae1a53fd86945d785fe`  
		Last Modified: Tue, 13 Oct 2026 20:33:03 GMT  
		Size: 33.1 MB (33059603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7742b3d5605ef6f2ebe0a86d386ee0119ac54aec17e5f31db7d8c830b8d714b4`  
		Last Modified: Tue, 13 Oct 2026 20:33:45 GMT  
		Size: 1.2 GB (1180318714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f71a4be737ca0d5b954e833b0d06a8aa494b87ed58a2537d2f7aaa476881757`  
		Last Modified: Tue, 13 Oct 2026 20:33:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2023` - unknown; unknown

```console
$ docker pull swift@sha256:244358fb867f20756a4a7ed841d65892736cc1abeed756732592d5c9c0b332f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15090825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67736c3c48b67d9f41f195b7b963403e1b28f0bb10f1d28bf4328eb4dfbf53ee`

```dockerfile
```

-	Layers:
	-	`sha256:b8e76bebcc6fe3c69d0f94504b0e263084bcfbfd26e5aad8f8eb05c3cc86ff06`  
		Last Modified: Tue, 13 Oct 2026 20:33:02 GMT  
		Size: 15.1 MB (15074598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc94bd0aa35f78728cb669358fb2b6f5e08d0297e5d84657a8cc09e962e581ad`  
		Last Modified: Tue, 13 Oct 2026 20:33:01 GMT  
		Size: 16.2 KB (16227 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:amazonlinux2023` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:00cac4ff55e6c68202df6de6155391a0cec9717bfe93301a29edd2562680e5fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 GB (1557930165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19bbb557a9965db490ce66f8f63b1bbe0ac9bac1d7add64146fb012fb741c1ef`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 20:29:56 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 13 Oct 2026 20:29:56 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 13 Oct 2026 20:29:56 GMT
RUN dnf -y install   binutils   gcc   git   unzip   glibc-static   gzip   libbsd   libcurl-devel   libedit   libicu   libstdc++-static   libuuid   libxml2-devel   openssl-devel   tar   tzdata # buildkit
# Tue, 13 Oct 2026 20:30:07 GMT
RUN dnf -y swap gnupg2-minimal gnupg2-full # buildkit
# Tue, 13 Oct 2026 20:30:07 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 13 Oct 2026 20:30:07 GMT
ARG SWIFT_PLATFORM=amazonlinux2023
# Tue, 13 Oct 2026 20:30:07 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Tue, 13 Oct 2026 20:30:07 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Tue, 13 Oct 2026 20:30:07 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 20:30:07 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 13 Oct 2026 20:30:47 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Tue, 13 Oct 2026 20:30:47 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32ba856bbfcb7fc448551133ba1086157534fb3947d2655792767b56884a331`  
		Last Modified: Tue, 13 Oct 2026 20:33:32 GMT  
		Size: 298.5 MB (298525469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:238237b5ad49005c49e1de9d2bb2979d0c9fef752e44b8baeeca8a402d57d454`  
		Last Modified: Tue, 13 Oct 2026 20:33:19 GMT  
		Size: 32.7 MB (32689766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32610796ff29684a6401ce3b4267dbbc983dc6a2400ff1a446de05a40674fd43`  
		Last Modified: Tue, 13 Oct 2026 20:33:52 GMT  
		Size: 1.2 GB (1173210359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b13efef305322dec97bef53c927eba53df1922a63f2d701dd4a2fd80077a351a`  
		Last Modified: Tue, 13 Oct 2026 20:33:16 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2023` - unknown; unknown

```console
$ docker pull swift@sha256:87198286a77952ee2bf9f6869d46c9878ef2b95fee82f7f238687dd0b88e1435
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14961015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adc7692ce3ea15f38ba9cb38ef709364293a2170176b92936d656df0b7cbf9a6`

```dockerfile
```

-	Layers:
	-	`sha256:c08ddd17d797616d6123f48e767f0506223be57acc402bced9e8ffdfbd66c7bd`  
		Last Modified: Tue, 13 Oct 2026 20:33:18 GMT  
		Size: 14.9 MB (14944651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2a688ccf678db668678a6b269b562ba1966afd74b464dcf67878000748d4036`  
		Last Modified: Tue, 13 Oct 2026 20:33:16 GMT  
		Size: 16.4 KB (16364 bytes)  
		MIME: application/vnd.in-toto+json
