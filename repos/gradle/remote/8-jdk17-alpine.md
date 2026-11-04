## `gradle:8-jdk17-alpine`

```console
$ docker pull gradle@sha256:3e87cd3f8eb563dd3eb3abe63528d5c701963714d871c3cdf1963723a6c6d625
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `gradle:8-jdk17-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:f19a9123e3c342b320ef7eb6fdf7d5dcac0379ef5b80451df753770404e3fa83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.4 MB (354363968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c16a6eb26900f950578849f3a5498e84b092fc13200900ee8f24db46df914c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 21:56:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 21:56:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 21:56:26 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 03 Nov 2026 21:56:26 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Tue, 03 Nov 2026 21:56:26 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 03 Nov 2026 21:56:33 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='db018054d52c1c109ad128c1412ead2d84ae91052ce60ca370df17b6a89831f5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 03 Nov 2026 21:56:34 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 21:56:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 21:56:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 03 Nov 2026 21:56:34 GMT
CMD ["jshell"]
# Tue, 03 Nov 2026 22:13:19 GMT
CMD ["gradle"]
# Tue, 03 Nov 2026 22:13:19 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 03 Nov 2026 22:13:19 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 03 Nov 2026 22:13:19 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 03 Nov 2026 22:13:19 GMT
WORKDIR /home/gradle
# Tue, 03 Nov 2026 22:13:21 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 03 Nov 2026 22:13:21 GMT
ENV GRADLE_VERSION=8.14.6
# Tue, 03 Nov 2026 22:13:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Tue, 03 Nov 2026 22:13:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 03 Nov 2026 22:13:25 GMT
USER gradle
# Tue, 03 Nov 2026 22:13:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 03 Nov 2026 22:13:25 GMT
USER root
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc0624e917b83aaf03e242bc462d24bd95decd45759241d246c0a98bdf2fc8a`  
		Last Modified: Tue, 03 Nov 2026 21:56:49 GMT  
		Size: 21.4 MB (21439965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd2f40a15e5828cbeb475e4de2a3925b6193e5d6a0177250833253f68d0d60f`  
		Last Modified: Tue, 03 Nov 2026 21:56:52 GMT  
		Size: 145.2 MB (145238108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d796ce7c94d07e26701b1bc6376d5e21299c235fc5d095c13b3c1d5caeb32d7d`  
		Last Modified: Tue, 03 Nov 2026 21:56:48 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7d45ac6b96edcf369cda70c4c45f070b21667db0b623f0ea06449134aa54f1`  
		Last Modified: Tue, 03 Nov 2026 21:56:48 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:305336c95c3dd3ffc357b03135d63041ebf6bcc3a9324a5c769096027349bb67`  
		Last Modified: Tue, 03 Nov 2026 22:13:40 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6098b935274e9b0e34aea7462998bec3a0ff6b43415a7adeee555457794b2a94`  
		Last Modified: Tue, 03 Nov 2026 22:13:42 GMT  
		Size: 44.3 MB (44346282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f8e138e88f9c9af2f5bcadc11ef0f78bebd72c6e4c8c2debe27c7274f48a1b8`  
		Last Modified: Tue, 03 Nov 2026 22:13:45 GMT  
		Size: 139.4 MB (139427967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34f563e6a1b5e6bdc4f19a7117d5817333b73c4b46988186eb7e333a3c03b772`  
		Last Modified: Tue, 03 Nov 2026 22:13:40 GMT  
		Size: 54.9 KB (54902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:0f122722669c5f171d8b5561081dd88814284a7b87c2da9e6a9f64050513f51a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4766874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6c43712936d705b6e7a739570d9c972689815b5a72ec95fc4703f4c06380f73`

```dockerfile
```

-	Layers:
	-	`sha256:dbfbdfb131abfc9ccb5c680a9c9df91fc8868ce2e6a12153b6925ae5a5c71d8e`  
		Last Modified: Tue, 03 Nov 2026 22:13:40 GMT  
		Size: 4.7 MB (4744544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87447c0a186bd2f16713ac2f61a21ef8a221ee45a8ed750696be4798255725ab`  
		Last Modified: Tue, 03 Nov 2026 22:13:40 GMT  
		Size: 22.3 KB (22330 bytes)  
		MIME: application/vnd.in-toto+json
