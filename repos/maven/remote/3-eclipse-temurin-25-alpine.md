## `maven:3-eclipse-temurin-25-alpine`

```console
$ docker pull maven@sha256:bb7bfc010744e051a9def86d91e513043a463957061e67e78d07906f68bd566a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-eclipse-temurin-25-alpine` - linux; amd64

```console
$ docker pull maven@sha256:a349a8f16d3c047529403a7d8d79e1921a07387afe0958712e38f373a3c04ef4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.3 MB (124302793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed4caf73794947e1995def11747e76bc4eb23c6f37739499eb906f4709604931`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:57:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 22:57:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:57:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 22:57:30 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 22:57:30 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Wed, 21 Oct 2026 22:57:38 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8d19373d427017d86ac87cf6a47ba49746be864832f60b52b7e3b1531c6b2cb8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='f18648ee5ce45261f50dc9493fdae7ddebaa2a7a857cafda3e2a448a79c03dee';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Wed, 21 Oct 2026 22:57:39 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 22:57:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:57:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 22:57:39 GMT
CMD ["jshell"]
# Wed, 21 Oct 2026 23:40:48 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Wed, 21 Oct 2026 23:40:55 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 21 Oct 2026 23:40:55 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 21 Oct 2026 23:40:55 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 21 Oct 2026 23:40:55 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 21 Oct 2026 23:40:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 21 Oct 2026 23:40:55 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 21 Oct 2026 23:40:55 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 21 Oct 2026 23:40:55 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 21 Oct 2026 23:40:55 GMT
ARG USER_HOME_DIR=/root
# Wed, 21 Oct 2026 23:40:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 21 Oct 2026 23:40:55 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 21 Oct 2026 23:40:55 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1001cd8970ca37d8d45405494ebb2c82a0b9720bb2afe468d79f1ac050c8e8`  
		Last Modified: Wed, 21 Oct 2026 22:57:53 GMT  
		Size: 14.4 MB (14372068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25da90bb644bb4f9557cca22620a6ae081516fee8df945f724099696e73632b7`  
		Last Modified: Wed, 21 Oct 2026 22:57:55 GMT  
		Size: 91.6 MB (91636759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48f93a261c74f38722efdedd40a3f8025dc001b45a3550f87038f2abd19f1fb1`  
		Last Modified: Wed, 21 Oct 2026 22:57:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27176d601dceac645c62cdace06af5c486f872eb70ce7c5b37f12619a4165647`  
		Last Modified: Wed, 21 Oct 2026 22:57:53 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87dade40a943114d8238bdff9e659543b5184a5827efc5f6c56eb59dd75a37c1`  
		Last Modified: Wed, 21 Oct 2026 23:41:02 GMT  
		Size: 4.4 MB (4378238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d722ede770f1c8d9c30ca958d336c59bcf2f2dba3a7849b302fa3100f4e9c45f`  
		Last Modified: Wed, 21 Oct 2026 23:41:02 GMT  
		Size: 10.1 MB (10059017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f26fd196708736f4e6552f5cd36e6bb23a8232bc793bd12e29fa0746f31c2866`  
		Last Modified: Wed, 21 Oct 2026 23:41:01 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c714af9e65b80301f5b4b1d59c22c3b2b9886eb26732c63de4c78822ba59a39e`  
		Last Modified: Wed, 21 Oct 2026 23:41:01 GMT  
		Size: 152.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-25-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:50b8a736fc93ec1bfe6a47e061141d29d5bc833f6f0702e4e4437db68320e671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1145745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b2ae4d04cab60dab4ff5c53c83c9176465c06ea259a8bc66a9114702959501f`

```dockerfile
```

-	Layers:
	-	`sha256:a8820787dd93cd6c8202d16288f8970e483c72c102e73ec6b7f38e78926b5122`  
		Last Modified: Wed, 21 Oct 2026 23:41:01 GMT  
		Size: 1.1 MB (1128699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f4e3b5e397eed5822f2efffa865d2cdaa5e760d61009c766fccf7027a8be2f0`  
		Last Modified: Wed, 21 Oct 2026 23:41:01 GMT  
		Size: 17.0 KB (17046 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-25-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:3e8e3a842736f5b81fe5bddf99f1bf27ae462a75496a16098f677866a2b6a430
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123692720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c2208d0f5507e261b7eb600ee8f1d8a74fbde87d82b31b0a8a72969552b8cab`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:37:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:37:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:37:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:37:28 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:37:28 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 25 Sep 2026 22:37:35 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8d19373d427017d86ac87cf6a47ba49746be864832f60b52b7e3b1531c6b2cb8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='f18648ee5ce45261f50dc9493fdae7ddebaa2a7a857cafda3e2a448a79c03dee';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 25 Sep 2026 22:37:37 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:37:37 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:37:37 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:37:37 GMT
CMD ["jshell"]
# Sat, 17 Oct 2026 03:16:18 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Sat, 17 Oct 2026 03:16:18 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 17 Oct 2026 03:16:18 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:16:18 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:16:18 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 17 Oct 2026 03:16:18 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Oct 2026 03:16:18 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 17 Oct 2026 03:16:18 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 03:16:18 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 17 Oct 2026 03:16:18 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Oct 2026 03:16:18 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Oct 2026 03:16:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Oct 2026 03:16:18 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb8f12186c0561cc0fe432858f4cf1177ced63a9206036ccbb0f9076c3e5a276`  
		Last Modified: Fri, 25 Sep 2026 22:37:52 GMT  
		Size: 14.4 MB (14425179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:911ffa641554782af272d284bcabe813029c157feb18efdf44f1a4c751b31a4d`  
		Last Modified: Fri, 25 Sep 2026 22:37:54 GMT  
		Size: 90.6 MB (90558327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d0dc7822bbace837bf3b4d996d884e6014dbf5ae2f78072a1237e693d9d89e9`  
		Last Modified: Fri, 25 Sep 2026 22:37:51 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7882f383b5c88594305173118c2556f689ee6c4ce05ec6bd7901352766117604`  
		Last Modified: Fri, 25 Sep 2026 22:37:50 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9ccdcfdcb719ab224cc5447c8ac561a3e75254708eb5cb382f924f51310513`  
		Last Modified: Sat, 17 Oct 2026 03:16:26 GMT  
		Size: 4.5 MB (4458940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39332ae6a71c11b8eb763a44e7a3e04558330ef52d97198c403f782c9736043d`  
		Last Modified: Sat, 17 Oct 2026 03:16:26 GMT  
		Size: 10.1 MB (10059009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4877d1e324469370305cb7bdce48bf4a443ae4dad2c707d5d1ff26bf24b370d0`  
		Last Modified: Sat, 17 Oct 2026 03:16:26 GMT  
		Size: 860.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e3a59c4c44eda4a5cf51dd5a3be822451f6a2394f342b02cadf4f19979e1e28`  
		Last Modified: Sat, 17 Oct 2026 03:16:26 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-25-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:02335890bc4a648df656838a62ddfc621de37542a7ec15e50de0277b5698d155
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1297164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22710d69a38c4bf6ce66b062439160b0f2f3ef7a0ef86c3fbcdf43e4a188061d`

```dockerfile
```

-	Layers:
	-	`sha256:9e9aa1898d531ae24a5fa22580f3a0eb9f52cc748e8baddaf0138329110786ee`  
		Last Modified: Sat, 17 Oct 2026 03:16:26 GMT  
		Size: 1.3 MB (1279985 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:719bdb11430cabfe9dcb724d2d07fcc319f05b16d386fc1cf0cad081542e62bc`  
		Last Modified: Sat, 17 Oct 2026 03:16:26 GMT  
		Size: 17.2 KB (17179 bytes)  
		MIME: application/vnd.in-toto+json
