## `gradle:8-jdk17-alpine`

```console
$ docker pull gradle@sha256:4a7e504bda496aaba53ed5dd186fd2e04340ef96b824a7f08a2c57e37e99997b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `gradle:8-jdk17-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:3d266b2e0d9fe2532ceed677ffadd9b9358479e70c7cd77f19f097b4131a4d70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.7 MB (352652865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bc024a31756911168b5ce3b5e4c33137ca9a923a85f7c655c4decbd85c8556b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:40:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:40:27 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:40:27 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Thu, 17 Sep 2026 21:40:34 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='c8bb5bc6984762dbce2ab7403d90832b6897c07f36f8706e4a315aa7a566d04d';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 17 Sep 2026 21:40:35 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:40:35 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:40:35 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 21:40:35 GMT
CMD ["jshell"]
# Thu, 17 Sep 2026 22:24:59 GMT
CMD ["gradle"]
# Thu, 17 Sep 2026 22:24:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 17 Sep 2026 22:24:59 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 17 Sep 2026 22:24:59 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 17 Sep 2026 22:24:59 GMT
WORKDIR /home/gradle
# Thu, 17 Sep 2026 22:25:01 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 17 Sep 2026 22:25:01 GMT
ENV GRADLE_VERSION=8.14.5
# Thu, 17 Sep 2026 22:25:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Thu, 17 Sep 2026 22:25:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 17 Sep 2026 22:25:03 GMT
USER gradle
# Thu, 17 Sep 2026 22:25:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 17 Sep 2026 22:25:04 GMT
USER root
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b221bdff3959550733c09391deba276c1949581457321a0c03abdab1aab44684`  
		Last Modified: Thu, 17 Sep 2026 21:40:49 GMT  
		Size: 21.4 MB (21442254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ab0fdfe5cdff285dedcb72803643843fd24a0d41bdc8afd11bf068e447ec8a4`  
		Last Modified: Thu, 17 Sep 2026 21:40:51 GMT  
		Size: 145.0 MB (144970258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73114733c073d5727e8d774fa46a7c8fe5ca58c8f23a7db8e37d7eaf3aa662af`  
		Last Modified: Thu, 17 Sep 2026 21:40:48 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb2cce468c4aa84608cdce6ed855bfc86346e8a08327fa31aae462f22042232`  
		Last Modified: Thu, 17 Sep 2026 21:40:48 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9078f027756137182fa8e71e0a07ea14f24eaa987d9677ade5415c9482815957`  
		Last Modified: Thu, 17 Sep 2026 22:25:18 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54502ade4aff64ecb6af124a8bcd8e0fdf460a6a47832d205947a99e37607259`  
		Last Modified: Thu, 17 Sep 2026 22:25:20 GMT  
		Size: 44.3 MB (44263616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41c14311d043f91b17d3b535de434387a0178ded014b946e87306898224b3d58`  
		Last Modified: Thu, 17 Sep 2026 22:25:22 GMT  
		Size: 138.1 MB (138068466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfc8f80443f22fc9cd6d605f7f5a3590cce70cae42acf946b3841e52b79bf82f`  
		Last Modified: Thu, 17 Sep 2026 22:25:18 GMT  
		Size: 54.9 KB (54900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:cdde67d9a8a7ce3e618885809235539ccc541e15eb08e56365b5273c2b4761ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4769954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:691eda043266d1e779bbec3cef53658a554a6c9f90ff61b5efae3c9a5888bf79`

```dockerfile
```

-	Layers:
	-	`sha256:c13e7325297c41d7d9081d67bd381aac9503958d8ad010819b4d30ab2332e6e6`  
		Last Modified: Thu, 17 Sep 2026 22:25:18 GMT  
		Size: 4.7 MB (4747624 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d29d6cd1a08863f0b3b5bab01fa8686fb96328c4419554945d573a6f78119d33`  
		Last Modified: Thu, 17 Sep 2026 22:25:18 GMT  
		Size: 22.3 KB (22330 bytes)  
		MIME: application/vnd.in-toto+json
