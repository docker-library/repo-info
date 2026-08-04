## `maven:3-eclipse-temurin-17-alpine`

```console
$ docker pull maven@sha256:097d7c4ac16bef6c3a8bdc53cf5abe82af5c43547a888a4d2d9f6009fcdcad9f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `maven:3-eclipse-temurin-17-alpine` - linux; amd64

```console
$ docker pull maven@sha256:1c20e426f584562f34e31ac964cc6bb237dd129e3a401acaee3e65b40fc396a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.1 MB (183061127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:632bd9020651fd60acfc63cfbbb66833e65e8b53f30ceb93334cc9c33284ae37`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:56:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 22 Jun 2026 19:56:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 22 Jun 2026 19:56:53 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 22 Jun 2026 19:56:53 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 22 Jun 2026 19:56:53 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Mon, 22 Jun 2026 19:57:01 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='960b4090b75a887bb21a915a294bee3a97cd11876967c95e5bd29d9ec4812e17';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 22 Jun 2026 19:57:02 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 22 Jun 2026 19:57:02 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 22 Jun 2026 19:57:02 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 22 Jun 2026 19:57:02 GMT
CMD ["jshell"]
# Tue, 04 Aug 2026 03:44:06 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Tue, 04 Aug 2026 03:44:06 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 04 Aug 2026 03:44:06 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:44:06 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:44:06 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 04 Aug 2026 03:44:06 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 04 Aug 2026 03:44:06 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 04 Aug 2026 03:44:06 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 03:44:06 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 04 Aug 2026 03:44:06 GMT
ARG USER_HOME_DIR=/root
# Tue, 04 Aug 2026 03:44:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 04 Aug 2026 03:44:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 04 Aug 2026 03:44:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb24b7abeaf5ce9e23187de02071382730c0873637800e8a9adcb59301992717`  
		Last Modified: Mon, 22 Jun 2026 19:57:16 GMT  
		Size: 21.3 MB (21290166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca9a403ef070b145efc0a24ea5ea18c62cf96257bfefd784d70237ec8671df1f`  
		Last Modified: Mon, 22 Jun 2026 19:57:19 GMT  
		Size: 145.1 MB (145051633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8954f1747c4e5c426ae38631e95b0494950eb78209f25ea413a0d591f5bfd8b0`  
		Last Modified: Mon, 22 Jun 2026 19:57:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f47b51787bf9ee6cbfe3b6ad72acc64ab2cd047c11d06a156720b184193e59`  
		Last Modified: Mon, 22 Jun 2026 19:57:15 GMT  
		Size: 2.3 KB (2280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b142d6d045f81006a0ad66037435a64ce0a03915b14a21e96a847663ba17c1e7`  
		Last Modified: Tue, 04 Aug 2026 03:44:15 GMT  
		Size: 3.5 MB (3511505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12b5d06277091b7f897f54edeb54bb59cc3ee349cb2ccce3253419e20f0bf5d5`  
		Last Modified: Tue, 04 Aug 2026 03:44:15 GMT  
		Size: 9.4 MB (9359977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52f2d667e5e387665db6c174b1f52aca987600eee4a14d4815457f30f2284519`  
		Last Modified: Tue, 04 Aug 2026 03:44:15 GMT  
		Size: 859.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca4d14ce4f7c29c31737b6c47691235040b4b31bb10682db2605e8d5e48ae76`  
		Last Modified: Tue, 04 Aug 2026 03:44:15 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-17-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:78a84a425632a5ebf680b391655669824a08b852b537adba362226ede2634132
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1241389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec614e5366fc565174db501499f960865736d8f9d69036483984fb0f6a43d27c`

```dockerfile
```

-	Layers:
	-	`sha256:1eed7eef2e222ecdfb97bb39aa81ca5aca4be423d7b2c83fcdae0e964cdd86fc`  
		Last Modified: Tue, 04 Aug 2026 03:44:15 GMT  
		Size: 1.2 MB (1224344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a3bb6c5a3d37c4efd7aa67a832fe74035d8d79bbc49238d1971c48a6cd774ba`  
		Last Modified: Tue, 04 Aug 2026 03:44:15 GMT  
		Size: 17.0 KB (17045 bytes)  
		MIME: application/vnd.in-toto+json
