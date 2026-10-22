## `eclipse-temurin:26-jdk-alpine`

```console
$ docker pull eclipse-temurin@sha256:7cc9b8649a735f80bb5216e135306c4b9ab428db2893d770c4516f469fa08623
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:26-jdk-alpine` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:5679b784fb71354af566eed3ab558f7a2e93767b5595c9cb78702f9c19307283
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (112030272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21e66327d76520c36757811882b01226b0515bc70655ef5ff397c7edba673ded`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:57:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 22:57:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:57:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 22:57:38 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 22:57:38 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Wed, 21 Oct 2026 22:57:46 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='60186535f49539d060d6e523a714f04e32dcc72643d9eba24738e41323fca79d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.2.1_1.tar.gz';          ;;        x86_64)          ESUM='7f0ebccd9a8b4a554f5caac8768f28ff9d1b1b74367db7d14639b11c9b3d9e41';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Wed, 21 Oct 2026 22:57:47 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 22:57:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:57:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 22:57:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37af5f6c1cc3d61c1d39db80aacfd42b2bd9497b52cdf4e5bb29da204a4adf68`  
		Last Modified: Wed, 21 Oct 2026 22:58:01 GMT  
		Size: 14.4 MB (14372149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c6700b0d64680905fad799a91440c82f048df1de0e08890aa3264a8d070c08`  
		Last Modified: Wed, 21 Oct 2026 22:58:03 GMT  
		Size: 93.8 MB (93802421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da8fe43bb290379cc167cd206ff515dd6f8ebcfec430d5d9e71c1d152846f873`  
		Last Modified: Wed, 21 Oct 2026 22:58:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd2eb0933d3ce6bbeb303ca2abb6c53d9967eb89997e78eaacf88199ed1aaf3`  
		Last Modified: Wed, 21 Oct 2026 22:58:00 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jdk-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7bf985a84783aa9cbc1052e8c4e59f94fb286eae6481078b4c30495e4f359a46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **969.1 KB (969078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3df57d29259f047c1f950a4c867bfee145c92e93170a0257ce979b3efef855`

```dockerfile
```

-	Layers:
	-	`sha256:21a2d82d35b2fa093ee3099493951c10a4f959f46acf08c2277aad4c7ec09d76`  
		Last Modified: Wed, 21 Oct 2026 22:58:00 GMT  
		Size: 947.5 KB (947533 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7da8e635e6a1e4e3a4d6f224ec49976097e9be875274bd3b592e074ff3cd423b`  
		Last Modified: Wed, 21 Oct 2026 22:58:00 GMT  
		Size: 21.5 KB (21545 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jdk-alpine` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:126ff0338414de4206154763800c05a2daf09e2c9fcc124cb924c967802b8890
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111305151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d69a03fc79e9fd692560da1fe91d4fd04700b863af26f21a0008d725bb4dfbe3`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 23:20:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:20:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 23:20:17 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 23:20:17 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Wed, 21 Oct 2026 23:20:25 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='60186535f49539d060d6e523a714f04e32dcc72643d9eba24738e41323fca79d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.2.1_1.tar.gz';          ;;        x86_64)          ESUM='7f0ebccd9a8b4a554f5caac8768f28ff9d1b1b74367db7d14639b11c9b3d9e41';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Wed, 21 Oct 2026 23:20:26 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 23:20:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 23:20:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af2c00dcd3dc5c7fdca61759583c1dd32754233131d14824c91b35649edd73cb`  
		Last Modified: Wed, 21 Oct 2026 23:20:42 GMT  
		Size: 14.4 MB (14426612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:636d40ad34c6922b8085fe90a3dcbb8870b81d6a28bbb2b6a828fcbaa4c0d728`  
		Last Modified: Wed, 21 Oct 2026 23:20:44 GMT  
		Size: 92.7 MB (92685458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62ed5ebae0a6a3a09770a513e11755f546c650ca36cd273164fabcb810db2f59`  
		Last Modified: Wed, 21 Oct 2026 23:20:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb6ac887d7f7ecd1cc280b4d8bef317f30f0e2b0f015be458e74102bc6021ea`  
		Last Modified: Wed, 21 Oct 2026 23:20:41 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jdk-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:da0e310193f4cb1351b393949789bd3dd20956ed9376d4e12da88c7213561608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1118621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:350f2a59698892b9b018fd4d023eb03bca6f2bce4b153fa44db6fab7c379405d`

```dockerfile
```

-	Layers:
	-	`sha256:dee3ca3b0310f75b2611828b1ccf556b81eaf97e7c39891c235905717b4fcde4`  
		Last Modified: Wed, 21 Oct 2026 23:20:41 GMT  
		Size: 1.1 MB (1096918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad8c6ed0d5beb67bda5283d622eff638d4a0a4436c3e6cdcc42ebdf935c32b48`  
		Last Modified: Wed, 21 Oct 2026 23:20:41 GMT  
		Size: 21.7 KB (21703 bytes)  
		MIME: application/vnd.in-toto+json
