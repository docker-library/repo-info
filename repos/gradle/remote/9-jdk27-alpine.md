## `gradle:9-jdk27-alpine`

```console
$ docker pull gradle@sha256:f62a1f75ca650ce3b6cddf7bb37df4448b29075aa9c46b2ed40fdc0db0b4bb0d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk27-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:1f5bb9a19ea4af6ae988b1f2ffccbc20ac65801d65a532a07a14176f0eb020ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.0 MB (309045285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f88231fb48daeb41338e59dada7317c4adf802e857ec862b31c07e3b3e4b005`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:57:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 22:57:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:57:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 22:57:43 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 22:57:43 GMT
ENV JAVA_VERSION=jdk-27+35
# Wed, 21 Oct 2026 22:57:52 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='440353d641e7726396dff5d9a9d0d17c05a070dc25664c20f9d7efafc2f16cf7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='45aef7cd5ae667c6f5dd100c96a99e5a00e61c512664bb13326cf149b7d37e0f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Wed, 21 Oct 2026 22:57:54 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 22:57:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:57:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 22:57:54 GMT
CMD ["jshell"]
# Wed, 21 Oct 2026 23:30:07 GMT
CMD ["gradle"]
# Wed, 21 Oct 2026 23:30:07 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 21 Oct 2026 23:30:07 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 21 Oct 2026 23:30:07 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 21 Oct 2026 23:30:07 GMT
WORKDIR /home/gradle
# Wed, 21 Oct 2026 23:30:09 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 21 Oct 2026 23:30:09 GMT
ENV GRADLE_VERSION=9.8.2
# Wed, 21 Oct 2026 23:30:09 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Wed, 21 Oct 2026 23:30:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 21 Oct 2026 23:30:12 GMT
USER gradle
# Wed, 21 Oct 2026 23:30:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 21 Oct 2026 23:30:13 GMT
USER root
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:954723d5358cb00043454fda5e881ebb40121d4d66847db028e072ce23688a6b`  
		Last Modified: Wed, 21 Oct 2026 22:58:08 GMT  
		Size: 14.4 MB (14372091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01877b8666d4b4fc2bc460bde62c83f0331f3d0167f6b683b0f2adf56784068b`  
		Last Modified: Wed, 21 Oct 2026 22:58:11 GMT  
		Size: 92.9 MB (92906133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4ddf1c3cc092cce9253f39465decfc27489a8d26116dcd988d381c90f51ec7`  
		Last Modified: Wed, 21 Oct 2026 22:58:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcbbb802aa32709a5ce834fd607cd4389239fa8bc3aebc230a4b3083033a11be`  
		Last Modified: Wed, 21 Oct 2026 22:58:07 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff0d1902de3281153c06fcd9eec8e71291e3a1446be99a0d3532df7118d4e55`  
		Last Modified: Wed, 21 Oct 2026 23:30:28 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:710c890ee4f1434e57b3da5ecd6ed50e224234edf1738c7d868e0fbd6815b536`  
		Last Modified: Wed, 21 Oct 2026 23:30:30 GMT  
		Size: 46.4 MB (46351295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bd560787b8b4d1be017b844577e9607a91b88177ee66ff14cfd6b9a8142af14`  
		Last Modified: Wed, 21 Oct 2026 23:30:32 GMT  
		Size: 151.5 MB (151533408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bf919af9c5d52e129a028f9f5e030ad928b0179394fcb1c3701aeffe3a5fba9`  
		Last Modified: Wed, 21 Oct 2026 23:30:28 GMT  
		Size: 25.6 KB (25616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk27-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:1a439b87151290b2eab22ff26130858d37d9f63af5bd2cb885d05f623a83f1c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4707187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a92a11af23c683c057a212b9318b10cd230251c7426ba338c378ee0e1414f4aa`

```dockerfile
```

-	Layers:
	-	`sha256:0c7165bddf8ecd02b512456a9d255b4a1d2fb56fe4baf1fca1c681764f434c97`  
		Last Modified: Wed, 21 Oct 2026 23:30:28 GMT  
		Size: 4.7 MB (4684575 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5decc9ac2096b5922b46552f304ec92b3fbc15e0fbd59c693f01ab88d4f0f79`  
		Last Modified: Wed, 21 Oct 2026 23:30:28 GMT  
		Size: 22.6 KB (22612 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk27-alpine` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:47619f6b761062ef8f8cc204ad6c7ecace694125b07ee16352cfc98d3d6e7d76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.6 MB (310604383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbdb80307d7d64fb572452cc8854082a72d0650b94589bbd2438a06867bf4289`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 23:43:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 23:43:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:43:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 23:43:05 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 02 Oct 2026 23:43:05 GMT
ENV JAVA_VERSION=jdk-27+35
# Fri, 02 Oct 2026 23:43:13 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='440353d641e7726396dff5d9a9d0d17c05a070dc25664c20f9d7efafc2f16cf7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='45aef7cd5ae667c6f5dd100c96a99e5a00e61c512664bb13326cf149b7d37e0f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 02 Oct 2026 23:43:15 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 23:43:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:43:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 23:43:15 GMT
CMD ["jshell"]
# Tue, 20 Oct 2026 17:55:39 GMT
CMD ["gradle"]
# Tue, 20 Oct 2026 17:55:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 20 Oct 2026 17:55:39 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 20 Oct 2026 17:55:39 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 20 Oct 2026 17:55:39 GMT
WORKDIR /home/gradle
# Tue, 20 Oct 2026 17:55:41 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 20 Oct 2026 17:55:41 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 20 Oct 2026 17:55:41 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:55:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:55:45 GMT
USER gradle
# Tue, 20 Oct 2026 17:55:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:55:46 GMT
USER root
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248e6c997f4e945325aecb5c03bbe09145daa1ac54d89832c5ac876d2d4c3045`  
		Last Modified: Fri, 02 Oct 2026 23:43:30 GMT  
		Size: 17.2 MB (17207067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5783c836e3862d030b0e824d9244fe4f34eaa16995832b49733f5ad518cc39`  
		Last Modified: Fri, 02 Oct 2026 23:43:31 GMT  
		Size: 91.8 MB (91790582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d5f24807ffbf443551f94421e03a0d5fcb930a2f5ab509b7b38aa89b30dabc5`  
		Last Modified: Fri, 02 Oct 2026 23:43:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31bab363d78486654c6650f8549c1cbf82def41b26e00d4ba716041b79cfdbea`  
		Last Modified: Fri, 02 Oct 2026 23:43:29 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0ea8cabdce1a794f0edbd1ef6521ea283e93b83ef6c7276a050b667652eee23`  
		Last Modified: Tue, 20 Oct 2026 17:56:03 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fe64619403f51d7c212380ae4d36215659e390282e5d5d7650d4b73e2ca6b12`  
		Last Modified: Tue, 20 Oct 2026 17:56:05 GMT  
		Size: 45.9 MB (45852744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5235e97f352141d3f4862232ff30774a5044cde38679835c9569d2365555cf85`  
		Last Modified: Tue, 20 Oct 2026 17:56:07 GMT  
		Size: 151.5 MB (151533350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0befcaa25a6271deb18fe010e082e9327b78467012f18f140fc2d9e1aed4344`  
		Last Modified: Tue, 20 Oct 2026 17:56:03 GMT  
		Size: 29.3 KB (29346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk27-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:28d5d19c470df4061931ff34472ec12f9216918bb911f4b68de6bd81024603dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4858743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10689d0361b75a8b5b94f0d46bc094babf9ac6386f9dbc9dd549f2ab55968b15`

```dockerfile
```

-	Layers:
	-	`sha256:3de701d78c4d5ab0f294472ac4872c663f22561722cea79b7eca6070da3a5542`  
		Last Modified: Tue, 20 Oct 2026 17:56:03 GMT  
		Size: 4.8 MB (4835983 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bb9a9d97a9555c40c97fe6f4f98c6ce382017e5485f7b2cae8062a7192c1424`  
		Last Modified: Tue, 20 Oct 2026 17:56:03 GMT  
		Size: 22.8 KB (22760 bytes)  
		MIME: application/vnd.in-toto+json
