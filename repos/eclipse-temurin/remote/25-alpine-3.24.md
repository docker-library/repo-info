## `eclipse-temurin:25-alpine-3.24`

```console
$ docker pull eclipse-temurin@sha256:d36cda358f8c81da549169312e0ceda643a9945d7f12bd390ace2691ec604140
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:25-alpine-3.24` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:4e670c2d05f876b1ea1664cc4423e9b16a47e4d3445aa7d88a73179649979982
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.8 MB (109849057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8bf606404b9c3f84265660cce47690c6b9821b6733f53c5a10381a82f30e2e1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:25:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:25:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:25:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:32 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:25:32 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:25:38 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='3d1c5c7877e320c2cff8154cfca9af948089912b6efc6123bb21726b7055bc62';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='c6f3e9f975c130169283363bf0ef2fc55f45c36eacc909141ffa7189cd7bdcb7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 21 Aug 2026 18:25:39 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:25:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:25:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1251f1bd7c631dcd1cac4674e1243c6ee4aa4877bbceda421b57f9faefe7726a`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 14.4 MB (14369221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44efe0f4bb6a9c5ce85a9d054859cec3ce43403d41be5bd20f97950676342a62`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 91.6 MB (91630852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e589d5d72b2cdb8887f929d0376d06dd40ec00db4dd528d920a1f15b8845591`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f6119cd7bdb3eeee4c0c0323d0c25e2e67983dbe3091ce1af089ee91beb4ce0`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:89e7464a37393fec8625cdd1d64cac22e8601e3b79f5bee369e8917f7f3ba04c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **972.2 KB (972177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8850696876a16182457f9f223159ec61b4510e4fb39e2c41f07d74bfe1a2ab97`

```dockerfile
```

-	Layers:
	-	`sha256:aec3bfdce8b9934b38969db027e3684a7f783e81eae67da243b27bb3f273f158`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 950.7 KB (950664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:190e28fffe88fa47918acf051acc6b2d8f9b9119becff527c1b6a7ee6562fd8d`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 21.5 KB (21513 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-alpine-3.24` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:683dab10d3ee670e9899e4f9bfa5bd88cf2b8e2e899b774e79a4b6d3e7399fc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.2 MB (109172872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:248eca6fc1a36c9c4e313908525ab65ca49b54a567476e0330209a9eaaa360ec`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:41:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:41:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:41:33 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:41:33 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:41:33 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Thu, 17 Sep 2026 21:41:43 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='3d1c5c7877e320c2cff8154cfca9af948089912b6efc6123bb21726b7055bc62';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='c6f3e9f975c130169283363bf0ef2fc55f45c36eacc909141ffa7189cd7bdcb7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 17 Sep 2026 21:41:44 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:41:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:41:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 21:41:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9deae9ea44597bed06ae6a530e5037e90206374a50b7547facbb6010ae141ee`  
		Last Modified: Thu, 17 Sep 2026 21:41:59 GMT  
		Size: 14.4 MB (14424628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3c5c3ceb5a7b76e6300b650a8b6e878155f79d76f3ad12a38f93cae4c63e9ce`  
		Last Modified: Thu, 17 Sep 2026 21:42:01 GMT  
		Size: 90.6 MB (90557992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a4df2f52ba79d23e015955f288bfad2e5267df37001507e63f8d48d3270856`  
		Last Modified: Thu, 17 Sep 2026 21:41:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9aec489f5a261ef4e1b82e688286ed41dfbaadfd9b72efdcbe6af66a75b40dd`  
		Last Modified: Thu, 17 Sep 2026 21:41:59 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:65308ffe8420f83289439a05360a9bbd7c87621a88556a0d931f4aeac2d8c6d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1123013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75ef379d1eb79bf0e71387ac832de9a3c09e45bd3d31633d2e0215f7b6b8ac53`

```dockerfile
```

-	Layers:
	-	`sha256:2c5ba7f1c5e2529535b827c67c68465baf4d04f1828e267a32577d2e0a346bfc`  
		Last Modified: Thu, 17 Sep 2026 21:41:59 GMT  
		Size: 1.1 MB (1101342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7cd141668d378aeeb4f1842723ab724594de5ac2864675887b1419eca1c3615a`  
		Last Modified: Thu, 17 Sep 2026 21:41:59 GMT  
		Size: 21.7 KB (21671 bytes)  
		MIME: application/vnd.in-toto+json
