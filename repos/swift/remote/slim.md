## `swift:slim`

```console
$ docker pull swift@sha256:20c70a4a58020d36c65b2b8c928c38f6e550dbc185353c4c9a2620383ccf7506
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:slim` - linux; amd64

```console
$ docker pull swift@sha256:2c6a50cb1df3ecc5085014052ee9293b3093e413cff915ab13941fe8baa3ba47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101076597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb59c5cc8379a52731033e55ba6611371fff5a6635e51732845ffb578dfcb617`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:32:08 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 16 Sep 2026 03:32:08 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 16 Sep 2026 03:32:08 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:32:08 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 16 Sep 2026 03:32:08 GMT
ARG SWIFT_PLATFORM=ubuntu24.04
# Wed, 16 Sep 2026 03:32:08 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Wed, 16 Sep 2026 03:32:08 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Wed, 16 Sep 2026 03:32:08 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 16 Sep 2026 03:32:08 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 16 Sep 2026 03:32:43 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gnupg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gnupg # buildkit
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b88dd9346919663c38f1ff158184ea44523944c57f05c84dd2ff4d451d5afb14`  
		Last Modified: Wed, 16 Sep 2026 03:32:56 GMT  
		Size: 20.0 MB (19987224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c35b556cedda492047b2006936f6134b970ced073c6cb806c047902b8480bfcd`  
		Last Modified: Wed, 16 Sep 2026 03:32:57 GMT  
		Size: 51.3 MB (51325257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:slim` - unknown; unknown

```console
$ docker pull swift@sha256:4edaa147e91d9ee82fb858fef0a505985325b9f2c178a5b84ace6bb2b9a27361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2495908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff92d920e473f7b4e751238a2b3b2a929723c9ecead6b1f6a9e12413d2bc40f5`

```dockerfile
```

-	Layers:
	-	`sha256:fd89baf53caf4955de2f7e4faf17ee649c712a6bef0350bae954926081f51f2f`  
		Last Modified: Wed, 16 Sep 2026 03:32:55 GMT  
		Size: 2.5 MB (2481070 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47fa84d30fd9baedf2147a3be3f1946d89b49863f95301d198c6cedc7503a921`  
		Last Modified: Wed, 16 Sep 2026 03:32:55 GMT  
		Size: 14.8 KB (14838 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:a90dda99b150ba4e608b34d8b1a9631c0cde4c8fe0231a99f0e77bf16db5895b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.6 MB (99568049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3aa200817932352b534d2048225c1c74da32c1258d78043e219f515afd623b4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:31:49 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 16 Sep 2026 03:31:49 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 16 Sep 2026 03:31:49 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:31:49 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 16 Sep 2026 03:31:49 GMT
ARG SWIFT_PLATFORM=ubuntu24.04
# Wed, 16 Sep 2026 03:31:49 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Wed, 16 Sep 2026 03:31:49 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Wed, 16 Sep 2026 03:31:49 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 16 Sep 2026 03:31:49 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 16 Sep 2026 03:32:27 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gnupg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gnupg # buildkit
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcf5e32093a6f8f7e73ef2d235543b0f00c37738c2da7b94ecc3da12097eeef5`  
		Last Modified: Wed, 16 Sep 2026 03:32:39 GMT  
		Size: 20.0 MB (20009348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667fd637b731b65fb84f5136310b35a192b3829fb36cb69a90d39c08b2d36f61`  
		Last Modified: Wed, 16 Sep 2026 03:32:40 GMT  
		Size: 50.6 MB (50617121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:slim` - unknown; unknown

```console
$ docker pull swift@sha256:a18c661f6022d6daef09cde1615c08a9d6ed78b3dd3aee9739828cc310f088f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2497167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d33ae7d7cd6b193ebf5561d72817e685651a5aa6447711c03395ed22d3f1f1b`

```dockerfile
```

-	Layers:
	-	`sha256:966d44ac8457d8ea50d1d5db6cbc8d50211688a69fde6ebefc7f50907d9dc813`  
		Last Modified: Wed, 16 Sep 2026 03:32:39 GMT  
		Size: 2.5 MB (2482186 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:041326e2c16747a51440b16c9ece8a1e74d59a21254d2df1b67da2ec5f83a987`  
		Last Modified: Wed, 16 Sep 2026 03:32:38 GMT  
		Size: 15.0 KB (14981 bytes)  
		MIME: application/vnd.in-toto+json
