## `maven:3-eclipse-temurin-25-alpine`

```console
$ docker pull maven@sha256:5d74a0f788b3cca0d36a4a3f358eadc8b0dd6f2f4f2dfcd0091b0cd5934d3002
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
$ docker pull maven@sha256:71ddb849b194978c1606a7f287965a7dfa374b4a3c9e6bcf06fc50b76d525a39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123700844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8475c3f141bd4b9d713f83d9b625c065580da0bbdbe90c12a3cd6afb3f56717e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 23:20:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:20:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 23:20:13 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 23:20:13 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Wed, 21 Oct 2026 23:20:21 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8d19373d427017d86ac87cf6a47ba49746be864832f60b52b7e3b1531c6b2cb8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='f18648ee5ce45261f50dc9493fdae7ddebaa2a7a857cafda3e2a448a79c03dee';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:23 GMT
CMD ["jshell"]
# Thu, 22 Oct 2026 00:31:31 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Thu, 22 Oct 2026 00:31:36 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 22 Oct 2026 00:31:36 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 22 Oct 2026 00:31:36 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 22 Oct 2026 00:31:36 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 22 Oct 2026 00:31:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 22 Oct 2026 00:31:36 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 22 Oct 2026 00:31:36 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 22 Oct 2026 00:31:36 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 22 Oct 2026 00:31:36 GMT
ARG USER_HOME_DIR=/root
# Thu, 22 Oct 2026 00:31:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 22 Oct 2026 00:31:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 22 Oct 2026 00:31:36 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1925f5d03239a36fc9f03b115d2e5b92dc16f876eeb732ed46b48002dcecb5f7`  
		Last Modified: Wed, 21 Oct 2026 23:20:39 GMT  
		Size: 14.4 MB (14426609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562f033fac9bf045bf190e4b2ddc72cbf318dbdd7b25f3bccd29ce25af7422ee`  
		Last Modified: Wed, 21 Oct 2026 23:20:44 GMT  
		Size: 90.6 MB (90558872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e943606091df57124abb9c8d6433a2ce29045e747b95bb2a68961a93e76bee3d`  
		Last Modified: Wed, 21 Oct 2026 23:20:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddcc2580d02d2fbdc4df3760c57b4f1d100d320ac01f05fe05ac8a33a47e34db`  
		Last Modified: Wed, 21 Oct 2026 23:20:28 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e866ad1716aafda2e509b00818a3bec8fdccf8629adf8c757cf65da2dd7cd493`  
		Last Modified: Thu, 22 Oct 2026 00:31:43 GMT  
		Size: 4.5 MB (4462266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:499bf9081d25ff2d278eb73ec784d17e02545d7be7dcccb4fabc747c55ab3563`  
		Last Modified: Thu, 22 Oct 2026 00:31:43 GMT  
		Size: 10.1 MB (10059006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209412b8627acbfafc8eb98bf72b19fe8b2ea8a0eca96e4aa531b50ebf9c6d95`  
		Last Modified: Thu, 22 Oct 2026 00:31:43 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08059c50a5b88cae42e40dcdbc7a1a51dfd71da79ffdf8686ac99aaf93148f3d`  
		Last Modified: Thu, 22 Oct 2026 00:31:43 GMT  
		Size: 153.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-25-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:996741c00f5dbdf72c4717af3f76f8d8cd1d200e9d39c7d560945bf98e1fcd7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1295225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b761554302f6ccd0b0fa6ed24006464534bfabef5b226623fb2180a28df305d5`

```dockerfile
```

-	Layers:
	-	`sha256:14ad5db9b9b99729867fb461543da5ca05449f638ced509f937ea8a4fb376ea2`  
		Last Modified: Thu, 22 Oct 2026 00:31:43 GMT  
		Size: 1.3 MB (1278048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b45d26a254629a6c26bed1f50b5236c8bca69ef5e339bbfcbd114f796c5c5947`  
		Last Modified: Thu, 22 Oct 2026 00:31:42 GMT  
		Size: 17.2 KB (17177 bytes)  
		MIME: application/vnd.in-toto+json
