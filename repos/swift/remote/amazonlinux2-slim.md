## `swift:amazonlinux2-slim`

```console
$ docker pull swift@sha256:d8b1e0dffa1bd1f41c7f91498e8c49482dc8c1aa26435165331ace5b03585da3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:amazonlinux2-slim` - linux; amd64

```console
$ docker pull swift@sha256:5e4ac44181e7c50bf1b1a4ded7dc66fbc4c325bf2514688c8d0359cae84df078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.1 MB (297059438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f05f6720030fa80fdb71ac7bcb7608cfc8ad57ac563eee073951f9e59a492e7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 08 Jul 2026 20:25:54 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:25:54 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:13:37 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 08 Jul 2026 21:13:37 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 08 Jul 2026 21:13:37 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 08 Jul 2026 21:13:37 GMT
ARG SWIFT_PLATFORM=amazonlinux2
# Wed, 08 Jul 2026 21:13:37 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Wed, 08 Jul 2026 21:13:37 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Wed, 08 Jul 2026 21:13:37 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 08 Jul 2026 21:13:37 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 08 Jul 2026 21:13:37 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && yum autoremove -y tar gzip # buildkit
```

-	Layers:
	-	`sha256:900a03988e5535b8fa16eca2a88ea4d98129caeae92c97c1cb9cd28fdddbbaad`  
		Last Modified: Wed, 08 Jul 2026 10:41:40 GMT  
		Size: 63.0 MB (62958380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52d2f9a72bf37f7b8a460b4ce708505b194f725a1f243242bbd2e47dbe591b6b`  
		Last Modified: Wed, 08 Jul 2026 21:14:08 GMT  
		Size: 234.1 MB (234101058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2-slim` - unknown; unknown

```console
$ docker pull swift@sha256:aad28ea80a9e05a3a858c81b5f40547463180ed7ab5fbb8c3eb091199c562539
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5094148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aa397c28e9b2e0f00ae75bea087ce199a52897b185f93283db407a05b022574`

```dockerfile
```

-	Layers:
	-	`sha256:af00e4ddc70a5a02edf2be302dfffcc8d615c72814c48a7f67b09808b65d414d`  
		Last Modified: Wed, 08 Jul 2026 21:14:03 GMT  
		Size: 5.1 MB (5082294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc61da7bb50e0efc2175196448e2b6bdbb32906ccb14634435c5192ee14be9d4`  
		Last Modified: Wed, 08 Jul 2026 21:14:03 GMT  
		Size: 11.9 KB (11854 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:amazonlinux2-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:ea9da62c6f964f54d102cded26e1048ed4a7fb3606c90a383133c2725a78b55c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273603181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8acb2f0c6082bf5ae0b36e07f301ad910a0f0e91b31524f7959284db9235d918`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 08 Jul 2026 20:25:16 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:25:16 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:13:22 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 08 Jul 2026 21:13:22 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 08 Jul 2026 21:13:22 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 08 Jul 2026 21:13:22 GMT
ARG SWIFT_PLATFORM=amazonlinux2
# Wed, 08 Jul 2026 21:13:22 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Wed, 08 Jul 2026 21:13:22 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Wed, 08 Jul 2026 21:13:22 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 08 Jul 2026 21:13:22 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 08 Jul 2026 21:13:22 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && yum -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && yum autoremove -y tar gzip # buildkit
```

-	Layers:
	-	`sha256:2fb7467b49ea9922ec92b3b41cd0ae9ae2840cce49082c60c621e4e388aabb23`  
		Last Modified: Wed, 08 Jul 2026 20:25:31 GMT  
		Size: 64.8 MB (64787879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3837014b4f2052627f84f3b68c545fceb594e334c8a8e113c77f9d7b0fa64bce`  
		Last Modified: Wed, 08 Jul 2026 21:13:52 GMT  
		Size: 208.8 MB (208815302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2-slim` - unknown; unknown

```console
$ docker pull swift@sha256:078f528f8983a21ef686d980a33b02500fc357df7f210fe821731b9bfceb09c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5093674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be2d77d070834fcd3618eef8d96f81bf048f76b7dde45e4a772e56811500bb50`

```dockerfile
```

-	Layers:
	-	`sha256:4bdf106f20a31ed97a47f85237d3a3371a32168d4f4ed7724ec8f203cc0aa517`  
		Last Modified: Wed, 08 Jul 2026 21:13:48 GMT  
		Size: 5.1 MB (5081728 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77e85cc85fcd2b9c0b219c4f3a752695e05f943c420c1a259deb0ff6f24a1910`  
		Last Modified: Wed, 08 Jul 2026 21:13:48 GMT  
		Size: 11.9 KB (11946 bytes)  
		MIME: application/vnd.in-toto+json
