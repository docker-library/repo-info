## `gradle:9-jdk27-alpine`

```console
$ docker pull gradle@sha256:a4755f87be4e1a4515a90dc27d57b6ab097f442a47715aefad769ad1eaee04e8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk27-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:954858287bd9bc9de0ac3b3ef4679e79dc9f2ca677550abea48945653d5abcbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.1 MB (309118638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66040e673bedfbb13b89808417b9137e957847d99881e3a198a4a36459a60e29`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 23:59:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 23:59:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:59:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:59:27 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 09 Nov 2026 23:59:27 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Mon, 09 Nov 2026 23:59:36 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='d6e8d5e5c101d9319a995405de1e800b02f718ac226dccd8c3b11dae46479ae0';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        x86_64)          ESUM='576a3b8ba79aa5a8bc7f1cb8b54aeffab8b2d1fb84a8fde4f8f3035ac65dfca1';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Mon, 09 Nov 2026 23:59:37 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 09 Nov 2026 23:59:37 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:59:37 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 09 Nov 2026 23:59:37 GMT
CMD ["jshell"]
# Tue, 10 Nov 2026 00:08:35 GMT
CMD ["gradle"]
# Tue, 10 Nov 2026 00:08:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Nov 2026 00:08:35 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 10 Nov 2026 00:08:35 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Nov 2026 00:08:35 GMT
WORKDIR /home/gradle
# Tue, 10 Nov 2026 00:08:37 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 10 Nov 2026 00:08:37 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 10 Nov 2026 00:08:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 10 Nov 2026 00:08:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 10 Nov 2026 00:08:40 GMT
USER gradle
# Tue, 10 Nov 2026 00:08:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 10 Nov 2026 00:08:41 GMT
USER root
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93ed93a99e5d55f8af8dc3a24c77d471ff9526c1241d219636ecfc2769b6eb20`  
		Last Modified: Mon, 09 Nov 2026 23:59:53 GMT  
		Size: 14.4 MB (14374223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c256599417f464ffb66ee1fb6120d07620abb51e8d2cc4f285b294000ef1bfe`  
		Last Modified: Mon, 09 Nov 2026 23:59:55 GMT  
		Size: 92.9 MB (92933924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd18cfa921ae379a99dec4f661111b42962de5e846feec79ae47be9f0ea2516`  
		Last Modified: Mon, 09 Nov 2026 23:59:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa6ffe6cf444c3d3eb425f2be5e9b207f0cd14119135c24bde3273a7b142836f`  
		Last Modified: Mon, 09 Nov 2026 23:59:52 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7303148238107ed2c2e48186a88465f2f9339b1069f3409007cfe32b5d43bbe`  
		Last Modified: Tue, 10 Nov 2026 00:08:57 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21bb66d190fc766803053b3b5042cc845d533c18b36154e3960bedf9bd88b50e`  
		Last Modified: Tue, 10 Nov 2026 00:08:59 GMT  
		Size: 46.4 MB (46393950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd8ae442f063d675a586955194186aca84aa49d8c81e4c872b94a6681c459423`  
		Last Modified: Tue, 10 Nov 2026 00:09:01 GMT  
		Size: 151.5 MB (151533602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efadef8cb1eefc7e09403f4d0d0484b44e5718107f08ae3f7cfd678d1f2494cc`  
		Last Modified: Tue, 10 Nov 2026 00:08:57 GMT  
		Size: 25.6 KB (25633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk27-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:29603d0d23280ca13b77c7e9845138e3188ec532831b204f41937837aca67276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4709501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a3a7153ae3fc36c75104e9b15e1dcf08fd10deb03e9be7daaa6b87f9e608363`

```dockerfile
```

-	Layers:
	-	`sha256:d0849dac2d78bacb2399e2b6023551d0ad0e50f7860bec934ceb6f425b4e38ff`  
		Last Modified: Tue, 10 Nov 2026 00:08:57 GMT  
		Size: 4.7 MB (4686877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7feab7406496ada7d1b153605d736ee3e2d5c56c34ffca031abd343d444af31e`  
		Last Modified: Tue, 10 Nov 2026 00:08:57 GMT  
		Size: 22.6 KB (22624 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk27-alpine` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:631037fdbee390b0e0188348c75ce43419315baa3145d8f0fd89053dd5376fbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.9 MB (307891952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dc12043d3e8481f368989828b0130fe3d26e95d447fb1d6a02e64f887051c77`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 23:58:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 23:58:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:58:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:58:37 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 09 Nov 2026 23:58:37 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Mon, 09 Nov 2026 23:58:46 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='d6e8d5e5c101d9319a995405de1e800b02f718ac226dccd8c3b11dae46479ae0';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        x86_64)          ESUM='576a3b8ba79aa5a8bc7f1cb8b54aeffab8b2d1fb84a8fde4f8f3035ac65dfca1';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Mon, 09 Nov 2026 23:58:48 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 09 Nov 2026 23:58:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:58:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 09 Nov 2026 23:58:48 GMT
CMD ["jshell"]
# Tue, 10 Nov 2026 00:08:29 GMT
CMD ["gradle"]
# Tue, 10 Nov 2026 00:08:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Nov 2026 00:08:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 10 Nov 2026 00:08:29 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Nov 2026 00:08:29 GMT
WORKDIR /home/gradle
# Tue, 10 Nov 2026 00:08:32 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 10 Nov 2026 00:08:32 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 10 Nov 2026 00:08:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 10 Nov 2026 00:08:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 10 Nov 2026 00:08:35 GMT
USER gradle
# Tue, 10 Nov 2026 00:08:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 10 Nov 2026 00:08:36 GMT
USER root
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:509db30f8a3b67081ba9649deab24a42f9804d7c2d1589a1d0e930b0a5c683ee`  
		Last Modified: Mon, 09 Nov 2026 23:59:03 GMT  
		Size: 14.4 MB (14426929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c1d377e3e0fc1ee3943a785051d5c3e51327bb02e47b4008863a69226e77d76`  
		Last Modified: Mon, 09 Nov 2026 23:59:05 GMT  
		Size: 91.8 MB (91820890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:275a03a2423586cc92dcb9089c7d1908a25d8211f50c0872e9d9541d5218860e`  
		Last Modified: Mon, 09 Nov 2026 23:59:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b27dad9cbad193e2eae1c53433c54a10ad15b9e08b2006cb2f38f6b20be95014`  
		Last Modified: Mon, 09 Nov 2026 23:59:03 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b07c1d05922fe858b332e7fb2203e35ee6970277a020f9edf87e0ec595cac16`  
		Last Modified: Tue, 10 Nov 2026 00:08:52 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c1c73f54f6cf183738b9a9e3c24665cb08f821fa3d76109476bb6f54942d2de`  
		Last Modified: Tue, 10 Nov 2026 00:08:54 GMT  
		Size: 45.9 MB (45887325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c19068acd0479aa56cc5cbee65ab657863935a0bf3b7bcc8a3876e292d4c08ce`  
		Last Modified: Tue, 10 Nov 2026 00:08:56 GMT  
		Size: 151.5 MB (151533228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:767172cf85732396d6686c416a72838bc0cf5141dfbd238cb7027bd46a5afc3a`  
		Last Modified: Tue, 10 Nov 2026 00:08:52 GMT  
		Size: 29.4 KB (29350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk27-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:3628589bf8fce30cab4bba6c7b6df382b8031d950df46fad9b22661620c38350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4859121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e06dcbd33180965cc9e433ec7ea6fd2168f4aa567fb7a581bc7daa752075835`

```dockerfile
```

-	Layers:
	-	`sha256:27a93f94a69d4ee0e09263c512e437a1cf5f0833892d51ab29e0a5eaab7b7906`  
		Last Modified: Tue, 10 Nov 2026 00:08:53 GMT  
		Size: 4.8 MB (4836348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecd92bf367673b0778b9f96d51fb46c9a163d8d6de4b6f06f7361d685e367504`  
		Last Modified: Tue, 10 Nov 2026 00:08:52 GMT  
		Size: 22.8 KB (22773 bytes)  
		MIME: application/vnd.in-toto+json
