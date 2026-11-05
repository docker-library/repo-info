## `maven:3-eclipse-temurin-17-alpine`

```console
$ docker pull maven@sha256:ceddb301782ac0b8c4feab8356f15e97c46190e17fd3aa4318317ec0f14adc29
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `maven:3-eclipse-temurin-17-alpine` - linux; amd64

```console
$ docker pull maven@sha256:5473867bf1d9e40d8e212402544f6c61befe1871c6c8d5c31987bd6adb88b159
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.9 MB (183936106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d31d591d8b1585e6d3cb11b7328afd0e0481a0d94212e47af279c999acd3c955`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:18:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:18:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:18:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:18:17 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:18:17 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Thu, 05 Nov 2026 19:18:23 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='db018054d52c1c109ad128c1412ead2d84ae91052ce60ca370df17b6a89831f5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 05 Nov 2026 19:18:24 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:18:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:18:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 19:18:24 GMT
CMD ["jshell"]
# Thu, 05 Nov 2026 20:35:46 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Thu, 05 Nov 2026 20:35:46 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 05 Nov 2026 20:35:46 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 20:35:46 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 20:35:46 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 05 Nov 2026 20:35:46 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 05 Nov 2026 20:35:46 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 05 Nov 2026 20:35:46 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 20:35:46 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 05 Nov 2026 20:35:46 GMT
ARG USER_HOME_DIR=/root
# Thu, 05 Nov 2026 20:35:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 05 Nov 2026 20:35:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 05 Nov 2026 20:35:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6f74b4293c839a352056f1f29cfabc0c67bcf5688a81c59c1d76529a5d867b0`  
		Last Modified: Thu, 05 Nov 2026 19:18:40 GMT  
		Size: 21.4 MB (21439921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c5df918e206c65c3377faa14d0aec834b4f0fff170a650766b870817d85ad8a`  
		Last Modified: Thu, 05 Nov 2026 19:18:42 GMT  
		Size: 145.2 MB (145238291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b50b73f6f014552669738e82a69884918837048f08d9d2e28523e4d9b20d0d8e`  
		Last Modified: Thu, 05 Nov 2026 19:18:39 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2657b2ba1ff929a0ef1335ab6ddbd6d54a1733df49bd565dc6003ded46fa9626`  
		Last Modified: Thu, 05 Nov 2026 19:18:39 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9c91f7a6e9e6f3aad1fbe0caa4b9d46c2bc848fcf0c3ce11c6aea349d5172fc`  
		Last Modified: Thu, 05 Nov 2026 20:35:54 GMT  
		Size: 3.3 MB (3341609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84126aa34ab6132d7d238f3d167c06bffd73286c30eb91c97464b6efda64fdc1`  
		Last Modified: Thu, 05 Nov 2026 20:35:54 GMT  
		Size: 10.1 MB (10059011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4c52a4d3282c92d4ae59f701b47531c5b1e55f381729dca49d07242b968a12e`  
		Last Modified: Thu, 05 Nov 2026 20:35:54 GMT  
		Size: 858.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf1c40d89add97e0e4ca68a5743de14d0e074c3560cb53c1c3f73f244acfbde1`  
		Last Modified: Thu, 05 Nov 2026 20:35:54 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-17-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:78434e01b70043cc2fe5424b1d298b843a147fe3ed5401b8aac869014579ce3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1245734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ab17dd3dcac2d9dc8b15d7c597ca624bfcb26160f89686841368b7425132732`

```dockerfile
```

-	Layers:
	-	`sha256:299491761a9898bc5465c5f1def6a3317ff6990cb111b922a2f6fb967677b0c5`  
		Last Modified: Thu, 05 Nov 2026 20:35:54 GMT  
		Size: 1.2 MB (1228685 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3df7e2afc4eea5f960a7a7a9e0c1a2c4f8d684e1afd06b1634b3700579eb3fad`  
		Last Modified: Thu, 05 Nov 2026 20:35:54 GMT  
		Size: 17.0 KB (17049 bytes)  
		MIME: application/vnd.in-toto+json
