## `gradle:9-jdk17-alpine`

```console
$ docker pull gradle@sha256:fa888b12f99e4cf34248a625567b305e9b367448ff43b18d48dd14abf57e8b89
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `gradle:9-jdk17-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:c7df8b46519684084ddd10682a30cfab184fee9e55236cf087696cd4dc4097d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.6 MB (368595706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7ebc7e088660996c9470598a35b5d38a42759fce393f517c28bdb64b0b14b8f`
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
# Fri, 02 Oct 2026 23:49:35 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 23:49:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 23:49:35 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 23:49:35 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 23:49:35 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 23:49:38 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 23:49:38 GMT
ENV GRADLE_VERSION=9.8.0
# Fri, 02 Oct 2026 23:49:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Fri, 02 Oct 2026 23:49:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 23:49:41 GMT
USER gradle
# Fri, 02 Oct 2026 23:49:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 02 Oct 2026 23:49:42 GMT
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
	-	`sha256:5f962d7e825bd3e8d795427b29512644d6e342d1cb5fa065f8276dd7d891fd31`  
		Last Modified: Fri, 02 Oct 2026 23:49:55 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12549714a9d9043eed3ccc5c3100319293a6341f52bf8d53d1ff7e15d1a40c0f`  
		Last Modified: Fri, 02 Oct 2026 23:49:57 GMT  
		Size: 44.3 MB (44293129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16593073ed980fda0d691fb28e4995318eb1c31149ec26c9354a8b541ef745d9`  
		Last Modified: Fri, 02 Oct 2026 23:49:59 GMT  
		Size: 151.5 MB (151525208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3c6e2fdf51fad31ed9bcf21b719c492ec2ec835cd14b52ee96def4166c5f0c6`  
		Last Modified: Fri, 02 Oct 2026 23:49:56 GMT  
		Size: 25.6 KB (25620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:0c24b59be724194ff944cea991d0a4fdb2ff07558289ae109adc2de4a444db84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4802215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28249f0e417c2c42daaa191d4b0d798fe0fdb70d59fffee18b3f287faf9a663a`

```dockerfile
```

-	Layers:
	-	`sha256:07511b2354dbd2478b92ecef3daa059fbf551359982ecdc05fa9d885bc34a318`  
		Last Modified: Fri, 02 Oct 2026 23:49:56 GMT  
		Size: 4.8 MB (4779573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d8767bcc8a8f069cce922bd4fd394fd4539b7c92baf2f21f3abd13639ecc888`  
		Last Modified: Fri, 02 Oct 2026 23:49:55 GMT  
		Size: 22.6 KB (22642 bytes)  
		MIME: application/vnd.in-toto+json
