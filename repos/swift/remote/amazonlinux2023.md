## `swift:amazonlinux2023`

```console
$ docker pull swift@sha256:7981c81330287c4dc4c72c9770cc10bc8a22701bd25fcf8aa009cb9825ef5a5a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:amazonlinux2023` - linux; amd64

```console
$ docker pull swift@sha256:ff5d1f3dc4809c57b829e5ea165c055ea829183db740a82c7c674b0f02448aa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1487058460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fee049653c58019fb419ca5777be93212eee32d38dac26e5cb060b48d10bb91f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:13:55 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Sat, 18 Jul 2026 00:13:55 GMT
LABEL description=Docker Container for the Swift programming language
# Sat, 18 Jul 2026 00:13:55 GMT
RUN dnf -y install   binutils   gcc   git   unzip   glibc-static   gzip   libbsd   libcurl-devel   libedit   libicu   libstdc++-static   libuuid   libxml2-devel   openssl-devel   tar   tzdata # buildkit
# Sat, 18 Jul 2026 00:13:58 GMT
RUN dnf -y swap gnupg2-minimal gnupg2-full # buildkit
# Sat, 18 Jul 2026 00:13:58 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Sat, 18 Jul 2026 00:13:58 GMT
ARG SWIFT_PLATFORM=amazonlinux2023
# Sat, 18 Jul 2026 00:13:58 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Sat, 18 Jul 2026 00:13:58 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Sat, 18 Jul 2026 00:13:58 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Sat, 18 Jul 2026 00:13:58 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Sat, 18 Jul 2026 00:14:35 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Sat, 18 Jul 2026 00:14:35 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afe674b1e44360f5658941267a9cded6f866a5631900e600a3ea7fb74abcd9ee`  
		Last Modified: Sat, 18 Jul 2026 00:17:10 GMT  
		Size: 288.9 MB (288917254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f60d02b72d663e57ea338e18e8908847a6b752ab0dafe300a903b110089b950`  
		Last Modified: Sat, 18 Jul 2026 00:17:05 GMT  
		Size: 24.2 MB (24155152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df3e8ff26215c189d4f2b684f1a0c882440fed3ffd5c7427b175bce473dc304f`  
		Last Modified: Tue, 30 Jun 2026 19:00:36 GMT  
		Size: 1.1 GB (1119411616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e46caaba0e927b79f4a6a9a36ddcecabe412a10a8b957fac17c4f2023bec101`  
		Last Modified: Sat, 18 Jul 2026 00:17:04 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2023` - unknown; unknown

```console
$ docker pull swift@sha256:5e91949ee6fbd1d6d953a2317b185e0ccac514003649eb08fd82e6971a1893be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13814095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:478f743f9c5acb060ea824d1fb122181b08e254cdfb6ca5969fa3a855cb3551c`

```dockerfile
```

-	Layers:
	-	`sha256:c2de65c4d888dd9948611ee31f1e9d57589ae384f034cab59b29aa569beee502`  
		Last Modified: Sat, 18 Jul 2026 00:17:05 GMT  
		Size: 13.8 MB (13797870 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2703835c4dbd96ca6974771ecc09b9e21d965fab02be8f985627cd88b12c27c3`  
		Last Modified: Sat, 18 Jul 2026 00:17:04 GMT  
		Size: 16.2 KB (16225 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:amazonlinux2023` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:ca1ae914c9cdab4c923f7a2b2d19b5e9291a2770a2860b051ac4f262637f5a01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1469099985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de21554fba33722d7853c3c36d33e8218bd0e43642727a9a297b92026ed5945b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:13:43 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Sat, 18 Jul 2026 00:13:43 GMT
LABEL description=Docker Container for the Swift programming language
# Sat, 18 Jul 2026 00:13:43 GMT
RUN dnf -y install   binutils   gcc   git   unzip   glibc-static   gzip   libbsd   libcurl-devel   libedit   libicu   libstdc++-static   libuuid   libxml2-devel   openssl-devel   tar   tzdata # buildkit
# Sat, 18 Jul 2026 00:13:46 GMT
RUN dnf -y swap gnupg2-minimal gnupg2-full # buildkit
# Sat, 18 Jul 2026 00:13:46 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Sat, 18 Jul 2026 00:13:46 GMT
ARG SWIFT_PLATFORM=amazonlinux2023
# Sat, 18 Jul 2026 00:13:46 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Sat, 18 Jul 2026 00:13:46 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Sat, 18 Jul 2026 00:13:46 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Sat, 18 Jul 2026 00:13:46 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Sat, 18 Jul 2026 00:21:25 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && echo $SWIFT_BIN_URL     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && chmod -R o+r /usr/lib/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
# Sat, 18 Jul 2026 00:21:25 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN swift --version # buildkit
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2887ec74e3077946450ae8ef64dd0292dd09fdea20c312fc64f251075417d622`  
		Last Modified: Sat, 18 Jul 2026 00:23:49 GMT  
		Size: 280.4 MB (280446524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d28dca6146f174b015730016e3fc80f9e3a5203ea51df0d385515926ae9d301e`  
		Last Modified: Sat, 18 Jul 2026 00:23:45 GMT  
		Size: 23.8 MB (23755214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c501b0b9e3b07cb98c1c4c814abf286c49cd43b3b040a59432e454bfeaec6f47`  
		Last Modified: Tue, 30 Jun 2026 19:00:19 GMT  
		Size: 1.1 GB (1111448842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:418f419048bd68cac6cca7c6f721ab806eb25af012e959d6e14ca0a2bec1e7ab`  
		Last Modified: Sat, 18 Jul 2026 00:23:43 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2023` - unknown; unknown

```console
$ docker pull swift@sha256:472434dec717e098015c9973be113e12b23b13a2817bba3d2a0e09482850c564
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13684287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3896ef5fe0aa45349b6b40ee356ee222215dcd78e42384550757ebe4f1b96915`

```dockerfile
```

-	Layers:
	-	`sha256:831140009b420593e7c163744e8f410bf2f269dd2661a4f0f145fdf5b465a117`  
		Last Modified: Sat, 18 Jul 2026 00:23:44 GMT  
		Size: 13.7 MB (13667923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc513c7ba0bb0bf70bf9826d86a90dd68e5498cc0f52e1dd5f1c91ac9ef73b2d`  
		Last Modified: Sat, 18 Jul 2026 00:23:43 GMT  
		Size: 16.4 KB (16364 bytes)  
		MIME: application/vnd.in-toto+json
