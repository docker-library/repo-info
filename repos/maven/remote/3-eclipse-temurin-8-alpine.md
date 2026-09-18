## `maven:3-eclipse-temurin-8-alpine`

```console
$ docker pull maven@sha256:e6b1a8a1e90df8d764ae9e050d596135fe8674d2b8ec1705ea07bbddd4e01a71
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `maven:3-eclipse-temurin-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:ed8bea8c73cc12a7003043e0aef82e12c012c520f1acd0a8657a80e37aadb9a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86569375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5388ae525902943f1f9648239733b8435dc72c670247610c03fd8f2411a7ded`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:39:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:39:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:39:51 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:39:51 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Thu, 17 Sep 2026 21:39:57 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='746bc5577ca2067bf2a96a0ae0f6cf50422f9cb7b5aa58a52e9fceabff5d0619';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Thu, 17 Sep 2026 21:39:58 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:39:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:39:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 22:36:08 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Thu, 17 Sep 2026 22:36:09 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 17 Sep 2026 22:36:09 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 17 Sep 2026 22:36:09 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 17 Sep 2026 22:36:09 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 17 Sep 2026 22:36:09 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 17 Sep 2026 22:36:09 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 17 Sep 2026 22:36:09 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 17 Sep 2026 22:36:09 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 17 Sep 2026 22:36:09 GMT
ARG USER_HOME_DIR=/root
# Thu, 17 Sep 2026 22:36:09 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 17 Sep 2026 22:36:09 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 17 Sep 2026 22:36:09 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0e1a630e306a1f648f1f85b1cb393030fa1d37ae76b69e42092c5149aa26b96`  
		Last Modified: Thu, 17 Sep 2026 21:40:09 GMT  
		Size: 17.0 MB (16972079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f29d77aeace71b20d01fa2b76cf6ca5f367df3056ede62d678f73cf073849e1`  
		Last Modified: Thu, 17 Sep 2026 21:40:09 GMT  
		Size: 53.1 MB (53057401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2267308f1cdadaaa8fdf07702ecb678107164eb3a50e04eb851c8dd7811557a3`  
		Last Modified: Thu, 17 Sep 2026 21:40:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9094cbbf67bb90d154da852c8728fd1307f2ec280d623d7f4d32c172c7236dd7`  
		Last Modified: Thu, 17 Sep 2026 21:40:08 GMT  
		Size: 2.5 KB (2482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a2ed17fd1aa40debec81eabfb8a7887585887035131c358da4bdb43e4989c8e`  
		Last Modified: Thu, 17 Sep 2026 22:36:16 GMT  
		Size: 3.3 MB (3326560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a677b405487a74b4ed3cee01a2b11750bddf3316a8de25934801ec6c520bffd6`  
		Last Modified: Thu, 17 Sep 2026 22:36:17 GMT  
		Size: 9.4 MB (9359975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d07e73feae39716db5b6f60ef0c423a0a119cedc5281c307a2b2d345bb69ee`  
		Last Modified: Thu, 17 Sep 2026 22:36:16 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3826756f68f90bc1876842c9de4dfe092543f8e682b4905ef522eff0be1c2e0`  
		Last Modified: Thu, 17 Sep 2026 22:36:16 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-8-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:d332e4dbbba7ea04fe9606f05ae2f41a4ca085a2b6744ec66a8260859fab26b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1243976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd46d2b7e2a400772e9a773e9c9507243ddc0f9e4ee5e47014409feed3bf12e`

```dockerfile
```

-	Layers:
	-	`sha256:8d01257ab8837ac1d8f2c68f8014a8204d0b377840771aa35c52ef625a35f739`  
		Last Modified: Thu, 17 Sep 2026 22:36:16 GMT  
		Size: 1.2 MB (1226954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f79a49ead6ddd8e62315e3546ca89f638a10d49f9ad7b05bf5dda8f67ac04d5a`  
		Last Modified: Thu, 17 Sep 2026 22:36:16 GMT  
		Size: 17.0 KB (17022 bytes)  
		MIME: application/vnd.in-toto+json
