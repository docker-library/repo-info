## `maven:3-eclipse-temurin-17-alpine`

```console
$ docker pull maven@sha256:e79307e71295e48a5419f3cc3257fc40f7c38a512bdb6dab2b33c8c6a60fd2f7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `maven:3-eclipse-temurin-17-alpine` - linux; amd64

```console
$ docker pull maven@sha256:33e80cfb748bde474cc661b0edd6776c545e3a7f6cfd487b7534dbecd90b4e8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.1 MB (186143838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc209fb7f90215b123afc2c8031a595f1d47e2fb64d9128f5df39489dcdff3a0`
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
# Fri, 02 Oct 2026 23:52:51 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Fri, 02 Oct 2026 23:52:56 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 23:52:56 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 23:52:56 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 23:52:56 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 23:52:56 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 23:52:56 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 23:52:56 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:52:56 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 23:52:56 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 23:52:56 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 23:52:56 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 23:52:56 GMT
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
	-	`sha256:56f561e8094440e0b5f13208b93d7a8dbd7959f14c0f0d042b219c93f4bfb308`  
		Last Modified: Fri, 02 Oct 2026 23:53:03 GMT  
		Size: 3.3 MB (3333103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79db4829fbb4e24f24f22e2c42f2b6dbb48163179058d355d34d35c0ac2d0d57`  
		Last Modified: Fri, 02 Oct 2026 23:53:03 GMT  
		Size: 10.1 MB (10059020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ccc90cf9e8b6e895b6564bb44126353ffc0a09520368ad33aeec12c1163fdeb`  
		Last Modified: Fri, 02 Oct 2026 23:53:03 GMT  
		Size: 860.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d16c79fc8b1336ed44b9ec718a9ac16b47f78b9ce93fb86a0af2c8ab79b6b4b2`  
		Last Modified: Fri, 02 Oct 2026 23:53:03 GMT  
		Size: 151.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-17-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:c212967efc25f23d0e69ea3802570a9a78a781bbd59646bd08a4ccae02f39a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1247679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d5dd760288f57025e0d412c212e619b0877dc21387cb60a37b80f3b0f5e117c`

```dockerfile
```

-	Layers:
	-	`sha256:761f1dbd16f04139695e6ecb95bff211ebfe890367e51e253092a876659d06c6`  
		Last Modified: Fri, 02 Oct 2026 23:53:03 GMT  
		Size: 1.2 MB (1230626 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dae92c1e5913b0a50d9b96ee57f1dcda75812b755cc82e7466709d06ba810d3b`  
		Last Modified: Fri, 02 Oct 2026 23:53:03 GMT  
		Size: 17.1 KB (17053 bytes)  
		MIME: application/vnd.in-toto+json
