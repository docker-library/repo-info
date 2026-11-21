## `swift:amazonlinux2023-slim`

```console
$ docker pull swift@sha256:019ccdf72a617648e3f64e95c8dafacfe8cb9ad1cf8c3795a78355e96112bc21
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:amazonlinux2023-slim` - linux; amd64

```console
$ docker pull swift@sha256:4900b401b6192ef4c2544f3b9b07cc634b922df1d24089356c374ffc375d3018
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.7 MB (314720436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a758d2bb3dff3c0259f4278b4dd0e984ef65fdd3a7ed7637a2cccb79cc572d7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:24 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:24 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 20:08:19 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 20 Nov 2026 20:08:19 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 20 Nov 2026 20:08:19 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 20 Nov 2026 20:08:19 GMT
ARG SWIFT_PLATFORM=amazonlinux2023
# Fri, 20 Nov 2026 20:08:19 GMT
ARG SWIFT_BRANCH=swift-6.4.3-release
# Fri, 20 Nov 2026 20:08:19 GMT
ARG SWIFT_VERSION=swift-6.4.3-RELEASE
# Fri, 20 Nov 2026 20:08:19 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 20 Nov 2026 20:08:19 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 20 Nov 2026 20:08:19 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN dnf -y swap gnupg2-minimal gnupg2-full # buildkit
# Fri, 20 Nov 2026 20:09:00 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && dnf -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:48c7a3aa33f84b2fa7af701f558c0a97251fe0ca6790119c6f912decc8cad76d`  
		Last Modified: Tue, 17 Nov 2026 23:01:37 GMT  
		Size: 54.6 MB (54569091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d75670e852366d64f32890235507e28c37c6aec0d98b0de10fa3f2dba535aa5`  
		Last Modified: Fri, 20 Nov 2026 20:09:28 GMT  
		Size: 203.7 MB (203657175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983f76c48eba020660be6c20bfb778ebe10749e8a6c450e6ac3dc7d464cd7bd6`  
		Last Modified: Fri, 20 Nov 2026 20:09:23 GMT  
		Size: 56.5 MB (56494170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2023-slim` - unknown; unknown

```console
$ docker pull swift@sha256:0c11266bc8bfe8c7aa3488c7a1749095247a90c7c64efa19fcaa0c1690f2173a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7744261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e17f93850469b0b16560a361570d99361576c032a361454e064db7ea8ea545`

```dockerfile
```

-	Layers:
	-	`sha256:38565a0e526521d11ace68158a0aca82f8966d2e8f05a3cd787d80fef6483f04`  
		Last Modified: Fri, 20 Nov 2026 20:09:19 GMT  
		Size: 7.7 MB (7731116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9fdcaeed622802b4e3b31c3066d8043a8540ead9799277918636f60fc58b9e0`  
		Last Modified: Fri, 20 Nov 2026 20:09:18 GMT  
		Size: 13.1 KB (13145 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:amazonlinux2023-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:456acbd8c774fa0fecc0bf22f36d05cd7cfcb0f5af70e075c0d4917164225719
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (310979961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a484bf137d810e6fc1f4e4d817af69e40fefa10e191986f18b94c560e1b6a09`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:23 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:23 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 20:04:06 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 20 Nov 2026 20:04:06 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 20 Nov 2026 20:04:06 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 20 Nov 2026 20:04:06 GMT
ARG SWIFT_PLATFORM=amazonlinux2023
# Fri, 20 Nov 2026 20:04:06 GMT
ARG SWIFT_BRANCH=swift-6.4.3-release
# Fri, 20 Nov 2026 20:04:06 GMT
ARG SWIFT_VERSION=swift-6.4.3-RELEASE
# Fri, 20 Nov 2026 20:04:06 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 20 Nov 2026 20:04:06 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 20 Nov 2026 20:04:06 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN dnf -y swap gnupg2-minimal gnupg2-full # buildkit
# Fri, 20 Nov 2026 20:04:51 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.3-release SWIFT_VERSION=swift-6.4.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && dnf -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:7dd5afb185e9abad9919aa0d5eaa430bb9babdb805532cdb871320227597f486`  
		Last Modified: Wed, 18 Nov 2026 01:44:00 GMT  
		Size: 53.5 MB (53453550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbe2d9a74682ff5ddda2754a1aa87057a7c873b1ae1e61750eeebf99e03a843`  
		Last Modified: Fri, 20 Nov 2026 20:05:17 GMT  
		Size: 201.6 MB (201638167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f875ebd01c3c2d9e290eea7bb08ccb44d06d4bc6770e0ed835b55f0041c7d7ef`  
		Last Modified: Fri, 20 Nov 2026 20:05:15 GMT  
		Size: 55.9 MB (55888244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2023-slim` - unknown; unknown

```console
$ docker pull swift@sha256:17d457a99a0f3c3a59ddb5451043392b2aede2d627d17b86c50729ddcd1988c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7743876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1ba6329ef3780cdd397baa29bfaac62d1b3b91ce6c8acc8a3ba9e2f2f53513a`

```dockerfile
```

-	Layers:
	-	`sha256:cf3368a2fd3183c86cc76260dce4f3cf5ca004445f2e99db2f6f42dc39a40223`  
		Last Modified: Fri, 20 Nov 2026 20:05:13 GMT  
		Size: 7.7 MB (7730623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53a4321a767b7e51743cf60e8a165a84ff2a76cd58f8a5bf88cf1de8d91314b3`  
		Last Modified: Fri, 20 Nov 2026 20:05:12 GMT  
		Size: 13.3 KB (13253 bytes)  
		MIME: application/vnd.in-toto+json
