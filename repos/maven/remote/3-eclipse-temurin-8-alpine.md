## `maven:3-eclipse-temurin-8-alpine`

```console
$ docker pull maven@sha256:72aa044d62e3c8c87e68612a6733563d05d5d93ba9813cc1329decb2b7d8b66e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `maven:3-eclipse-temurin-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:01581a754d20af4215bb66152d0f99886915f8860d07268b8cdfa24770a98be0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86612382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8446a6c48614facaaf11d3a6c7d6057ba0fba1661d27546fb094cdf0eea7b824`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 23:15:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 23:15:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:15:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:15:07 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 09 Nov 2026 23:15:07 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 09 Nov 2026 23:15:11 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='e2a7fa7d86033e6c315aa45a7ba772d1d93ccb4f736cab40291a5d7b0998e6b9';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Mon, 09 Nov 2026 23:15:11 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 09 Nov 2026 23:15:11 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:15:11 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 23 Nov 2026 20:10:46 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Mon, 23 Nov 2026 20:10:48 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 23 Nov 2026 20:10:48 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:10:48 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:10:48 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 23 Nov 2026 20:10:48 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 23 Nov 2026 20:10:48 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 23 Nov 2026 20:10:48 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 23 Nov 2026 20:10:48 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 23 Nov 2026 20:10:48 GMT
ARG USER_HOME_DIR=/root
# Mon, 23 Nov 2026 20:10:48 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 23 Nov 2026 20:10:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 23 Nov 2026 20:10:48 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16e335c202f791af152bc5669d5df1ce02692a7f6e744c75f539bbfcc9f3eff1`  
		Last Modified: Mon, 09 Nov 2026 23:15:23 GMT  
		Size: 17.0 MB (16969793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65ca25b887c85d2c52499a304b8fa2447374770a4626666acf7b5f1eaf40cb12`  
		Last Modified: Mon, 09 Nov 2026 23:15:23 GMT  
		Size: 53.1 MB (53098549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e452cf2924d316a5cf84c549df7adeb00dd568393d4d34630d47dc643a738188`  
		Last Modified: Mon, 09 Nov 2026 23:15:22 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a545bb8d704584747868a4e76c42dd706367fb85a45626c9f9a863253fe6d16c`  
		Last Modified: Mon, 09 Nov 2026 23:15:22 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:048812b93cffa21e03e27a4fa984f63fb696e0709cbe360783caa252bc48e2a3`  
		Last Modified: Mon, 23 Nov 2026 20:10:56 GMT  
		Size: 3.3 MB (3335451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24053a6c56c153014f5c30c9f929c18c0152a8c326ddfa997cc4bf2d550e5c10`  
		Last Modified: Mon, 23 Nov 2026 20:10:56 GMT  
		Size: 9.4 MB (9351292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b4bbae753d1047a3e9797c08807b7d0a2bcfce4e59cffe0edb117c4e2ef445e`  
		Last Modified: Mon, 23 Nov 2026 20:10:56 GMT  
		Size: 859.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c10d4b7c1c78f70c9441d47e98e6468ce2262b6493d3c4d2b0bf1a6e52c03895`  
		Last Modified: Mon, 23 Nov 2026 20:10:56 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-8-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:e5e842e39b258b56cbf5a2f9ea13beb6da7d4feafc9dd72b01f88bc0aa158da3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1240790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83df32e4451a421e818d7d72e6d32eeb99d3c221380541eca8795dd8c27b6aae`

```dockerfile
```

-	Layers:
	-	`sha256:dcbcdd88afd2c0fc6614358527f727e209eca853e8da537010159ac68f437156`  
		Last Modified: Mon, 23 Nov 2026 20:10:56 GMT  
		Size: 1.2 MB (1223765 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76d90ad83949713c234b4283f783cc30668c702c98487e68c3304a1d4bcf671c`  
		Last Modified: Mon, 23 Nov 2026 20:10:56 GMT  
		Size: 17.0 KB (17025 bytes)  
		MIME: application/vnd.in-toto+json
