## `maven:3-eclipse-temurin-8-alpine`

```console
$ docker pull maven@sha256:c266c35cc50b949be0da62d39213b36cb7c598f16b6ad901b482a7f90f6378b7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `maven:3-eclipse-temurin-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:fe89267642cef363493c75bc904009575a908344703e72a2d92fc8ec18837618
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87270921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a96a8559fe99f72208c2f01a3456e9650a1318f70f2259b188e952752fb33a0`
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
# Tue, 03 Nov 2026 23:08:15 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Tue, 03 Nov 2026 23:08:15 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 03 Nov 2026 23:08:15 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:08:15 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:08:15 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 03 Nov 2026 23:08:15 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 03 Nov 2026 23:08:15 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 03 Nov 2026 23:08:15 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 23:08:15 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 03 Nov 2026 23:08:15 GMT
ARG USER_HOME_DIR=/root
# Tue, 03 Nov 2026 23:08:15 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 03 Nov 2026 23:08:15 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 03 Nov 2026 23:08:15 GMT
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
	-	`sha256:839074b5d88e7c5663d286afd48c8b5884de75005ee45561b160569b8bd6816f`  
		Last Modified: Tue, 03 Nov 2026 23:08:23 GMT  
		Size: 3.3 MB (3335405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:768435efafac0215140e2bf13159a89cc36765e0a79bc8f502328c64e1d7360a`  
		Last Modified: Tue, 03 Nov 2026 23:08:23 GMT  
		Size: 10.1 MB (10059019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f27dfc867fbaad28f4c8bb31d3a8451b6a69ed9517f69f27ed949ac4e5ae6235`  
		Last Modified: Tue, 03 Nov 2026 23:08:23 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7af86f9d6081a34af733779acbaa46b15a569f6cd12f989c4810cf8f1118822`  
		Last Modified: Tue, 03 Nov 2026 23:08:23 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-8-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:29bfb5ab1a559e862d3fafdc3810a84c6c558db37d92310df0f24101340df55e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1247096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59b7d0cc03b11ecd20b000f66f4114ea1f2241fcbe1614eea7e3520187cc2239`

```dockerfile
```

-	Layers:
	-	`sha256:5d4f56e6d6a280d38bc488adace9cc07ae6b225d84406e1f6bd52345bd60f1c4`  
		Last Modified: Tue, 03 Nov 2026 23:08:23 GMT  
		Size: 1.2 MB (1230067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cf0a515b167ea75b7fb299ac815daea5a528b9d2a19ad5a4d64edc8223946d9`  
		Last Modified: Tue, 03 Nov 2026 23:08:22 GMT  
		Size: 17.0 KB (17029 bytes)  
		MIME: application/vnd.in-toto+json
