## `maven:3-eclipse-temurin-8-alpine`

```console
$ docker pull maven@sha256:a5d049561e87f69fec0474873cca53db2aca2859c688b6e574ec5253fd868565
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `maven:3-eclipse-temurin-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:3b707b950aa8bbdb8d71990b44e7c8b489a231a016f8d5d0c4aef6b65b8da0a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.7 MB (89734026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d56636b5e85c0287cc8a008ddf873f3fbe9e880db4b9e9c72b45e05cd5e10ff`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 23:42:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 23:42:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:42:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 23:42:34 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 02 Oct 2026 23:42:34 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 02 Oct 2026 23:42:38 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='f76b7c98a593f15bbfc9042866141185d63aa87e0afde3b7e48d2c4789a2def5';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 02 Oct 2026 23:42:39 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 23:42:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:42:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 05 Oct 2026 21:27:51 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Mon, 05 Oct 2026 21:27:52 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 05 Oct 2026 21:27:52 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:27:52 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:27:52 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 05 Oct 2026 21:27:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 05 Oct 2026 21:27:52 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 05 Oct 2026 21:27:52 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 05 Oct 2026 21:27:52 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 05 Oct 2026 21:27:52 GMT
ARG USER_HOME_DIR=/root
# Mon, 05 Oct 2026 21:27:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 05 Oct 2026 21:27:52 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 05 Oct 2026 21:27:52 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd8ed23f10189bf7778d4c3663aaf84e061893e4569b2695187949b4c407f13`  
		Last Modified: Fri, 02 Oct 2026 23:42:50 GMT  
		Size: 19.4 MB (19442738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b3cb6cb8de8a3b68db8269b9268fc207dc884c095cd7f5c49d524bb5db63068`  
		Last Modified: Fri, 02 Oct 2026 23:42:51 GMT  
		Size: 53.1 MB (53052291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7337f8f47ee92150dc317557df097b1c7d6dd6ea83f1bb2794ba52538cc0fc9f`  
		Last Modified: Fri, 02 Oct 2026 23:42:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f386062612dcd176724032b83530634aad76e770418249519b226b218c1ca7`  
		Last Modified: Fri, 02 Oct 2026 23:42:49 GMT  
		Size: 2.5 KB (2482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a90dca010d1bbf9e079c2935cd26ef596558d064d55c0f4080add26a69392f68`  
		Last Modified: Mon, 05 Oct 2026 21:27:59 GMT  
		Size: 3.3 MB (3326629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34d4c7c8ec0b3eaf9126ed87d51e148a641505ca5d5fa80bb32e8f10d591e4c3`  
		Last Modified: Mon, 05 Oct 2026 21:28:00 GMT  
		Size: 10.1 MB (10059011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:654f48539dcc3842c110042782ae1fc175840ab3bbf6928003dc41aec2ac4b56`  
		Last Modified: Mon, 05 Oct 2026 21:27:59 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d71274b0f341315d613794e683f3124b5b86e8429792b3edb4fa1e60823d57f`  
		Last Modified: Mon, 05 Oct 2026 21:27:59 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-8-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:65f53efe943e1b4d32bc008ea6656527316b032746427190eac6d5fe39f2302d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1249032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1774ed0165a19dd54e82b7c9efd0fd8c7c742b996c67cc6ba10989b32cdf3be8`

```dockerfile
```

-	Layers:
	-	`sha256:8cc17d218d71b3a5b5b1be2a4663889bbf4df1b42cfe20af91e0050f9ece5083`  
		Last Modified: Mon, 05 Oct 2026 21:27:59 GMT  
		Size: 1.2 MB (1232004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c48694bb5629dd4aedca29b74f72d087b01e361689a537e0985d75bc17ececb8`  
		Last Modified: Mon, 05 Oct 2026 21:27:59 GMT  
		Size: 17.0 KB (17028 bytes)  
		MIME: application/vnd.in-toto+json
