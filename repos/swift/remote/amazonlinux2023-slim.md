## `swift:amazonlinux2023-slim`

```console
$ docker pull swift@sha256:1da68c6ecddde3db29597e4bb3e00d1eb07b756e594e77811b39c4e7361b3cfa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:amazonlinux2023-slim` - linux; amd64

```console
$ docker pull swift@sha256:dceacae42024a95b2c5b68d5a0843886037e78fa90a1ac39b476f65e7c324547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.6 MB (298612406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9e3e04b04bdbd212d71ea690b3cb73a5cf26d955165934cd7c15b8cd83e9b31`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 22:45:19 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 22:45:19 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 23:34:32 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 21 Oct 2026 23:34:32 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 21 Oct 2026 23:34:32 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 21 Oct 2026 23:34:32 GMT
ARG SWIFT_PLATFORM=amazonlinux2023
# Wed, 21 Oct 2026 23:34:32 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Wed, 21 Oct 2026 23:34:32 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Wed, 21 Oct 2026 23:34:32 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 21 Oct 2026 23:34:32 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 21 Oct 2026 23:34:32 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN dnf -y swap gnupg2-minimal gnupg2-full # buildkit
# Wed, 21 Oct 2026 23:35:09 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && dnf -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a3b8ca28022a71066e002e75d5fa73c895e290bb7f53daf8bf28bc55221be7b`  
		Last Modified: Wed, 21 Oct 2026 23:35:33 GMT  
		Size: 187.6 MB (187591463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dbbef35069f327d785d4734f5bf81e419f5ed9f0c332ecfc2f0125165677471`  
		Last Modified: Wed, 21 Oct 2026 23:35:31 GMT  
		Size: 56.4 MB (56390173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2023-slim` - unknown; unknown

```console
$ docker pull swift@sha256:041efa1ac8c1a08ebdf87a81b66e2dec1e6d862f7d920be2627aa252a339aadd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7743574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d89d28739d6eacaa05727cb985c106903d145a0bbacdac5778a48a4eebba799`

```dockerfile
```

-	Layers:
	-	`sha256:11ff1c830aa8946b059a293aa425d9542edf40fdb7d867ab6f4042135fb638a4`  
		Last Modified: Wed, 21 Oct 2026 23:35:29 GMT  
		Size: 7.7 MB (7730444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44c92a5f9781be4926f0c8b43d0d6d1b0d4a130a0ddc4bf61d04f0e9c5836a73`  
		Last Modified: Wed, 21 Oct 2026 23:35:29 GMT  
		Size: 13.1 KB (13130 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:amazonlinux2023-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:73f4045e8ad87a6f9f931c5ca9049731878746c132266b56d541ede6d2a8d701
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.0 MB (294995114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda717b3b16d911519f8c417562db14336c375a01acfd9d2a04fbca6258d3a10`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 23:11:39 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 23:11:39 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 00:25:35 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Thu, 22 Oct 2026 00:25:35 GMT
LABEL description=Docker Container for the Swift programming language
# Thu, 22 Oct 2026 00:25:35 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Thu, 22 Oct 2026 00:25:35 GMT
ARG SWIFT_PLATFORM=amazonlinux2023
# Thu, 22 Oct 2026 00:25:35 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Thu, 22 Oct 2026 00:25:35 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Thu, 22 Oct 2026 00:25:35 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Thu, 22 Oct 2026 00:25:35 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Thu, 22 Oct 2026 00:25:35 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN dnf -y swap gnupg2-minimal gnupg2-full # buildkit
# Thu, 22 Oct 2026 00:26:18 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && dnf -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbfc5baab59ab7971d9a69ebbe43b39772b6fdcaffa74bb0804d813d8714a454`  
		Last Modified: Thu, 22 Oct 2026 00:26:44 GMT  
		Size: 185.7 MB (185710576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922d3cfe30859c2201c8b6eac77edadfd105cbf3b1e5dbe9a27bcd9339739de7`  
		Last Modified: Thu, 22 Oct 2026 00:26:41 GMT  
		Size: 55.8 MB (55780140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2023-slim` - unknown; unknown

```console
$ docker pull swift@sha256:94bcc28fd57dbbe817986bb1702955ee3f30a889ea72d25a533fb1fe5054fc48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7743187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df1fce8404605687768df053a568fbb8205f1a0c4322b76f28d9df84faca84f1`

```dockerfile
```

-	Layers:
	-	`sha256:b5c951818794ea3f9b59a0e6bebc68bbc578c4875cc364f6eeef031e7919c8f7`  
		Last Modified: Thu, 22 Oct 2026 00:26:39 GMT  
		Size: 7.7 MB (7729951 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22c47b93f5ac71b04494b6860efe928a84ec5e0b697c1b6d5f22238214ab6e30`  
		Last Modified: Thu, 22 Oct 2026 00:26:38 GMT  
		Size: 13.2 KB (13236 bytes)  
		MIME: application/vnd.in-toto+json
