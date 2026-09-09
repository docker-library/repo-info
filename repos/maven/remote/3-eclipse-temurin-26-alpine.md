## `maven:3-eclipse-temurin-26-alpine`

```console
$ docker pull maven@sha256:706e9b698c40340c4849b2092e24d97a1290dea21106fbda9e6803530123a5b0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-eclipse-temurin-26-alpine` - linux; amd64

```console
$ docker pull maven@sha256:b9b468df9cb0d1c6d9487df5f474f9d8ee8cd2177f54f19ec207fe14156b0984
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125754677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b4bc09ea6ff1d650a24634a5804af53f580dc3cbd024f32331e8d1d0db18651`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:26:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:26:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:26:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:26:30 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:26:30 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Fri, 21 Aug 2026 18:26:36 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='bee481d4ba078ac1aaa741541bb0b99de876d679ccc80f9685710b72bc7b04f1';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='88caf27ab9f2a15a52a114ea18fa20c518ccc325b5ba4bb5fd6c42c56b581498';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 21 Aug 2026 18:26:37 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:26:37 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:26:37 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:26:37 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 04:34:59 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Wed, 09 Sep 2026 04:35:00 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:35:00 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:35:00 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:35:00 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:35:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:35:00 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:35:00 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:35:00 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:35:00 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:35:00 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:35:00 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:35:00 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5452eb2d46e5afd46652ba2459404a0b581faeff2124634dcc9277d891ff518`  
		Last Modified: Fri, 21 Aug 2026 18:26:52 GMT  
		Size: 14.4 MB (14369260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6481711e3f1020188b9e74053a709052b5d3189afb0072eaea1e536eb62205`  
		Last Modified: Fri, 21 Aug 2026 18:26:53 GMT  
		Size: 93.8 MB (93800700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b1496ebe6bf2f6123752166aa307e4272ad2cd8f1a6a66ec46d5acc4b09d3db`  
		Last Modified: Fri, 21 Aug 2026 18:26:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c59e66bceb7aa1c4028b56c80468d8c3b248bdd69485bfc2fc8fd652c9344832`  
		Last Modified: Fri, 21 Aug 2026 18:26:51 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6754a5e2f97fac57434a307c1f93081932c2610dffd9460ba3f89fdca153096`  
		Last Modified: Wed, 09 Sep 2026 04:35:07 GMT  
		Size: 4.4 MB (4374750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbd1a468332dc8819a517517d5ea6cabd945028ee8b192c4fb4e71f9249ebbbc`  
		Last Modified: Wed, 09 Sep 2026 04:35:07 GMT  
		Size: 9.4 MB (9359969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab95c53250595f39b79f5309fe25c5ef96728fe3ae9837c8e9d6f2d798fd5889`  
		Last Modified: Wed, 09 Sep 2026 04:35:07 GMT  
		Size: 860.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1972266bfdad405e34ce90325db5c59cc6ee845a728ee5658abc62c612b02ed6`  
		Last Modified: Wed, 09 Sep 2026 04:35:07 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-26-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:4dcb39f549dc328cc5443a024cba88994db6835023ba1005978f349b28616979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1138822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7bed6d20b2fb6199aa35e5d4320076171412058867bccbfeba0869da1b41aac`

```dockerfile
```

-	Layers:
	-	`sha256:d45cc47cc34e317fbe2f380472693602da15b780c5654240a8241ca1e22fc401`  
		Last Modified: Wed, 09 Sep 2026 04:35:07 GMT  
		Size: 1.1 MB (1121784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa799b2e0541212554d243e6c0ff19926a753cc94419f820b5cd5ee1f7323cff`  
		Last Modified: Wed, 09 Sep 2026 04:35:07 GMT  
		Size: 17.0 KB (17038 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-26-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:d0e363e8d6711508d6388b91f3dcd2ae12795add80a0c7a152518d0f7a9a0499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.1 MB (125108759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0079bae9d661b74c64f2f091df11a76c42498d79dd8f4c98ef18ed94b4b8d019`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:29:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:29:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:29:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:29:28 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:29:28 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Fri, 21 Aug 2026 18:29:39 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='bee481d4ba078ac1aaa741541bb0b99de876d679ccc80f9685710b72bc7b04f1';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='88caf27ab9f2a15a52a114ea18fa20c518ccc325b5ba4bb5fd6c42c56b581498';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 21 Aug 2026 18:29:40 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:29:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:29:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:29:40 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 04:24:26 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Wed, 09 Sep 2026 04:24:27 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:24:27 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:24:27 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:24:27 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:24:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:24:27 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:24:27 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:24:27 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:24:27 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:24:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:24:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:24:27 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ae3581375ec3bbee78cbdfd7ff51d76b733da2b3c6f72d51dded14be1f4d18`  
		Last Modified: Fri, 21 Aug 2026 18:29:55 GMT  
		Size: 14.4 MB (14420920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9113044cb0b800a2d8b54a4ca0f8fc4593e865a371c9e9a19b64b86d2ea61e03`  
		Last Modified: Fri, 21 Aug 2026 18:29:57 GMT  
		Size: 92.7 MB (92682672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d742c5f9983264714aa06aa4be49cecd5ec5cf0e252fd52eac7491eef6e46e1`  
		Last Modified: Fri, 21 Aug 2026 18:29:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4fdc24383e03f04ab1fb7e787d5afce54213ea352ed9ace0c8c3ac506275d6d`  
		Last Modified: Fri, 21 Aug 2026 18:29:55 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59726996ffc227044718a2a4cf15a35fd250d932fd6da00f2d9ef6b5bb8cd30f`  
		Last Modified: Wed, 09 Sep 2026 04:24:34 GMT  
		Size: 4.5 MB (4458557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa13db45b925c68b1cdc92431c6d1e924c67a213cde82059a4de5b768cbf09d`  
		Last Modified: Wed, 09 Sep 2026 04:24:34 GMT  
		Size: 9.4 MB (9359967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a8da95acdca98f27ccad0a468af66b06d05e651c218d64d539a222990adaf2f`  
		Last Modified: Wed, 09 Sep 2026 04:24:34 GMT  
		Size: 858.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:478b37fdfc3286b212f8505d7a296bd1bd39708488c31020818035b13f823a00`  
		Last Modified: Wed, 09 Sep 2026 04:24:34 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-26-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:ef23274f604635ad25fdec3348708aba264d054448e9c34e292a93015496091f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1288304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fabe6fd06edabb98041e0907bf5c5b079c57c060ef4d6a8c77c2620aa70e4e65`

```dockerfile
```

-	Layers:
	-	`sha256:e35effcbbe0784984f43d3891f560ac59dad658a3811a2be2792e7299b1c2018`  
		Last Modified: Wed, 09 Sep 2026 04:24:34 GMT  
		Size: 1.3 MB (1271133 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ee2ec5548eca4931b7f380d959b249bd9cb9c10e59463cdd6cb8b5a66e40f98`  
		Last Modified: Wed, 09 Sep 2026 04:24:34 GMT  
		Size: 17.2 KB (17171 bytes)  
		MIME: application/vnd.in-toto+json
