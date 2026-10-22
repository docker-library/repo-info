## `eclipse-temurin:11-jre-alpine`

```console
$ docker pull eclipse-temurin@sha256:165a727edc500119b207bc01c81a7924e84c27549b6ef6debaed0f894489a2cb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:11-jre-alpine` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:4fb51fa3b9c9f7bec9119bddeb7b5cb49353f7994ba66f6793dbac65bd0398b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.5 MB (64502657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb817771f6c22544818a6ffd1a2631dbd16aa3861884a544b5f7fb423f5be456`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:57:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 22:57:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:57:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 22:57:09 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 22:57:09 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Wed, 21 Oct 2026 22:57:13 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='bb9951aab1dcd0f6c2b22d76a46773100a6639ad199f339ff288d360b3217ae2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_alpine-linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 21 Oct 2026 22:57:13 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 22:57:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:57:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8240088e23cd2aba3ff49d644976cfc5e68620163fb7643d7d532901f6a8e059`  
		Last Modified: Wed, 21 Oct 2026 22:57:23 GMT  
		Size: 17.0 MB (16967493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef76cce83a7d5e0e78ff0010a8a4178f30c3d2e1dec15e866871c7aae663335`  
		Last Modified: Wed, 21 Oct 2026 22:57:24 GMT  
		Size: 43.7 MB (43679465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:003f4342cff47205ace9c811419fa8ed91e6e47ddd39b4bacb42534af88f6444`  
		Last Modified: Wed, 21 Oct 2026 22:57:22 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35ee6e2002b699bcbf90f0eccc513ce003375f39eb4e2183d4bacece30813440`  
		Last Modified: Wed, 21 Oct 2026 22:57:23 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:583a8b9a64da149f7c233dad8c12b58435a10929350f14fdc40005eaf7e25961
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **917.2 KB (917223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37361c004c80148d6410e5ebc1edfc6a04423af0302b4ac1a566cd1fa44b87d0`

```dockerfile
```

-	Layers:
	-	`sha256:17824e2a1280a9eb64613adb059f5aed0538908e5b3b32eb39d58d947447023e`  
		Last Modified: Wed, 21 Oct 2026 22:57:23 GMT  
		Size: 897.6 KB (897572 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99cf36781c0f7284cce9b1d2ff2ce4bc10aadabd738a41aa01cd2a6fd8034c2d`  
		Last Modified: Wed, 21 Oct 2026 22:57:23 GMT  
		Size: 19.7 KB (19651 bytes)  
		MIME: application/vnd.in-toto+json
