## `eclipse-temurin:25-jre-alpine-3.24`

```console
$ docker pull eclipse-temurin@sha256:e1898fd6a11fc965a994d8ace186fd3585aeb636cf8f05f47a723fcfee0b0918
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:25-jre-alpine-3.24` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:daf693993291e9efe90b8b4c274b8b5a64ef2968759584d5f3a4cea104a9d93c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75545550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281ee69ea0feac09f2405efdd897224407272a7553aa8e8ca5e727b6e1fe0f01`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:19:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:19:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:19:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:19:00 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:19:00 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 05 Nov 2026 19:19:05 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='7c2b97b1b34947399f6c911e5aa69d171b745b0005ea79f47c4f3f1d47554bc2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_aarch64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='b46e981318decb77eda728e006c7678a1ac0c56cf81ae3ad245710c2e4fa1a55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_x64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Thu, 05 Nov 2026 19:19:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:19:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:19:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7dc3b41e2549bbda29ce631ed92075b356e7dbc8f190c19edbb271ef5462d71`  
		Last Modified: Thu, 05 Nov 2026 19:19:18 GMT  
		Size: 9.5 MB (9511808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:886b0114f75f2995724b83cf6e20572c51c82c5b0defa750c0ecb89660d7c999`  
		Last Modified: Thu, 05 Nov 2026 19:19:20 GMT  
		Size: 62.2 MB (62177478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46fe161d51f295187fa7ba49d3add5db4eed5c009e7aed28eb2fb3289b5edd26`  
		Last Modified: Thu, 05 Nov 2026 19:19:18 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5da56067b048e2730bf53dd8674506b9f2664b462ee47d167df0d10b41a91805`  
		Last Modified: Thu, 05 Nov 2026 19:19:18 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a265f546d1a228ebf5e24c21b28a66d876656781f99b7f5074a01ddc7af54982
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **803.9 KB (803939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fcdf0bbbcf29911e4c9eb5e00577b4231a8d6c61da325c4a5637b864de487a3`

```dockerfile
```

-	Layers:
	-	`sha256:859eb626161f53f096061a55fb1bc3a3c98ea35276f08fb18c5daf1ec09e38bd`  
		Last Modified: Thu, 05 Nov 2026 19:19:18 GMT  
		Size: 784.1 KB (784146 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1be29daa89f9c1619a5edc1d4b33c348d21f1abb5fe5738be8567aa3801a3c1f`  
		Last Modified: Thu, 05 Nov 2026 19:19:18 GMT  
		Size: 19.8 KB (19793 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-alpine-3.24` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:3540742c57759e52c85449b3af75e90125db06ceab0074dace63135264291471
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.8 MB (74785599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9f679699bf5792813dc9d332d12078af87bd2643c65eef8b3eeb2f0c2eb9c3a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:13:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:13:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:13:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:13:49 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:13:49 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 05 Nov 2026 19:13:54 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='7c2b97b1b34947399f6c911e5aa69d171b745b0005ea79f47c4f3f1d47554bc2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_aarch64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='b46e981318decb77eda728e006c7678a1ac0c56cf81ae3ad245710c2e4fa1a55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_x64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Thu, 05 Nov 2026 19:13:54 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:13:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:13:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f09bfd4bb8ddfc5e350cfa996f72655b4bd5b39f108c716161c0b7c0c5a7d2`  
		Last Modified: Thu, 05 Nov 2026 19:14:06 GMT  
		Size: 9.5 MB (9515935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c15f72c250e709973c14b155fdfb496d878976c427ef963953d5b1257eef9ef`  
		Last Modified: Thu, 05 Nov 2026 19:14:08 GMT  
		Size: 61.1 MB (61076478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ce68906111f194a8166982ce165787d92d483eebdf9396d3e39466ad2ebe75`  
		Last Modified: Thu, 05 Nov 2026 19:14:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a615e90d1a74011a2bca2db9d9e225a5dff2566bdd78a2dbf18bd030f80c6e15`  
		Last Modified: Thu, 05 Nov 2026 19:14:06 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:d5380d1804cebcc0e8216b141ca0e82f34cc0be342ad0b8cb85aefe026f75b5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **802.9 KB (802858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:097d0703ca6f60ade048c9d06aa22e9084275990f14412474f2b728051bc8b98`

```dockerfile
```

-	Layers:
	-	`sha256:16b2d0f0c44370642eee8a5c463097cddcccb7afef4a923b7a4037b04ae48f82`  
		Last Modified: Thu, 05 Nov 2026 19:14:06 GMT  
		Size: 782.9 KB (782931 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22735c9e00abff1b52219db724ad6f33459bff3a37f5fb88c1a7c0d5dd170950`  
		Last Modified: Thu, 05 Nov 2026 19:14:06 GMT  
		Size: 19.9 KB (19927 bytes)  
		MIME: application/vnd.in-toto+json
