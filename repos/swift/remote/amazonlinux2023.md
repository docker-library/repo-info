## `swift:amazonlinux2023`

```console
$ docker pull swift@sha256:56cc0c0dc63bdfbbf86127a208566238edbc9b18301efa9803a27fb158e3b321
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:amazonlinux2023` - linux; amd64

```console
$ docker pull swift@sha256:da9b55da874e91b6a14f1210bc70f6a16e1c5639bd6aa2e838d7e5eeec3aaed6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 GB (1575528528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:433ef09e60039c2e7ded5a0643936987fe3480b36c51d55b6a2782958f7e3b6f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:45:08 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Mon, 05 Oct 2026 18:45:08 GMT
LABEL description=Docker Container for the Swift programming language
# Mon, 05 Oct 2026 18:45:08 GMT
RUN dnf -y install   binutils   gcc   git   unzip   glibc-static   gzip   libbsd   libcurl-devel   libedit   libicu   libstdc++-static   libuuid   libxml2-devel   openssl-devel   tar   tzdata # buildkit
# Mon, 05 Oct 2026 18:45:17 GMT
RUN dnf -y swap gnupg2-minimal gnupg2-full # buildkit
# Mon, 05 Oct 2026 18:45:17 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Mon, 05 Oct 2026 18:45:17 GMT
ARG SWIFT_PLATFORM=amazonlinux2023
# Mon, 05 Oct 2026 18:45:17 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Mon, 05 Oct 2026 18:45:17 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Mon, 05 Oct 2026 18:45:17 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Mon, 05 Oct 2026 18:45:17 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Mon, 05 Oct 2026 18:45:56 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Mon, 05 Oct 2026 18:45:57 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ade685c3dc4ebd4b82f9ea8edaf2cc037e265337d38ca817af00292a6bc839a`  
		Last Modified: Mon, 05 Oct 2026 18:48:48 GMT  
		Size: 307.6 MB (307574745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9986ca6947209fe3e8a367e5957cf03c5fcc312b7653840e4b8255ec5f6a33f4`  
		Last Modified: Mon, 05 Oct 2026 18:48:43 GMT  
		Size: 33.1 MB (33059538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:810528431880b42643bf278b88c399ba216f30669345fbce3d35ad675e85c08e`  
		Last Modified: Fri, 18 Sep 2026 23:53:37 GMT  
		Size: 1.2 GB (1180263301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12e02074c410b85bac7d05f6abadf0c3e58b719007bd110cb943dd0b93764297`  
		Last Modified: Mon, 05 Oct 2026 18:48:41 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2023` - unknown; unknown

```console
$ docker pull swift@sha256:2bb006d00b0f6e9e905520994ae02ca72f074414827b729c9ceb656b9556771e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15090821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dd410e2944f607964edcfe7cc45c8f2d72ef9a2f00062466744c83773899080`

```dockerfile
```

-	Layers:
	-	`sha256:4089cc556e95ff8ff64a417d9ce0d42ba40f98ae048afb7624e6bf52c56a0857`  
		Last Modified: Mon, 05 Oct 2026 18:48:42 GMT  
		Size: 15.1 MB (15074594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4eb9bb99b1f6161fda9614a4369de654b291ff9c6ad27ae0daac7a115cbcbc9a`  
		Last Modified: Mon, 05 Oct 2026 18:48:41 GMT  
		Size: 16.2 KB (16227 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:amazonlinux2023` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:4edaaeb032e917ec2b9cf54827c078e90f4197f233bdfc4496299f7a7173fd5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 GB (1557910123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34749b773de4f547abb4c680be7b16a9cd32c7aae5f579ee3ec214fe85268992`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:44:20 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Mon, 05 Oct 2026 18:44:20 GMT
LABEL description=Docker Container for the Swift programming language
# Mon, 05 Oct 2026 18:44:20 GMT
RUN dnf -y install   binutils   gcc   git   unzip   glibc-static   gzip   libbsd   libcurl-devel   libedit   libicu   libstdc++-static   libuuid   libxml2-devel   openssl-devel   tar   tzdata # buildkit
# Mon, 05 Oct 2026 18:44:32 GMT
RUN dnf -y swap gnupg2-minimal gnupg2-full # buildkit
# Mon, 05 Oct 2026 18:44:32 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Mon, 05 Oct 2026 18:44:32 GMT
ARG SWIFT_PLATFORM=amazonlinux2023
# Mon, 05 Oct 2026 18:44:32 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Mon, 05 Oct 2026 18:44:32 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Mon, 05 Oct 2026 18:44:32 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Mon, 05 Oct 2026 18:44:32 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Mon, 05 Oct 2026 18:45:11 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Mon, 05 Oct 2026 18:45:11 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1318ab1eecae82f1024ef8a2ed457bb46cebc8b3c9da66f7476355bbcb4bbe`  
		Last Modified: Mon, 05 Oct 2026 18:47:45 GMT  
		Size: 298.5 MB (298525042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01023e867e6df2da053de6b7453b806e9136385d252eb08479a833f23fabe8c6`  
		Last Modified: Mon, 05 Oct 2026 18:47:41 GMT  
		Size: 32.7 MB (32689620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc92733721620898d7ca8d6998c1f4d8e02c5afa896765af2a942061e690c846`  
		Last Modified: Fri, 18 Sep 2026 23:53:07 GMT  
		Size: 1.2 GB (1173190889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a94f78a3d05256fcff38d3450c5a2fd732b87662517ad3a95d99af29faec8e8c`  
		Last Modified: Mon, 05 Oct 2026 18:47:40 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2023` - unknown; unknown

```console
$ docker pull swift@sha256:f14336954ee6a5cf573bfd10581b507d5e6ec1695221ddf3ed4c406ba6f49c3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14961010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a37050624c7af167d8caf0faf15a96bd4ead05dcb07054b2383a0cbd1febf63`

```dockerfile
```

-	Layers:
	-	`sha256:525066ed82f3ebda996bc2d782583af9d97bfbaa7c34a9a52c8d0122ae9421bf`  
		Last Modified: Mon, 05 Oct 2026 18:47:40 GMT  
		Size: 14.9 MB (14944647 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2bebeeb674bbc16ddff3086b15b7103a4ed47fcc1a8065e7fedd95d2e3f87f7a`  
		Last Modified: Mon, 05 Oct 2026 18:47:40 GMT  
		Size: 16.4 KB (16363 bytes)  
		MIME: application/vnd.in-toto+json
