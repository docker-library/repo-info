## `gradle:jdk11-alpine`

```console
$ docker pull gradle@sha256:1aaa05347a57f55bcab610821fad48fa652bdcbb8061cccee107aa6e27af7c16
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `gradle:jdk11-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:fc4a88bdc7e33c273155ae91f39839a59bcfa38b75e15ad424fe52f5d61133b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.2 MB (349169988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e22ce5d22f76a2d4ec5789e0599dda841aeb5ab8f019e2d7bb4f96e171c1e421`
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
# Thu, 08 Oct 2026 16:43:34 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 16:43:34 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 16:43:34 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 16:43:34 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 16:43:34 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:43:36 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 08 Oct 2026 16:43:36 GMT
ENV GRADLE_VERSION=8.14.6
# Thu, 08 Oct 2026 16:43:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Thu, 08 Oct 2026 16:43:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:43:38 GMT
USER gradle
# Thu, 08 Oct 2026 16:43:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:43:39 GMT
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
	-	`sha256:faf259a4daa9ab628e84cadd292250d921393742b1735d73b4a564b8e0496f8c`  
		Last Modified: Thu, 08 Oct 2026 16:43:55 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea880c0d4cd99da502ddb69dcb55202f1d7398ea93f2f27e288be8b0bbb6fce4`  
		Last Modified: Thu, 08 Oct 2026 16:43:57 GMT  
		Size: 45.4 MB (45358419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1cb30a88c861ae3d6875025c68e203cd657788eb700000e20c7d825a0d1bc9`  
		Last Modified: Thu, 08 Oct 2026 16:43:59 GMT  
		Size: 139.4 MB (139427970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08e4ddffb128af0f224e505c17d3fea2083141ed020073e09bea1c24362accd`  
		Last Modified: Thu, 08 Oct 2026 16:43:55 GMT  
		Size: 54.9 KB (54914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:24449e9d4196f1a367b3a7fbeab152f709f114bf1e0ed033f92e338015e0238b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4675104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f55a285b880d42cb605b8570e3708c5c48ca9b06ec51eb52ad50539e9e0edb0`

```dockerfile
```

-	Layers:
	-	`sha256:453eb32aa917d1efe1175d22396ff936ce500744da86ce0e73a54c75fc5eefce`  
		Last Modified: Thu, 08 Oct 2026 16:43:55 GMT  
		Size: 4.7 MB (4652458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f8bb7e59a6e632fc68845fa64678fdef281529ccf3ec8797fbb7ce46a9202a2`  
		Last Modified: Thu, 08 Oct 2026 16:43:55 GMT  
		Size: 22.6 KB (22646 bytes)  
		MIME: application/vnd.in-toto+json
