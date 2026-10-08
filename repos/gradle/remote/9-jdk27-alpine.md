## `gradle:9-jdk27-alpine`

```console
$ docker pull gradle@sha256:3573741c5699445c8dac77a12dca57aa1b82a0ede677eeeae0d203c62a876801
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk27-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:b9814c7332e916ce4ac463bc0a43734eada8367609a43684b1909dd36388c9d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.5 MB (311502125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93c3b0785b3611e5367be4f23f8a695d8f1c4e4e366eaf53a53b38fe03b3ba5`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 23:44:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 23:44:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:44:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 23:44:31 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 02 Oct 2026 23:44:31 GMT
ENV JAVA_VERSION=jdk-27+35
# Fri, 02 Oct 2026 23:44:38 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='440353d641e7726396dff5d9a9d0d17c05a070dc25664c20f9d7efafc2f16cf7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='45aef7cd5ae667c6f5dd100c96a99e5a00e61c512664bb13326cf149b7d37e0f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 02 Oct 2026 23:44:40 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 23:44:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:44:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 23:44:40 GMT
CMD ["jshell"]
# Thu, 08 Oct 2026 16:41:23 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 16:41:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 16:41:23 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 16:41:23 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 16:41:23 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:41:25 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 08 Oct 2026 16:41:25 GMT
ENV GRADLE_VERSION=9.8.1
# Thu, 08 Oct 2026 16:41:25 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 16:41:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:41:28 GMT
USER gradle
# Thu, 08 Oct 2026 16:41:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:41:29 GMT
USER root
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0232724deb66678d9961666fbea1f657d7b2e14c3e5c66094015d861c80fd6e4`  
		Last Modified: Fri, 02 Oct 2026 23:44:54 GMT  
		Size: 16.8 MB (16849584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1c9c71bb6c43ec314c86bc43c2351334f17f165bf8b3eb191ff41f1c1b9032b`  
		Last Modified: Fri, 02 Oct 2026 23:44:56 GMT  
		Size: 92.9 MB (92906652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6414e35765e91f097bd9e23545d0eebc5772c7265587869de11c8c6a024d0e06`  
		Last Modified: Fri, 02 Oct 2026 23:44:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d35562e6de8bf39caa6574d7c963ba991822648e7a99789e3eb4602dee62f64`  
		Last Modified: Fri, 02 Oct 2026 23:44:54 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:545b417da533039ae8bb300143d6c54fdc4356b9ff6be423df798bdab55cf049`  
		Last Modified: Thu, 08 Oct 2026 16:41:45 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f99eb551d5277d29d3915c730f7d8b79b8cb4f6585d62d4fad6579c2b94346`  
		Last Modified: Thu, 08 Oct 2026 16:41:47 GMT  
		Size: 46.3 MB (46333241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13bb797f5b53473ac2567354838d4d569abc8aa9dcd92cda7394b70bc4ce2f2f`  
		Last Modified: Thu, 08 Oct 2026 16:41:49 GMT  
		Size: 151.5 MB (151533654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c6b8715605d825a20c3dd6bca91f79c1e41da7083e36699551a370261cccad6`  
		Last Modified: Thu, 08 Oct 2026 16:41:45 GMT  
		Size: 25.6 KB (25623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk27-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:1cd68b18493adfe6b58290f7c5bf6fcf1dd7f0586b22e06fc38f18451be95cb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4709123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bfe803b0d558ed1ea239d4558eeed3a7ef63f1c62df1b8289c99af7fa07f1c2`

```dockerfile
```

-	Layers:
	-	`sha256:6079618b93e640cd2ae6dfe918b6fb7f5b03828f3142fb5e1edfe9809e227075`  
		Last Modified: Thu, 08 Oct 2026 16:41:45 GMT  
		Size: 4.7 MB (4686512 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80db60909fd211479450af5ac26f0562437f27e3d7403c83919952f6d871e465`  
		Last Modified: Thu, 08 Oct 2026 16:41:45 GMT  
		Size: 22.6 KB (22611 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk27-alpine` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:d9df60c67fbcd12ccf7a501aa672fa470ac3e2c823ff7be8aa624dad339a33e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.6 MB (310578887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8538d523a6207b44d30ef5d0255ce0eb11cb92b237bbeb837a9b222a83bcf1b7`
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
# Thu, 08 Oct 2026 16:41:03 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 16:41:03 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 16:41:03 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 16:41:03 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 16:41:03 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:41:05 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 08 Oct 2026 16:41:05 GMT
ENV GRADLE_VERSION=9.8.1
# Thu, 08 Oct 2026 16:41:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 16:41:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:41:08 GMT
USER gradle
# Thu, 08 Oct 2026 16:41:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:41:09 GMT
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
	-	`sha256:585a91d954792a47a747ca98d4ff09aa613eb39e490902c3aab1d5ec5b8c05e2`  
		Last Modified: Thu, 08 Oct 2026 16:41:25 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60283c643327fabeb378c41ee9ad33ad45282396da448238e3deafd05fbca7bb`  
		Last Modified: Thu, 08 Oct 2026 16:41:28 GMT  
		Size: 45.8 MB (45827208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a246689693e507b67d647d6554e0d7cc545f1cb33ba49a3a617412e01cefa2ff`  
		Last Modified: Thu, 08 Oct 2026 16:41:30 GMT  
		Size: 151.5 MB (151533388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a79cfa52728e345ba9d0bc12d9d37c482764b6cfea99f423127adad129efbc0`  
		Last Modified: Thu, 08 Oct 2026 16:41:25 GMT  
		Size: 29.3 KB (29349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk27-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:be255ab13cb62749d99a0be8faac508888c874d869935b2fe8073454396083ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4858743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35f16c575c362dd552cfbe12dd355adba7155df8565d8bab16c9cb3d54303744`

```dockerfile
```

-	Layers:
	-	`sha256:b09e6fafc7d179006f1fe7c23c10e293a80bcef37adaa281ee4b992f5e3fb099`  
		Last Modified: Thu, 08 Oct 2026 16:41:25 GMT  
		Size: 4.8 MB (4835983 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d324988e7f348f782c66756fe483c6b055942b789a5a459f55b161dc67cffffb`  
		Last Modified: Thu, 08 Oct 2026 16:41:25 GMT  
		Size: 22.8 KB (22760 bytes)  
		MIME: application/vnd.in-toto+json
