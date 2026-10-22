## `maven:3-eclipse-temurin-21-alpine`

```console
$ docker pull maven@sha256:b138a4f483ed00fa613b3c0ad8e6d7aa9a62edd399b4eca3edd7e8d65a47750e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-eclipse-temurin-21-alpine` - linux; amd64

```console
$ docker pull maven@sha256:f59fd9ea5e4db1b8681c2bb14bfef2ae5135ae42eccf748f9c87f189e85d8ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (197018703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f78a8041a22c5d1bc97e63f360bed647e401741bb36fc6f83981ded2643a77a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:57:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 22:57:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:57:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 22:57:24 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 22:57:24 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Wed, 21 Oct 2026 22:57:33 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8242627927adc90ac2561d0812dd39890ebc21ef09b550bc2e8b93640b8af4f8';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='bd8824214e42b33333c7f55a039ea078ad6ea6be20d7c5b011c801fb2bdb44f0';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 21 Oct 2026 22:57:34 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 22:57:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:57:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 22:57:34 GMT
CMD ["jshell"]
# Wed, 21 Oct 2026 23:40:42 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Wed, 21 Oct 2026 23:40:49 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 21 Oct 2026 23:40:49 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 21 Oct 2026 23:40:49 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 21 Oct 2026 23:40:49 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 21 Oct 2026 23:40:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 21 Oct 2026 23:40:49 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 21 Oct 2026 23:40:49 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 21 Oct 2026 23:40:49 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 21 Oct 2026 23:40:49 GMT
ARG USER_HOME_DIR=/root
# Wed, 21 Oct 2026 23:40:49 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 21 Oct 2026 23:40:49 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 21 Oct 2026 23:40:49 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cdcf99f7c7e2bd578131140af523b0d46da2c695620c36bba3c0d9737531ba6`  
		Last Modified: Wed, 21 Oct 2026 22:57:50 GMT  
		Size: 21.4 MB (21438661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a297d674f277ebdde59d0b52e9b5438cb7a5020a3c89839d07e4138f3e2d7cd8`  
		Last Modified: Wed, 21 Oct 2026 22:57:53 GMT  
		Size: 158.3 MB (158329250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2398acf7291f48aef8d5af8f6053570d03d75bd3aebe9b10da5ae7be2810b65`  
		Last Modified: Wed, 21 Oct 2026 22:57:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ab974ffe9d578381c86e2e9c12fcceaf63f377a571321ec592c4eb497c15d20`  
		Last Modified: Wed, 21 Oct 2026 22:57:49 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69fec4505e534d0e1f05d73aff95db7a40437f777585ace32d805849d9c05d51`  
		Last Modified: Wed, 21 Oct 2026 23:40:56 GMT  
		Size: 3.3 MB (3335064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:350f83dc3b7f32b013a076f48fbf56a4c54b508b922fc48423155aecf3d73bc1`  
		Last Modified: Wed, 21 Oct 2026 23:40:57 GMT  
		Size: 10.1 MB (10059017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec981f3118f202feb6f462790e50102eef9a8d06207111b9e54b931ca3c1b600`  
		Last Modified: Wed, 21 Oct 2026 23:40:56 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45d4ac9b5ebea5680e8f822ff290063f2074615e27c9fd46efaa5b7484a02153`  
		Last Modified: Wed, 21 Oct 2026 23:40:56 GMT  
		Size: 152.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-21-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:153252380f5dc67d4c432ea7e617f8c0ac6cc001087f52f79a7d5e1347eeeaf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1247594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47ada74f5e00aa49822fa4e034c0a3248237a8ff65450c5444662c3a558cc048`

```dockerfile
```

-	Layers:
	-	`sha256:5ecd7e8208477a1cbedbc6ce4e3e8b9e9a8fb0ee280e7e71861649494a304139`  
		Last Modified: Wed, 21 Oct 2026 23:40:56 GMT  
		Size: 1.2 MB (1230541 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fed257bfefd36960269474a65eeec05da35dc02b6e12aeadd829b474e0b0c771`  
		Last Modified: Wed, 21 Oct 2026 23:40:56 GMT  
		Size: 17.1 KB (17053 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-21-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:0b5aab603da1dade2192b0aa2e5ba3b6363975271e95a4d0f3a9973e6ea81b47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.4 MB (195414759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a86a4496bc094799c1f0898707e608d27d0727ce0affb3044fc581a7b801f0`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:36:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:36:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:36:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:36:29 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:36:29 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:36:37 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8242627927adc90ac2561d0812dd39890ebc21ef09b550bc2e8b93640b8af4f8';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='bd8824214e42b33333c7f55a039ea078ad6ea6be20d7c5b011c801fb2bdb44f0';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:36:38 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:38 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:38 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:36:38 GMT
CMD ["jshell"]
# Sat, 17 Oct 2026 03:15:59 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Sat, 17 Oct 2026 03:15:59 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 17 Oct 2026 03:15:59 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:15:59 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:15:59 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 17 Oct 2026 03:15:59 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Oct 2026 03:15:59 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 17 Oct 2026 03:15:59 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 03:15:59 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 17 Oct 2026 03:15:59 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Oct 2026 03:15:59 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Oct 2026 03:15:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Oct 2026 03:15:59 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c807d060ae33e5d5997c7313f9cfce87a3f219dcf1e33b59a3bced411008d43e`  
		Last Modified: Fri, 25 Sep 2026 22:36:55 GMT  
		Size: 21.4 MB (21419753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8438b55bfa39bf94c0be01accbc3ffad4dc8d2d7ad997a468531d1f6acd5c68c`  
		Last Modified: Fri, 25 Sep 2026 22:36:57 GMT  
		Size: 156.3 MB (156335210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:166f645a3063ab63a42a670309a370a7fb7933e3a9d7b68cf3f3ea3becdcdb56`  
		Last Modified: Fri, 25 Sep 2026 22:36:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:794d8b8fb47ba05f395f78c45b91f2e8ead46216c584a8dfcdb22f4f7b2c2558`  
		Last Modified: Fri, 25 Sep 2026 22:36:54 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ed3df4a39f1251e3e5110d09827d41342140c678d0461f7f4e160ce81f50cc`  
		Last Modified: Sat, 17 Oct 2026 03:16:07 GMT  
		Size: 3.4 MB (3409527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c37716aa09aa4789a895dc973d31d35c62f92cd29693b0c170073bbdaee02b5`  
		Last Modified: Sat, 17 Oct 2026 03:16:07 GMT  
		Size: 10.1 MB (10059008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad0771274c91fbdd6a5bd13ace0ae96d48aceea198e741f9fb8ea71ec513f81e`  
		Last Modified: Sat, 17 Oct 2026 03:16:07 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cdcf1175845af0745e35f21463735e90366f20d24b07815f322fc4b0460422a`  
		Last Modified: Sat, 17 Oct 2026 03:16:08 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-21-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:633c48f64a276c0863f54366bce3e398686f94fbd574d02bf6bdc2f8b140174e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 MB (1399015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b4de060c8dd8f0afe6cccd599f9ba177d982ade24da763b3d712975edd5e4ea`

```dockerfile
```

-	Layers:
	-	`sha256:6c6c482aae5d033c886d498128d51ed91083c05a4822d9d7d417a83003466865`  
		Last Modified: Sat, 17 Oct 2026 03:16:07 GMT  
		Size: 1.4 MB (1381830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03ffd657494f88065acec1ee900332744758490c172ce73951cefe942e73b2ee`  
		Last Modified: Sat, 17 Oct 2026 03:16:07 GMT  
		Size: 17.2 KB (17185 bytes)  
		MIME: application/vnd.in-toto+json
