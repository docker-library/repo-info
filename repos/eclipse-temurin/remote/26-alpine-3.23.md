## `eclipse-temurin:26-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:5b6ad92aacd51d2a2f4a42b36ddcba9214c5812904004ad31350ebf4cf985a8e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:26-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:f61460e57670f9c150ee94aa12b1fd2890d2ffb7a8697dd221c1e4667a493149
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (111967487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82e07304f32889e945e0de4b70677c4d671cb97d0bd27fe8786ee32e926fd5e5`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:26:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:26:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:26:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:26:29 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:26:29 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Fri, 21 Aug 2026 18:26:35 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='bee481d4ba078ac1aaa741541bb0b99de876d679ccc80f9685710b72bc7b04f1';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='88caf27ab9f2a15a52a114ea18fa20c518ccc325b5ba4bb5fd6c42c56b581498';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 21 Aug 2026 18:26:36 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:26:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:26:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:26:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba0ba0f40d81a484238b633abca24a5db54dc6ba89b1756c41b5e0e06a181224`  
		Last Modified: Fri, 21 Aug 2026 18:26:50 GMT  
		Size: 14.3 MB (14319720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c52c49923cfd89cb4f5ae022de83a1d9491cbbd2432c46aeccc5265205bd49e`  
		Last Modified: Fri, 21 Aug 2026 18:26:52 GMT  
		Size: 93.8 MB (93800753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de457b7be906405a215ee22f1c7d4584b22550d2273ff55c4a92af005a3972cd`  
		Last Modified: Fri, 21 Aug 2026 18:26:49 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba8fcc987859fc097eaaf2a6eab77e5f22003bf8cb8b807ae9e523e1b4ab2f5`  
		Last Modified: Fri, 21 Aug 2026 18:26:49 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:feaf06b396cee1b3c2204ede27a73b4af8af545b3e2084e47a0c8806d092a580
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **967.7 KB (967730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e127b16c7d1efa172691cec7b35ad9499f1f50f36ad24561c01d81f9944504c2`

```dockerfile
```

-	Layers:
	-	`sha256:20d2c3a5b2da806a34f0cef46d210c7ed640570973ed3590407b78425ab92884`  
		Last Modified: Fri, 21 Aug 2026 18:26:49 GMT  
		Size: 947.2 KB (947195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:204392565907df8b37fab5f5d85e50d070bed8765d23a3dedc068f96d8b4df37`  
		Last Modified: Fri, 21 Aug 2026 18:26:49 GMT  
		Size: 20.5 KB (20535 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-alpine-3.23` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:f9d08601cc4338e943147626feb9e112e542fd8be9def98ef618fa4918fa0ae9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111248339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbaf6c2510bf36b4a2217e0c8296915bcf8408e934da352189702e092acf9ef6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:29:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:29:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:29:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:29:34 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:29:34 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Fri, 21 Aug 2026 18:29:41 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='bee481d4ba078ac1aaa741541bb0b99de876d679ccc80f9685710b72bc7b04f1';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='88caf27ab9f2a15a52a114ea18fa20c518ccc325b5ba4bb5fd6c42c56b581498';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 21 Aug 2026 18:29:42 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:29:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:29:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:29:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13bce9fdec69c38ad4b01028377b964c2aca9e0b9fd9666e47fd093703961585`  
		Last Modified: Fri, 21 Aug 2026 18:29:58 GMT  
		Size: 14.4 MB (14381250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c7a2a9ca6bfa3572b01d108eebb369ca5ff8460b65654dd552d3b651cb74135`  
		Last Modified: Fri, 21 Aug 2026 18:29:59 GMT  
		Size: 92.7 MB (92682636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5d1b97b19b5fdd8089f0c1ad8e470cc3bd6d2219d84099656f9ad5ff84ed8c`  
		Last Modified: Fri, 21 Aug 2026 18:29:57 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a98dbafb8c592d5a625511a00fc7bc4bf36a87984ff87988b6f63fcb2f292b1e`  
		Last Modified: Fri, 21 Aug 2026 18:29:57 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:3ecebbd6d70d9e140b911a8e46ffc433c732103f05bee8ec0fb81b3818e702e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1117201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a43029ed24481fb96483924cb7369135dc19e7d419014299a5bc6c8ebbc997e`

```dockerfile
```

-	Layers:
	-	`sha256:6a51b0ca33b4139d5616f4ec7196eef0a7a764f364317e8e2a0db0e8b9053497`  
		Last Modified: Fri, 21 Aug 2026 18:29:57 GMT  
		Size: 1.1 MB (1096544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a7979928498bb9592eaa8b5bafdbbc714fc4659a76df8310e2a4aa360a04668`  
		Last Modified: Fri, 21 Aug 2026 18:29:57 GMT  
		Size: 20.7 KB (20657 bytes)  
		MIME: application/vnd.in-toto+json
