## `gradle:jdk17-alpine`

```console
$ docker pull gradle@sha256:15035067399c6c135abf2ed10557e78ef49fb4b40bc38fe50327c62f57d396f4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `gradle:jdk17-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:d577cacf99a606745073f78fbfad61ceb68c085fed320e11576bb06eb8a7b3e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.6 MB (368603246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7e6ba923b4bf3a609cd45d89d3389dce68127be4035e0b6deb424aca3143252`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 23:43:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 23:43:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:43:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 23:43:51 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 02 Oct 2026 23:43:51 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 23:43:59 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='0c4fcdefa2737ccd66e049245fdb9dc431f91796182141204cd5f8192cb288e6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 02 Oct 2026 23:44:00 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 23:44:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:44:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 23:44:00 GMT
CMD ["jshell"]
# Thu, 08 Oct 2026 16:40:18 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 16:40:18 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 16:40:18 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 16:40:18 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 16:40:18 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:40:20 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 08 Oct 2026 16:40:20 GMT
ENV GRADLE_VERSION=9.8.1
# Thu, 08 Oct 2026 16:40:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 16:40:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:40:22 GMT
USER gradle
# Thu, 08 Oct 2026 16:40:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:40:23 GMT
USER root
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf3addb07ea2673476966711c8ef4b77d72ec033b201203d2296f7479b71e1bb`  
		Last Modified: Fri, 02 Oct 2026 23:44:15 GMT  
		Size: 23.9 MB (23925430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:682f3b60ab22c9777dfa673d6f969f33f458428809266d3c71779f08c25cd6ca`  
		Last Modified: Fri, 02 Oct 2026 23:44:17 GMT  
		Size: 145.0 MB (144972944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5455f1896dd2168d3a09b3aa558024a225f481a459d9231424c4bffe00630541`  
		Last Modified: Fri, 02 Oct 2026 23:44:13 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa054eff30d365a2b0c77ed241ed88774500e193b1ce24c5e4ee682c3841c4a3`  
		Last Modified: Fri, 02 Oct 2026 23:44:13 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f9db81ac4baffd9251c3b8819fc5ace64fc871ea6b9acd97a83f6143988b97d`  
		Last Modified: Thu, 08 Oct 2026 16:40:39 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f219988d2f662b8b5a3732a5b1c5ff30e240b23716f0e0f49e4d683a193b237d`  
		Last Modified: Thu, 08 Oct 2026 16:40:42 GMT  
		Size: 44.3 MB (44292634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6f79d3632c6028af1835a45570016f8f210da0731acf2d52ff9f381d27af3be`  
		Last Modified: Thu, 08 Oct 2026 16:40:44 GMT  
		Size: 151.5 MB (151533251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce2da44bff04fe42e652d7817e19a4e66503340e93dba87ec90cbc3a8b8c2e3c`  
		Last Modified: Thu, 08 Oct 2026 16:40:39 GMT  
		Size: 25.6 KB (25615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:4800db7b4f357fe352f55e176f24b775064e45e9cdab6d6d099294d9a910c0e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4802215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:688443810739d6085c0639550b9773e7ca626a3fde3544ee17c75c315a72d01f`

```dockerfile
```

-	Layers:
	-	`sha256:07a7efc0f4db9ee502b3505725fe8d734d481a1316b331b17a0be1d91384a4b0`  
		Last Modified: Thu, 08 Oct 2026 16:40:40 GMT  
		Size: 4.8 MB (4779573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba1ec9c20ca3882c03e3eadb44162d95c2f444e9b362835fe64b624c0f660f88`  
		Last Modified: Thu, 08 Oct 2026 16:40:39 GMT  
		Size: 22.6 KB (22642 bytes)  
		MIME: application/vnd.in-toto+json
