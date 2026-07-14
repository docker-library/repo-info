## `swift:bookworm-slim`

```console
$ docker pull swift@sha256:7360072f8216756d7db232c7ec23e8e4f19b6e5da8afa4d7f62aba58aa122361
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
$ docker pull swift@sha256:3b63cd44352113cdfc6adf0ad24d35d5ee3596e0864b16d5cd1d5adce54fb87a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122400360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c1cc72761104c5cc6d12b4878f9967a21af4aec06af15dba56ebb69e2629f42`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Tue, 30 Jun 2026 18:55:41 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Tue, 30 Jun 2026 18:55:41 GMT
LABEL description=Docker Container for the Swift programming language
# Tue, 30 Jun 2026 18:55:41 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Tue, 30 Jun 2026 18:55:41 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Tue, 30 Jun 2026 18:55:41 GMT
ARG SWIFT_PLATFORM=debian12
# Tue, 30 Jun 2026 18:55:41 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Tue, 30 Jun 2026 18:55:41 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Tue, 30 Jun 2026 18:55:41 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Tue, 30 Jun 2026 18:55:41 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Tue, 30 Jun 2026 18:56:25 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=debian12 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gpg && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gpg # buildkit
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c1572113a711fd7a53716cae08fe5f9df116ffc0a8beeedda82b2a9c8a773e7`  
		Last Modified: Tue, 30 Jun 2026 18:56:40 GMT  
		Size: 23.5 MB (23464482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f71c044922eda44d523da1b218c4be42d8898e7b1193c34f1d069042af02e93`  
		Last Modified: Tue, 30 Jun 2026 18:56:41 GMT  
		Size: 50.5 MB (50546677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:bookworm-slim` - unknown; unknown

```console
$ docker pull swift@sha256:fe1f2d54d3804e546cf2a88eb57c3e90538db6a57a5f2ba2e98890d554de9d67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4171318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630f4179ba6bf508b3db6af0055f5dd84b885d09a0c97efdf644a9128537648a`

```dockerfile
```

-	Layers:
	-	`sha256:ed44eedfb642d2ff48d23d3161907cb92d5ba4d92277af629a288518d861140d`  
		Last Modified: Tue, 30 Jun 2026 18:56:38 GMT  
		Size: 4.2 MB (4157285 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:942ed7b002c4291e0e5beeb89537ae050264ac0c6777b1bea5b601f1aa57436f`  
		Last Modified: Tue, 30 Jun 2026 18:56:38 GMT  
		Size: 14.0 KB (14033 bytes)  
		MIME: application/vnd.in-toto+json
