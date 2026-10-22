## `maven:3-eclipse-temurin-21-alpine`

```console
$ docker pull maven@sha256:2ac8cace93acab0f3261103a8c17f391ad836b23ac6899d894d3cf0611cf779b
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
$ docker pull maven@sha256:131e01f570c21c4b5a2402385152c281fdb3900fdb2e1d41db05307dfb3917c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.4 MB (195418143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08ebaf1bde212276031e75eceb6a1aa0d647e22ff9352b06a867ebc6db740fc8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 23:20:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:20:11 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 23:20:11 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 23:20:11 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Wed, 21 Oct 2026 23:20:19 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8242627927adc90ac2561d0812dd39890ebc21ef09b550bc2e8b93640b8af4f8';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='bd8824214e42b33333c7f55a039ea078ad6ea6be20d7c5b011c801fb2bdb44f0';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 21 Oct 2026 23:20:21 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 23:20:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 23:20:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:21 GMT
CMD ["jshell"]
# Thu, 22 Oct 2026 00:31:34 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Thu, 22 Oct 2026 00:31:35 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 22 Oct 2026 00:31:35 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 22 Oct 2026 00:31:35 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 22 Oct 2026 00:31:35 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 22 Oct 2026 00:31:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 22 Oct 2026 00:31:35 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 22 Oct 2026 00:31:35 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 22 Oct 2026 00:31:35 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 22 Oct 2026 00:31:35 GMT
ARG USER_HOME_DIR=/root
# Thu, 22 Oct 2026 00:31:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 22 Oct 2026 00:31:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 22 Oct 2026 00:31:35 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3b5a797412c3a3c1dd1e385aa2b9e6b27325c614d454d967d5e51b4de8932d`  
		Last Modified: Wed, 21 Oct 2026 23:20:37 GMT  
		Size: 21.4 MB (21418389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f9996066e24b3049ad8773b96b80731d9e3f5e36702170cdd124d712f24877`  
		Last Modified: Wed, 21 Oct 2026 23:20:41 GMT  
		Size: 156.3 MB (156335171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcd216a7d6d7d3c11ff338ee3c8d3b36eba45b2029978a24767f46078d9dafb3`  
		Last Modified: Wed, 21 Oct 2026 23:20:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fff22d8ec893d04f1299ff1e47172b82712e530b63e0b5b641e4992d0ddf5fc`  
		Last Modified: Wed, 21 Oct 2026 23:20:37 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afeb3cdeef53cea63fb60ed3b7cac59453dd1010e78065f4118ab6984395c242`  
		Last Modified: Thu, 22 Oct 2026 00:31:42 GMT  
		Size: 3.4 MB (3411478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37dfd440064668d2e380488d60817f4d1eb82913b14eea0bd83d54868f9c5a53`  
		Last Modified: Thu, 22 Oct 2026 00:31:43 GMT  
		Size: 10.1 MB (10059015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83740ff09ee0a9d1e79254e8b3b6a23ce0c4886a4acd3127910c6a2553cc5400`  
		Last Modified: Thu, 22 Oct 2026 00:31:43 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2383b775d1ceecbcbca6f9194a4e07a95d67c5631e362dc0ed7001bb75945b5`  
		Last Modified: Thu, 22 Oct 2026 00:31:42 GMT  
		Size: 153.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-21-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:69d46cd372b3a9640e0ca41c42756974f0b7c27463be18b9679d5e017ced570c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 MB (1397079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:305a353d88efe98b2691da698ba2e504e4f04da3191ec0d283b9937f30e5a940`

```dockerfile
```

-	Layers:
	-	`sha256:402e32d13d2d47cdac5602cf028d250891fd61c78c65eee8dafceb55b22e4751`  
		Last Modified: Thu, 22 Oct 2026 00:31:43 GMT  
		Size: 1.4 MB (1379893 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb7533a1f12ca562fc8524572a79e1babaaae5519cbcb24d739a2a1dfdac3fbc`  
		Last Modified: Thu, 22 Oct 2026 00:31:43 GMT  
		Size: 17.2 KB (17186 bytes)  
		MIME: application/vnd.in-toto+json
