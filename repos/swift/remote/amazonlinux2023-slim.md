## `swift:amazonlinux2023-slim`

```console
$ docker pull swift@sha256:a7cbe222df0045cb91077d93964fb528b8e4d265d1bbd04f68e10952cdf0fbac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:amazonlinux2023-slim` - linux; amd64

```console
$ docker pull swift@sha256:5637bf70ee7d107eef43c98223aeec7604e1c4268e5358d25cac4ae0e8d7591c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.5 MB (282481726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89c52ac4dfb68b4afc5c4bf2f097a170ee5b241449c9ce549cfff6e3f4ebbf2f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:04 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 23:50:01 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 18 Sep 2026 23:50:01 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 18 Sep 2026 23:50:01 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 18 Sep 2026 23:50:01 GMT
ARG SWIFT_PLATFORM=amazonlinux2023
# Fri, 18 Sep 2026 23:50:01 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Fri, 18 Sep 2026 23:50:01 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Fri, 18 Sep 2026 23:50:01 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 18 Sep 2026 23:50:01 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 18 Sep 2026 23:50:01 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN dnf -y swap gnupg2-minimal gnupg2-full # buildkit
# Fri, 18 Sep 2026 23:50:39 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && dnf -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed6feace115b6d2a7b522a948ffe862fb0abcc8e6ea02ded95e9a861fde6a61`  
		Last Modified: Fri, 18 Sep 2026 23:51:02 GMT  
		Size: 171.7 MB (171688332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4036d2354c18596f1e1758996644f052a72f5bbb51c0d580247057e440610d3b`  
		Last Modified: Fri, 18 Sep 2026 23:51:00 GMT  
		Size: 56.2 MB (56207112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2023-slim` - unknown; unknown

```console
$ docker pull swift@sha256:50cdc879d7ea11d2fdc8122e72d38bdad80555cb3e03104cf85133cbd2a4a2ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6471691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aa349ed8551d8ba5ae31598dfe7a1c3c8cd5919efcd3bc9440458700a575845`

```dockerfile
```

-	Layers:
	-	`sha256:ecf4246e311da0113f5e520bf400beb66da4103e83e2845a13d56922e98914d4`  
		Last Modified: Fri, 18 Sep 2026 23:50:58 GMT  
		Size: 6.5 MB (6458561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac5e8ee2083ea35f610a841e76df7ef9f33dc9b682ebfd67ed5cf123d798c265`  
		Last Modified: Fri, 18 Sep 2026 23:50:58 GMT  
		Size: 13.1 KB (13130 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:amazonlinux2023-slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:8467e14ccf029664f99576aa2e0e0d3475d359e2dbc7b2b4ce124ffce8f728e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (278971456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28d518d44305de274f04c475b59abbe892378d156b5a25ec6484bb841be7f1b8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 23:49:49 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 18 Sep 2026 23:49:49 GMT
LABEL description=Docker Container for the Swift programming language
# Fri, 18 Sep 2026 23:49:49 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Fri, 18 Sep 2026 23:49:49 GMT
ARG SWIFT_PLATFORM=amazonlinux2023
# Fri, 18 Sep 2026 23:49:49 GMT
ARG SWIFT_BRANCH=swift-6.4.0-release
# Fri, 18 Sep 2026 23:49:49 GMT
ARG SWIFT_VERSION=swift-6.4.0-RELEASE
# Fri, 18 Sep 2026 23:49:49 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Fri, 18 Sep 2026 23:49:49 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Fri, 18 Sep 2026 23:49:49 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN dnf -y swap gnupg2-minimal gnupg2-full # buildkit
# Fri, 18 Sep 2026 23:50:27 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=amazonlinux2023 SWIFT_BRANCH=swift-6.4.0-release SWIFT_VERSION=swift-6.4.0-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(rpm --eval '%{_arch}')";     url=;     case "${ARCH_NAME##*-}" in         'x86_64')             OS_ARCH_SUFFIX='';             ;;         'aarch64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && dnf -y install tar gzip     && tar -xzf swift.tar.gz --directory / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz # buildkit
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1929cb1e4586b1a3da698f7f36494cfd3b9f4012c367c3f8c9fdfc5dbc5af2fc`  
		Last Modified: Fri, 18 Sep 2026 23:50:51 GMT  
		Size: 169.9 MB (169919339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d51ae64b045868ba0c752dd89d8d798ffb2394e4f657e5782af0edee17e5cd12`  
		Last Modified: Fri, 18 Sep 2026 23:50:49 GMT  
		Size: 55.6 MB (55599544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:amazonlinux2023-slim` - unknown; unknown

```console
$ docker pull swift@sha256:9658e5f9ffcf7b7f4bba414e5d272d19b144ae498970226640421176451e735c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6471304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17fd6fa00b862839ea283e3ba5517b5bdd69b51f6a94a1c893c749ec0153c610`

```dockerfile
```

-	Layers:
	-	`sha256:3ee0eba6bbe9feda2f585327e29e7c061aa600016790c9d1e0f068d84e01bbae`  
		Last Modified: Fri, 18 Sep 2026 23:50:46 GMT  
		Size: 6.5 MB (6458068 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c3dd098517edc52f8f7f01b21f283443cb33c1291ba7724b0212b05aa4f6b9a`  
		Last Modified: Fri, 18 Sep 2026 23:50:45 GMT  
		Size: 13.2 KB (13236 bytes)  
		MIME: application/vnd.in-toto+json
