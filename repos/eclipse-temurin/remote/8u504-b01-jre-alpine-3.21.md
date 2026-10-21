## `eclipse-temurin:8u504-b01-jre-alpine-3.21`

```console
$ docker pull eclipse-temurin@sha256:22b61cd6042b4bb6df31049e91940cc49365271ef5997179ff330e178714238b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8u504-b01-jre-alpine-3.21` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:b2ff5aaafc3c6da3a2215701c1a3143325550f1f1a90b5cf8fc13d5bdea6d034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62106885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91b1cb5ac973d7b44ad47ffdd0777f220a04696ef483af7aed5dd66198e4d918`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:19:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 21:19:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:19:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 21:19:38 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 21:19:38 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Wed, 21 Oct 2026 21:19:41 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='0b8a29d654d4ea5cd2ee7bbcf3e89fe0f66596eb17870255e683a526757d2b8c';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 21 Oct 2026 21:19:41 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 21:19:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:19:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b900ab03bbb04fde7909455911982ca312d5f4274db153a603f340a062838c`  
		Last Modified: Wed, 21 Oct 2026 21:19:51 GMT  
		Size: 16.2 MB (16237866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283191db9fb3993ceb47b77f05efa5ea547ae3a10ca1ffdf608fda51f8a1bdad`  
		Last Modified: Wed, 21 Oct 2026 21:19:52 GMT  
		Size: 42.2 MB (42241034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d182831f6b30495d3650788f6bcfa5c294ad8a28d23d05b4aea4cdb9657bebf0`  
		Last Modified: Wed, 21 Oct 2026 21:19:50 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92636df8eda98c3385df7d05f070d8bbf9013157095d01d0a4f0f87b74f49378`  
		Last Modified: Wed, 21 Oct 2026 21:19:50 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:85bc1694d816011ce4cc08dac66b33e6a7cf11595bd463cb388be26ed2cc4198
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **928.2 KB (928185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd463b76a3609b7c28d62d39831c08c76b65aa664c728e244346147d33db09a6`

```dockerfile
```

-	Layers:
	-	`sha256:4d603d9c632d2185571a0d00c69139ed12fe3200b0d4a63284a71b2cda9e1cc9`  
		Last Modified: Wed, 21 Oct 2026 21:19:50 GMT  
		Size: 909.3 KB (909263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26830ffab97cb0c8febb95df029a36ae00c43a50f5b4c288711602be0322919b`  
		Last Modified: Wed, 21 Oct 2026 21:19:50 GMT  
		Size: 18.9 KB (18922 bytes)  
		MIME: application/vnd.in-toto+json
