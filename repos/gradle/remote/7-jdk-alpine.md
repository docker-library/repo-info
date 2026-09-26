## `gradle:7-jdk-alpine`

```console
$ docker pull gradle@sha256:7b78f441fa1fe5d938d61d476fe58515224680fd3144438b5247fc60c7f63479
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `gradle:7-jdk-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:1398c6aeabfd0311f0d463fba0425e15c95a6804f1c723de2fedfd8c066fa764
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.6 MB (342618418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a38d7d00e2a54b02b63a98febe59010d60b970ba9fac46bd0c03e96aababd8ff`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:36:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:36:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:36:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:36:22 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:36:22 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 22:36:29 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='0c4fcdefa2737ccd66e049245fdb9dc431f91796182141204cd5f8192cb288e6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:36:30 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:30 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:30 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:36:30 GMT
CMD ["jshell"]
# Fri, 25 Sep 2026 23:00:03 GMT
CMD ["gradle"]
# Fri, 25 Sep 2026 23:00:03 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 25 Sep 2026 23:00:03 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 25 Sep 2026 23:00:03 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 25 Sep 2026 23:00:03 GMT
WORKDIR /home/gradle
# Fri, 25 Sep 2026 23:00:05 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       curl       make             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 25 Sep 2026 23:00:05 GMT
ENV GRADLE_VERSION=7.6.6
# Fri, 25 Sep 2026 23:00:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Fri, 25 Sep 2026 23:00:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 25 Sep 2026 23:00:07 GMT
USER gradle
# Fri, 25 Sep 2026 23:00:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Fri, 25 Sep 2026 23:00:08 GMT
USER root
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d03e63f99bb217b1f7ee413f177f42ba8fe72c8aff59fe998b0112c9e23649a2`  
		Last Modified: Fri, 25 Sep 2026 22:36:44 GMT  
		Size: 21.4 MB (21442498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271b0c979ba5426534d499a4752db1936fee768304d2ed1a152b5e9b1da7d607`  
		Last Modified: Fri, 25 Sep 2026 22:36:47 GMT  
		Size: 145.0 MB (144973019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aaaca2d8bd94e9347308b5e6a8928f795d6a3c376d73e73210662d948346504`  
		Last Modified: Fri, 25 Sep 2026 22:36:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb0ff8d01777a4fc494bddb9df1f3d50d8ea89fbdd2f4d95b7c4e25672e9617`  
		Last Modified: Fri, 25 Sep 2026 22:36:43 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52ddfbc3f99a4d948f1215f9e1871924968c08deb747c45dd7609e2f9745f737`  
		Last Modified: Fri, 25 Sep 2026 23:00:24 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db44fdcd77e0e48f11ef0acb3f575946c47e1dd8f908f614ca67b99bdfda9bc`  
		Last Modified: Fri, 25 Sep 2026 23:00:26 GMT  
		Size: 43.8 MB (43824808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3234223e5ba6c5c77bb3639256f473eca8ab406536c26241151aba14338761e`  
		Last Modified: Fri, 25 Sep 2026 23:00:27 GMT  
		Size: 128.5 MB (128469807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6166e9345e504b7e7b225d99a26814c4a408da1ad19e95dbf6e3c8b15cdd256b`  
		Last Modified: Fri, 25 Sep 2026 23:00:24 GMT  
		Size: 54.9 KB (54917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:403d6a428aad3bd5cb6dd62f4aabb4ae17ecfbe43acbd1f1f68bc7a59c5d6c9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4679759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d24634b89889398b81eaa668b64d315e9d0986e07cc9b6a00e83897974845961`

```dockerfile
```

-	Layers:
	-	`sha256:41fd287f12a2a509ee1fef3599e76493d78edfe3362e0a11099a2ebedf1f2356`  
		Last Modified: Fri, 25 Sep 2026 23:00:24 GMT  
		Size: 4.7 MB (4655751 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0aa32f0a32c5e7bae1235e11e8d641a1a2730276b2bb2ad6d4e09446edc6dc7`  
		Last Modified: Fri, 25 Sep 2026 23:00:24 GMT  
		Size: 24.0 KB (24008 bytes)  
		MIME: application/vnd.in-toto+json
