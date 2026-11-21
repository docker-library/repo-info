## `maven:3-eclipse-temurin-21-alpine`

```console
$ docker pull maven@sha256:6e5df865a159b4e738ea7c330c069f872eecfd4e978963720f8b0264338c300d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-eclipse-temurin-21-alpine` - linux; amd64

```console
$ docker pull maven@sha256:f30b089181854f22881c37e8c7dff70da22ba9bcdfda6c1ab9516b8f4105daa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.8 MB (199829650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8017b8cd579a1076b559e403c03556ad7c10a9b5df35860ff03f978c8073eaec`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:42:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:42:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:42:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:42:18 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:42:18 GMT
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 17:43:20 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8e3ef290b2c182fed0f4318dfb928cde1f5b95bf5c28ff4bb236d38b0b177a74';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.13.1_2.tar.gz';          ;;        x86_64)          ESUM='87af8e1557222db2a29c9d055c34a317916b4ddbdb91474d04b35229d337193e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.13.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 20 Nov 2026 17:43:21 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:43:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:43:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:43:21 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 19:06:23 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Fri, 20 Nov 2026 19:06:23 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 19:06:23 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 19:06:23 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 19:06:23 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 19:06:23 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 19:06:23 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 19:06:23 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 19:06:24 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 19:06:24 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 19:06:24 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 19:06:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 19:06:24 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d553e9dc39faa28c406ca51894ba199ff6bb3b22473cd414e47916c577731a6c`  
		Last Modified: Fri, 20 Nov 2026 17:42:41 GMT  
		Size: 23.9 MB (23926088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75a195ad86f155892445d5e36c8a99d93847124fca0566c0d9aea75302f83aa7`  
		Last Modified: Fri, 20 Nov 2026 17:43:40 GMT  
		Size: 158.6 MB (158645654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1c77954bc52b873dae2ea65818333181fae687b04f4d446d641cce7af9ef1e0`  
		Last Modified: Fri, 20 Nov 2026 17:43:37 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a2083867428de48fb2704e6f6b06bc45bdf14616ca51f6e4126e97307644e77`  
		Last Modified: Fri, 20 Nov 2026 17:43:36 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8f8175e0e03e3c03b3db201b9091269460e21880e548c6fe04eb9c2100ab6f`  
		Last Modified: Fri, 20 Nov 2026 19:06:32 GMT  
		Size: 3.3 MB (3341635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd621fad621290a551eb115aa3e97a3e5b3682b2fff1e8383578f8d04b6b4f36`  
		Last Modified: Fri, 20 Nov 2026 19:06:32 GMT  
		Size: 10.1 MB (10059000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e00545d09d30d5fd3622be2a127a9a06b7a90a0da9aee5c08e794a6ba9a966a`  
		Last Modified: Fri, 20 Nov 2026 19:06:32 GMT  
		Size: 858.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f55dd9abbf82ca3a67c78c87aa5f120863940f2e916c117ec8030115d98683a9`  
		Last Modified: Fri, 20 Nov 2026 19:06:32 GMT  
		Size: 153.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-21-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:dc4c854719e9d1472c24589f40d6e2e558e265ff6264ae9cd6bf24c7a65032be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1247600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b14f4588e56c569d4931c9eb030f4da8657b23e32463930622e924a694c485d6`

```dockerfile
```

-	Layers:
	-	`sha256:4d842ceaad4b33ef6bcf67e5a4796f16dab4a3b43a91cde754a32ec58826ea2b`  
		Last Modified: Fri, 20 Nov 2026 19:06:32 GMT  
		Size: 1.2 MB (1230547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a583ab59210aa6d80a139d449461e8dd981d4247d679281cf81debfccbf2e44e`  
		Last Modified: Fri, 20 Nov 2026 19:06:32 GMT  
		Size: 17.1 KB (17053 bytes)  
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
