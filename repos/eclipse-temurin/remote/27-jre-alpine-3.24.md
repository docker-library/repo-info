## `eclipse-temurin:27-jre-alpine-3.24`

```console
$ docker pull eclipse-temurin@sha256:51f686a5322c0b762dff27e8e94b4b6582d7e71321d3a23b1f3c53b4078aabc5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:27-jre-alpine-3.24` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:e9b4a6016596640af6cec1211f6bf2f2408ee11b3015fa821fcfab3a12937ab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.7 MB (78663827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dcfafc47ec33dcd8b7c3279b91de4f9141500707e2760850c6a966982c9bdb1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:44:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:44:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:44:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:44:16 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:44:16 GMT
ENV JAVA_VERSION=jdk-27.0.1.1+4
# Fri, 20 Nov 2026 17:44:21 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='827630703218b88a74f554d10d6e7fd04fa4d16de46f63f8b18acf69c5114a7c';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jre_aarch64_alpine-linux_hotspot_27.0.1.1_4.tar.gz';          ;;        x86_64)          ESUM='b77dceb6bc1ddcddb2a1c291d1e972d5e6eda22c15c4cb843c95ea36f833023f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jre_x64_alpine-linux_hotspot_27.0.1.1_4.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Fri, 20 Nov 2026 17:44:21 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:44:22 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:44:22 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33633c5d1c8c78fd794b067a951d021d57c5153b5e725218ae652efdf635c7ba`  
		Last Modified: Fri, 20 Nov 2026 17:44:34 GMT  
		Size: 12.0 MB (11984363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca45f9b9a8725073e00e5d170fd60f3d1e3a563d92e1994f03c7a201c99bb4d`  
		Last Modified: Fri, 20 Nov 2026 17:44:36 GMT  
		Size: 62.8 MB (62823201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1db747afb73181ee2d0f8b520aedcd84f03734202d0e855cd7d9a68fa04c337`  
		Last Modified: Fri, 20 Nov 2026 17:44:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06db830b31234d3f9b01b233a6c9f0ae576634c25e05431d72a1b00e6204f6f3`  
		Last Modified: Fri, 20 Nov 2026 17:44:34 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-jre-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1013d93f21d6c0b6f40e13ef783d138c2ea881ee74cfdf0e66affbf1a4f07ace
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **801.5 KB (801504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e010f0fa46732f09cd2c3897ae72abc21a8f844946b79b6a7be6ac005576da1a`

```dockerfile
```

-	Layers:
	-	`sha256:d3c69abb08de7c753334f208b6fcf4d70193ce8e908fe50892d180cb04d95787`  
		Last Modified: Fri, 20 Nov 2026 17:44:34 GMT  
		Size: 781.7 KB (781672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35331ef48992e2bc49ceb0e020ee9cf893b5ca21b05fdf3dab1ab6f4e07a8ccb`  
		Last Modified: Fri, 20 Nov 2026 17:44:34 GMT  
		Size: 19.8 KB (19832 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-jre-alpine-3.24` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:82b72c3020eec52050656757fc79131c6cfe03f86e7a68a083eb546a316da4c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.2 MB (78180562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1de380195d01c83bab1f997e889c0c218333d56868f217ecac8d7a5bdc716ad6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:43:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:43:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:43:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:43:41 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:43:41 GMT
ENV JAVA_VERSION=jdk-27.0.1.1+4
# Fri, 20 Nov 2026 17:43:47 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='827630703218b88a74f554d10d6e7fd04fa4d16de46f63f8b18acf69c5114a7c';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jre_aarch64_alpine-linux_hotspot_27.0.1.1_4.tar.gz';          ;;        x86_64)          ESUM='b77dceb6bc1ddcddb2a1c291d1e972d5e6eda22c15c4cb843c95ea36f833023f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jre_x64_alpine-linux_hotspot_27.0.1.1_4.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Fri, 20 Nov 2026 17:43:47 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:43:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:43:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f83ae29dfcd4c1fedfed67b7dc49157217f61bd1bcfb9c344207db103c26171`  
		Last Modified: Fri, 20 Nov 2026 17:44:00 GMT  
		Size: 12.3 MB (12292588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4278e3030d8c25f5fafd5d5c4acaa7b893bd6ba6ff06ab8959f284a8409c648f`  
		Last Modified: Fri, 20 Nov 2026 17:44:01 GMT  
		Size: 61.7 MB (61694792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24089bda3c85e82f3058c1561a6112eb8a81623d5360d6df34661bbdcf66cec3`  
		Last Modified: Fri, 20 Nov 2026 17:43:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc6b28bd48d94871dfefb789fa559eae8ab656f19187cf1702aa877437bb96cd`  
		Last Modified: Fri, 20 Nov 2026 17:43:55 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-jre-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9ac7e2d4f2b1a4c79294a91209adbf65a449a2f4cb3d472f6292d1e35f7ce539
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **800.4 KB (800424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59534f68e5de657145c41773959e48d8a48f09f7d2e7548e760f772cd33f3965`

```dockerfile
```

-	Layers:
	-	`sha256:735ea1f798acd903186e7144a08c062ba926ea4a313c247644aa837558645c10`  
		Last Modified: Fri, 20 Nov 2026 17:44:00 GMT  
		Size: 780.5 KB (780457 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e598704da3fd5850dfc7a08a81ae876dcb1601968be6dfd918f335317b0b7b1`  
		Last Modified: Fri, 20 Nov 2026 17:43:59 GMT  
		Size: 20.0 KB (19967 bytes)  
		MIME: application/vnd.in-toto+json
