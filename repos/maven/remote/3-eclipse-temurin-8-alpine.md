## `maven:3-eclipse-temurin-8-alpine`

```console
$ docker pull maven@sha256:325c931416c667cc66ee0d5cc7d225f765ce7a1012d788fe19235acd47f40ea6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `maven:3-eclipse-temurin-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:fd43daeb8380f2dd25e823d2b0b7dcd8af759c4b0494ceb00bd4b4b4b452c193
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87263357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:271fed5e480bf0e7c65c5a3fc59aac76a758085a064030682f00af68e9b08b01`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:33:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:33:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:33:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:33:51 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:33:51 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:33:55 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='f76b7c98a593f15bbfc9042866141185d63aa87e0afde3b7e48d2c4789a2def5';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 25 Sep 2026 22:33:55 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:33:55 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:33:55 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 01 Oct 2026 20:10:58 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Thu, 01 Oct 2026 20:10:59 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 01 Oct 2026 20:10:59 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:10:59 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:10:59 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 01 Oct 2026 20:10:59 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 01 Oct 2026 20:10:59 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 01 Oct 2026 20:10:59 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 01 Oct 2026 20:10:59 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 01 Oct 2026 20:10:59 GMT
ARG USER_HOME_DIR=/root
# Thu, 01 Oct 2026 20:10:59 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 01 Oct 2026 20:10:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 01 Oct 2026 20:10:59 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be10a3c95a01d653a3de981633046d67ce3df8d2b77693a0c0886895fa06021`  
		Last Modified: Fri, 25 Sep 2026 22:34:06 GMT  
		Size: 17.0 MB (16972134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c48b0d7b2ccb1b7b2c73bc9253207135286a48af9623c86163951ea4f66e3059`  
		Last Modified: Fri, 25 Sep 2026 22:34:07 GMT  
		Size: 53.1 MB (53052254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ead448b829c47928e071856ca6eb419f5ea30d4c208830ab33ffff655c3824`  
		Last Modified: Fri, 25 Sep 2026 22:34:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9076589e157d0d4ad4589559a7dd82cab1cf4f8e0391463eee6ae0358ac409a`  
		Last Modified: Fri, 25 Sep 2026 22:34:06 GMT  
		Size: 2.5 KB (2482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85af60c860367d92ea9391f76eb0cd311c0fce134b946ab0cf23fb76b85e75ce`  
		Last Modified: Thu, 01 Oct 2026 20:11:08 GMT  
		Size: 3.3 MB (3326611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f32a242027b380c000013bbc937b97fc88f624ae497d72c83653b7acba0513ef`  
		Last Modified: Thu, 01 Oct 2026 20:11:08 GMT  
		Size: 10.1 MB (10059000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022e102fe30c940aee95a48e86b6b006394aa98764e385280519af04312803ef`  
		Last Modified: Thu, 01 Oct 2026 20:11:07 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44c55352c59b678e2d9ebbc0f4a877a35d10a8348d1a9c9a7e90ae798b82d89c`  
		Last Modified: Thu, 01 Oct 2026 20:11:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-8-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:89411d0d1e3d7ddc8b814e25732af5c13bf9fddddc85f3d2ffcb9940a73841a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1249033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51487e66e3c31dc414e6404ba886118678133bbf98e9fd3161b57716a58a58f6`

```dockerfile
```

-	Layers:
	-	`sha256:bfade69b58f61c6ee7c610f42534dd83596cb322dacfc9fe48b9e90936de0154`  
		Last Modified: Thu, 01 Oct 2026 20:11:07 GMT  
		Size: 1.2 MB (1232004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c47664e704759dfee4746a280dd20e261810fb32a9338e59b6e677928f4895b`  
		Last Modified: Thu, 01 Oct 2026 20:11:07 GMT  
		Size: 17.0 KB (17029 bytes)  
		MIME: application/vnd.in-toto+json
