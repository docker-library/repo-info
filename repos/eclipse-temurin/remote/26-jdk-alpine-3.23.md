## `eclipse-temurin:26-jdk-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:f534efb46614ff32322bc1db8bca96f5cf9ee784a2b2ab15bcea6efa9914fb43
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:26-jdk-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:9ad4a0cb5f3e6a101563884da89baabfa112b23f40abed7a9e817a9a7db1afd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (111981619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bce9865d2b9a32eef463bfd17a311486d861d4a4d9918bc6a425c69278a75fdf`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:41:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:41:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:41:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:41:43 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:41:43 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Thu, 17 Sep 2026 21:41:49 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='bee481d4ba078ac1aaa741541bb0b99de876d679ccc80f9685710b72bc7b04f1';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='88caf27ab9f2a15a52a114ea18fa20c518ccc325b5ba4bb5fd6c42c56b581498';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 17 Sep 2026 21:41:50 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:41:50 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:41:50 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 21:41:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a40baadf4c90620e4fea21beb61125a519841edabb465a6102b084e392604f`  
		Last Modified: Thu, 17 Sep 2026 21:42:05 GMT  
		Size: 14.3 MB (14329432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b15e47d81965359eb483a6190b4d3d31f402c1b27ce90222d76d5bb7ae74d80`  
		Last Modified: Thu, 17 Sep 2026 21:42:06 GMT  
		Size: 93.8 MB (93801090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e5402d813a21bed0bd716cb332b0bb6ac313330cfbf4a9b14d6cca9a7be232`  
		Last Modified: Thu, 17 Sep 2026 21:42:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09499171971448604c3319eec603eb64a8c88053394e39e305a77314b8c9de73`  
		Last Modified: Thu, 17 Sep 2026 21:42:04 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jdk-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:8d76fffd61583ef016bd85f7964f7aeca378d2eb8852af542a49ead049b81fde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **969.0 KB (969023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9ced2718ee89c1a52da68333626513491b6b2f84573ed93fbf6199af18f73ef`

```dockerfile
```

-	Layers:
	-	`sha256:de867c1c00e051b4fba49b7328bf1bcf16da19cd3a292ce3a018e3e1eea43349`  
		Last Modified: Thu, 17 Sep 2026 21:42:04 GMT  
		Size: 948.5 KB (948488 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a761326f129352045c9cbba0c78ec504979d1fde73463d992fb6e80cca9bb99`  
		Last Modified: Thu, 17 Sep 2026 21:42:04 GMT  
		Size: 20.5 KB (20535 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jdk-alpine-3.23` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:41a3cd6a9008df8e822ad7e6a57d3ae1618a3456e80f768a13393faa4aeaa7d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111255721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2711fc07b60587a3a05f8b887260fc4f0e64fc29fb88f81256f58a3f0c2d2886`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:42:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:42:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:42:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:42:07 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:42:07 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Thu, 17 Sep 2026 21:42:17 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='bee481d4ba078ac1aaa741541bb0b99de876d679ccc80f9685710b72bc7b04f1';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='88caf27ab9f2a15a52a114ea18fa20c518ccc325b5ba4bb5fd6c42c56b581498';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 17 Sep 2026 21:42:18 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:42:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:42:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 21:42:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcd1fe06e38656471349721bea29817683a782942b9015a3b810fddd665461ff`  
		Last Modified: Thu, 17 Sep 2026 21:42:34 GMT  
		Size: 14.4 MB (14384495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:956ddf1e91eb79af69bd4299782e311352ad53eb8c699f8de6d0da2e0d99f97a`  
		Last Modified: Thu, 17 Sep 2026 21:42:35 GMT  
		Size: 92.7 MB (92682580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d723a4d5484baf0911cfcd4fae1f13a609cb5a446049befb7ab798e2883cb80e`  
		Last Modified: Thu, 17 Sep 2026 21:42:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ca2c15515b8ce1c8b1a4bf81b4879b477ea720a46353ac853ba1b48d446fb7`  
		Last Modified: Thu, 17 Sep 2026 21:42:26 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jdk-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e43df6e2c3d27840976dff5484f160417c69760d9d25b5de1696e9dd17f83c3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1118494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58333ff981fb678f9b567c0ce7187010274002d5f3c89d21b99b28af624fd745`

```dockerfile
```

-	Layers:
	-	`sha256:cf4b7dbf8b802fd6d9658195bf54f912860ab4b5edd80ec47311b929d857a2eb`  
		Last Modified: Thu, 17 Sep 2026 21:42:33 GMT  
		Size: 1.1 MB (1097837 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a09b0415d5e277785b8777d251ba6fa473258720bd447d8b3b6a5b249ce43894`  
		Last Modified: Thu, 17 Sep 2026 21:42:33 GMT  
		Size: 20.7 KB (20657 bytes)  
		MIME: application/vnd.in-toto+json
