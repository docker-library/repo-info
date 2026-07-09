## `swift:amazonlinux2023-slim`

```console
$ docker pull swift@sha256:2b9e47bacadbd6c3f05db2debe701139fed2a8246b36c11e009175a869f4d547
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:amazonlinux2023-slim` - linux; amd64

```console
$ docker pull swift@sha256:0d697145d9e0dd6d59627f88ae7351cd7e9ecdc16cf2a66bb7462becd9fbd5f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.5 MB (268463298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f35b8218359bcc4dc9c5a5233e05fc75e2218af2f9b84fdf3305154e596010fc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 08 Jul 2026 20:25:30 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:25:30 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:13:30 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 08 Jul 2026 21:13:30 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 08 Jul 2026 21:13:30 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 08 Jul 2026 21:13:30 GMT
ARG SWIFT_PLATFORM=amazonlinux2023
# Wed, 08 Jul 2026 21:13:30 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Wed, 08 Jul 2026 21:13:30 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Wed, 08 Jul 2026 21:13:30 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 08 Jul 2026 21:13:30 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 08 Jul 2026 21:13:30 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN dnf -y swap gnupg2-minimal gnupg2-full # buildkit
# Wed, 08 Jul 2026 21:14:06 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && dnf -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:7cc32cc3c75aa0d5acde5091a935996653f4e5538d4cea6ce80a19441163b9f1`  
		Last Modified: Wed, 08 Jul 2026 02:05:17 GMT  
		Size: 54.6 MB (54574155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f084eb3ee884e9cbe9ffdeac1c8f5c9a3f299dea1520f86e31d19454e397d1a2`  
		Last Modified: Wed, 08 Jul 2026 21:14:28 GMT  
		Size: 159.2 MB (159164326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e98cdb7114dc3690e4dd07e0f0ca7bee12e958d8d27098d5b9a7c9ee7ce5b934`  
		Last Modified: Wed, 08 Jul 2026 21:14:26 GMT  
		Size: 54.7 MB (54724817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2023-slim` - unknown; unknown

```console
$ docker pull swift@sha256:afb1ccea9fb189201e7d9953da32d2148836180d8c3059ce38344ed7c4b25580
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6471614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25bacf810276d84b9e2f5576828eb6e819633f2e926883486c390786bf5d6484`

```dockerfile
```

-	Layers:
	-	`sha256:537ccf237d32f046d08c88d5f780d12c802647e6f47ded464b814fb84292305b`  
		Last Modified: Wed, 08 Jul 2026 21:14:23 GMT  
		Size: 6.5 MB (6458485 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09ed62f350ef4491e82e1c07ade340ff6b71dfa9206f1e14e2dbf6b37fd65550`  
		Last Modified: Wed, 08 Jul 2026 21:14:23 GMT  
		Size: 13.1 KB (13129 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:amazonlinux2023-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:0dc01ddba1eca3947d9fd3404c43bdfff5aad56aefc20bbabd77676d320ef6f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265201930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d34142c75b936d297746476d9bfacee094299bca586e6292297a22f922f52115`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 08 Jul 2026 20:24:48 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:24:48 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:13:12 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 08 Jul 2026 21:13:12 GMT
LABEL description=Docker Container for the Swift programming language
# Wed, 08 Jul 2026 21:13:12 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Wed, 08 Jul 2026 21:13:12 GMT
ARG SWIFT_PLATFORM=amazonlinux2023
# Wed, 08 Jul 2026 21:13:12 GMT
ARG SWIFT_BRANCH=swift-6.3.3-release
# Wed, 08 Jul 2026 21:13:12 GMT
ARG SWIFT_VERSION=swift-6.3.3-RELEASE
# Wed, 08 Jul 2026 21:13:12 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Wed, 08 Jul 2026 21:13:12 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Wed, 08 Jul 2026 21:13:12 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN dnf -y swap gnupg2-minimal gnupg2-full # buildkit
# Wed, 08 Jul 2026 21:13:47 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.3.3-release SWIFT_VERSION=swift-6.3.3-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && dnf -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:d30c7cda96612bb38923feeb2e2027a5cbb8eab71cebfe3aad536791644c7ebf`  
		Last Modified: Wed, 08 Jul 2026 02:05:16 GMT  
		Size: 53.4 MB (53448934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f393de3c269b0f8530218ca4f90d9870211d393b177e48ba1a4d6eee7d8b3fb`  
		Last Modified: Wed, 08 Jul 2026 21:14:10 GMT  
		Size: 157.6 MB (157615098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1138a8b1772b25b987f2d163bd54db0b883e26b637b087a3413f787b5d629392`  
		Last Modified: Wed, 08 Jul 2026 21:14:08 GMT  
		Size: 54.1 MB (54137898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2023-slim` - unknown; unknown

```console
$ docker pull swift@sha256:4107b43603352c8d55b6a0ab0903b9a985dcb6dcc45fec616198c8da919c2f52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6471229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36fb0be1a230bfbb953cce5dc1fe9bde789cdb01a1d593da3ce8a0811b011165`

```dockerfile
```

-	Layers:
	-	`sha256:c88e6a9eaad85c7af2906fa3ed3406bd4a0785f6676d034173d95e68bf60fbf5`  
		Last Modified: Wed, 08 Jul 2026 21:14:05 GMT  
		Size: 6.5 MB (6457992 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18edf20e02ffedf92f3a5a1dd0ee0c8afd196bfba633152c499db1443f53ee6d`  
		Last Modified: Wed, 08 Jul 2026 21:14:05 GMT  
		Size: 13.2 KB (13237 bytes)  
		MIME: application/vnd.in-toto+json
