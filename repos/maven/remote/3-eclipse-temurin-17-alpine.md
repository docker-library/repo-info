## `maven:3-eclipse-temurin-17-alpine`

```console
$ docker pull maven@sha256:38e8626633e830fb7b97da0c465c230cb554b2356b9ff59bd96cea5451ec5072
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `maven:3-eclipse-temurin-17-alpine` - linux; amd64

```console
$ docker pull maven@sha256:cd99a5cf2e859b2208776a1207830773246d0ab06098b70cbb0a214dbfd07616
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.1 MB (186143822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2178fe9273d9f5873c207570c595f9af69ff5d16c1bf1ab2ae2a180a52dd0371`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 23:43:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 23:43:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:43:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 23:43:51 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 02 Oct 2026 23:43:51 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 23:43:59 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='0c4fcdefa2737ccd66e049245fdb9dc431f91796182141204cd5f8192cb288e6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 02 Oct 2026 23:44:00 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 23:44:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:44:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 23:44:00 GMT
CMD ["jshell"]
# Mon, 05 Oct 2026 21:33:51 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Mon, 05 Oct 2026 21:33:51 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 05 Oct 2026 21:33:51 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:33:51 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:33:51 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 05 Oct 2026 21:33:51 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 05 Oct 2026 21:33:51 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 05 Oct 2026 21:33:51 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 05 Oct 2026 21:33:52 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 05 Oct 2026 21:33:52 GMT
ARG USER_HOME_DIR=/root
# Mon, 05 Oct 2026 21:33:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 05 Oct 2026 21:33:52 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 05 Oct 2026 21:33:52 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf3addb07ea2673476966711c8ef4b77d72ec033b201203d2296f7479b71e1bb`  
		Last Modified: Fri, 02 Oct 2026 23:44:15 GMT  
		Size: 23.9 MB (23925430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:682f3b60ab22c9777dfa673d6f969f33f458428809266d3c71779f08c25cd6ca`  
		Last Modified: Fri, 02 Oct 2026 23:44:17 GMT  
		Size: 145.0 MB (144972944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5455f1896dd2168d3a09b3aa558024a225f481a459d9231424c4bffe00630541`  
		Last Modified: Fri, 02 Oct 2026 23:44:13 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa054eff30d365a2b0c77ed241ed88774500e193b1ce24c5e4ee682c3841c4a3`  
		Last Modified: Fri, 02 Oct 2026 23:44:13 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1acb598a2ce2d7550772ebc173300f095a6f73015b4418a9206d1cf1c21908b`  
		Last Modified: Mon, 05 Oct 2026 21:34:00 GMT  
		Size: 3.3 MB (3333104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3effcf1631c5ef257c5aa37fc5896b7aa2c570e3c99d26fa53529a217acbc846`  
		Last Modified: Mon, 05 Oct 2026 21:34:00 GMT  
		Size: 10.1 MB (10059003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a286f0995516ee3f3f48b8fd75bd8455abed685adbb1b9f12f0cee5079b4b1`  
		Last Modified: Mon, 05 Oct 2026 21:34:00 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bf4cafe7ab6451c4f64eff7eec8c61f8d9e2c371415d1cbb7c327941c601672`  
		Last Modified: Mon, 05 Oct 2026 21:34:00 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-17-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:0a3a0a483b06f32e1a35d7bc9704ddee43a3eade817d7c75de336ebd17684b38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1247679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b913acd10d8158b6270302bf54352dc7d984e81febe929e0bf5c2163fb9e2c25`

```dockerfile
```

-	Layers:
	-	`sha256:9171596791dbf4f7fd8c6ebbaeb144796cb4550a40858b1860b61a580d8cbc68`  
		Last Modified: Mon, 05 Oct 2026 21:34:00 GMT  
		Size: 1.2 MB (1230626 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2e67e319777e442ba51a7b9402134b57de2383c45444e83996e0406e7bd2c53`  
		Last Modified: Mon, 05 Oct 2026 21:34:00 GMT  
		Size: 17.1 KB (17053 bytes)  
		MIME: application/vnd.in-toto+json
