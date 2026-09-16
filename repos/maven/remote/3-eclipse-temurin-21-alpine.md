## `maven:3-eclipse-temurin-21-alpine`

```console
$ docker pull maven@sha256:529278c758cac25258da21a71de9eecc553e2fc66304676bc8004260e8fc15bf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-eclipse-temurin-21-alpine` - linux; amd64

```console
$ docker pull maven@sha256:a20ed221ae577cb438275136154229d802131fda21bed368b1e35133b90aa9a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196309866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08edba576d09fa1a4d411912ea9ff16aa2d5ebc26b97480891697e60b749f447`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:24:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:24:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:24:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:24:34 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:24:34 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:24:41 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a32f7655011640ed8fb4347fffa2588cb7538de2f2e82027845816740560e2b1';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='073a48cb87f788a0cb283d81cc6d96cbc9d671d6a60a3ba6de62e66f0ea9dd47';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:24:42 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:24:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:24:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:24:42 GMT
CMD ["jshell"]
# Wed, 16 Sep 2026 05:16:59 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Wed, 16 Sep 2026 05:17:00 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 16 Sep 2026 05:17:00 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:17:00 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:17:00 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 16 Sep 2026 05:17:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 16 Sep 2026 05:17:00 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 16 Sep 2026 05:17:00 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:17:00 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 16 Sep 2026 05:17:00 GMT
ARG USER_HOME_DIR=/root
# Wed, 16 Sep 2026 05:17:00 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 16 Sep 2026 05:17:00 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 16 Sep 2026 05:17:00 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80c624ebf42c48614632c25eda29ff963d8bff68cf72141f38572ff353df4118`  
		Last Modified: Fri, 21 Aug 2026 18:24:57 GMT  
		Size: 21.4 MB (21434191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dcf1f5eca60c3a20398445d682d111c67441c56056e59a0a3a16183f9da46f6`  
		Last Modified: Fri, 21 Aug 2026 18:25:00 GMT  
		Size: 158.3 MB (158332700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e04839fa2debe7ec750a1b3926314c52ec376eb0d5ed81310e907af857ed918f`  
		Last Modified: Fri, 21 Aug 2026 18:24:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ef08a27864ae3d6ee3399a0909e667d6fb889dd93bc8d8fa25cbde844a15e3`  
		Last Modified: Fri, 21 Aug 2026 18:24:56 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08922f670be5a8347d4bcc813912d6dcffbdca809d3e97c3159ae3a85d195201`  
		Last Modified: Wed, 16 Sep 2026 05:17:08 GMT  
		Size: 3.3 MB (3333005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b39274647e8d054cb6e6bb0ad2c92ee9d9790defb2e86706df27c825755d7edd`  
		Last Modified: Wed, 16 Sep 2026 05:17:09 GMT  
		Size: 9.4 MB (9359973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:188b6884f08cd03b7d291105beb9499234daf34522310cfdbd88925bb263bbb1`  
		Last Modified: Wed, 16 Sep 2026 05:17:08 GMT  
		Size: 859.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ad635c1c4b9b8c01cef0fb3602642c6036043c2330f0cab3396927ca4f8771c`  
		Last Modified: Wed, 16 Sep 2026 05:17:08 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-21-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:50c47e350cea5fca73e616e9a3f4f8bd373670f773df0b582ffd7e2b19363c61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1243170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0b3e10e6f2284f38e9644e0009ef9c9db47e8f3a5a93414c90cc0f4da2acb33`

```dockerfile
```

-	Layers:
	-	`sha256:d131366f73316f6b1344395323f342006fa4e22d9febfddfdd617e7a5427e638`  
		Last Modified: Wed, 16 Sep 2026 05:17:08 GMT  
		Size: 1.2 MB (1226127 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:caa91f02c2fa779aa2573d600e671b102fff2a8e53113a3190e41afd1f79f86a`  
		Last Modified: Wed, 16 Sep 2026 05:17:08 GMT  
		Size: 17.0 KB (17043 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-21-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:739f760d97b0878f192febf87fdc2eb5f4719c780e0c9bfaf3752213f421f501
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.7 MB (194701247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09d325c10ae036613378de770de3bbd6956b159655ce74bb15c908d4b47346ff`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:27:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:27:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:27:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:27:28 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:27:28 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:27:36 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a32f7655011640ed8fb4347fffa2588cb7538de2f2e82027845816740560e2b1';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='073a48cb87f788a0cb283d81cc6d96cbc9d671d6a60a3ba6de62e66f0ea9dd47';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:27:37 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:27:37 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:27:37 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:27:37 GMT
CMD ["jshell"]
# Wed, 16 Sep 2026 05:16:42 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Wed, 16 Sep 2026 05:16:42 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 16 Sep 2026 05:16:42 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:16:42 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:16:42 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 16 Sep 2026 05:16:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 16 Sep 2026 05:16:42 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 16 Sep 2026 05:16:42 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:16:42 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 16 Sep 2026 05:16:42 GMT
ARG USER_HOME_DIR=/root
# Wed, 16 Sep 2026 05:16:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 16 Sep 2026 05:16:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 16 Sep 2026 05:16:42 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a907c6aa2e9895d53df31ab5b46f3117bd7ac5f9610cacbd450ed428b83b69a7`  
		Last Modified: Fri, 21 Aug 2026 18:27:55 GMT  
		Size: 21.4 MB (21410985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bddbfbcf00f9dde2d79c07cbf11422b3fd09098c518809fae943df61125f2a4`  
		Last Modified: Fri, 21 Aug 2026 18:27:57 GMT  
		Size: 156.3 MB (156334572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:981f95701eabca34d7f767c424a7f3e4fccfa331cf3de975025a1412f403e43d`  
		Last Modified: Fri, 21 Aug 2026 18:27:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef400840b5e60a28eb6e26b47dca860d731a494752e91862f73ae0d532131a30`  
		Last Modified: Fri, 21 Aug 2026 18:27:54 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee3b97d7ae12790adaa391f716944f999ed7436927d6a863ec90be085eae8d61`  
		Last Modified: Wed, 16 Sep 2026 05:16:50 GMT  
		Size: 3.4 MB (3409076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f42869476a5434c92dceac68559a393a5d1637fec50980bb83ee09ce1c86ea7`  
		Last Modified: Wed, 16 Sep 2026 05:16:50 GMT  
		Size: 9.4 MB (9359973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18dc6b2cac4183f0e16ed03c28dd77c8c4e76c65b66a69ec1e8e6cbbe28e963c`  
		Last Modified: Wed, 16 Sep 2026 05:16:50 GMT  
		Size: 859.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a0d607ab89c0c758f2012f0bdd126623a66f87dca06b886db1c37aaeb8628f6`  
		Last Modified: Wed, 16 Sep 2026 05:16:50 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-21-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:fa1e368f657fa5e17c89fb626b6367a264f60593b782113feedecd782c185bae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 MB (1392655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abfa4af50b96919deb85c86090a826c2499abc4ece0a49d85195e9cb7264cc0e`

```dockerfile
```

-	Layers:
	-	`sha256:e041b83031a2591bfa11e5ab6834e89c83f7bebd8b6f137407f548fcfda84340`  
		Last Modified: Wed, 16 Sep 2026 05:16:50 GMT  
		Size: 1.4 MB (1375479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bc338023047d72457089135420d636f00e959170354dd37238f22741b8fe13a`  
		Last Modified: Wed, 16 Sep 2026 05:16:50 GMT  
		Size: 17.2 KB (17176 bytes)  
		MIME: application/vnd.in-toto+json
