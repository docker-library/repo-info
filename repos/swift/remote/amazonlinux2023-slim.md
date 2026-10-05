## `swift:amazonlinux2023-slim`

```console
$ docker pull swift@sha256:f510237c6f54b861d1ad6dbacb300a0711bfa99f493dac27257fb41ea0aa20e6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:amazonlinux2023-slim` - linux; amd64

```console
$ docker pull swift@sha256:2b26e3d5b47419086d13b1b29c0bfcc84345e415d3db350cbe3fe167a1f67548
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.6 MB (298604523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5269dbfd021baab0b839387e6d6b254e92c48a9d76cf53e90faa23750c841e74`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:45:09 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Mon, 05 Oct 2026 18:45:09 GMT
LABEL description=Docker Container for the Swift programming language
# Mon, 05 Oct 2026 18:45:09 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Mon, 05 Oct 2026 18:45:09 GMT
ARG SWIFT_PLATFORM=amazonlinux2023
# Mon, 05 Oct 2026 18:45:09 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Mon, 05 Oct 2026 18:45:09 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Mon, 05 Oct 2026 18:45:09 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Mon, 05 Oct 2026 18:45:09 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Mon, 05 Oct 2026 18:45:09 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN dnf -y swap gnupg2-minimal gnupg2-full # buildkit
# Mon, 05 Oct 2026 18:45:51 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && dnf -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d23021f1a7111279e7137a8474bbb5eb26cfd20442d42c236bef9d79af01950a`  
		Last Modified: Mon, 05 Oct 2026 18:46:14 GMT  
		Size: 187.6 MB (187590997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09360443fa8af893fc55ceb4c31e51c137099ed7b8c17db2ad08db98036994f1`  
		Last Modified: Mon, 05 Oct 2026 18:46:12 GMT  
		Size: 56.4 MB (56382756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2023-slim` - unknown; unknown

```console
$ docker pull swift@sha256:12c2867cadac0438a308bd6b55f787577c420bcc6579b4ebba321d3824eae334
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7743574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc63180be0060f40974db847b6a76cdabdf5b45c14bab2223d062992330d9250`

```dockerfile
```

-	Layers:
	-	`sha256:2d459c55d493196ec5915e038e6a69781d1e42e4e1604103f53bafa579a6e42a`  
		Last Modified: Mon, 05 Oct 2026 18:46:10 GMT  
		Size: 7.7 MB (7730444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eea6372e2c481db1c5bb06f0387b955b8f3a86eb406b631b00cd2a05b30288d2`  
		Last Modified: Mon, 05 Oct 2026 18:46:09 GMT  
		Size: 13.1 KB (13130 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:amazonlinux2023-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:9ec1820ee4089efc23303d9ff0222a29e1fce6b666ad03846c2173772a804bcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.0 MB (294993402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7705b0009f989ac3210ea7d109004e02423986ef2397cbcd131191d9f6d6e496`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:44:46 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Mon, 05 Oct 2026 18:44:46 GMT
LABEL description=Docker Container for the Swift programming language
# Mon, 05 Oct 2026 18:44:46 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Mon, 05 Oct 2026 18:44:46 GMT
ARG SWIFT_PLATFORM=amazonlinux2023
# Mon, 05 Oct 2026 18:44:46 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Mon, 05 Oct 2026 18:44:46 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Mon, 05 Oct 2026 18:44:46 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Mon, 05 Oct 2026 18:44:46 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Mon, 05 Oct 2026 18:44:46 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN dnf -y swap gnupg2-minimal gnupg2-full # buildkit
# Mon, 05 Oct 2026 18:45:23 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && dnf -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7b64a6e4df8793b5abd8f99e340ee457052af12e42aedee5d815275f057b7d`  
		Last Modified: Mon, 05 Oct 2026 18:45:49 GMT  
		Size: 185.7 MB (185710415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce68b4c416d27d8cbec21353e3292fd2d5e13f843ee40c2c2fddc553914779d6`  
		Last Modified: Mon, 05 Oct 2026 18:45:46 GMT  
		Size: 55.8 MB (55778589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2023-slim` - unknown; unknown

```console
$ docker pull swift@sha256:b1d8175e75eb0756b2eaafc37251a80d53d159d6235d8d3cd7ad17d3c1c0e75c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7743188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:479977321d87b64f68bea112e94407c4bc0c970c97ea5cfd0107fc28b939b9db`

```dockerfile
```

-	Layers:
	-	`sha256:6bf7401fb037156448b4b4d4d116ddc0e21a45d71139af1bd6c52577be6c4606`  
		Last Modified: Mon, 05 Oct 2026 18:45:44 GMT  
		Size: 7.7 MB (7729951 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4609cdb3ac212653f52711a27433297149ae70c471334b756fcc81a43824dade`  
		Last Modified: Mon, 05 Oct 2026 18:45:44 GMT  
		Size: 13.2 KB (13237 bytes)  
		MIME: application/vnd.in-toto+json
