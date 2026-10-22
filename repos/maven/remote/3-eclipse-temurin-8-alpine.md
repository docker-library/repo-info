## `maven:3-eclipse-temurin-8-alpine`

```console
$ docker pull maven@sha256:08096f0a40669f7e2c9147d793c82a8d06a8922379f2af5156e7201ab3a56577
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `maven:3-eclipse-temurin-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:0a49e728d87bfae283fab2922da60214ef71c807f8a3fd461f5743f54ff26932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87264725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4d2df31bfaa6e2b49499979f644cdf9f1d6a03e8ff1290eaf799dcbb70db3d5`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:57:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 22:57:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:57:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 22:57:02 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 22:57:02 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Wed, 21 Oct 2026 22:57:08 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='f76b7c98a593f15bbfc9042866141185d63aa87e0afde3b7e48d2c4789a2def5';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Wed, 21 Oct 2026 22:57:08 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 22:57:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:57:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 23:41:05 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Wed, 21 Oct 2026 23:41:05 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 21 Oct 2026 23:41:05 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 21 Oct 2026 23:41:05 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 21 Oct 2026 23:41:05 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 21 Oct 2026 23:41:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 21 Oct 2026 23:41:05 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 21 Oct 2026 23:41:05 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 21 Oct 2026 23:41:05 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 21 Oct 2026 23:41:05 GMT
ARG USER_HOME_DIR=/root
# Wed, 21 Oct 2026 23:41:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 21 Oct 2026 23:41:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 21 Oct 2026 23:41:05 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6428282c06b6d9506c497fc6d7ce971d649f8795db7ee656374344be3e3172c0`  
		Last Modified: Wed, 21 Oct 2026 22:57:19 GMT  
		Size: 17.0 MB (16967498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d4ca0ee144900fd81d2282db2a9fe9ce0913a02040b26f89ddd714766bcf281`  
		Last Modified: Wed, 21 Oct 2026 22:57:20 GMT  
		Size: 53.1 MB (53052266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4f1c23d24f111f5a0c7cee04fef8932e08b40fa05672c35558cde6f13faccb`  
		Last Modified: Wed, 21 Oct 2026 22:57:18 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c29415c2cf9f9b9cdc5a47913b600c59ae6989046ceca296f956a41ff1729df`  
		Last Modified: Wed, 21 Oct 2026 22:57:18 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58a6121a2d7fea4fb5835fcfdc16cdf6092444ba96dcfc5fdf7506b7a0a72be`  
		Last Modified: Wed, 21 Oct 2026 23:41:13 GMT  
		Size: 3.3 MB (3329222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d43c7924da08b29b8398433b3a163b0cb4224c1e59705be98a237aaed620df`  
		Last Modified: Wed, 21 Oct 2026 23:41:13 GMT  
		Size: 10.1 MB (10059008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c16e061fd21f3b744ce16373292b86a4e8aa847f1661dbefa29bb8d534b7217`  
		Last Modified: Wed, 21 Oct 2026 23:41:12 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1a7148f2561b17217d6f53d5d40b65095e12f0f0b5a204396a485dee8fec1e3`  
		Last Modified: Wed, 21 Oct 2026 23:41:12 GMT  
		Size: 153.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-8-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:56b4f437ab830d82840cd006affce0fbfb7e272181c37c0e2bd477aed5c20b84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1247095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad83ae9c134ca6bc554cfd2339880d21d4f2f6c6c7c5a6f4942fe999cb81d798`

```dockerfile
```

-	Layers:
	-	`sha256:4324f5641298ecc32512dcccdb519f2b9b938f9caf36edcb2d95717aa284ce2a`  
		Last Modified: Wed, 21 Oct 2026 23:41:13 GMT  
		Size: 1.2 MB (1230067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d39e390c319478d49309ca060a36eac5978d3f2a23ee5b500bdf123792ec3cae`  
		Last Modified: Wed, 21 Oct 2026 23:41:12 GMT  
		Size: 17.0 KB (17028 bytes)  
		MIME: application/vnd.in-toto+json
