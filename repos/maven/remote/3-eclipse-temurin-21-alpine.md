## `maven:3-eclipse-temurin-21-alpine`

```console
$ docker pull maven@sha256:1744c98bba593f0093506be57894c6254888e7adb88bf8cbaf1fed7ee8d6a804
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-eclipse-temurin-21-alpine` - linux; amd64

```console
$ docker pull maven@sha256:22f8bfc0738b5ce8ff01cf4ae2fe939a1145ad041499a42b8f9d224572f43560
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196309867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee4550c833be82bb34134ef73a27cb488ece45cf53e434177a9552b119beb0c0`
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
# Wed, 09 Sep 2026 04:31:52 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Wed, 09 Sep 2026 04:31:52 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:31:52 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:31:52 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:31:52 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:31:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:31:52 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:31:52 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:31:52 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:31:52 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:31:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:31:52 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:31:52 GMT
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
	-	`sha256:3acfd3e6d49d04f9e2499a734e532baa773b7a5389ac0fcf7fd691d15f72e96f`  
		Last Modified: Wed, 09 Sep 2026 04:32:01 GMT  
		Size: 3.3 MB (3333014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcecfb5231a384ea86a52b5b92b8311d6d803ba2d13443af9f19ebf5640ad7b3`  
		Last Modified: Wed, 09 Sep 2026 04:32:01 GMT  
		Size: 9.4 MB (9359968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:985afe070d5692029636299544cedee3e78f28ad6d308607e5388945d6004657`  
		Last Modified: Wed, 09 Sep 2026 04:32:00 GMT  
		Size: 858.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f880de6ac814d4d0581e79144e56d90af2156af4893cb867d6f2a03945cbd8bd`  
		Last Modified: Wed, 09 Sep 2026 04:32:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-21-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:d012fff65abe61193090ceb7c36de01578609246387fa6bdabdd0f27dc09209b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1243169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9de8b90757c89a8bc89064c7a18087e37583bd24a1ca71d3100e8baea8d1fbe9`

```dockerfile
```

-	Layers:
	-	`sha256:9817f5195310a5c8cdc48596093190c0e0cec6c0359cd97f5ddfcc14574837d2`  
		Last Modified: Wed, 09 Sep 2026 04:32:01 GMT  
		Size: 1.2 MB (1226127 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4fe3018f252de5e5ccab453d9cd4f68b4f67bb65e6d7c3092906e7f3764d523a`  
		Last Modified: Wed, 09 Sep 2026 04:32:00 GMT  
		Size: 17.0 KB (17042 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-21-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:08f59c55efe95ff1b478b3c05e08cfcf1891526ecab0032d7589d6b58c79b4bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.7 MB (194701234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d10f05152aa855ab27c732ba0d00ab6417959b6cd219a1ebebe658ef10f2c83`
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
# Wed, 09 Sep 2026 04:23:32 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Wed, 09 Sep 2026 04:23:33 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:23:33 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:23:33 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:23:33 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:23:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:23:33 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:23:33 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:23:33 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:23:33 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:23:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:23:33 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:23:33 GMT
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
	-	`sha256:cbf5cf5eb4577988083b740338826e98679a835d3025585f6e3b8a6a5c319821`  
		Last Modified: Wed, 09 Sep 2026 04:23:41 GMT  
		Size: 3.4 MB (3409067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2ae9aa3baaaf664d7e91822919a66f5a5d9ff3dbc9be7f25dd05b40aabc1631`  
		Last Modified: Wed, 09 Sep 2026 04:23:41 GMT  
		Size: 9.4 MB (9359970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:274a8c666a7ec77c5e594306dbbbe6120033c6ff3bc156ea45f1c18df2d08e52`  
		Last Modified: Wed, 09 Sep 2026 04:23:41 GMT  
		Size: 858.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c31f064e312815046916f0352019255a5aa71c7be366222f21ffc45d82706801`  
		Last Modified: Wed, 09 Sep 2026 04:23:41 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-21-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:5726f0687be086b5c3dac2fe51adaea22719775c0fdda4d8b96b764f201825cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 MB (1392655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc5acf1355ed44c427d0cc3b5ba7c6d7eb364a70ccb28e83727f15c8154b64d8`

```dockerfile
```

-	Layers:
	-	`sha256:47390c484baa988ce83d09ec602fce8e6aef991249ec13e40f2fc149eebd9a89`  
		Last Modified: Wed, 09 Sep 2026 04:23:41 GMT  
		Size: 1.4 MB (1375479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e02b12f3ef516c5e213ed63bf878d278fe4c0aa8349b15ad6e72fd4501d953d5`  
		Last Modified: Wed, 09 Sep 2026 04:23:41 GMT  
		Size: 17.2 KB (17176 bytes)  
		MIME: application/vnd.in-toto+json
