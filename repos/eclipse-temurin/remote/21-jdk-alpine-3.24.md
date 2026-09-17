## `eclipse-temurin:21-jdk-alpine-3.24`

```console
$ docker pull eclipse-temurin@sha256:8e73ae0b93af3c2ecdfee5dac87e8bfa0ca3665c43c8cc9a438dd74a125b9670
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:21-jdk-alpine-3.24` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:dfb58f010fc58c48069b670a924b8f08a99672932d37ec8c7e839a52c7e3226c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.6 MB (183615873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c610389f47193273ee1eb3fd0dae11e3ee32ad7eea557ff6b7882804237b25df`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:24:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:24:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:24:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:24:34 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:24:34 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:24:41 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a32f7655011640ed8fb4347fffa2588cb7538de2f2e82027845816740560e2b1';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='073a48cb87f788a0cb283d81cc6d96cbc9d671d6a60a3ba6de62e66f0ea9dd47';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:24:42 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:24:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:24:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:24:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80c624ebf42c48614632c25eda29ff963d8bff68cf72141f38572ff353df4118`  
		Last Modified: Fri, 21 Aug 2026 18:24:57 GMT  
		Size: 21.4 MB (21434191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dcf1f5eca60c3a20398445d682d111c67441c56056e59a0a3a16183f9da46f6`  
		Last Modified: Fri, 21 Aug 2026 18:25:00 GMT  
		Size: 158.3 MB (158332700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e04839fa2debe7ec750a1b3926314c52ec376eb0d5ed81310e907af857ed918f`  
		Last Modified: Fri, 21 Aug 2026 18:24:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ef08a27864ae3d6ee3399a0909e667d6fb889dd93bc8d8fa25cbde844a15e3`  
		Last Modified: Fri, 21 Aug 2026 18:24:56 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jdk-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:8a090ca652647409d9dbd3562991b4d1575805a9850ffd6ad12168a8a4c06e5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1112607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec1d069267ed9221cedb45b78f9b8c346f75c064602c6c40159219df1228e0a7`

```dockerfile
```

-	Layers:
	-	`sha256:f855c79303561deb5a2fe5cea1dcb23b197d6af7ff91ee65bf8789f776466f2f`  
		Last Modified: Fri, 21 Aug 2026 18:24:56 GMT  
		Size: 1.1 MB (1091189 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59047cd9a9e1f2fc881e39711c00385fb7fe93e8c05de9c731ab3a020c8c8ec5`  
		Last Modified: Fri, 21 Aug 2026 18:24:56 GMT  
		Size: 21.4 KB (21418 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jdk-alpine-3.24` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:a0df801e1c3bdb83fd18c0fe89b36a2f2c23a9f1045c6e4ef45add4398f81600
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.9 MB (181944502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99b05e534f9e0f35fa913041f992c833f9a1b74bb134f95d8c523cf4b9432852`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:40:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:53 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:40:53 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:40:53 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Thu, 17 Sep 2026 21:41:04 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a32f7655011640ed8fb4347fffa2588cb7538de2f2e82027845816740560e2b1';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='073a48cb87f788a0cb283d81cc6d96cbc9d671d6a60a3ba6de62e66f0ea9dd47';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 17 Sep 2026 21:41:06 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:41:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:41:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 21:41:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369292db17b35064ec86ed791628e8d5cc9a497a0e76ba9fc8bfc72fb53f146e`  
		Last Modified: Thu, 17 Sep 2026 21:41:22 GMT  
		Size: 21.4 MB (21419726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3db93c5866c4c4aad884a8dec74796b31d9425eb84bf663cd9abe1f8b33937b`  
		Last Modified: Thu, 17 Sep 2026 21:41:25 GMT  
		Size: 156.3 MB (156334526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94e381264f84ac324e06f3b595a3fd430fcca9984c882c221c62d5bf165e5e5f`  
		Last Modified: Thu, 17 Sep 2026 21:41:21 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e92fcdb31d981f370187c4f6356738deb07640da76b3fbd24f7becf5bb7a111b`  
		Last Modified: Thu, 17 Sep 2026 21:41:21 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jdk-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:3216552a34b87a419c9f352784be8a12588ece8128084c93492265695abf0c45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1263446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33a3af132e2bc86ff0614014ec43efe032f789d83f771407c9523f5fc141627e`

```dockerfile
```

-	Layers:
	-	`sha256:49b18cf0ed6dd99ddde2cd42d1946bdc675041deabfdfd8cb88711557dc0c5a8`  
		Last Modified: Thu, 17 Sep 2026 21:41:21 GMT  
		Size: 1.2 MB (1241870 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19566442947900c737bf1f1af527d1facfa03ced66cde05cdc18d3de2cfdf060`  
		Last Modified: Thu, 17 Sep 2026 21:41:21 GMT  
		Size: 21.6 KB (21576 bytes)  
		MIME: application/vnd.in-toto+json
