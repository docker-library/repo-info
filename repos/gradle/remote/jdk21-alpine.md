## `gradle:jdk21-alpine`

```console
$ docker pull gradle@sha256:e6811fe282293a0e820278c56e29c0f145daebc0300dcd1b0dda834d8c6ac9bc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk21-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:342e9dfb95696b218430320684579b59cdcd732f6b8a69e393dec7afdf7ccd2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.4 MB (379442344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:167cac6ef673c66985f5874b963316f9e8f09d03032e29c5b22fcce4f66c77e6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:40:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:40:49 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:40:49 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Thu, 17 Sep 2026 21:40:57 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a32f7655011640ed8fb4347fffa2588cb7538de2f2e82027845816740560e2b1';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='073a48cb87f788a0cb283d81cc6d96cbc9d671d6a60a3ba6de62e66f0ea9dd47';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 17 Sep 2026 21:40:59 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:40:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:40:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 21:40:59 GMT
CMD ["jshell"]
# Thu, 24 Sep 2026 19:33:18 GMT
CMD ["gradle"]
# Thu, 24 Sep 2026 19:33:18 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 24 Sep 2026 19:33:18 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 24 Sep 2026 19:33:18 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 24 Sep 2026 19:33:18 GMT
WORKDIR /home/gradle
# Thu, 24 Sep 2026 19:33:20 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 24 Sep 2026 19:33:20 GMT
ENV GRADLE_VERSION=9.8.0
# Thu, 24 Sep 2026 19:33:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Thu, 24 Sep 2026 19:33:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 24 Sep 2026 19:33:22 GMT
USER gradle
# Thu, 24 Sep 2026 19:33:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 24 Sep 2026 19:33:22 GMT
USER root
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cfeb5b8514c9dbbd1d00e50bd1cacea20a9b32df93487951602cae61289310f`  
		Last Modified: Thu, 17 Sep 2026 21:41:14 GMT  
		Size: 21.4 MB (21442358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c633b3ab448192e7018639ae3e164c60ef5340505fef64172078c965568f768`  
		Last Modified: Thu, 17 Sep 2026 21:41:18 GMT  
		Size: 158.3 MB (158332695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccb159d650e75c7da3af4cd09d95f44bd3e7373ecf0a9f1d47cfd2a7a82b492d`  
		Last Modified: Thu, 17 Sep 2026 21:41:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb434d94307643c6a23bbfd216d2f6f4c64599139fb2e0840d044236a795003`  
		Last Modified: Thu, 17 Sep 2026 21:41:01 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb6afd138c4f67f4d6a854a8cecebecfe9145077d58853460b1bb7a22f678d10`  
		Last Modified: Thu, 24 Sep 2026 19:33:39 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e42cbd20d11942415f1b995ab9d23b93947a42c0514c074873feeb46220ec9b`  
		Last Modified: Thu, 24 Sep 2026 19:33:41 GMT  
		Size: 44.3 MB (44263347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f007a22f9adf2406225de6ddda29a302a738a8c2d6640007695dbad0c235acc`  
		Last Modified: Thu, 24 Sep 2026 19:33:43 GMT  
		Size: 151.5 MB (151524958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f62705d464ef97635fe795a10c2de77b110c62c41e189a75cb1db057c5980ed`  
		Last Modified: Thu, 24 Sep 2026 19:33:39 GMT  
		Size: 25.6 KB (25617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:9d0fe064c7904857d815a949ce1c6c16ee323f18dda92ebdcbd1e8f847c55c1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4804051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b834aff3d597af70c0d010cf7a83bb65a800835f52d9a19e7714ba14ff40ddc`

```dockerfile
```

-	Layers:
	-	`sha256:c45b77695bb3060dbcf3199cfc978b3c8744391aed4cebc54ddf3d248b06a20d`  
		Last Modified: Thu, 24 Sep 2026 19:33:39 GMT  
		Size: 4.8 MB (4781417 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8bc2871962beb06bda502180d595d5eeacff4d6c51613573a45791ccb7b8306`  
		Last Modified: Thu, 24 Sep 2026 19:33:39 GMT  
		Size: 22.6 KB (22634 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-alpine` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:c251238c063f1f0db9b899c9cd621f9b80f3101758278e055d1de1c75a4413bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.3 MB (377253513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f43f13b6069de2e2b28316500b0443cdaf82d64903f7742e7a51a896bf8b561`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:40:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:53 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:40:53 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:40:53 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Thu, 17 Sep 2026 21:41:04 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a32f7655011640ed8fb4347fffa2588cb7538de2f2e82027845816740560e2b1';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='073a48cb87f788a0cb283d81cc6d96cbc9d671d6a60a3ba6de62e66f0ea9dd47';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 17 Sep 2026 21:41:06 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:41:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:41:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 21:41:06 GMT
CMD ["jshell"]
# Thu, 24 Sep 2026 19:32:46 GMT
CMD ["gradle"]
# Thu, 24 Sep 2026 19:32:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 24 Sep 2026 19:32:46 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 24 Sep 2026 19:32:46 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 24 Sep 2026 19:32:46 GMT
WORKDIR /home/gradle
# Thu, 24 Sep 2026 19:32:48 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 24 Sep 2026 19:32:48 GMT
ENV GRADLE_VERSION=9.8.0
# Thu, 24 Sep 2026 19:32:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Thu, 24 Sep 2026 19:32:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 24 Sep 2026 19:32:51 GMT
USER gradle
# Thu, 24 Sep 2026 19:32:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 24 Sep 2026 19:32:51 GMT
USER root
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369292db17b35064ec86ed791628e8d5cc9a497a0e76ba9fc8bfc72fb53f146e`  
		Last Modified: Thu, 17 Sep 2026 21:41:22 GMT  
		Size: 21.4 MB (21419726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3db93c5866c4c4aad884a8dec74796b31d9425eb84bf663cd9abe1f8b33937b`  
		Last Modified: Thu, 17 Sep 2026 21:41:25 GMT  
		Size: 156.3 MB (156334526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94e381264f84ac324e06f3b595a3fd430fcca9984c882c221c62d5bf165e5e5f`  
		Last Modified: Thu, 17 Sep 2026 21:41:21 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e92fcdb31d981f370187c4f6356738deb07640da76b3fbd24f7becf5bb7a111b`  
		Last Modified: Thu, 17 Sep 2026 21:41:21 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74b2258b1c8d978b90cc871a96737b3bf21de3873a69793be98af31f559ed95b`  
		Last Modified: Thu, 24 Sep 2026 19:33:08 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a283643bcab41a2ed547bca492dcc3fb5c5687c3a14d113549f922db84596f0f`  
		Last Modified: Thu, 24 Sep 2026 19:33:10 GMT  
		Size: 43.8 MB (43753422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3cc11613a0fcd36362758a6c4bacb74992cdf7170d59ff4bb426a07b751c4cf`  
		Last Modified: Thu, 24 Sep 2026 19:33:12 GMT  
		Size: 151.5 MB (151525203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba07b68ed7edc2b66c39cdde991e1e6fee167b7f6222b5e707e1448db629ce35`  
		Last Modified: Thu, 24 Sep 2026 19:33:08 GMT  
		Size: 29.3 KB (29344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:5bb9fa4b6790d2807083391fb834ca2cef0a5155d18444890f376c0acb95ec58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4953673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85805126e9fc376c2072c7e2a3ca5cd59361f1d08af95224549e083fadb9c7ce`

```dockerfile
```

-	Layers:
	-	`sha256:d156ea31c17b33b9b0e7e86e289bf0a58f3d281f12776b977a592c134a6c5726`  
		Last Modified: Thu, 24 Sep 2026 19:33:08 GMT  
		Size: 4.9 MB (4930891 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:919434048946ea6a223a1a9e37af192be8188b1af65b8c9056c3c085bef737f8`  
		Last Modified: Thu, 24 Sep 2026 19:33:08 GMT  
		Size: 22.8 KB (22782 bytes)  
		MIME: application/vnd.in-toto+json
