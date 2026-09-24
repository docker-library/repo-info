## `gradle:9-jdk25-alpine`

```console
$ docker pull gradle@sha256:9c6d10f0380c29b629fc4d61950da365b6ab33a70adb64b8d7ef496962df0bf5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk25-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:068b13a9988271a0dc5f6367c7fa8894aa27f4aec226265fe06733f674c61d6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.7 MB (307720203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16ccf31c92d4470389ce09df12390656f4cb449be56b08bd815c4d772e4dff12`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:41:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:41:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:41:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:41:13 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:41:13 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Thu, 17 Sep 2026 21:41:19 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='3d1c5c7877e320c2cff8154cfca9af948089912b6efc6123bb21726b7055bc62';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='c6f3e9f975c130169283363bf0ef2fc55f45c36eacc909141ffa7189cd7bdcb7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 17 Sep 2026 21:41:21 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:41:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:41:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 21:41:21 GMT
CMD ["jshell"]
# Thu, 24 Sep 2026 19:32:21 GMT
CMD ["gradle"]
# Thu, 24 Sep 2026 19:32:21 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 24 Sep 2026 19:32:21 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 24 Sep 2026 19:32:21 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 24 Sep 2026 19:32:21 GMT
WORKDIR /home/gradle
# Thu, 24 Sep 2026 19:32:22 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 24 Sep 2026 19:32:22 GMT
ENV GRADLE_VERSION=9.8.0
# Thu, 24 Sep 2026 19:32:22 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Thu, 24 Sep 2026 19:32:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 24 Sep 2026 19:32:25 GMT
USER gradle
# Thu, 24 Sep 2026 19:32:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 24 Sep 2026 19:32:25 GMT
USER root
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec82bfe91586f5f7311edd0e16591dca3ef8e0e1970599aaebb4d0e56fe9c9cc`  
		Last Modified: Thu, 17 Sep 2026 21:41:35 GMT  
		Size: 14.4 MB (14374514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d13e008627794fa2acf382301c3ff447d7a785bb7385d223e9066813b68f5bd7`  
		Last Modified: Thu, 17 Sep 2026 21:41:37 GMT  
		Size: 91.6 MB (91632182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a455cf7f8f1bd0a47ab57a67a9600e72b09707e762daf0fdc8ea2673effdda`  
		Last Modified: Thu, 17 Sep 2026 21:41:34 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9058ea4b5f93012c6264d153c13e349d5eec3447a68856f05025da3c9a05aa82`  
		Last Modified: Thu, 17 Sep 2026 21:41:28 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d64048804eaf7a1e0dbd1d24bcbdb26fbd0b943f19bd128e287a14b61d2cc2`  
		Last Modified: Thu, 24 Sep 2026 19:32:40 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe4cf55d46821373a82e234fc1009f977b7537b514a46e4524643dc48a26b1bd`  
		Last Modified: Thu, 24 Sep 2026 19:32:42 GMT  
		Size: 46.3 MB (46309625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87dba6a404fe769b4e5396e99edd39f07fe6d3682279c0544b9a8b51fbc91ddd`  
		Last Modified: Thu, 24 Sep 2026 19:32:45 GMT  
		Size: 151.5 MB (151524898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2274f850f8c92ba1956bd47336a96ba044f4984c4b8035960114799a2037502`  
		Last Modified: Thu, 24 Sep 2026 19:32:40 GMT  
		Size: 25.6 KB (25614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:24368aaf68c193e48b532e047a275375677e2e26fc213b1c7b583d4e6dff1ca0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4717828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa6691ac42ea7aaeb7836e1e307157f44bfcc868fb68df1507a220e84d815199`

```dockerfile
```

-	Layers:
	-	`sha256:1c61e2b13594cd14af1905efe75014c7197df85fc1c2608a77eac7893bdab7b3`  
		Last Modified: Thu, 24 Sep 2026 19:32:40 GMT  
		Size: 4.7 MB (4692740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10ea2785cce7f527942c7053157bc13dda50f2a72fede0c8f48044ec60c17f19`  
		Last Modified: Thu, 24 Sep 2026 19:32:40 GMT  
		Size: 25.1 KB (25088 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk25-alpine` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:8438a7446ab83638c69bff32d78575d6d6bb1289058f833545a1f0909b2faed1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.5 MB (306534849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ff27f9ea3541a0620a55e531126edaef2df6d922be4750d755c882fa0949cba`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:41:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:41:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:41:33 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:41:33 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:41:33 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Thu, 17 Sep 2026 21:41:43 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='3d1c5c7877e320c2cff8154cfca9af948089912b6efc6123bb21726b7055bc62';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='c6f3e9f975c130169283363bf0ef2fc55f45c36eacc909141ffa7189cd7bdcb7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 17 Sep 2026 21:41:44 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:41:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:41:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 21:41:44 GMT
CMD ["jshell"]
# Thu, 24 Sep 2026 19:31:46 GMT
CMD ["gradle"]
# Thu, 24 Sep 2026 19:31:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 24 Sep 2026 19:31:46 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 24 Sep 2026 19:31:46 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 24 Sep 2026 19:31:46 GMT
WORKDIR /home/gradle
# Thu, 24 Sep 2026 19:31:49 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 24 Sep 2026 19:31:49 GMT
ENV GRADLE_VERSION=9.8.0
# Thu, 24 Sep 2026 19:31:49 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Thu, 24 Sep 2026 19:31:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 24 Sep 2026 19:31:52 GMT
USER gradle
# Thu, 24 Sep 2026 19:31:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 24 Sep 2026 19:31:53 GMT
USER root
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9deae9ea44597bed06ae6a530e5037e90206374a50b7547facbb6010ae141ee`  
		Last Modified: Thu, 17 Sep 2026 21:41:59 GMT  
		Size: 14.4 MB (14424628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3c5c3ceb5a7b76e6300b650a8b6e878155f79d76f3ad12a38f93cae4c63e9ce`  
		Last Modified: Thu, 17 Sep 2026 21:42:01 GMT  
		Size: 90.6 MB (90557992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a4df2f52ba79d23e015955f288bfad2e5267df37001507e63f8d48d3270856`  
		Last Modified: Thu, 17 Sep 2026 21:41:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9aec489f5a261ef4e1b82e688286ed41dfbaadfd9b72efdcbe6af66a75b40dd`  
		Last Modified: Thu, 17 Sep 2026 21:41:59 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff59cad14aa77659fb93c7e22ee68153a3f0600db31f28c224365eb7eab01c11`  
		Last Modified: Thu, 24 Sep 2026 19:32:09 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:599101d112879ffb4740836094347fd2403d1cc92df431f89d50a556cc9cde9a`  
		Last Modified: Thu, 24 Sep 2026 19:32:14 GMT  
		Size: 45.8 MB (45806374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d828b13558391f400f2ce51c7c3448398886fcd8f536d5bb31e6c229230952c`  
		Last Modified: Thu, 24 Sep 2026 19:32:18 GMT  
		Size: 151.5 MB (151525218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:610baac1ccba0f7be86f04e60da51babe5683760f0a2f620a5daed9ef5d7ca88`  
		Last Modified: Thu, 24 Sep 2026 19:32:09 GMT  
		Size: 29.3 KB (29344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:429d54f9aed73a03ad0bf0b6d34cbf2b20aa37465a08b32fd35ed810153aef57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4867640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5558c43f529b97c7c8cdec6de0e7bf6d0009ac95321fe2eb30442a7a6e8f167`

```dockerfile
```

-	Layers:
	-	`sha256:99893c741dec2d40e76dd1d8d4616a518c3c502b8b757b9984c84ab4599b134c`  
		Last Modified: Thu, 24 Sep 2026 19:32:10 GMT  
		Size: 4.8 MB (4842307 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fe1f5ca3eb0114a0ab07dfbc30a64a48c85251a965dbdd51c520125d6ad2c50`  
		Last Modified: Thu, 24 Sep 2026 19:32:09 GMT  
		Size: 25.3 KB (25333 bytes)  
		MIME: application/vnd.in-toto+json
