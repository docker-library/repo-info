## `eclipse-temurin:21-jre-alpine`

```console
$ docker pull eclipse-temurin@sha256:51ab5e3302e7141ce665ca3ea85e8b5cd648eafbc3c0c90dd79d6537684e4555
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:21-jre-alpine` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:bec16bceecb1a89defa333c77ac76d29a6b0d59fcb4f50218b476efa68e30bb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.1 MB (74081196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0f52469e5e279b0b7e90685b22ac3345d22eec3fa1be0583e39df18282b344c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:35:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:04 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:35:04 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:37:54 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='98e15ae359e1f87160ee4c0abb43336513e41712d439fd4a805a5474af32b2c7';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='7bc7c2f9ba5ffea5f727e14581964bd54294b8edc2be9a79ea6393f8d0799200';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 25 Sep 2026 22:37:54 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:37:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:37:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3daccf082f0d6dd742c035c3462b3d39cf08cfd1ab9f511c1d592fa15d8d96`  
		Last Modified: Fri, 25 Sep 2026 22:35:16 GMT  
		Size: 17.0 MB (16972202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2242b49db9769393ae8d0d9f9742407ad40a7611accc1c189f0ffac0a0530221`  
		Last Modified: Fri, 25 Sep 2026 22:38:06 GMT  
		Size: 53.3 MB (53256665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3405c83ad56324f504856a713a1a5d6c28d82a78170a4dd4097c209f8517c18`  
		Last Modified: Fri, 25 Sep 2026 22:38:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5abc2579d091ef7359d2654aa76115280a45a0c81c04e644017e6cb1ef45295b`  
		Last Modified: Fri, 25 Sep 2026 22:38:04 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:0d775ee2d1c1a1b7dfbfacf92fa5e4effe08fbc8e1c2320996ded834f5bd78e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **908.6 KB (908628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d925c1a80b4fee384c9c09f2ac9f48fb7aab1ca4c630070b37eb1202ab56ea8`

```dockerfile
```

-	Layers:
	-	`sha256:faf28bf08c7e0c26cb3fa1085952b9b647ac3c3b8659e303e774ff080afbcc3e`  
		Last Modified: Fri, 25 Sep 2026 22:38:04 GMT  
		Size: 888.9 KB (888893 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe388510bd82695ed2c42090b8ff78d9242068e4bb5fc1d67eca8fb7f97a2525`  
		Last Modified: Fri, 25 Sep 2026 22:38:04 GMT  
		Size: 19.7 KB (19735 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:7d476ab4df209f15b0f7b2f26eb52bf81a90a8f88576892904df8fa4a97fc048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73410730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbb8d91cde086a3c5f5fdc1b22e5c825db69771aa2c8c6e8429127e97dbaab3d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:36:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:36:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:36:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:36:51 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:36:51 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:36:55 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='98e15ae359e1f87160ee4c0abb43336513e41712d439fd4a805a5474af32b2c7';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='7bc7c2f9ba5ffea5f727e14581964bd54294b8edc2be9a79ea6393f8d0799200';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 25 Sep 2026 22:36:55 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:55 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:55 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5063e83da68bce2695069ca8260ed5d9ef1927ff03f9f0b7ff0af4e736d0c5c`  
		Last Modified: Fri, 25 Sep 2026 22:37:07 GMT  
		Size: 16.9 MB (16896627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89353c5827a60532ea55b749dccecf05d297b18210f8fa40e3e64be39e8ec09d`  
		Last Modified: Fri, 25 Sep 2026 22:37:08 GMT  
		Size: 52.3 MB (52323856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc16cce3c3e4b11becdb6c87f9a883c034eadebbb60d66fa46f838c6953e94b0`  
		Last Modified: Fri, 25 Sep 2026 22:37:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23e2976f95e64f0a33600dd4ba28b88b637584eedeeca850d0d7e88357a7b99e`  
		Last Modified: Fri, 25 Sep 2026 22:37:06 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4748e6c1d1c0a5592f4a7c3d6eea1d0d0a3fafe36619b839e6776d3d6a997e9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **907.5 KB (907550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e89c485de7dfa3e7d77df8e891646f21bcc509d86b28c357bef59554d020752f`

```dockerfile
```

-	Layers:
	-	`sha256:8d24d6e65b9712d7ede610d367de2fb0173739626da9ab4b48c1884e338494a9`  
		Last Modified: Fri, 25 Sep 2026 22:37:06 GMT  
		Size: 887.7 KB (887681 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d27d558240d86b7165496d6b81936a36fd600658205377adcd48108634a6d9df`  
		Last Modified: Fri, 25 Sep 2026 22:37:06 GMT  
		Size: 19.9 KB (19869 bytes)  
		MIME: application/vnd.in-toto+json
