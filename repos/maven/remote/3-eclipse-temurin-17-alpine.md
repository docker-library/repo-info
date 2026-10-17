## `maven:3-eclipse-temurin-17-alpine`

```console
$ docker pull maven@sha256:4d044d7b9de7f9e195b408da5d5a67add8191aed143f3046a38d2f41fc9b21e0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `maven:3-eclipse-temurin-17-alpine` - linux; amd64

```console
$ docker pull maven@sha256:2f8e76e0b5cac52f2655e79901bda7333c7d5a695c535cc3be3e12827ce88cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.1 MB (186143850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad7bf89eabd59c940ad78f2d58f9275d707d93f3a1ebc2699215ae48308b383`
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
# Sat, 17 Oct 2026 03:19:26 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Sat, 17 Oct 2026 03:19:27 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 17 Oct 2026 03:19:27 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:19:27 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:19:27 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 17 Oct 2026 03:19:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Oct 2026 03:19:27 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 17 Oct 2026 03:19:27 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 03:19:27 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 17 Oct 2026 03:19:27 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Oct 2026 03:19:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Oct 2026 03:19:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Oct 2026 03:19:27 GMT
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
	-	`sha256:d06385868106605364223675c4606e9de7cc688455b43c846c907b8a7b216b76`  
		Last Modified: Sat, 17 Oct 2026 03:19:35 GMT  
		Size: 3.3 MB (3333118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e8d5586d863aba6b508ac0d89ff9ddc59f95dc6ca3c39ed72e85c0ac076a39`  
		Last Modified: Sat, 17 Oct 2026 03:19:35 GMT  
		Size: 10.1 MB (10059014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54213f72d3fc0020eb79f56ba45c032f04d7e68143a93113e3c40a1db90a1708`  
		Last Modified: Sat, 17 Oct 2026 03:19:35 GMT  
		Size: 860.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08246456a8f44c8201ddef5c74adddef2548b4a159268459c9dd838dc31de8b6`  
		Last Modified: Sat, 17 Oct 2026 03:19:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-17-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:033d296394f437da2208d7ba0ef87516babe0c8df5d5e38ed96de0b247562751
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1247679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81957679190b5ae08dd0c509651759bd119719485f0f4f1fe1d7bf811305f5d2`

```dockerfile
```

-	Layers:
	-	`sha256:c1d23f77e38202f894b63fd90e0e1a93e756118a5321c4ca249c4bb1abcc2ab4`  
		Last Modified: Sat, 17 Oct 2026 03:19:35 GMT  
		Size: 1.2 MB (1230626 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3db26ccf97474a727b0b99b0adbc384e25cf3ae8af683eb6945b13390aa68d3`  
		Last Modified: Sat, 17 Oct 2026 03:19:35 GMT  
		Size: 17.1 KB (17053 bytes)  
		MIME: application/vnd.in-toto+json
