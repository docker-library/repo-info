## `maven:3-eclipse-temurin-21-alpine`

```console
$ docker pull maven@sha256:19dcc9e535ab90fae03180396261b4cf92b86d6a1a2a495eee12c41e525253f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-eclipse-temurin-21-alpine` - linux; amd64

```console
$ docker pull maven@sha256:120bacc92c7ab163d0444802f30c2154cc44631f6a23865deb0638d9eece1565
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.3 MB (197321280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daab800570b318dd1b0d7c2a5dfdc9ab653efadc81bbe47d36318cbdd12efc18`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:18:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:18:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:18:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:18:24 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:18:24 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 05 Nov 2026 19:18:33 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a41f2d7b886ed318db51543cd045d94dd35179f66df302e6c3fd48a41a6dd9f5';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='dc453842ee3f24710258f42a95bdfe5c2bfc0ca9d70c12f950ead82aee0c8361';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 05 Nov 2026 19:18:34 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:18:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:18:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 19:18:34 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 06:09:39 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Fri, 20 Nov 2026 06:09:39 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:09:39 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:09:39 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:09:39 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:09:39 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:09:39 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:09:39 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:09:39 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:09:39 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:09:39 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:09:39 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:09:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51708f96cbd718f1f575c791b74dcc853920cce80b5df73a45d493d942e3c1e1`  
		Last Modified: Thu, 05 Nov 2026 19:18:51 GMT  
		Size: 21.4 MB (21439698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c544b56550d0dd78ef07c133f66808efcee816fc25e79733d1f3c903d04618d`  
		Last Modified: Thu, 05 Nov 2026 19:18:54 GMT  
		Size: 158.6 MB (158623661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c36cbce71b14bcd4166587886630abcc540e354e67a19519ae83a2606006916`  
		Last Modified: Thu, 05 Nov 2026 19:18:50 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba8dd297de437cbe53be6f3a5f7672a27d395ede86af7228a2c2dae0d4b3a97`  
		Last Modified: Thu, 05 Nov 2026 19:18:36 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:786107c78f866fcc576a7939767f08254b7486f6382797a89bdfba85450547eb`  
		Last Modified: Fri, 20 Nov 2026 06:09:48 GMT  
		Size: 3.3 MB (3341624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38a46430f8a32925e684d7cfae1bc9e35dcd7fc5340400c4f5ee8fbae835f44d`  
		Last Modified: Fri, 20 Nov 2026 06:09:48 GMT  
		Size: 10.1 MB (10059019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee5025b63ad5b781b50c277809881c530e79ea2b2801eb6e6840532c36ca3b7c`  
		Last Modified: Fri, 20 Nov 2026 06:09:47 GMT  
		Size: 858.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6998189d9efd19bb3d87a78c5a2cad55f443776745dae7da0f8f39c3a39527ff`  
		Last Modified: Fri, 20 Nov 2026 06:09:48 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-21-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:c30108a08feb0f406208ec11e73b0f6f408f9527ae52081630531a546b69c6a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1247586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb4351f27e3303e7f6c6ea6bb12ffac18cfeba7f3f3425f1b64e804a8d835d24`

```dockerfile
```

-	Layers:
	-	`sha256:f2e7fe2c1f07a5c7af1d1fcae43c5914e0f7425fbc70227fd4ce1ecd778e82b7`  
		Last Modified: Fri, 20 Nov 2026 06:09:47 GMT  
		Size: 1.2 MB (1230537 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ebfbb77072180789e95b07f057c84f79eb3864301d74d8dea1e684d2985dbd7`  
		Last Modified: Fri, 20 Nov 2026 06:09:47 GMT  
		Size: 17.0 KB (17049 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-21-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:c7809592d54cf4c6e46d6efe8e715f691af4db831dae779937675ae7d51e2739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.7 MB (195730084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de10271d8a59b8ede8459cdfb798f92211979a8204117a3ba70fb908ce0693a6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:13:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:13:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:13:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:13:13 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:13:13 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 05 Nov 2026 19:13:22 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a41f2d7b886ed318db51543cd045d94dd35179f66df302e6c3fd48a41a6dd9f5';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='dc453842ee3f24710258f42a95bdfe5c2bfc0ca9d70c12f950ead82aee0c8361';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 05 Nov 2026 19:13:23 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:13:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:13:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 19:13:23 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 06:11:18 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Fri, 20 Nov 2026 06:11:19 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:11:19 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:11:19 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:11:19 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:11:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:11:19 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:11:19 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:11:19 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:11:19 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:11:19 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:11:19 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:11:19 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4faea4c3333359972f9df28d73844fd41ff7e46e1b3cd5a7bb6890e65ccd0058`  
		Last Modified: Thu, 05 Nov 2026 19:13:40 GMT  
		Size: 21.4 MB (21418607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:802f66e7af10c71f4a66c68c97bd27661c24d7db3664bd69a8a30ff6ccafebde`  
		Last Modified: Thu, 05 Nov 2026 19:13:43 GMT  
		Size: 156.6 MB (156641882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:142a09de52318c861b2445cfb04014de63eab3940d96aa4c5309f2b38499b481`  
		Last Modified: Thu, 05 Nov 2026 19:13:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c53d5bb198be0f1eb32b9280605a7fe7290c6fe4e2ac332145be7f1d95b8861b`  
		Last Modified: Thu, 05 Nov 2026 19:13:39 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9058e2e2cf234ca5da12474191cf416c30f41e73aaa6682f95ca32b2fafcb80d`  
		Last Modified: Fri, 20 Nov 2026 06:11:28 GMT  
		Size: 3.4 MB (3416384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4ad7ad57bcc03cdb8bc7d61743f001a2b747ef58d27b2e9811713485b940044`  
		Last Modified: Fri, 20 Nov 2026 06:11:28 GMT  
		Size: 10.1 MB (10059013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc5663e0fd6a7b214c0ccf39605ed550331322b890925ace22903bc006c43c0`  
		Last Modified: Fri, 20 Nov 2026 06:11:27 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d581f09c868df67fbd0d3add8ac2301ece01966fb39fc2a5ae9006399e178a1`  
		Last Modified: Fri, 20 Nov 2026 06:11:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-21-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:88d954442223053c0eb0fbab4bab831e086f181cff8e267c76c07dc3cf69c704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 MB (1397071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:370543ee5796fc0ffdca43d24faaaaa1d2ef2babb5facf66c5cdda46a14a77c2`

```dockerfile
```

-	Layers:
	-	`sha256:03ecbeefefae1fd9f9038ecec127289a21ced0ab4861fea7453790d410df2cfe`  
		Last Modified: Fri, 20 Nov 2026 06:11:28 GMT  
		Size: 1.4 MB (1379889 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2acce279a983a24aae31a409d154ce023573f040d6892545ea0695d60961c9b5`  
		Last Modified: Fri, 20 Nov 2026 06:11:27 GMT  
		Size: 17.2 KB (17182 bytes)  
		MIME: application/vnd.in-toto+json
