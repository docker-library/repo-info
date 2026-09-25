## `eclipse-temurin:25-jre-alpine-3.21`

```console
$ docker pull eclipse-temurin@sha256:b074e7d30b1498e131882cf2da611992406851acab05d1daef24a941c837dacb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:25-jre-alpine-3.21` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:a6bb228ae20b7ad89c9a5a8fd96af27f5b461f4dd0683a0d3fdefa6e51d22fbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75162540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bafc9163558d040b64eb7185c4fb2cf41b1a3b11f471f7e15470248eae3512aa`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:38:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:38:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:38:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:38:56 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:38:56 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 25 Sep 2026 22:39:00 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='0200539904de3669dce5c435aa1ef71f530325d6461c76d85fe90d5424e4974e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='cde9e39d32cab07722cb3218d91980091012f16333f8a298c40896cd05e2ffea';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Fri, 25 Sep 2026 22:39:00 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:39:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:39:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5f198268bf2ea55c05669922173f5b817c45dbc7664df63a27992470d8857d8`  
		Last Modified: Fri, 25 Sep 2026 22:39:12 GMT  
		Size: 9.4 MB (9413981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677a58f9ad179870d8b59f6c9f324972dff1a9840b58299692b843bb47b4b383`  
		Last Modified: Fri, 25 Sep 2026 22:39:14 GMT  
		Size: 62.1 MB (62119948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b7999f1e171c19c440bf78a34053b9184d96a6c4003eaa7fe8d614569f261f`  
		Last Modified: Fri, 25 Sep 2026 22:39:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f92bb05aabd5039727243aa66d6fdbfe60200530fd40b5dbb7f7f12b1ff471db`  
		Last Modified: Fri, 25 Sep 2026 22:39:12 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:96de08a9967e5e405e30337de1933a9a8c17a8f60120dfea6395bb3dd2232d3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **802.5 KB (802545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d126aefb0d4907e5744579de322c61e6252a0d0edbaa55812bb29f62d6957ef8`

```dockerfile
```

-	Layers:
	-	`sha256:7cb86875433d2833cc60237bff2f6e69212d360e3bc13608cd5e2fe089c64b18`  
		Last Modified: Fri, 25 Sep 2026 22:39:12 GMT  
		Size: 783.4 KB (783392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a77cc776a1fbfe80a6c5dca22079c0345745bbc68b6b298dea2a6cdb5a2a94d`  
		Last Modified: Fri, 25 Sep 2026 22:39:12 GMT  
		Size: 19.2 KB (19153 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-alpine-3.21` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:6cd13b413f3fadf9d8c904ecb81e6bda5bbe43b36c7e6bfdc56d3f9e95ac0a66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.4 MB (74444108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d59b3da7f45299b72dcd949158da90207ed1664338f7dcbd3f4a60956fc76435`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:00 GMT
ADD alpine-minirootfs-3.21.8-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:00 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:38:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:38:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:38:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:38:02 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:38:02 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 25 Sep 2026 22:38:06 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='0200539904de3669dce5c435aa1ef71f530325d6461c76d85fe90d5424e4974e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='cde9e39d32cab07722cb3218d91980091012f16333f8a298c40896cd05e2ffea';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Fri, 25 Sep 2026 22:38:06 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:38:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:38:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:248d4d6535e8932d2b51acdf49a4ca8d87629cd408a02bd59788b4c31e3d0c28`  
		Last Modified: Thu, 17 Sep 2026 20:38:06 GMT  
		Size: 4.0 MB (3974501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a510a4fa8187e20f45f34ed87dd823a060b58da7c9c87392577809ce2b0213`  
		Last Modified: Fri, 25 Sep 2026 22:38:19 GMT  
		Size: 9.4 MB (9432528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:407223b9d00e96d7de1d436951938cd80f18e727ed4d39f5d94ba7bd2fd0bd1f`  
		Last Modified: Fri, 25 Sep 2026 22:38:20 GMT  
		Size: 61.0 MB (61034491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d9170fa3843990390521a880ea500db5c5e1cfbe5607f189f48052c30c10a95`  
		Last Modified: Fri, 25 Sep 2026 22:38:18 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33754f7b3d479fa32fb2dff6d3725515e25b7a7df16820c0f5b42248a6127e3`  
		Last Modified: Fri, 25 Sep 2026 22:38:16 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2b4a6e1cefb12e80e66e62944c64f70056a39df66801eba1cd0216520531312d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **802.1 KB (802066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30ebc81b1d0e9ef78616f3384c3afd24bfdeb36192ad1736a7d52a27896623f3`

```dockerfile
```

-	Layers:
	-	`sha256:e5aa4c8bf9073f0bdfac560ac1c6f77f2e5a654dd940566d2eca237f0eb44243`  
		Last Modified: Fri, 25 Sep 2026 22:38:19 GMT  
		Size: 782.8 KB (782803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:572f12746ab411068049bb93bf20ef0182b3f13e95c63aebf4670e52ef1b852c`  
		Last Modified: Fri, 25 Sep 2026 22:38:19 GMT  
		Size: 19.3 KB (19263 bytes)  
		MIME: application/vnd.in-toto+json
