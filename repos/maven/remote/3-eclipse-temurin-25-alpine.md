## `maven:3-eclipse-temurin-25-alpine`

```console
$ docker pull maven@sha256:69bd518ab90a85eb0b182f0b241d903e9401013d463a8c100570d30c5753e832
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-eclipse-temurin-25-alpine` - linux; amd64

```console
$ docker pull maven@sha256:1e6dc8edab5aff8135a376257f15ba09a7375fec3ecf542f64a3630461272235
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.3 MB (124299583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66908f2122412633a8fbe782c73c8199b8bf7fed1c83f546b23752fb88a7aa4f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:38:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:38:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:38:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:38:25 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:38:25 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 25 Sep 2026 22:38:32 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8d19373d427017d86ac87cf6a47ba49746be864832f60b52b7e3b1531c6b2cb8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='f18648ee5ce45261f50dc9493fdae7ddebaa2a7a857cafda3e2a448a79c03dee';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 25 Sep 2026 22:38:33 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:38:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:38:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:38:33 GMT
CMD ["jshell"]
# Mon, 05 Oct 2026 21:26:16 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Mon, 05 Oct 2026 21:26:17 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 05 Oct 2026 21:26:17 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:26:17 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:26:17 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 05 Oct 2026 21:26:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 05 Oct 2026 21:26:17 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 05 Oct 2026 21:26:17 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 05 Oct 2026 21:26:17 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 05 Oct 2026 21:26:17 GMT
ARG USER_HOME_DIR=/root
# Mon, 05 Oct 2026 21:26:17 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 05 Oct 2026 21:26:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 05 Oct 2026 21:26:17 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b91322bf4f7afbc446726716157780764d83279b1b50db9f85cc58157d412dba`  
		Last Modified: Fri, 25 Sep 2026 22:38:48 GMT  
		Size: 14.4 MB (14374731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d1f71485fa1e29f1906aa84b96c38d32cd49ec6ecd0eb3126a48cc4906d3f3b`  
		Last Modified: Fri, 25 Sep 2026 22:38:49 GMT  
		Size: 91.6 MB (91637594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3244f132ea3cbdc6593691fd2e8799961da02395862c68851ea03111d2b8846d`  
		Last Modified: Fri, 25 Sep 2026 22:38:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4848277582c7b3d33f75d66d0daf214dc6889903cc233eaa3c689df68400546`  
		Last Modified: Fri, 25 Sep 2026 22:38:47 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a19e044abd7e1015a861e2d98453289f4eeea051394875255812aadb8998e38`  
		Last Modified: Mon, 05 Oct 2026 21:26:25 GMT  
		Size: 4.4 MB (4374910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:242320cf3b2c4ede2dd8d81e45bfa1424a04e8bb2517c1b5a13fd30545d6b4e7`  
		Last Modified: Mon, 05 Oct 2026 21:26:25 GMT  
		Size: 10.1 MB (10059009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b33f91dbecf395a0102e87c4657610956722a6e45389fb2562fe1e0d80caae46`  
		Last Modified: Mon, 05 Oct 2026 21:26:24 GMT  
		Size: 855.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d5cd0f9fbab9e666b87eb5297d8f4d4242b5012c8ef2e15d116acd081cffbdc`  
		Last Modified: Mon, 05 Oct 2026 21:26:25 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-25-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:28921bd98caa1b1a99bec5a1a04bd8bedaa00c0226dae007c6a9de86c21cd1bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1147682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbd0484679fa259f517ed27fe751c270e87dd4f2f52b30b66b04af3aee63ac81`

```dockerfile
```

-	Layers:
	-	`sha256:f6220a187dd8fb29a9b902d78164f2eb469df0b53f819de9988c95e981f8194f`  
		Last Modified: Mon, 05 Oct 2026 21:26:25 GMT  
		Size: 1.1 MB (1130636 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56c0b03d1bbb56fcfea46db0700443892e52d88dc097552b4a48e3d18f316acb`  
		Last Modified: Mon, 05 Oct 2026 21:26:24 GMT  
		Size: 17.0 KB (17046 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-25-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:3f8e8165377bece717fe9cb44f19b9325a237a5ad446ebf82f933239de2475a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123692693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eddece79686080c14df67bc18a50a574182bfa2e687fe1dd7921b5fae7cbf16`
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
# Mon, 05 Oct 2026 21:28:32 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Mon, 05 Oct 2026 21:28:32 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 05 Oct 2026 21:28:32 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:28:32 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:28:32 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 05 Oct 2026 21:28:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 05 Oct 2026 21:28:32 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 05 Oct 2026 21:28:32 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 05 Oct 2026 21:28:32 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 05 Oct 2026 21:28:32 GMT
ARG USER_HOME_DIR=/root
# Mon, 05 Oct 2026 21:28:32 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 05 Oct 2026 21:28:32 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 05 Oct 2026 21:28:32 GMT
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
	-	`sha256:adc71582297e74aa88dd71c22e465acdf9f7f6aa88187feda25f6b351e01279b`  
		Last Modified: Mon, 05 Oct 2026 21:28:40 GMT  
		Size: 4.5 MB (4458941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71948ca8a2d825d092bbb0a8625676109f923394b77a37842a06b56b27462a2f`  
		Last Modified: Mon, 05 Oct 2026 21:28:40 GMT  
		Size: 10.1 MB (10058984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d5ff6d0f48f17dbfd5fe225ec9878f27008c26612935bc3a00e4bd19dd4a63`  
		Last Modified: Mon, 05 Oct 2026 21:28:40 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a23378694d68a69a4f439971c73dfa66b81bbdf2dd7da0d58ddf3aa9b575f68`  
		Last Modified: Mon, 05 Oct 2026 21:28:40 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-25-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:44f416d5d83e2914490a233b3a82e08760193f8b2a78478caefc7235baeb7820
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1297164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77d1bb66e389d29f56cfb5d2fc852fb0cdafc1d4e01be274c1b7f8b637be714b`

```dockerfile
```

-	Layers:
	-	`sha256:8afd653790d9e11123ccab858a1cf41e3361a386a0beb43702fa97175eef0e64`  
		Last Modified: Mon, 05 Oct 2026 21:28:40 GMT  
		Size: 1.3 MB (1279985 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1f93620220f13f3e2285696ad71ff7c24d41b01ea94eda8ba7bd0bde1dc4516`  
		Last Modified: Mon, 05 Oct 2026 21:28:40 GMT  
		Size: 17.2 KB (17179 bytes)  
		MIME: application/vnd.in-toto+json
