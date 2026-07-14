## `swift:bookworm-slim`

```console
$ docker pull swift@sha256:622ab11b40ac57ba325e15fbdf9d8f87d0dbd48fcacd62b5b9f86a8a1749755f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:bookworm-slim` - linux; amd64

```console
$ docker pull swift@sha256:35d3901a1098141fbfd06b526f15c01c802626a4ecaef51fac8894986de03971
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.4 MB (123408748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc01b1d2a1691efa18f46c6a1d7953aae30029a9a33713e9afd014a2285e1ca3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:13:54 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 14 Jul 2026 02:13:54 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 14 Jul 2026 02:13:54 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:13:54 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 14 Jul 2026 02:13:54 GMT
ARG SWIFT_PLATFORM=debian12
# Tue, 14 Jul 2026 02:13:54 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Tue, 14 Jul 2026 02:13:54 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Tue, 14 Jul 2026 02:13:54 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 14 Jul 2026 02:13:54 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 14 Jul 2026 02:14:36 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:796103762a619efe3daedf29f7494099c3dcd72d4a56630e09d258592204ee15`  
		Last Modified: Tue, 14 Jul 2026 02:14:49 GMT  
		Size: 23.7 MB (23650579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efdaaeaedb83c91d3c76d3c282e7882dae772b7bcc67adbfa2745ab804b287ab`  
		Last Modified: Tue, 14 Jul 2026 02:14:49 GMT  
		Size: 51.3 MB (51260766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:bookworm-slim` - unknown; unknown

```console
$ docker pull swift@sha256:d1b0e67fd0de734162d5024224195428bf0097e7e3263c36a4e51e2ad0587fd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4170970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:105e87eaad5666fd94a91ea94059a92e70ad16accc0afad7ecc6b14887541f9a`

```dockerfile
```

-	Layers:
	-	`sha256:249957cb357498ad08a38cae4e38c36c39cacb0dd7904281922ba77427ce88e5`  
		Last Modified: Tue, 14 Jul 2026 02:14:48 GMT  
		Size: 4.2 MB (4157044 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3435566141249cf64c4412c4a7ba78dffaafc85a890e42fd5c0b5d853b4c957f`  
		Last Modified: Tue, 14 Jul 2026 02:14:48 GMT  
		Size: 13.9 KB (13926 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:8453a78c1f229f50df6783b76f366e2b73d6e23492ec44c1e83d1728f8f989af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122394600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c350bf974c53291f5dfbb0c4a939aaa4228aca0ad52eae3de1f80a8cc7af5d9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:20:47 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 14 Jul 2026 02:20:47 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 14 Jul 2026 02:20:47 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:20:47 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 14 Jul 2026 02:20:47 GMT
ARG SWIFT_PLATFORM=debian12
# Tue, 14 Jul 2026 02:20:47 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Tue, 14 Jul 2026 02:20:47 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Tue, 14 Jul 2026 02:20:47 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 14 Jul 2026 02:20:47 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 14 Jul 2026 02:21:31 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ed4c73358de8f078f8c4cab7bf7dd80978b70c7163ac80cbb91c9845c70b42`  
		Last Modified: Tue, 14 Jul 2026 02:21:49 GMT  
		Size: 23.5 MB (23464228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c6a7ffabd1f2287d9c8d57a90dda441bbf857be77308b4bffff0578e2cf018`  
		Last Modified: Tue, 14 Jul 2026 02:21:50 GMT  
		Size: 50.5 MB (50546683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:bookworm-slim` - unknown; unknown

```console
$ docker pull swift@sha256:e0887f81bbf4f823ee191126a8d27983ff6edb44b9dcbfc51ad7660f0c86572d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4171354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4f9d5a03b81c032fbef82a429ba7a024c8cc764099b9f076e792012dc5b0e30`

```dockerfile
```

-	Layers:
	-	`sha256:45d8ff2ef0da8fc033c6b95b2eaa287d84ed59dc4e676d9ed3af4d17fab56c22`  
		Last Modified: Tue, 14 Jul 2026 02:21:48 GMT  
		Size: 4.2 MB (4157321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31c4fe45362afc7373f1d0211eba7bb02b798259f4166d43de4efa941acf0256`  
		Last Modified: Tue, 14 Jul 2026 02:21:48 GMT  
		Size: 14.0 KB (14033 bytes)  
		MIME: application/vnd.in-toto+json
