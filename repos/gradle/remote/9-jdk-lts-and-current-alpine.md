## `gradle:9-jdk-lts-and-current-alpine`

```console
$ docker pull gradle@sha256:b9e5cc1df2a9f213edf5529fbc034f4ea02d08b4519b45ab7b1c9201338faca2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk-lts-and-current-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:da0def70257e70e1ffd2f815024e338621c8179ca4d07d47e642d01d438131d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.3 MB (401274453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57ad79d805286bee5a8dafec03eb7af133d1b4331058fec5d00c21ef22c94af3`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:25:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:25:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:25:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:32 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:25:32 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:25:38 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='3d1c5c7877e320c2cff8154cfca9af948089912b6efc6123bb21726b7055bc62';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='c6f3e9f975c130169283363bf0ef2fc55f45c36eacc909141ffa7189cd7bdcb7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 21 Aug 2026 18:25:39 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:25:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:25:39 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 18:45:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk26 # buildkit
# Fri, 21 Aug 2026 18:45:09 GMT
RUN set -o errexit -o nounset     && ln -s /opt/java/openjdk /opt/java/openjdk25 # buildkit
# Fri, 21 Aug 2026 18:45:10 GMT
ENV JAVA_LTS_HOME=/opt/java/openjdk25
# Fri, 21 Aug 2026 18:45:10 GMT
ENV JAVA_CURRENT_HOME=/opt/java/openjdk26
# Fri, 21 Aug 2026 18:45:10 GMT
CMD ["gradle"]
# Fri, 21 Aug 2026 18:45:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 21 Aug 2026 18:45:10 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle       && echo "Ensuring Gradle detects installed JDKs"    && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties    && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties    && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Fri, 21 Aug 2026 18:45:10 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 21 Aug 2026 18:45:10 GMT
WORKDIR /home/gradle
# Fri, 21 Aug 2026 18:45:12 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 21 Aug 2026 18:45:12 GMT
ENV GRADLE_VERSION=9.7.1
# Fri, 21 Aug 2026 18:45:12 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Fri, 21 Aug 2026 18:45:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 21 Aug 2026 18:45:14 GMT
USER gradle
# Fri, 21 Aug 2026 18:45:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 21 Aug 2026 18:45:15 GMT
USER root
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1251f1bd7c631dcd1cac4674e1243c6ee4aa4877bbceda421b57f9faefe7726a`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 14.4 MB (14369221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44efe0f4bb6a9c5ce85a9d054859cec3ce43403d41be5bd20f97950676342a62`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 91.6 MB (91630852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e589d5d72b2cdb8887f929d0376d06dd40ec00db4dd528d920a1f15b8845591`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f6119cd7bdb3eeee4c0c0323d0c25e2e67983dbe3091ce1af089ee91beb4ce0`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a11af28c00e7ad9730cd1ee8252b64c82c57b41f1ddfec8813b3a40c8990779c`  
		Last Modified: Fri, 21 Aug 2026 18:45:40 GMT  
		Size: 93.7 MB (93748450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0fa63c81d23e8a31aa671f19bed2e8a8d471f1afad7a7ca0acfabd82a0f86c7`  
		Last Modified: Fri, 21 Aug 2026 18:45:36 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46487b5e30f85102f5ded9e56e376b06978b07b62bf86ce4a0eb1c72c6f33cf7`  
		Last Modified: Fri, 21 Aug 2026 18:45:36 GMT  
		Size: 1.1 KB (1139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de09e1a1ca393deba84f596df3dd7cf83ff20906355e550b11f16d2169bce545`  
		Last Modified: Fri, 21 Aug 2026 18:45:38 GMT  
		Size: 46.3 MB (46294965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a44f25607fec3bf85a070bb86c87bd40b448dda225efff07f2a48a0277381ea`  
		Last Modified: Fri, 21 Aug 2026 18:45:42 GMT  
		Size: 151.4 MB (151355044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e9d89e85948050aac23ec4a2885d55a8a2b0a9b69e50d7e4f2bd10a77f8eff`  
		Last Modified: Fri, 21 Aug 2026 18:45:37 GMT  
		Size: 25.6 KB (25616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-lts-and-current-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:07102c58037ee22711148814effdd727002a52ad1f56423189a6ecc247c20c25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4844445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f0d024b68bbc184cf02d9b7a0c749ca62f3443f25f7d2ee428fb7930a6242b`

```dockerfile
```

-	Layers:
	-	`sha256:f93bbc283af7ecaa7ad7ac9a4cd557ad57c60cdf2ec0ff9fd89a6f2912d48758`  
		Last Modified: Fri, 21 Aug 2026 18:45:36 GMT  
		Size: 4.8 MB (4812052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d8b531b73c520c15f908048a3cc7e1ff1f4f1d643224434e5777a4c550a2832`  
		Last Modified: Fri, 21 Aug 2026 18:45:36 GMT  
		Size: 32.4 KB (32393 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk-lts-and-current-alpine` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:728f67218d3ea50c742a18aa9252fe1fa371e7d6bca02f12f7aecc01ac0e4604
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.0 MB (398973102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e84e186e568b94b09a958202f1438a0dcf9a51d878f5ed782ccc66f04b6b840d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:28:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:28:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:28:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:28:34 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:28:34 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:28:42 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='3d1c5c7877e320c2cff8154cfca9af948089912b6efc6123bb21726b7055bc62';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='c6f3e9f975c130169283363bf0ef2fc55f45c36eacc909141ffa7189cd7bdcb7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 21 Aug 2026 18:28:43 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:28:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:28:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:28:43 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 18:39:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk26 # buildkit
# Fri, 21 Aug 2026 18:39:02 GMT
RUN set -o errexit -o nounset     && ln -s /opt/java/openjdk /opt/java/openjdk25 # buildkit
# Fri, 21 Aug 2026 18:39:02 GMT
ENV JAVA_LTS_HOME=/opt/java/openjdk25
# Fri, 21 Aug 2026 18:39:02 GMT
ENV JAVA_CURRENT_HOME=/opt/java/openjdk26
# Fri, 21 Aug 2026 18:39:02 GMT
CMD ["gradle"]
# Fri, 21 Aug 2026 18:39:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 21 Aug 2026 18:39:02 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle       && echo "Ensuring Gradle detects installed JDKs"    && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties    && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties    && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Fri, 21 Aug 2026 18:39:02 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 21 Aug 2026 18:39:02 GMT
WORKDIR /home/gradle
# Fri, 21 Aug 2026 18:39:04 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 21 Aug 2026 18:39:04 GMT
ENV GRADLE_VERSION=9.7.1
# Fri, 21 Aug 2026 18:39:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Fri, 21 Aug 2026 18:39:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 21 Aug 2026 18:39:07 GMT
USER gradle
# Fri, 21 Aug 2026 18:39:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 21 Aug 2026 18:39:08 GMT
USER root
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34d02b60b3b80fde9d47090317e49ed4b0fbcd020d21a71470dd2ef27e06fce7`  
		Last Modified: Fri, 21 Aug 2026 18:28:59 GMT  
		Size: 14.4 MB (14421003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025612b9033db06c25d215988e53dd4704aaecad607f6477cb18ef06e8ab54d3`  
		Last Modified: Fri, 21 Aug 2026 18:29:00 GMT  
		Size: 90.6 MB (90558574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b96f24253906f95e7f87efcad1b52d0e9010c75dda7aae03f7c9fbedc9041df`  
		Last Modified: Fri, 21 Aug 2026 18:28:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b380773893b60f69b5af551ebdb0a24357a63a3d2e1d81370c0f5414540c7e7c`  
		Last Modified: Fri, 21 Aug 2026 18:28:58 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b365b924716de17cf35d956506e5fcb434a89ec86d1614b2089c8f75847967`  
		Last Modified: Fri, 21 Aug 2026 18:39:33 GMT  
		Size: 92.6 MB (92635924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f21cf5e79f264c7483d814a4088fbf5973a80e63e4316b783d27271ed70948e`  
		Last Modified: Fri, 21 Aug 2026 18:39:29 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f710bf3d0a2a69d1ce7b5d76b97d55ff705bfc2765e3dca981ad53dad14c1a`  
		Last Modified: Fri, 21 Aug 2026 18:39:29 GMT  
		Size: 1.1 KB (1139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb078895966663a0b1ce3c2e67594b65f6444ac29a68afa60b764c20bbfaffff`  
		Last Modified: Fri, 21 Aug 2026 18:39:32 GMT  
		Size: 45.8 MB (45786101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91dc03df1a610e01257b6e036de6b1e2547f52794aba5e19c7537cd9aac959a8`  
		Last Modified: Fri, 21 Aug 2026 18:39:35 GMT  
		Size: 151.4 MB (151355210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19cc393d4fc48d5c33a1a364b543093308adfd61667af9b9aa3fd137a7b34e7a`  
		Last Modified: Fri, 21 Aug 2026 18:39:30 GMT  
		Size: 29.3 KB (29340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-lts-and-current-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:3dd62bbe67780ce26c3322596e24ac421d488c4da0e3995302e7d40bacfeade7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4993579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:768fb8ee3ca09bf46b079f803f9a4e936a32cc1199496b6833f988f876618e8d`

```dockerfile
```

-	Layers:
	-	`sha256:6217f981e3bcf2a9e0469d5c52c12a5794e8544e296a2084150a41cc40ea5168`  
		Last Modified: Fri, 21 Aug 2026 18:39:30 GMT  
		Size: 5.0 MB (4960948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f99c4b7ff1fa7dc8ec566bc0adee03be129c85c9b9b23fcd8c394489d71b683d`  
		Last Modified: Fri, 21 Aug 2026 18:39:29 GMT  
		Size: 32.6 KB (32631 bytes)  
		MIME: application/vnd.in-toto+json
