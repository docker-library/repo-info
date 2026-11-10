## `gradle:jdk-lts-and-current-alpine`

```console
$ docker pull gradle@sha256:521fb4f0e66e6e6b626f2717c0026434b48f8cd90eb54b487770ac7044bc80ca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk-lts-and-current-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:3ddc503f24ca407b1be1c6f7036400a003e61bc3bcfd0b6b6c9264f9ab8e129e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.7 MB (400737084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:839bdfd487a21898bfea8145aa0ec5ccb2786098f8afd72b75fff34b4a7d35e1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:18:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:18:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:18:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:18:51 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:18:51 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 05 Nov 2026 19:18:58 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='d02eadc0a0f93faba4be38c8657eb8eef842103a4c7c2400f5827dbd90fc21c9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='efc86581260b73c340c313e7577c4c85d6a8a899edc3748d78bee5238fe44a4e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 05 Nov 2026 19:18:59 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:18:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:18:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 19:18:59 GMT
CMD ["jshell"]
# Tue, 10 Nov 2026 00:09:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk27 # buildkit
# Tue, 10 Nov 2026 00:09:27 GMT
RUN set -o errexit -o nounset     && ln -s /opt/java/openjdk /opt/java/openjdk25 # buildkit
# Tue, 10 Nov 2026 00:09:27 GMT
ENV JAVA_LTS_HOME=/opt/java/openjdk25
# Tue, 10 Nov 2026 00:09:27 GMT
ENV JAVA_CURRENT_HOME=/opt/java/openjdk27
# Tue, 10 Nov 2026 00:09:27 GMT
CMD ["gradle"]
# Tue, 10 Nov 2026 00:09:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Nov 2026 00:09:27 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle       && echo "Ensuring Gradle detects installed JDKs"    && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties    && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties    && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Tue, 10 Nov 2026 00:09:27 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Nov 2026 00:09:27 GMT
WORKDIR /home/gradle
# Tue, 10 Nov 2026 00:09:29 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 10 Nov 2026 00:09:29 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 10 Nov 2026 00:09:29 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 10 Nov 2026 00:09:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 10 Nov 2026 00:09:32 GMT
USER gradle
# Tue, 10 Nov 2026 00:09:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 10 Nov 2026 00:09:32 GMT
USER root
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4caf70d321377b7c0ff707e264166fd4c797a4eef18ca96b6ada60c33cfe2165`  
		Last Modified: Thu, 05 Nov 2026 19:19:15 GMT  
		Size: 14.4 MB (14374204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd4b4ff56f92cef8f9478ff3ea7e11c3ff68cfffc3bb044a334819c28779120`  
		Last Modified: Thu, 05 Nov 2026 19:19:17 GMT  
		Size: 91.7 MB (91663090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c993be7e77e2db2040cbbbacf49c796bc989aac15c8ad8e724d8d6c1ce44e6d`  
		Last Modified: Thu, 05 Nov 2026 19:19:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:465b2c94f2afe2dda730c0e4b28245cbfbfb9a1f7ae5dd6f010f83499ee2a9bf`  
		Last Modified: Thu, 05 Nov 2026 19:19:13 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30784f6cd0bd40d6259ed01b4dcc3e2ce64c8b7ef0f72c3337804ca06663c697`  
		Last Modified: Tue, 10 Nov 2026 00:09:58 GMT  
		Size: 92.9 MB (92889298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ed5242d2acb72d232e5201414e7724085f723f218f5f425643c8c45b511864`  
		Last Modified: Tue, 10 Nov 2026 00:09:54 GMT  
		Size: 152.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811c80cd851365787ba9ab4c9741963444045c51aaeadf803518c91dabd78b78`  
		Last Modified: Tue, 10 Nov 2026 00:09:54 GMT  
		Size: 1.1 KB (1137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e0221024a92ff1dc8737c03ac7f1ad6c2f1cb6355a057ac64913e2b47e23439`  
		Last Modified: Tue, 10 Nov 2026 00:09:57 GMT  
		Size: 46.4 MB (46394057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb0b874bf42cee22ffbc74064280d9512a0f2c6a50731ba69b97988d587df35`  
		Last Modified: Tue, 10 Nov 2026 00:09:59 GMT  
		Size: 151.5 MB (151533246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47e860960e75a580546241f3ad73a06852f27fec28a8eb50b1e101ee1943d59a`  
		Last Modified: Tue, 10 Nov 2026 00:09:56 GMT  
		Size: 25.6 KB (25605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk-lts-and-current-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:fae547bee208a8fabbb0e11594e75ef7b9978ded7c2ba8ba86c78f4b9d9cbbab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4841173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7662b98b6b97575b167709100135a5dc76d6b61f6aa5b0e9ecd68af52ea93782`

```dockerfile
```

-	Layers:
	-	`sha256:c76c47a3d83723e22456f2748595012efeef0fdddb4659570cadde479916b7e8`  
		Last Modified: Tue, 10 Nov 2026 00:09:54 GMT  
		Size: 4.8 MB (4808780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30954c8e6ea7ad3f1285cc0473ff7815193317919aa09d201d43b9ada4b52a62`  
		Last Modified: Tue, 10 Nov 2026 00:09:54 GMT  
		Size: 32.4 KB (32393 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk-lts-and-current-alpine` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:5cfe9e9852dbf48274774e2a8d2f3bbcaa872505e2bf7af2cfdcf7e1e62a9bb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.4 MB (398410449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e1a60f73cbd81fd510a28a28e934e88853a3833e6190e327742d7d04b456405`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:13:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:13:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:13:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:13:40 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:13:40 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 05 Nov 2026 19:13:47 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='d02eadc0a0f93faba4be38c8657eb8eef842103a4c7c2400f5827dbd90fc21c9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='efc86581260b73c340c313e7577c4c85d6a8a899edc3748d78bee5238fe44a4e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 05 Nov 2026 19:13:49 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:13:49 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:13:49 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 19:13:49 GMT
CMD ["jshell"]
# Tue, 10 Nov 2026 00:09:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk27 # buildkit
# Tue, 10 Nov 2026 00:09:26 GMT
RUN set -o errexit -o nounset     && ln -s /opt/java/openjdk /opt/java/openjdk25 # buildkit
# Tue, 10 Nov 2026 00:09:27 GMT
ENV JAVA_LTS_HOME=/opt/java/openjdk25
# Tue, 10 Nov 2026 00:09:27 GMT
ENV JAVA_CURRENT_HOME=/opt/java/openjdk27
# Tue, 10 Nov 2026 00:09:27 GMT
CMD ["gradle"]
# Tue, 10 Nov 2026 00:09:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Nov 2026 00:09:27 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle       && echo "Ensuring Gradle detects installed JDKs"    && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties    && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties    && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Tue, 10 Nov 2026 00:09:27 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Nov 2026 00:09:27 GMT
WORKDIR /home/gradle
# Tue, 10 Nov 2026 00:09:29 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 10 Nov 2026 00:09:29 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 10 Nov 2026 00:09:29 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 10 Nov 2026 00:09:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 10 Nov 2026 00:09:32 GMT
USER gradle
# Tue, 10 Nov 2026 00:09:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 10 Nov 2026 00:09:33 GMT
USER root
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:645d78941c0ac0f7ae53a311e5b6da7c57b604f24f64f786b4429e0583569b2b`  
		Last Modified: Thu, 05 Nov 2026 19:14:04 GMT  
		Size: 14.4 MB (14426864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f168feb3299cae3aa0c34589ea91e1f5cb9835f5c32cf0dee54ffd582bd33ee`  
		Last Modified: Thu, 05 Nov 2026 19:14:06 GMT  
		Size: 90.6 MB (90570261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b672b0dab5614e501f6d20fadc8ad1ba0dc8ea94fcd7a892a45ca533881607`  
		Last Modified: Thu, 05 Nov 2026 19:14:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c729cf974d863bc0c259b02130decbf454ce00ce06548fc9ed1d154abba602e`  
		Last Modified: Thu, 05 Nov 2026 19:14:03 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a93fc5d32b89e0815972ac2f2c72205c827af7952e0d31b71c198fe4c5ccf6e`  
		Last Modified: Tue, 10 Nov 2026 00:10:00 GMT  
		Size: 91.8 MB (91769021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb5cc62cb9948dcf9c393054a3afb9d838f2e58facb67c8a9be1e8dd2493860`  
		Last Modified: Tue, 10 Nov 2026 00:09:54 GMT  
		Size: 152.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbd37af9eaac396a046876d8e6eb43ff6d54cf2ffdbf0a828894105656c03315`  
		Last Modified: Tue, 10 Nov 2026 00:09:54 GMT  
		Size: 1.1 KB (1139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679429b29b9c4f51e3d3d92cdb5477cfc498f25fe6527f26efc9453bdabd784c`  
		Last Modified: Tue, 10 Nov 2026 00:09:57 GMT  
		Size: 45.9 MB (45887049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27f1020089c33c642d5fdba4ea95cf3b9016f83d86396d6c6268b1733bddcc64`  
		Last Modified: Tue, 10 Nov 2026 00:10:02 GMT  
		Size: 151.5 MB (151533405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a680eaee75956e2bb1d86761c348d0eb3f02a7a00ae70e36df45a9e1e68e55`  
		Last Modified: Tue, 10 Nov 2026 00:09:56 GMT  
		Size: 29.3 KB (29338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk-lts-and-current-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:3d0b0a5d239679786cd39e219c09f409d255cd17badda6ad5c476ce20d6b995e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4990307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7854a3d1e90e84d3b94beb7a369effb35d9da30c21c5bb3c5090c617d84df0b4`

```dockerfile
```

-	Layers:
	-	`sha256:2b865f3ea4daa15d468bdf7e4f4f5779e10fd125572aefa21b2e5ccae7167653`  
		Last Modified: Tue, 10 Nov 2026 00:09:55 GMT  
		Size: 5.0 MB (4957676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50a669c28c3d3586b20f1fc2c655ed6e467911510827879082a2a753db180cb2`  
		Last Modified: Tue, 10 Nov 2026 00:09:54 GMT  
		Size: 32.6 KB (32631 bytes)  
		MIME: application/vnd.in-toto+json
