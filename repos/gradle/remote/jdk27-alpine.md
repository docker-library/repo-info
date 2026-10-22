## `gradle:jdk27-alpine`

```console
$ docker pull gradle@sha256:4958c5f02d561b199d51cf107873391446b2e8002c611080965ec9cb177c7445
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk27-alpine` - linux; amd64

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

### `gradle:jdk27-alpine` - unknown; unknown

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

### `gradle:jdk27-alpine` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:77d0486c96b7e8210bc413f3da182a4c55dae17473281dd153f8d39c501f542b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.8 MB (307827196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0d5faeb427da3da72d73b2ec64d75ce90c24f645921f49464d21d7643b266fa`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 23:20:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:20:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 23:20:24 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 23:20:24 GMT
ENV JAVA_VERSION=jdk-27+35
# Wed, 21 Oct 2026 23:20:34 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='440353d641e7726396dff5d9a9d0d17c05a070dc25664c20f9d7efafc2f16cf7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='45aef7cd5ae667c6f5dd100c96a99e5a00e61c512664bb13326cf149b7d37e0f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Wed, 21 Oct 2026 23:20:36 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 23:20:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 23:20:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:36 GMT
CMD ["jshell"]
# Thu, 22 Oct 2026 00:21:35 GMT
CMD ["gradle"]
# Thu, 22 Oct 2026 00:21:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 22 Oct 2026 00:21:35 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 22 Oct 2026 00:21:35 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 22 Oct 2026 00:21:35 GMT
WORKDIR /home/gradle
# Thu, 22 Oct 2026 00:21:37 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 22 Oct 2026 00:21:37 GMT
ENV GRADLE_VERSION=9.8.2
# Thu, 22 Oct 2026 00:21:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Thu, 22 Oct 2026 00:21:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 22 Oct 2026 00:21:41 GMT
USER gradle
# Thu, 22 Oct 2026 00:21:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 22 Oct 2026 00:21:41 GMT
USER root
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:875cf4f2569cd9113cda9691a62238a5e032242f0626f8f2f665d0554e629a4a`  
		Last Modified: Wed, 21 Oct 2026 23:20:51 GMT  
		Size: 14.4 MB (14426583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4084ebb14a32dd6d83e4a097559b82a3bdb8164175e1914986d04f4a965635c`  
		Last Modified: Wed, 21 Oct 2026 23:20:53 GMT  
		Size: 91.8 MB (91790925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a4e834e9ec8b7b6546cba25985b5be4dbf99e601322920cda5b1e2fcd9d70dc`  
		Last Modified: Wed, 21 Oct 2026 23:20:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7951dbb32453398c235abe8cb73740408f41c7f98896fc50b7a186a574a7eb9`  
		Last Modified: Wed, 21 Oct 2026 23:20:43 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fcb48ed3718b785b05c621cfc38cf4e9b2dddafad23a009e2900226ee32d1b`  
		Last Modified: Thu, 22 Oct 2026 00:21:58 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a49633b86eb270205d4bec0d2e95d2c17f58aafc194294b5572a2e94f2a14db`  
		Last Modified: Thu, 22 Oct 2026 00:22:00 GMT  
		Size: 45.9 MB (45853082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79d963aab28715b79e0f81f32e7fecb69c303238294ee896bcb5a2e015bab525`  
		Last Modified: Thu, 22 Oct 2026 00:22:02 GMT  
		Size: 151.5 MB (151533140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b49b1fad11f33d182f2a0c10de337ee64a372d009a5acf5d4e85958ef25dfdd1`  
		Last Modified: Thu, 22 Oct 2026 00:21:58 GMT  
		Size: 29.3 KB (29344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk27-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:62723ff6daf33587ba8eab15214ba9197747268a63c31abd2662f21854e9b989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4856807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feb96344156cbdac446026bb3568fc30ded9647b28887ae71922af8f97880a09`

```dockerfile
```

-	Layers:
	-	`sha256:cddfae9930893672848afc69a5baa2a843c3f7d410c5acab6e2cc04cc532fbbc`  
		Last Modified: Thu, 22 Oct 2026 00:21:58 GMT  
		Size: 4.8 MB (4834046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52a0e846f25519e694f13cb95975e022cf3f007eab72adb0b6fe1776fe22aad8`  
		Last Modified: Thu, 22 Oct 2026 00:21:58 GMT  
		Size: 22.8 KB (22761 bytes)  
		MIME: application/vnd.in-toto+json
