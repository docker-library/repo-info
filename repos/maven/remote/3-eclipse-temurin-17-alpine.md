## `maven:3-eclipse-temurin-17-alpine`

```console
$ docker pull maven@sha256:a06c92061ef57d33d06b3a88ae1217b983217a427162bc2c4ab58d441eb2fa70
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `maven:3-eclipse-temurin-17-alpine` - linux; amd64

```console
$ docker pull maven@sha256:78bfd35f68b85fd7d0032e95de409e935a3e79ecaa548c3422b818b79ae0a5cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.7 MB (183660929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ae28a2e6a026331caaaf611531095fce6f67633e3e6f2a57b4e69eac9af327a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:36:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:36:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:36:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:36:22 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:36:22 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 22:36:29 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='0c4fcdefa2737ccd66e049245fdb9dc431f91796182141204cd5f8192cb288e6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:36:30 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:30 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:30 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:36:30 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 03:44:05 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Fri, 02 Oct 2026 03:44:05 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 03:44:05 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:44:05 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:44:05 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 03:44:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 03:44:05 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 03:44:05 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:44:06 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 03:44:06 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 03:44:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 03:44:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 03:44:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d03e63f99bb217b1f7ee413f177f42ba8fe72c8aff59fe998b0112c9e23649a2`  
		Last Modified: Fri, 25 Sep 2026 22:36:44 GMT  
		Size: 21.4 MB (21442498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271b0c979ba5426534d499a4752db1936fee768304d2ed1a152b5e9b1da7d607`  
		Last Modified: Fri, 25 Sep 2026 22:36:47 GMT  
		Size: 145.0 MB (144973019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aaaca2d8bd94e9347308b5e6a8928f795d6a3c376d73e73210662d948346504`  
		Last Modified: Fri, 25 Sep 2026 22:36:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb0ff8d01777a4fc494bddb9df1f3d50d8ea89fbdd2f4d95b7c4e25672e9617`  
		Last Modified: Fri, 25 Sep 2026 22:36:43 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72891ad725132bfccfd1ea60d34e29d4614833b5b51bcc65af8371739739fa8b`  
		Last Modified: Fri, 02 Oct 2026 03:44:14 GMT  
		Size: 3.3 MB (3333070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd5a0d31b8953dc7e2729eacf8f598166d2b09f507f139248103ca1e08248495`  
		Last Modified: Fri, 02 Oct 2026 03:44:15 GMT  
		Size: 10.1 MB (10059000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db5b47f0cfb0fe94af17148439186f8cbb881eb155cdd0d8363915c509e7315`  
		Last Modified: Fri, 02 Oct 2026 03:44:14 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afc5f667d1c0f4797218503fc8cca8df9e35b771f2ee5ecdb1a569e5cea28a64`  
		Last Modified: Fri, 02 Oct 2026 03:44:14 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-17-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:ff76b89c66d96fcb0c6878d86a945d6482f755873fa3481bbcaeca009af81b5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1247679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a7b2b5e75ee240e86d0071d599616238ac74b0c8e1de0587f6e5345f45d8bf`

```dockerfile
```

-	Layers:
	-	`sha256:777e1b22909c81c63dd2fb5ef4ce25d313f17f10cbaee95d587d849e615a4f0c`  
		Last Modified: Fri, 02 Oct 2026 03:44:14 GMT  
		Size: 1.2 MB (1230626 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01be1789858193b823aed1a378f2b408482a912e66d21d99fd215256fd42ee78`  
		Last Modified: Fri, 02 Oct 2026 03:44:14 GMT  
		Size: 17.1 KB (17053 bytes)  
		MIME: application/vnd.in-toto+json
