## `swift:amazonlinux2023`

```console
$ docker pull swift@sha256:aa7611a668aac397b0065f1ac2e73abcbae8079e5875b70e31929c27d55650a1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:amazonlinux2023` - linux; amd64

```console
$ docker pull swift@sha256:4eddee6c8c1acb211798edee4e5ad000269e998050bdfd5461b58204c224d941
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 GB (1580137660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b696be6e9885e0de7b8d43550475162d9509c59a222ff9a6055c170c78d084b8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:11:39 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 23 Oct 2026 01:11:39 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 23 Oct 2026 01:11:39 GMT
RUN dnf -y install   binutils   gcc   git   unzip   glibc-static   gzip   libbsd   libcurl-devel   libedit   libicu   libstdc++-static   libuuid   libxml2-devel   openssl-devel   tar   tzdata # buildkit
# Fri, 23 Oct 2026 01:11:49 GMT
RUN dnf -y swap gnupg2-minimal gnupg2-full # buildkit
# Fri, 23 Oct 2026 01:11:49 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 23 Oct 2026 01:11:49 GMT
ARG SWIFT_PLATFORM=amazonlinux2023
# Fri, 23 Oct 2026 01:11:49 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Fri, 23 Oct 2026 01:11:49 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Fri, 23 Oct 2026 01:11:49 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 23 Oct 2026 01:11:49 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 23 Oct 2026 01:12:28 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Fri, 23 Oct 2026 01:12:28 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b212d9d1253dfac6909f53848fee3740f94702852bc8139616f8a5292e798b8d`  
		Last Modified: Fri, 23 Oct 2026 01:15:10 GMT  
		Size: 312.1 MB (312106591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d1a3a0cdb9273b86ea2377adfd1ec526efe4a05580d5b07a5b558a5217963c`  
		Last Modified: Fri, 23 Oct 2026 01:15:05 GMT  
		Size: 33.1 MB (33063261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7742b3d5605ef6f2ebe0a86d386ee0119ac54aec17e5f31db7d8c830b8d714b4`  
		Last Modified: Tue, 13 Oct 2026 20:33:45 GMT  
		Size: 1.2 GB (1180318714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4444691cf0ada84a8f019ae9aa5dcd6e4c9a12aa6d8a5f0e4f0c0728b4b73741`  
		Last Modified: Fri, 23 Oct 2026 01:15:03 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2023` - unknown; unknown

```console
$ docker pull swift@sha256:ec4cb1ddc36008233c3e94dfb8230844c45cd44ef160633014b3c29e42e26fc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15090931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad35e087cabe0e5337ac67488a4d2400582d6f7e13c9f965c60a2bd65dfafcc3`

```dockerfile
```

-	Layers:
	-	`sha256:346c795f640ef9002c5788b33be1a67a4ee34bfa22028b41608333f7e8661534`  
		Last Modified: Fri, 23 Oct 2026 01:15:04 GMT  
		Size: 15.1 MB (15074704 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3665e10328a623b4292a7f31e0bee9a1592c4f7021c5133cb4c3cf40060dc6cf`  
		Last Modified: Fri, 23 Oct 2026 01:15:03 GMT  
		Size: 16.2 KB (16227 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:amazonlinux2023` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:d28999cf48b1931b20913286d4764fefdb211c09955e987b3718fc32fabf1128
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 GB (1562423314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e69255297c1bf7f0f07e1aaed19de1243c9d96c0139c91505382554864916ad`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:11:43 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 23 Oct 2026 01:11:43 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 23 Oct 2026 01:11:43 GMT
RUN dnf -y install   binutils   gcc   git   unzip   glibc-static   gzip   libbsd   libcurl-devel   libedit   libicu   libstdc++-static   libuuid   libxml2-devel   openssl-devel   tar   tzdata # buildkit
# Fri, 23 Oct 2026 01:11:55 GMT
RUN dnf -y swap gnupg2-minimal gnupg2-full # buildkit
# Fri, 23 Oct 2026 01:11:55 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 23 Oct 2026 01:11:55 GMT
ARG SWIFT_PLATFORM=amazonlinux2023
# Fri, 23 Oct 2026 01:11:55 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Fri, 23 Oct 2026 01:11:55 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Fri, 23 Oct 2026 01:11:55 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 23 Oct 2026 01:11:55 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 23 Oct 2026 01:12:33 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Fri, 23 Oct 2026 01:12:34 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ee0a83f48b70d33aead066ca4c795ce5f0de7b2fb910c7784dc18f2aff48a3`  
		Last Modified: Fri, 23 Oct 2026 01:15:09 GMT  
		Size: 303.0 MB (302990185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae2cbc7aef3a4e11a45ece7f7c4de541159322dd6b17b22ec5d5bc0af2f5867`  
		Last Modified: Fri, 23 Oct 2026 01:15:04 GMT  
		Size: 32.7 MB (32693280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32610796ff29684a6401ce3b4267dbbc983dc6a2400ff1a446de05a40674fd43`  
		Last Modified: Tue, 13 Oct 2026 20:33:52 GMT  
		Size: 1.2 GB (1173210359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c804f7d689b77c72325bcda7122f3a6ea5ab60eb21a5168c43b621f5724fafd`  
		Last Modified: Fri, 23 Oct 2026 01:15:03 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2023` - unknown; unknown

```console
$ docker pull swift@sha256:642e8911b5a4f7ca37ab54ef4f7a3fce3f982d1759408cbc534664c8c4b45ea6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14961121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:063f9904a0972f0885d75d7c4da55020e969fdb9e04b7d5d39429190375e2ebc`

```dockerfile
```

-	Layers:
	-	`sha256:a92057d94d8a54d778b1655827fcaab2ca95b48a6b958c11ebd996b14a859756`  
		Last Modified: Fri, 23 Oct 2026 01:15:03 GMT  
		Size: 14.9 MB (14944757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef81bcee4c7ba94cffaa9ca7fe0118f763b95a3b485c3047afe965146cdfe775`  
		Last Modified: Fri, 23 Oct 2026 01:15:03 GMT  
		Size: 16.4 KB (16364 bytes)  
		MIME: application/vnd.in-toto+json
