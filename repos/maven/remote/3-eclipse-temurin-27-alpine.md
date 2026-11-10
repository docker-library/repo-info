## `maven:3-eclipse-temurin-27-alpine`

```console
$ docker pull maven@sha256:0c15e170730c0bd5a39d1d126578d638fa1d59af88096c859adaa42721009157
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-eclipse-temurin-27-alpine` - linux; amd64

```console
$ docker pull maven@sha256:48d5400bb78205ced96a067afc57c88c51933a060532d7b9a104b32179488c1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125609705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed2ebe35181126fa0ef84667a885fd0b4c1f3b13dba0a6f116a08c99044bb80a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 23:59:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 23:59:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:59:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:59:27 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 09 Nov 2026 23:59:27 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Mon, 09 Nov 2026 23:59:36 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='d6e8d5e5c101d9319a995405de1e800b02f718ac226dccd8c3b11dae46479ae0';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        x86_64)          ESUM='576a3b8ba79aa5a8bc7f1cb8b54aeffab8b2d1fb84a8fde4f8f3035ac65dfca1';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Mon, 09 Nov 2026 23:59:37 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 09 Nov 2026 23:59:37 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:59:37 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 09 Nov 2026 23:59:37 GMT
CMD ["jshell"]
# Tue, 10 Nov 2026 00:26:00 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Tue, 10 Nov 2026 00:26:03 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 10 Nov 2026 00:26:03 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 10 Nov 2026 00:26:03 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 10 Nov 2026 00:26:03 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 10 Nov 2026 00:26:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 10 Nov 2026 00:26:03 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 10 Nov 2026 00:26:03 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 10 Nov 2026 00:26:03 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 10 Nov 2026 00:26:03 GMT
ARG USER_HOME_DIR=/root
# Tue, 10 Nov 2026 00:26:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 10 Nov 2026 00:26:03 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 10 Nov 2026 00:26:03 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93ed93a99e5d55f8af8dc3a24c77d471ff9526c1241d219636ecfc2769b6eb20`  
		Last Modified: Mon, 09 Nov 2026 23:59:53 GMT  
		Size: 14.4 MB (14374223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c256599417f464ffb66ee1fb6120d07620abb51e8d2cc4f285b294000ef1bfe`  
		Last Modified: Mon, 09 Nov 2026 23:59:55 GMT  
		Size: 92.9 MB (92933924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd18cfa921ae379a99dec4f661111b42962de5e846feec79ae47be9f0ea2516`  
		Last Modified: Mon, 09 Nov 2026 23:59:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa6ffe6cf444c3d3eb425f2be5e9b207f0cd14119135c24bde3273a7b142836f`  
		Last Modified: Mon, 09 Nov 2026 23:59:52 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f40be4be4e3031062482bc512a82baefa95cc95c6ce31d919c7083d77fd121e`  
		Last Modified: Tue, 10 Nov 2026 00:26:11 GMT  
		Size: 4.4 MB (4385273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dcf3624fbd2ddf927f959545c4be1662c7dec04fb3ee330bf01a4bb00bc7dd8`  
		Last Modified: Tue, 10 Nov 2026 00:26:11 GMT  
		Size: 10.1 MB (10059010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caee195fa7d0b15a5571ce9b033139bfe5acee7412d8c0c6638fac30030078bf`  
		Last Modified: Tue, 10 Nov 2026 00:26:11 GMT  
		Size: 858.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b346d6f9da3b19065032a19f65dc572c5a09cc3fdfdd2502c7d906a57616ba3`  
		Last Modified: Tue, 10 Nov 2026 00:26:11 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-27-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:659ef5f6747bd074f7b2718aa41a8a428dc667237f7330d4017c2dda1a18a3b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1141388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6df1186fa25a4318b77bff0f38aa37b935a75cc449a144894cfede641d39d69`

```dockerfile
```

-	Layers:
	-	`sha256:801b20f421a25b7e74ae44e9988a93efa2e9208e5f8166fa17ff90bc097e57b0`  
		Last Modified: Tue, 10 Nov 2026 00:26:11 GMT  
		Size: 1.1 MB (1124346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70f910fc83b2a41cb1506a347970b292b140ba638f8713d17c5b4e04735ac75e`  
		Last Modified: Tue, 10 Nov 2026 00:26:11 GMT  
		Size: 17.0 KB (17042 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-27-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:8ca8c9f2355a276be84be1a608c2bf3287b0475ba5b24bb931bac92b9c0a2861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (124975893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c71a68bf3396217c3280f1245505eef839f112b23f991e6b87d146543fab2335`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 23:58:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 23:58:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:58:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:58:37 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 09 Nov 2026 23:58:37 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Mon, 09 Nov 2026 23:58:46 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='d6e8d5e5c101d9319a995405de1e800b02f718ac226dccd8c3b11dae46479ae0';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        x86_64)          ESUM='576a3b8ba79aa5a8bc7f1cb8b54aeffab8b2d1fb84a8fde4f8f3035ac65dfca1';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Mon, 09 Nov 2026 23:58:48 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 09 Nov 2026 23:58:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:58:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 09 Nov 2026 23:58:48 GMT
CMD ["jshell"]
# Tue, 10 Nov 2026 00:26:14 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Tue, 10 Nov 2026 00:26:14 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 10 Nov 2026 00:26:14 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 10 Nov 2026 00:26:14 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 10 Nov 2026 00:26:14 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 10 Nov 2026 00:26:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 10 Nov 2026 00:26:14 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 10 Nov 2026 00:26:14 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 10 Nov 2026 00:26:14 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 10 Nov 2026 00:26:14 GMT
ARG USER_HOME_DIR=/root
# Tue, 10 Nov 2026 00:26:14 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 10 Nov 2026 00:26:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 10 Nov 2026 00:26:14 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:509db30f8a3b67081ba9649deab24a42f9804d7c2d1589a1d0e930b0a5c683ee`  
		Last Modified: Mon, 09 Nov 2026 23:59:03 GMT  
		Size: 14.4 MB (14426929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c1d377e3e0fc1ee3943a785051d5c3e51327bb02e47b4008863a69226e77d76`  
		Last Modified: Mon, 09 Nov 2026 23:59:05 GMT  
		Size: 91.8 MB (91820890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:275a03a2423586cc92dcb9089c7d1908a25d8211f50c0872e9d9541d5218860e`  
		Last Modified: Mon, 09 Nov 2026 23:59:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b27dad9cbad193e2eae1c53433c54a10ad15b9e08b2006cb2f38f6b20be95014`  
		Last Modified: Mon, 09 Nov 2026 23:59:03 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3757f790ecf3008d3588cb1545a239db324acc8cc4bb530fa0a3abc5da5383`  
		Last Modified: Tue, 10 Nov 2026 00:26:24 GMT  
		Size: 4.5 MB (4474902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cafa87a01cfc817cbec555323164e00379e74d3a1edf408ede35f9e3667b8ba5`  
		Last Modified: Tue, 10 Nov 2026 00:26:25 GMT  
		Size: 10.1 MB (10058972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bf3bc16fbac33b11c6b490a2da5f529820dcd609de92001f29740228274d495`  
		Last Modified: Tue, 10 Nov 2026 00:26:24 GMT  
		Size: 858.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:481fc102004de6c955337ee2945ab6cb03f3f413e1d71f178477b55cf699bee1`  
		Last Modified: Tue, 10 Nov 2026 00:26:24 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-27-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:636f31ea23b948cd1d9a0dc9c1ed37f040e06674b224fb5c1c980cea09c9a17a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1290870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faec04737aeb3855db4ac391be9927781ebc5ccd22a9ea2754eea73351e61363`

```dockerfile
```

-	Layers:
	-	`sha256:bc402fcfd2b124bfbdc96162076944eb6304ce2f3d3f7097d3c8c7f60c7f32e7`  
		Last Modified: Tue, 10 Nov 2026 00:26:24 GMT  
		Size: 1.3 MB (1273695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2097cebcd9822f3eea342fd5439696bed5379c3a8bfebc84eab92d92aa7b0251`  
		Last Modified: Tue, 10 Nov 2026 00:26:24 GMT  
		Size: 17.2 KB (17175 bytes)  
		MIME: application/vnd.in-toto+json
