## `maven:3-eclipse-temurin-11-alpine`

```console
$ docker pull maven@sha256:9b934db1f475d9af1cb9ac9120baa42b02b4891d92d025e3f8948d835eb96ca7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `maven:3-eclipse-temurin-11-alpine` - linux; amd64

```console
$ docker pull maven@sha256:56e9ec69fbf0f2afd0874207c7096e316f3bb51ca3708496561e3080967498c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174545992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe3ddcb5c9d2dbc648544c27e13e85d81062258a4e3d9b84a10f6ae4faa64137`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:40:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:40:09 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:40:09 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Thu, 17 Sep 2026 21:40:19 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='be9831861b7a4b5fc8ec0d9540d462230f6b9bd6c7ee29585ec1ce52d1435d6c';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_x64_alpine-linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 17 Sep 2026 21:40:20 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:40:20 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:40:20 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 21:40:20 GMT
CMD ["jshell"]
# Thu, 17 Sep 2026 22:36:20 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Thu, 17 Sep 2026 22:36:20 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 17 Sep 2026 22:36:20 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 17 Sep 2026 22:36:20 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 17 Sep 2026 22:36:20 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 17 Sep 2026 22:36:20 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 17 Sep 2026 22:36:20 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 17 Sep 2026 22:36:20 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 17 Sep 2026 22:36:20 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 17 Sep 2026 22:36:20 GMT
ARG USER_HOME_DIR=/root
# Thu, 17 Sep 2026 22:36:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 17 Sep 2026 22:36:20 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 17 Sep 2026 22:36:20 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41f79fa0cffa294f31971572d2080d75052ea5a5d2401177495d9a27b425198d`  
		Last Modified: Thu, 17 Sep 2026 21:40:33 GMT  
		Size: 17.0 MB (16972097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d03598bdba80e6dd008d9c97fbd135bb19831f1e4183272a20a91249a19e142`  
		Last Modified: Thu, 17 Sep 2026 21:40:36 GMT  
		Size: 141.0 MB (141034046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f5e04250d4dd6c4300d6374c7d23ee721384ea564723d3cb33391f7d46be97d`  
		Last Modified: Thu, 17 Sep 2026 21:40:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be9d3cb92a2a79e4e19586d762ff97388f418fd4e5a0fd241b6dda0c8c56946`  
		Last Modified: Thu, 17 Sep 2026 21:40:32 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dda51b438a2ab13288a6126fd1071986ac3638acefd03ab591907f0fa7c3a4c`  
		Last Modified: Thu, 17 Sep 2026 22:36:27 GMT  
		Size: 3.3 MB (3326546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6319b27302becae31587300b6376b362da048a3e22e67f97c680692370419e44`  
		Last Modified: Thu, 17 Sep 2026 22:36:27 GMT  
		Size: 9.4 MB (9359965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1d0d3875ccd5af5b2b014a736021f1bef7a4e237eb3d7271c8fe4160e0b60ac`  
		Last Modified: Thu, 17 Sep 2026 22:36:27 GMT  
		Size: 858.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c4b0695b8ee6e70fbbb1619c2013625a2fb35f58c28ada9e79065e3c3608eaf`  
		Last Modified: Thu, 17 Sep 2026 22:36:27 GMT  
		Size: 153.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-11-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:f7380eb27534f6717f7494c52d01e52aa3a8fb4decd2a7b9818d3b44fee72598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1143302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76938295ae477262219061accaafc98e2c770f5d8afef5f51a7b63879fd64ac2`

```dockerfile
```

-	Layers:
	-	`sha256:544faf4b08cd56b7975b788765158a03eba3a62e310dbf693aa2915887786ce1`  
		Last Modified: Thu, 17 Sep 2026 22:36:27 GMT  
		Size: 1.1 MB (1126259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0e4167f8ceabc4855f9e6e21bda06638522a7fc7d80490c10dd2f5ccc8384f9`  
		Last Modified: Thu, 17 Sep 2026 22:36:27 GMT  
		Size: 17.0 KB (17043 bytes)  
		MIME: application/vnd.in-toto+json
