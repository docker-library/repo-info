## `gradle:jdk17-alpine`

```console
$ docker pull gradle@sha256:4105d145dd9e065254975713e491d3b26e4aa234a1d6f8d927a291e0dedfc37a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `gradle:jdk17-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:2cf17338e7aa05ba487bdcab03582d5741219dd0d028f495af6aae9cf3faeaae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.1 MB (366079834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06382e726665fd44c9ffb8325a7df389ece50c9c2339d3eadbf5965f6ed06675`
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
# Thu, 24 Sep 2026 19:34:35 GMT
CMD ["gradle"]
# Thu, 24 Sep 2026 19:34:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 24 Sep 2026 19:34:35 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 24 Sep 2026 19:34:35 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 24 Sep 2026 19:34:35 GMT
WORKDIR /home/gradle
# Thu, 24 Sep 2026 19:34:37 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 24 Sep 2026 19:34:37 GMT
ENV GRADLE_VERSION=9.8.0
# Thu, 24 Sep 2026 19:34:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Thu, 24 Sep 2026 19:34:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 24 Sep 2026 19:34:40 GMT
USER gradle
# Thu, 24 Sep 2026 19:34:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 24 Sep 2026 19:34:40 GMT
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
	-	`sha256:145b158f06d05a064181e17f52e8620a97b5f8793659c3a1fa2441520f531dba`  
		Last Modified: Thu, 24 Sep 2026 19:34:56 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d1fd4f9a14d43e0c6fdd4da9da66d0f5f607276640c2347974bbd71102feaf1`  
		Last Modified: Thu, 24 Sep 2026 19:34:58 GMT  
		Size: 44.3 MB (44263243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9257cac3f69a16c85526c03494aa9b5a14f5460a0fc8ef1d0aac367b8c45d4`  
		Last Modified: Thu, 24 Sep 2026 19:35:00 GMT  
		Size: 151.5 MB (151525093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2022915924999b577d0f4e6bdfc70c4f76640d592caa560028e818b482735f3`  
		Last Modified: Thu, 24 Sep 2026 19:34:56 GMT  
		Size: 25.6 KB (25615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:2e110cfe3569e4ec699b97dba8f3ebb6209806c942e255b5364df4dbe49a905a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4802199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad5a18dee81c7d00d6090257ff6262fea95d505d48eb498a5364e0cf9401a43d`

```dockerfile
```

-	Layers:
	-	`sha256:ed14ff2145cf53e3acf24bde1e08b631e4218c2d7f38efe23ead9ac614328921`  
		Last Modified: Thu, 24 Sep 2026 19:34:56 GMT  
		Size: 4.8 MB (4779565 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7c92869a1c7a6c369b493a1694f265bb797933f8333751a35a242826272d71b`  
		Last Modified: Thu, 24 Sep 2026 19:34:56 GMT  
		Size: 22.6 KB (22634 bytes)  
		MIME: application/vnd.in-toto+json
