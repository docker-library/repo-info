## `gradle:9-jdk17-alpine`

```console
$ docker pull gradle@sha256:e91f2fa163b87c6ae76bf31dd9d4cf74111ea9d51d4a79d1607be2c535c52094
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `gradle:9-jdk17-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:754a3a9127877d84eea644096003574240e5767404d297893140b3e9f8b732a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.9 MB (365880458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0c33233554643a8bfd5f8ff71fc288983fbca78b2fa7f94251fc4e462debafb`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:23:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:23:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:23:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:23:35 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:23:35 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 18:23:43 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='c8bb5bc6984762dbce2ab7403d90832b6897c07f36f8706e4a315aa7a566d04d';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:23:44 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:23:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:23:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:23:44 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 18:44:20 GMT
CMD ["gradle"]
# Fri, 21 Aug 2026 18:44:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 21 Aug 2026 18:44:20 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 21 Aug 2026 18:44:20 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 21 Aug 2026 18:44:20 GMT
WORKDIR /home/gradle
# Fri, 21 Aug 2026 18:44:22 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 21 Aug 2026 18:44:22 GMT
ENV GRADLE_VERSION=9.7.1
# Fri, 21 Aug 2026 18:44:22 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Fri, 21 Aug 2026 18:44:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 21 Aug 2026 18:44:25 GMT
USER gradle
# Fri, 21 Aug 2026 18:44:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 21 Aug 2026 18:44:25 GMT
USER root
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a26cd5aab71d3939c7e16e44f694b8c0cf73ffdb9eaf0ebc914e57d6b54aa607`  
		Last Modified: Fri, 21 Aug 2026 18:23:59 GMT  
		Size: 21.4 MB (21434109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebb3df7902765cf89902403cbc4eabf8772ce27e2ecefeb9278dc107ff548e1d`  
		Last Modified: Fri, 21 Aug 2026 18:24:02 GMT  
		Size: 145.0 MB (144970186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05721dd3d30aba44494d76ca3141ab6b746eeeb269290250164d22286ccc33d5`  
		Last Modified: Fri, 21 Aug 2026 18:23:58 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:768e6e1dbe85c2d1c5df73eb36a85054662deff12e37d784e455d8dc9c304739`  
		Last Modified: Fri, 21 Aug 2026 18:23:58 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:059fcf4f34104325a9955ec572b2431b04fe9e843f6de210879c0cd7bea23787`  
		Last Modified: Fri, 21 Aug 2026 18:44:42 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c986c59c21305525ca4707313e37e52bfffa8bff238cc4b4fc9276d496e82078`  
		Last Modified: Fri, 21 Aug 2026 18:44:44 GMT  
		Size: 44.2 MB (44245823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:299039dc1ac1653e478612c94206ecee465787431a63ca6d403d29acbd341e1d`  
		Last Modified: Fri, 21 Aug 2026 18:44:46 GMT  
		Size: 151.4 MB (151354693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1604bd302547ae37b7b97ab7125a1ea079bf899c9ee03734e4154db7af6ba08`  
		Last Modified: Fri, 21 Aug 2026 18:44:42 GMT  
		Size: 25.6 KB (25621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:f300db74a9faeeb66c05967a1731b658f0f801d1b83aa864aafcef1313e94854
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4803952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c4e53d6166a22aac5b078e70c3601976516812ed517bdaf436ca574eaad15da`

```dockerfile
```

-	Layers:
	-	`sha256:880eb34c36e1182d50be7fdeaa5a7dc39a4c84fcb3fb61a900684c3e022a91e6`  
		Last Modified: Fri, 21 Aug 2026 18:44:42 GMT  
		Size: 4.8 MB (4781318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aab31be5297d781c197ef6662733af34760634a93410b90254b24ae24681dc10`  
		Last Modified: Fri, 21 Aug 2026 18:44:42 GMT  
		Size: 22.6 KB (22634 bytes)  
		MIME: application/vnd.in-toto+json
