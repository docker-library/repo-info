## `swift:slim`

```console
$ docker pull swift@sha256:d20e340aeaf7109919b2a15c95569470070cca4d34dae40dfa58339a2aa734df
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:slim` - linux; amd64

```console
$ docker pull swift@sha256:4f34433042634f8e9d5cdb24ffacb5f73e0c8a34d14055cd28d306ed28c8a242
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101074193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e809982ff76144f9b0248a551387a9da5bd5b92772d96de29ead630b24dfe89`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:43:07 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 09 Sep 2026 02:43:07 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 09 Sep 2026 02:43:07 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:43:07 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 09 Sep 2026 02:43:07 GMT
ARG SWIFT_PLATFORM=ubuntu24.04
# Wed, 09 Sep 2026 02:43:07 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Wed, 09 Sep 2026 02:43:07 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Wed, 09 Sep 2026 02:43:07 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 09 Sep 2026 02:43:07 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 09 Sep 2026 02:43:44 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gnupg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gnupg # buildkit
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fc12acbd2743211416a70c50623440c03a1a49c6065f1980c15fe9207b952a9`  
		Last Modified: Wed, 09 Sep 2026 02:43:58 GMT  
		Size: 20.0 MB (19985712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42a8353705e9626729126431e5ceabbfa28714b361ac0f19ff49b114c921029f`  
		Last Modified: Wed, 09 Sep 2026 02:43:59 GMT  
		Size: 51.3 MB (51325228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:slim` - unknown; unknown

```console
$ docker pull swift@sha256:6fc50c5e14032ec7bc09f954e20763ea58aa379ff7129683ce9ff73f8d192824
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2495896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe93e24aac2e65d05cf5d5088b7dd97db48e5b2bff783a3eff678d35b05aa069`

```dockerfile
```

-	Layers:
	-	`sha256:22d51de43ca135199226b877cac0aca514d12e67df555b0917e8434ae1622f49`  
		Last Modified: Wed, 09 Sep 2026 02:43:58 GMT  
		Size: 2.5 MB (2481058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:499dabb7d29b2d9726e2386f35593f8910bfb3863ef946d9cc6215a4eee3c5a8`  
		Last Modified: Wed, 09 Sep 2026 02:43:57 GMT  
		Size: 14.8 KB (14838 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:b8633ed532c272cf884768b536dfdff1c6156714ca9556ced7283232205be2db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.6 MB (99565810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0002cd15f134ef321f48f403721ca4c082d1cd5d7670ba1ad2f5584d49118f6e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:37:49 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 09 Sep 2026 02:37:49 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 09 Sep 2026 02:37:49 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:49 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 09 Sep 2026 02:37:49 GMT
ARG SWIFT_PLATFORM=ubuntu24.04
# Wed, 09 Sep 2026 02:37:49 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Wed, 09 Sep 2026 02:37:49 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Wed, 09 Sep 2026 02:37:49 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 09 Sep 2026 02:37:49 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 09 Sep 2026 02:38:26 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu24.04 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gnupg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gnupg # buildkit
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec85a7683d7e3d6e30359de486147fbe0865e3b17bd3501115fc4f749412b6b6`  
		Last Modified: Wed, 09 Sep 2026 02:38:40 GMT  
		Size: 20.0 MB (20008588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e7d9fefd0b0fefe6917ccfabbd761dd8899357efdcf41d45688f075296570e`  
		Last Modified: Wed, 09 Sep 2026 02:38:41 GMT  
		Size: 50.6 MB (50617207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:slim` - unknown; unknown

```console
$ docker pull swift@sha256:77a9e4970068e43958f3993460d8551f67b34842354beca1c262395e3188319c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2497155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c8fef4e9801aff1b96de84a19cfdf6cf9d01b54b13a82e6f3a27271bb812681`

```dockerfile
```

-	Layers:
	-	`sha256:6c344b64aeb69bd30e46c223788f718376de65294ef00969ae5b2d053e8c6c01`  
		Last Modified: Wed, 09 Sep 2026 02:38:39 GMT  
		Size: 2.5 MB (2482174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95ed4cb55854d82f9e40c61414a6b6b6a2a658144f9f0140e978d4de8e419278`  
		Last Modified: Wed, 09 Sep 2026 02:38:39 GMT  
		Size: 15.0 KB (14981 bytes)  
		MIME: application/vnd.in-toto+json
