## `swift:amazonlinux2-slim`

```console
$ docker pull swift@sha256:b15655dba1e63d5229efbcb4d4f938acf72396f974ff97bf260f48701b4d2a01
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:amazonlinux2-slim` - linux; amd64

```console
$ docker pull swift@sha256:b6e63d7619d1e48c92f5f24e46b9f0072992c6eda395acfa6beb9bcc71f6ca66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.9 MB (297867346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b42573ab9c8a95fcc58f478695811a9c4744287e8ae4b615eb47072e7479bfef`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:47 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:47 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:14:12 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Sat, 18 Jul 2026 00:14:12 GMT
LABEL description=Docker Container for the Swift programming language
# Sat, 18 Jul 2026 00:14:12 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Sat, 18 Jul 2026 00:14:12 GMT
ARG SWIFT_PLATFORM=amazonlinux2
# Sat, 18 Jul 2026 00:14:12 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Sat, 18 Jul 2026 00:14:12 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Sat, 18 Jul 2026 00:14:12 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Sat, 18 Jul 2026 00:14:12 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Sat, 18 Jul 2026 00:14:12 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && yum autoremove -y tar gzip # buildkit
```

-	Layers:
	-	`sha256:06aa8a8412ddcd11af3d73b72c1ed58ba902c9428472a38c780460385a530107`  
		Last Modified: Sat, 11 Jul 2026 02:13:53 GMT  
		Size: 63.0 MB (62957295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b8d8c7f15821f8a991fc8392a3bc7b912c3203ff5670c9239d3ecdab9ecaa8`  
		Last Modified: Sat, 18 Jul 2026 00:14:44 GMT  
		Size: 234.9 MB (234910051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2-slim` - unknown; unknown

```console
$ docker pull swift@sha256:6fe6e94b491128f68e7f9a2409d8accf023548c39a253f998503f8f23daf5e08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5094148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ec71cba17f075309cdb5a291912dc7c0cd056372b4c0e50b017037faae99690`

```dockerfile
```

-	Layers:
	-	`sha256:e0d5b3e5548a2b7eb77864253e1619cb3033a70fa0c3536793fec1dd84aaa44e`  
		Last Modified: Sat, 18 Jul 2026 00:14:39 GMT  
		Size: 5.1 MB (5082294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb5c4e5ba9bbd9855e05c1a6462255c41bddf890ff04ac8e5d13f1974924405c`  
		Last Modified: Sat, 18 Jul 2026 00:14:38 GMT  
		Size: 11.9 KB (11854 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:amazonlinux2-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:23c47bf998274f129c735f31134d10060e572bc6e3f5e391fa040f135487decb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.4 MB (274428776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8e6637cd29a143c062d1a0e6975f243ac681b9e746c2a15e035dd8fe33cd1f9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:40 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:40 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:13:57 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Sat, 18 Jul 2026 00:13:57 GMT
LABEL description=Docker Container for the Swift programming language
# Sat, 18 Jul 2026 00:13:57 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Sat, 18 Jul 2026 00:13:57 GMT
ARG SWIFT_PLATFORM=amazonlinux2
# Sat, 18 Jul 2026 00:13:57 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Sat, 18 Jul 2026 00:13:57 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Sat, 18 Jul 2026 00:13:57 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Sat, 18 Jul 2026 00:13:57 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Sat, 18 Jul 2026 00:13:57 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && yum autoremove -y tar gzip # buildkit
```

-	Layers:
	-	`sha256:7da2ddf99845df800b9ce1ec0c9889076ad3ba27fd4e61b3ef728e424f1672f1`  
		Last Modified: Mon, 13 Jul 2026 18:19:45 GMT  
		Size: 64.8 MB (64790249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f93db63131db777edc14e1e8779e7a2dad06b7eeba62e7ec88d85511b04828fd`  
		Last Modified: Sat, 18 Jul 2026 00:14:27 GMT  
		Size: 209.6 MB (209638527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2-slim` - unknown; unknown

```console
$ docker pull swift@sha256:4f4981015965c69a694a05f27d083d4c72c4214ae595b9f57cde13fc5218b683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5093674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eb42b657a6de944839a3c558f1abc2a753127debb8d01f17205291a26b50cb1`

```dockerfile
```

-	Layers:
	-	`sha256:b9ee02025fdef879a9075a9aa195af801a946938260dde0ca0d08d91a1cfed04`  
		Last Modified: Sat, 18 Jul 2026 00:14:23 GMT  
		Size: 5.1 MB (5081728 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0909050f21c1c075dc1302c6ac799d96d1260f766c4d829294ceaa6849d7eb61`  
		Last Modified: Sat, 18 Jul 2026 00:14:22 GMT  
		Size: 11.9 KB (11946 bytes)  
		MIME: application/vnd.in-toto+json
