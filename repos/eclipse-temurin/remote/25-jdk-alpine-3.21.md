## `eclipse-temurin:25-jdk-alpine-3.21`

```console
$ docker pull eclipse-temurin@sha256:7dae47ac826aec7b78376bdecebcd3c6b05d0f004f4ba9854f18a7c2dffbed1c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:25-jdk-alpine-3.21` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:69d92f1960b7978578af33f1b44af03b638ac4df3b148a898e37da81a818af00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109478827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21bdb1a737ce28b9033cd1b880fb5d30e6d8bd2b1bd1a02f4b348258b42e90c1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 19:16:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:16:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:16:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:16:10 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 29 Oct 2026 19:16:10 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 29 Oct 2026 19:16:16 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='d02eadc0a0f93faba4be38c8657eb8eef842103a4c7c2400f5827dbd90fc21c9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='efc86581260b73c340c313e7577c4c85d6a8a899edc3748d78bee5238fe44a4e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 29 Oct 2026 19:16:18 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:16:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:16:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:16:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e408715a5c3d8c37e2ea1c19752e6e1be9e1cc3cb386f9d50a4b3597e56ee5`  
		Last Modified: Thu, 29 Oct 2026 19:16:33 GMT  
		Size: 14.2 MB (14189333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0115f710c214565dbaf6f3a436e8fac7a9903ac97276c84e829da71075e4337d`  
		Last Modified: Thu, 29 Oct 2026 19:16:35 GMT  
		Size: 91.7 MB (91661509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2e78bb1a43d3a1c7a9ac2f5f55212344ae68edb8a985797525c6a6f7acb6d4f`  
		Last Modified: Thu, 29 Oct 2026 19:16:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:652aa3195b6cb85e8687f700699451869d21d11c801e339ccbadd1e1234a8753`  
		Last Modified: Thu, 29 Oct 2026 19:16:33 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a74d75d0abb3f887685c211152239dc43360e0c687a12bf66ea9f069916d4259
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **966.9 KB (966899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acf4381481558338af6de8b99af9686aee51b9e39e7d847c75ad20a5ebf363e6`

```dockerfile
```

-	Layers:
	-	`sha256:6fc28440f7196875603c732e7cb01227b7c8d793bf49f0124a988dd005c52926`  
		Last Modified: Thu, 29 Oct 2026 19:16:33 GMT  
		Size: 946.4 KB (946380 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:009beccaa61c591a4f6a309e395399a829634f6e6303249cda6d80bb7b5fb1ab`  
		Last Modified: Thu, 29 Oct 2026 19:16:33 GMT  
		Size: 20.5 KB (20519 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jdk-alpine-3.21` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:5b9f5bcafb8df26cceb12bd8cef5833479df4923ab6ae000288149a30d52c7a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.8 MB (108831338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7f4e46c5dbeca442c80f67f4d6a838f689da98d5544e3143935c29c437c1a4e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 19:08:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:08:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:08:47 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:08:47 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 29 Oct 2026 19:08:47 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 29 Oct 2026 19:08:53 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='d02eadc0a0f93faba4be38c8657eb8eef842103a4c7c2400f5827dbd90fc21c9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='efc86581260b73c340c313e7577c4c85d6a8a899edc3748d78bee5238fe44a4e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 29 Oct 2026 19:08:55 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:08:55 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:08:55 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:08:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ffe9f7b0de0575f458b630bbed20383c82a8d98ef6e0650fb992e03eda27fee`  
		Last Modified: Thu, 29 Oct 2026 19:09:10 GMT  
		Size: 14.3 MB (14286487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de80fd7cb54fa0c28da77573c154fbaa0b0145b72104d30a94991a6b84b42f8`  
		Last Modified: Thu, 29 Oct 2026 19:09:12 GMT  
		Size: 90.6 MB (90567887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6571971f7be8433a62c274c0131e43d728824371d51ddb19dc7f47a194f1f57e`  
		Last Modified: Thu, 29 Oct 2026 19:09:09 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854f6bad543407f7423d192b9972cbcd8d5b9b6712aef281838b7bf71f01b6f7`  
		Last Modified: Thu, 29 Oct 2026 19:09:09 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:36b5e333132c21a41ee1da87f1c3aadd61c87c3d353c04b7963ebab0d3195a33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1117020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a49626295cdf95600ecdcdc0b9cf3de240719b24953793f9127421f82fe47454`

```dockerfile
```

-	Layers:
	-	`sha256:f52b930c4d5655147ff35fee111dd28e5a5f25ee244c99bc2f522ac1a4c6889f`  
		Last Modified: Thu, 29 Oct 2026 19:09:09 GMT  
		Size: 1.1 MB (1096379 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba0aa44f8d250c4f97b1e33c7b8901b745e5571bb9ec4b9c21c81452a3525fb8`  
		Last Modified: Thu, 29 Oct 2026 19:09:09 GMT  
		Size: 20.6 KB (20641 bytes)  
		MIME: application/vnd.in-toto+json
