## `eclipse-temurin:27-alpine`

```console
$ docker pull eclipse-temurin@sha256:3ce6707ba035480069ff65d12265a8806d74fe9fd761987d183dd86362def451
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:27-alpine` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:fc91364b9ca4e7c44bcf357612170bfe87c441c4402b75a0c2b7f25deccb7f2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113645685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6968aa5e637cdac2f80a9a07fec025108da5194d2012e85b3d973699d43b3cf9`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:44:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:44:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:44:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:44:08 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:44:08 GMT
ENV JAVA_VERSION=jdk-27.0.1.1+4
# Fri, 20 Nov 2026 17:44:16 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='59acad2d59372019deed763257b4f0b3413399f964462bd64bbf4cf9af6e8367';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27.0.1.1_4.tar.gz';          ;;        x86_64)          ESUM='5ac34cbeed56fba0456cf94d1d8df3568ab852e196f54abf5172257f3d167dda';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27.0.1.1_4.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 20 Nov 2026 17:44:17 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:44:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:44:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:44:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aeee3b8ca067410568810e0efbd16d57741a1f17966264e9adc3e79c65aa2ae`  
		Last Modified: Fri, 20 Nov 2026 17:44:32 GMT  
		Size: 16.8 MB (16849475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ec896341e6ca00079991cb3c425ac6747adf09907d6189f7d425b3625f4cba`  
		Last Modified: Fri, 20 Nov 2026 17:44:34 GMT  
		Size: 92.9 MB (92939945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:958614ee38b02262baac252c06d075d9f638dfbc1ebe9535309dd9103094146e`  
		Last Modified: Fri, 20 Nov 2026 17:44:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b74833d7c5946623d50d72f9876bd97364829ba185c414134114ce0089bf007`  
		Last Modified: Fri, 20 Nov 2026 17:44:31 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c17c620873ca122f772c07f13e6ce713670d332554562af5d893a576ac737014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **967.2 KB (967222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69f31b4213b8a79ed741eef927daab12c3b22bbb573447697e45c982e05bb05a`

```dockerfile
```

-	Layers:
	-	`sha256:5f82da3b980d99b432d694e20021df9b53316e129ad581e2205d0ce3175fba9d`  
		Last Modified: Fri, 20 Nov 2026 17:44:31 GMT  
		Size: 945.7 KB (945677 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3e1c0797ef1f80d5294149b02a28634a155572862c1e2f6514556b9c75f3fb8`  
		Last Modified: Fri, 20 Nov 2026 17:44:31 GMT  
		Size: 21.5 KB (21545 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-alpine` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:6b6371f1c5425f6e9b6befd734db5b93249cee604af9d267462bd150d645f14a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.2 MB (113225279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd3a08f7b702080f0752a6b1a4fef55f9d8829470985acf68e2343b2a8abaf3f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:43:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:43:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:43:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:43:38 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:43:38 GMT
ENV JAVA_VERSION=jdk-27.0.1.1+4
# Fri, 20 Nov 2026 17:43:49 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='59acad2d59372019deed763257b4f0b3413399f964462bd64bbf4cf9af6e8367';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27.0.1.1_4.tar.gz';          ;;        x86_64)          ESUM='5ac34cbeed56fba0456cf94d1d8df3568ab852e196f54abf5172257f3d167dda';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27.0.1.1_4.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 20 Nov 2026 17:43:51 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:43:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:43:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:43:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2661c2cca2f3c5f8dee8d0a449607ae963a34a07b733cafc77d1f24028c99a7`  
		Last Modified: Fri, 20 Nov 2026 17:44:07 GMT  
		Size: 17.2 MB (17204320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:091dbb946d3e6219876ab33c96d1de075e89c07107729acc0988974d07d97857`  
		Last Modified: Fri, 20 Nov 2026 17:44:08 GMT  
		Size: 91.8 MB (91827775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e8ab866c79b790d60c4e8ed14fa9e848a6d68032bf9332e1d71c0fdbac0062`  
		Last Modified: Fri, 20 Nov 2026 17:44:06 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db787ed6893691295d0621cc1eef284322e32579d35485522037222b0656ad6`  
		Last Modified: Fri, 20 Nov 2026 17:43:53 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:900abe836ea4d40a10e5c031cc79b474e27b603d03e4c3dcde1d28dec1ba7820
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1116763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5d8912fbc725f53e328f4dfb777e0fddbf44a2db005cb3b654c17bedf3a0c24`

```dockerfile
```

-	Layers:
	-	`sha256:f0bfa80dd2ac6014cd97bea1630e8a5c3ee682395314ba78b7086c108f647493`  
		Last Modified: Fri, 20 Nov 2026 17:44:06 GMT  
		Size: 1.1 MB (1095062 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:799ae3bb27011648e8fd52603cb01e97006d252529a76897d517189972803457`  
		Last Modified: Fri, 20 Nov 2026 17:44:06 GMT  
		Size: 21.7 KB (21701 bytes)  
		MIME: application/vnd.in-toto+json
