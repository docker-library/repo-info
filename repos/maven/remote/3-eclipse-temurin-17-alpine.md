## `maven:3-eclipse-temurin-17-alpine`

```console
$ docker pull maven@sha256:35cba74e7b410fafbe999ced259ee73bf428c661b04aea3130f11729b0edf75f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `maven:3-eclipse-temurin-17-alpine` - linux; amd64

```console
$ docker pull maven@sha256:5506c568ceb420e3a453b94a8d1fd1a57396e838b43e7e5f6ea9a5ed77951ad9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.9 MB (183935419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe7e4045fd3c350de099de6e40e3932fe0dd65da5c9510b56980aff473ea8701`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 21:56:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 21:56:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 21:56:26 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 03 Nov 2026 21:56:26 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Tue, 03 Nov 2026 21:56:26 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 03 Nov 2026 21:56:33 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='db018054d52c1c109ad128c1412ead2d84ae91052ce60ca370df17b6a89831f5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 03 Nov 2026 21:56:34 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 21:56:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 21:56:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 03 Nov 2026 21:56:34 GMT
CMD ["jshell"]
# Tue, 03 Nov 2026 23:11:30 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Tue, 03 Nov 2026 23:11:30 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 03 Nov 2026 23:11:30 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:11:30 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:11:30 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 03 Nov 2026 23:11:30 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 03 Nov 2026 23:11:30 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 03 Nov 2026 23:11:30 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 23:11:30 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 03 Nov 2026 23:11:30 GMT
ARG USER_HOME_DIR=/root
# Tue, 03 Nov 2026 23:11:30 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 03 Nov 2026 23:11:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 03 Nov 2026 23:11:30 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc0624e917b83aaf03e242bc462d24bd95decd45759241d246c0a98bdf2fc8a`  
		Last Modified: Tue, 03 Nov 2026 21:56:49 GMT  
		Size: 21.4 MB (21439965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd2f40a15e5828cbeb475e4de2a3925b6193e5d6a0177250833253f68d0d60f`  
		Last Modified: Tue, 03 Nov 2026 21:56:52 GMT  
		Size: 145.2 MB (145238108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d796ce7c94d07e26701b1bc6376d5e21299c235fc5d095c13b3c1d5caeb32d7d`  
		Last Modified: Tue, 03 Nov 2026 21:56:48 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7d45ac6b96edcf369cda70c4c45f070b21667db0b623f0ea06449134aa54f1`  
		Last Modified: Tue, 03 Nov 2026 21:56:48 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f835bede59b9b1b32febdbea8b27248592280e8d72d28d8fe7d65d3a07b3dd9b`  
		Last Modified: Tue, 03 Nov 2026 23:11:37 GMT  
		Size: 3.3 MB (3341624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7d81a8ec31d5c0157863c5a17b4ad2656a28b3f367f5aac2fda8f3ea4ae7399`  
		Last Modified: Tue, 03 Nov 2026 23:11:38 GMT  
		Size: 10.1 MB (10059010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9d6bb1a87b118d016aea01459861ec6d1f9a2696c6756ca307807e4d44f5689`  
		Last Modified: Tue, 03 Nov 2026 23:11:37 GMT  
		Size: 858.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2aad7bcf20ceddb476e8d0338d30577df096e12696c5c5f05666e05e2fb24f0`  
		Last Modified: Tue, 03 Nov 2026 23:11:37 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-17-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:70ceb23ad2ed9b5bc69d123fd7bd19bc0d2fa842f3621fae3f1e1109ca407b96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1245734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0622b0eaecee8c41b3d480977d977882eb711e0b72178f6c0c09fcd2ac498138`

```dockerfile
```

-	Layers:
	-	`sha256:c9d8b695081f309eede1e1d299ee0e5b2702421263775d148339145a3606fbe1`  
		Last Modified: Tue, 03 Nov 2026 23:11:37 GMT  
		Size: 1.2 MB (1228685 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b14406a18011a9e94201d2e98219a00f72803ce26db0eed37dc2d4b3f1d2ba47`  
		Last Modified: Tue, 03 Nov 2026 23:11:37 GMT  
		Size: 17.0 KB (17049 bytes)  
		MIME: application/vnd.in-toto+json
