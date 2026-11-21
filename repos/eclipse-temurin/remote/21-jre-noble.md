## `eclipse-temurin:21-jre-noble`

```console
$ docker pull eclipse-temurin@sha256:ac595159aa2209f07a2331efa8a8ce4278b77a7b76a9365a0f173786d5067a9e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `eclipse-temurin:21-jre-noble` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:63826d91ac2cba21f66b41f24b53198eeb5e2a79e305ea2752de39f80da4c0e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.1 MB (106088278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b832f4daf9fa2fe6b15dc90281a98c831bdcf79e81fb10150def53f131e3113e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 17:44:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:44:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:44:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:44:07 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 17:44:07 GMT
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 17:44:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='18f44fab9065217f3ba61d0eef8a7b5f3c3713aa7293001b0d4ac10ede3850f0';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_x64_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        arm64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64el)          ESUM='7fbeba1a2ba03533657bf16655e642de7b32c1bf074a3e2eb406f7cfc0f29a14';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        riscv64)          ESUM='bc5acf3fb17a177e808cddad7c0b33613425fc0e5bf737212ab5de2a09283a80';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        s390x)          ESUM='bd196e3e017243173ad9a4fcf54abb5da91ebc9fca960578b1451dc6a3d6c48c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:44:10 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:44:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:44:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89675edcaa0889dfc9d8239869c09a66340de320d68d936bc057d6cb006da821`  
		Last Modified: Fri, 20 Nov 2026 17:44:23 GMT  
		Size: 23.1 MB (23065212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a11eb9ce87c9a6cb3a929d24890ada8871d83a7a235fb6d55ee3b4b3a64f49d`  
		Last Modified: Fri, 20 Nov 2026 17:44:24 GMT  
		Size: 53.2 MB (53227148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7ddf6f6a7b643b8b0ece5a29be0620d008d519aa0dd4012517451686ed44a13`  
		Last Modified: Fri, 20 Nov 2026 17:44:22 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a781fb066747512286cfbcad8a3f78beaffffec46b0bc3c8900cc0435bd218d3`  
		Last Modified: Fri, 20 Nov 2026 17:44:22 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:15088c5f0f3c721411358089ad448cf9915788419a1b388560dd4df88266ee02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3294196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a9f01207a9479fc6682bb112694244a360e58893c5208541e94e8bc51b6036c`

```dockerfile
```

-	Layers:
	-	`sha256:1d9bec56ed35c8f3dc83ca2c06903dc8fa345f7129fe114c2d57e89ea936ff19`  
		Last Modified: Fri, 20 Nov 2026 17:44:22 GMT  
		Size: 3.3 MB (3271692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e32fe5566b1d1df745a607337d4f1439d26b7b5d43e7d603212083a2cb9b71b`  
		Last Modified: Fri, 20 Nov 2026 17:44:22 GMT  
		Size: 22.5 KB (22504 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-noble` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:5e730d47a69254d2350597902ad9e1face33ab3091c124286e86262c525e45de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104208154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3da0c5892bb821723bd13a1d2abbb6147befe554612f872d51b242454e550b54`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:16:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:16:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:16:15 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:16:15 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:16:15 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 20 Nov 2026 03:17:19 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        riscv64)          ESUM='40c66736338abeb8b633d50036e5f83e3a3f55654723f31589fa09c081eec118';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:17:19 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:17:19 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:17:19 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:330f12a9acd71db4e1eae11fd24d9f12bc114fe5373c881480c966f5b9906ef4`  
		Last Modified: Fri, 20 Nov 2026 03:16:44 GMT  
		Size: 22.8 MB (22849363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d7c0a57374d45c78b923120c24f14b6d8b2cad87d56d79be4f45855e2108296`  
		Last Modified: Fri, 20 Nov 2026 03:17:33 GMT  
		Size: 52.4 MB (52390850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a6e883af4c7b216f8931515a93553529d6e40e4276d170d8d17a4e2c028fb9d`  
		Last Modified: Fri, 20 Nov 2026 03:17:31 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b7a2336750b71eeca35d956a459e11180c8680b3b8eca5b579ff3c082f4eda2`  
		Last Modified: Fri, 20 Nov 2026 03:17:31 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:cf348512a834d9605f003a45e92cba012b6f7713169e6e9ab166f04ff6f37a5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3294744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0afb015a12e7de435d666894a0dd4ea3b75383738d59eb9e40a2656910430584`

```dockerfile
```

-	Layers:
	-	`sha256:8c9190413c553ee44cc990705f344f533668e47ea4b07eef980f4d51009eb042`  
		Last Modified: Fri, 20 Nov 2026 03:17:32 GMT  
		Size: 3.3 MB (3272127 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c70703c362c11f5f5c7ad7affcf7e1881a39340a277dbae435927b707a6cf087`  
		Last Modified: Fri, 20 Nov 2026 03:17:31 GMT  
		Size: 22.6 KB (22617 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-noble` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:f476505a51091c4686f51548b5de0ad53c059069097c9246a70104506ea41292
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112807076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eeef92e46bdf58f2fe44e05d80cfe4171952bb3292f9189d116f3dfbe7a1340`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:22:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:22:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:22:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:22:43 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:22:43 GMT
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 17:56:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='18f44fab9065217f3ba61d0eef8a7b5f3c3713aa7293001b0d4ac10ede3850f0';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_x64_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        arm64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64el)          ESUM='7fbeba1a2ba03533657bf16655e642de7b32c1bf074a3e2eb406f7cfc0f29a14';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        riscv64)          ESUM='bc5acf3fb17a177e808cddad7c0b33613425fc0e5bf737212ab5de2a09283a80';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        s390x)          ESUM='bd196e3e017243173ad9a4fcf54abb5da91ebc9fca960578b1451dc6a3d6c48c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:56:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:56:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:56:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ebaa1e7b750c6d8a6862f3d311b4d62adccafbcc2e1d7c53d1e1cc58d69abc`  
		Last Modified: Fri, 20 Nov 2026 03:23:15 GMT  
		Size: 25.7 MB (25655366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c37560a2afc26f74cc991463548c9427cea3516755b0b04b7a57e3f9755a4a3`  
		Last Modified: Fri, 20 Nov 2026 17:56:47 GMT  
		Size: 52.7 MB (52742849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65986fca1b5d138a5b4eb8561af6f1fb640efe3d17ad9dda3a84a84d02d2b89a`  
		Last Modified: Fri, 20 Nov 2026 17:56:45 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e08af741e0662133f4808a14dc0b96940bf3338a14ffec5dbcdc7ac4541102`  
		Last Modified: Fri, 20 Nov 2026 17:56:45 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a76a02268e38d2be0ecf0a07a6ef8dacf4adf35fb00706d780bf8d6c5c4599e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3297042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175ddb55738ae565d2a7ff0053b501d587afa7467ba5ca720689c519114b7f43`

```dockerfile
```

-	Layers:
	-	`sha256:1a245359e120b98fdae6abb9ecee23903df6ff472474fbf45d5c9250e7b0d47a`  
		Last Modified: Fri, 20 Nov 2026 17:56:45 GMT  
		Size: 3.3 MB (3274502 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23621a5d6a9f8097d3cac58e909bbccff31f3120014866f7c2222da96e53f2cd`  
		Last Modified: Fri, 20 Nov 2026 17:56:45 GMT  
		Size: 22.5 KB (22540 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-noble` - linux; riscv64

```console
$ docker pull eclipse-temurin@sha256:f662ea18c95f5ec9756495ec0799a4b701bcd4bca7352bf70fddad1f1760c4cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106498111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:956e5fdf26fb9f128c56eaec3c752e21ca40e7b5dea8334350ae75b63bcba033`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 09:11:18 GMT
ARG RELEASE
# Tue, 10 Nov 2026 09:11:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 09:11:20 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 09:12:35 GMT
ADD file:9216d1af3350872b7407d11bbaff1b1eade0611505729393f87dae6fb7fe366f in / 
# Tue, 10 Nov 2026 09:12:41 GMT
CMD ["/bin/bash"]
# Thu, 19 Nov 2026 03:20:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 03:20:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 03:20:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 19 Nov 2026 03:20:10 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 19 Nov 2026 03:20:10 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 19 Nov 2026 03:30:01 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        riscv64)          ESUM='40c66736338abeb8b633d50036e5f83e3a3f55654723f31589fa09c081eec118';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 19 Nov 2026 03:30:01 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 19 Nov 2026 03:30:02 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 19 Nov 2026 03:30:02 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:c1ea9e361ad6aa342c72500d92e9e6e1347fa35a4475914ad2226cc298516f11`  
		Last Modified: Sun, 15 Nov 2026 21:50:00 GMT  
		Size: 31.1 MB (31074654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8332c0dc1bf090e8694ea22c20e638560c9fbb71955d7c8ad610bed8eb69957d`  
		Last Modified: Thu, 19 Nov 2026 03:22:56 GMT  
		Size: 22.7 MB (22734074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47e09c94c8644137a99a6846c46fbf283cf9e471ef4000600bde769adcfa1845`  
		Last Modified: Thu, 19 Nov 2026 03:32:43 GMT  
		Size: 52.7 MB (52686759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72536984003afbf585b7ef1c03b3acbbe414cfe5a997b44b15ba13b302ab5a85`  
		Last Modified: Thu, 19 Nov 2026 03:32:34 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3fa1a1d8b7a154982e98d58d6285c7e12e295477e77f37412c7b850f1b0e2e3`  
		Last Modified: Thu, 19 Nov 2026 03:32:35 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1d89f83c2cdce736a7e5aa6afbd8b14ba1cf5fa6563b1a59d1dabb1140c89c5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3286285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37581a7a9cdc147c19fe8f9ad80bf600ad22651ca0112bcead4b6a7f2e482fca`

```dockerfile
```

-	Layers:
	-	`sha256:28e84fd367fb5c0be2a649633e7988dc279edfb9bc243178a18c9e1263f45f22`  
		Last Modified: Thu, 19 Nov 2026 03:32:35 GMT  
		Size: 3.3 MB (3263742 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ae54ab3481c1f5c6172df741bfc46b808e30015932435ebd1e49a619f3332a1`  
		Last Modified: Thu, 19 Nov 2026 03:32:34 GMT  
		Size: 22.5 KB (22543 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-noble` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:c193ac4d65800eb34c9bb4ee7eeb86e0669c4cf04f0d33a04fdbab2663ed6517
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.1 MB (102136349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:888fa179c554aa52afd60c586fcf36a7ed735ffb845a31212a75b973cd5178cf`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 18:30:54 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:30:54 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:30:54 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:30:56 GMT
ADD file:f57d73889514e35770bca8a6b376ae28a49d35f7eca0530120c0e5edda118257 in / 
# Tue, 10 Nov 2026 18:30:56 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:10:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:10:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:10:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:48 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:10:48 GMT
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 17:50:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='18f44fab9065217f3ba61d0eef8a7b5f3c3713aa7293001b0d4ac10ede3850f0';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_x64_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        arm64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64el)          ESUM='7fbeba1a2ba03533657bf16655e642de7b32c1bf074a3e2eb406f7cfc0f29a14';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        riscv64)          ESUM='bc5acf3fb17a177e808cddad7c0b33613425fc0e5bf737212ab5de2a09283a80';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        s390x)          ESUM='bd196e3e017243173ad9a4fcf54abb5da91ebc9fca960578b1451dc6a3d6c48c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:50:10 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:50:11 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:50:11 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6a4828736418640f88890fd03d6d03e5c40e83e24d598ed323f41ba7e349b4f`  
		Last Modified: Tue, 10 Nov 2026 20:09:53 GMT  
		Size: 30.0 MB (29967433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcd4e836abadce51f6196b4c228a2f4318bf412a26eee499fec4122b17ae2dc6`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 22.8 MB (22787465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2ffb7c5436b19a4e484d784e2564af53d09245ad516e45f6f1db365d20c365`  
		Last Modified: Fri, 20 Nov 2026 17:50:37 GMT  
		Size: 49.4 MB (49378828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da1959ea5d1a6a37d2e49493f4346ea0e7ed2e07a98b4ca6b4350afdba236141`  
		Last Modified: Fri, 20 Nov 2026 17:50:35 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dbdcd1097f9fd822fd03904b901e50c18774cda03e2c4ec0d64230dedb4dcc1`  
		Last Modified: Fri, 20 Nov 2026 17:50:36 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ecc1f8052d3e44f4c8c7e42d8ad8a50c0119e51aebed3d8a78bf8c13c0cbb9cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3295150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:223ab74f83387da93bbaf475a0daa3b574b3203781eeda8c35523574e930ee40`

```dockerfile
```

-	Layers:
	-	`sha256:85f468abe552ea7fdd2afd6d629548093986e07f56102ac09d970114a209d85d`  
		Last Modified: Fri, 20 Nov 2026 17:50:36 GMT  
		Size: 3.3 MB (3272646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c95c89c259f90d629b431ed6e766aa89b4cc1c55adafbe35e5ab407ae7009fd8`  
		Last Modified: Fri, 20 Nov 2026 17:50:35 GMT  
		Size: 22.5 KB (22504 bytes)  
		MIME: application/vnd.in-toto+json
