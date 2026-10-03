## `gradle:8-jdk11-alpine`

```console
$ docker pull gradle@sha256:4dfabc26112f95d3297f647ceeac3183c32d6766820d868b382f04c228ce847b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `gradle:8-jdk11-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:e3f1bb8135c5b6cc15168ed06301c70ccf13e0c51b9de78d8ba46a4bdcdc6a4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.8 MB (347810736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bacb8334b6b49feb15ffb9b2ffde1e40a2263a5b600667830dd1a592180a83f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 23:43:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 23:43:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:43:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 23:43:03 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 02 Oct 2026 23:43:03 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 02 Oct 2026 23:43:09 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='1dc1d3259fa4ca7a2db43c539a60bfa7fc0ea595f445a71ef36d28120f3094aa';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_alpine-linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 02 Oct 2026 23:43:10 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 23:43:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:43:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 23:43:10 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 23:49:46 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 23:49:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 23:49:46 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 23:49:46 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 23:49:46 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 23:49:48 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 23:49:48 GMT
ENV GRADLE_VERSION=8.14.5
# Fri, 02 Oct 2026 23:49:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Fri, 02 Oct 2026 23:49:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 23:49:50 GMT
USER gradle
# Fri, 02 Oct 2026 23:49:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 02 Oct 2026 23:49:51 GMT
USER root
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87811e140a763da58013a05b3e9562243d2738e6e1eed87c7ffeb94157b5ee4a`  
		Last Modified: Fri, 02 Oct 2026 23:43:24 GMT  
		Size: 19.4 MB (19442734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f920e811535366201e5a74d5629229a254131fb2757c5383b58344a0727493`  
		Last Modified: Fri, 02 Oct 2026 23:43:27 GMT  
		Size: 141.0 MB (141032581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f584454c38976f38240c62cfd9eceaca1a67b86f14f7f0aae3cd6b09a562248`  
		Last Modified: Fri, 02 Oct 2026 23:43:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3324696f699a49e57ea027d76d81abf13cefef1f4c841f3d41d3a6536a75613b`  
		Last Modified: Fri, 02 Oct 2026 23:43:14 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c59e40968aad9836f5646f9a960a0976fdc066904879824031d2db3c6a49241f`  
		Last Modified: Fri, 02 Oct 2026 23:50:07 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc8afed59302029f5cdd6db329676724385a9c2fc180631530c7691ac99c1d88`  
		Last Modified: Fri, 02 Oct 2026 23:50:09 GMT  
		Size: 45.4 MB (45358858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3fc55401dec9651d44471f9e73366e11a2f6e78e51375ac00b81e1b6d4cf145`  
		Last Modified: Fri, 02 Oct 2026 23:50:12 GMT  
		Size: 138.1 MB (138068278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd8a58ed86e5161cb9e2beaddf840ff2e97ed73416b7515852aa7e5ab30f8eee`  
		Last Modified: Fri, 02 Oct 2026 23:50:07 GMT  
		Size: 54.9 KB (54912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk11-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:4016462ddbef390bbaffcf0ff9cbf7dcc6650ab06306e572999b40150b438326
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4676261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c2b63e56a5168ad4530f0cb4fd7db0f8993272d4d5c946962f89a98cea23626`

```dockerfile
```

-	Layers:
	-	`sha256:282223b66781b14f0806007fdbc34a19da6d896513a82f104ef41b82b6ca3e31`  
		Last Modified: Fri, 02 Oct 2026 23:50:08 GMT  
		Size: 4.7 MB (4653613 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c04fbe01afaedd683b140c2b604a986835e786715791523663b76bf22fdd658`  
		Last Modified: Fri, 02 Oct 2026 23:50:07 GMT  
		Size: 22.6 KB (22648 bytes)  
		MIME: application/vnd.in-toto+json
