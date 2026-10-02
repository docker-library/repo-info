## `maven:3-eclipse-temurin-11-alpine`

```console
$ docker pull maven@sha256:0a5683a9e8617220c0901027f2638079acbcd85515f7af2cab2a966354c02fa1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `maven:3-eclipse-temurin-11-alpine` - linux; amd64

```console
$ docker pull maven@sha256:6cea2d1e1b43cdbb0a44c37f7620760d10057493baa5bb1583e177ad726fe77c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175243889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:379ee43b235e310eb39a2584610efb1940c22c1811a1ce0790d2fa4818e7b8d1`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:35:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:28 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:35:28 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:35:38 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='1dc1d3259fa4ca7a2db43c539a60bfa7fc0ea595f445a71ef36d28120f3094aa';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_alpine-linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:35:40 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:35:40 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 03:43:58 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Fri, 02 Oct 2026 03:43:58 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 03:43:58 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:43:58 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:43:58 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 03:43:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 03:43:58 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 03:43:58 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:43:58 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 03:43:58 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 03:43:58 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 03:43:58 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 03:43:58 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:306c183d62c2e4a4330bce8e042e6eb89ba9fa5db79b2fd0f813a1333fbb8094`  
		Last Modified: Fri, 25 Sep 2026 22:35:54 GMT  
		Size: 17.0 MB (16972135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a643519b5f6673c07720a5e01b34e3f78c5fc4183d51e4978dc34955cb398f9d`  
		Last Modified: Fri, 25 Sep 2026 22:35:55 GMT  
		Size: 141.0 MB (141032797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc8dee2647a63114e7d1dbe8544499ede6ac03dd790e5732bb19295a9e972b1`  
		Last Modified: Fri, 25 Sep 2026 22:35:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9d8e8fdc43874d56d19ee3518b93e4f1ed48e6bc36ed5dfddf7d719babe1fb`  
		Last Modified: Fri, 25 Sep 2026 22:35:53 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7bdd7b5c7884f8e2c187b6d915e975d06863b70a7c21a37deb6e8b3cfe7d71`  
		Last Modified: Fri, 02 Oct 2026 03:44:05 GMT  
		Size: 3.3 MB (3326606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2407694a12f092e7c29da5bcaf62f141196189c043d2be10e2891603f2377f54`  
		Last Modified: Fri, 02 Oct 2026 03:44:06 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:170c8366ff4da7e27ca403744c4147771e903eb166fc3c179ecbe06753c42f71`  
		Last Modified: Fri, 02 Oct 2026 03:44:05 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d162e53e23f6c9d71151dc93c77fe845a17b684b7638d327643842161507d9c3`  
		Last Modified: Fri, 02 Oct 2026 03:44:05 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-11-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:bf467649b51b32dadba61b47b20145888549f1e83b7e0a98de2204d9c2fb0e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1148370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6de26a9fb1b0541bf2146038e90485cc445a7e3a418943a636aa4420dac10dee`

```dockerfile
```

-	Layers:
	-	`sha256:832eb3bd7738f3e5e3b69a2ec3e010607d4ec112769037f08e3c66729733a419`  
		Last Modified: Fri, 02 Oct 2026 03:44:05 GMT  
		Size: 1.1 MB (1131317 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e930132d596210e4430e34b3c399e90ac0c4bdc94dc4599545482f5a29cd7ba`  
		Last Modified: Fri, 02 Oct 2026 03:44:05 GMT  
		Size: 17.1 KB (17053 bytes)  
		MIME: application/vnd.in-toto+json
