## `swift:bookworm-slim`

```console
$ docker pull swift@sha256:ad72529face4a3fcf765f6dd774bec1f49fd3243c63e3c90c413ac8b9cae8662
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:bookworm-slim` - linux; amd64

```console
$ docker pull swift@sha256:339e42198655f93b390684993558a2b24c80d6faa4d2d71daaeb9028ece4f017
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.4 MB (123408440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d539be3280c34a4b3f20bd6bed2073b39fc9d9f4a4aac06558a9057b2476b31`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:15:35 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 05 Aug 2026 01:15:35 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 05 Aug 2026 01:15:35 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:15:35 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 05 Aug 2026 01:15:35 GMT
ARG SWIFT_PLATFORM=debian12
# Wed, 05 Aug 2026 01:15:35 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Wed, 05 Aug 2026 01:15:35 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Wed, 05 Aug 2026 01:15:35 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 05 Aug 2026 01:15:35 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 05 Aug 2026 01:16:07 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abb105a7d1b7c69d241e1a25cdabfc7cee0db9bd69a89af661b3726bc8d21827`  
		Last Modified: Wed, 05 Aug 2026 01:16:24 GMT  
		Size: 23.7 MB (23650515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b6dc6346eabb10b72754f924f0b5b19e93a479aac999c20197274903a0ce11`  
		Last Modified: Wed, 05 Aug 2026 01:16:24 GMT  
		Size: 51.3 MB (51260834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:bookworm-slim` - unknown; unknown

```console
$ docker pull swift@sha256:7eb79ea6160489069defd627316d9f3c65d730ecfd3e3265642ee433a6c233e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4170970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0cadb376cb72e6dbc9acfd18060110b535f9746a73a7f9bb2843fed00f02519`

```dockerfile
```

-	Layers:
	-	`sha256:66cc8b0059eed20f2e75a88daeb287b3d1a7b92f48f8a40263d1829f45e38b37`  
		Last Modified: Wed, 05 Aug 2026 01:16:23 GMT  
		Size: 4.2 MB (4157044 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ef38f0e6375e392efa86d4b5872cad20d3720d5daccfd2e9efcd090e9fe6552`  
		Last Modified: Wed, 05 Aug 2026 01:16:22 GMT  
		Size: 13.9 KB (13926 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:beb27293c3dc098024204ce5a3a7bcd7d4765c6b2cdbbda3714095c41f79022f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122394217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f4fc0b90f6ddf6a82bdee58c5049470f889d9d10acc3f1a88c9cbcc4906f77c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:21:47 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 05 Aug 2026 01:21:47 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 05 Aug 2026 01:21:47 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:21:47 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 05 Aug 2026 01:21:47 GMT
ARG SWIFT_PLATFORM=debian12
# Wed, 05 Aug 2026 01:21:47 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Wed, 05 Aug 2026 01:21:47 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Wed, 05 Aug 2026 01:21:47 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 05 Aug 2026 01:21:47 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 05 Aug 2026 01:22:23 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd6a955070336afceb8908755673e6f86db6a7fd4c755fb3da72fbc7753e8b39`  
		Last Modified: Wed, 05 Aug 2026 01:22:38 GMT  
		Size: 23.5 MB (23464196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c0f562c380de150f8f3923d676b81a4d2d77e950699c4a5e73a24d903fe263b`  
		Last Modified: Wed, 05 Aug 2026 01:22:39 GMT  
		Size: 50.5 MB (50546641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:bookworm-slim` - unknown; unknown

```console
$ docker pull swift@sha256:dbb93439e16165cc8c8146acecd585916c60ec5e0413e844deb6349125b50b8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4171354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb058eeaafd10f2f6b121d0a612344c1a2d9438c20971c50493867240d2085f`

```dockerfile
```

-	Layers:
	-	`sha256:29930a19c55cac72171f43cee39a36b9b38e578e0ecf44279b4e9610d0106189`  
		Last Modified: Wed, 05 Aug 2026 01:22:38 GMT  
		Size: 4.2 MB (4157321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:888d96474b0263d3e083062c28529eb1f75398466eccf7bb86398c4266a67058`  
		Last Modified: Wed, 05 Aug 2026 01:22:37 GMT  
		Size: 14.0 KB (14033 bytes)  
		MIME: application/vnd.in-toto+json
