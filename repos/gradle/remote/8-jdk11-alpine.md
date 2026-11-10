## `gradle:8-jdk11-alpine`

```console
$ docker pull gradle@sha256:98de56d99f1d951637baae7c7b29274e060b140c8e298f5e1351776ecec94dbf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `gradle:8-jdk11-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:7c042c744c8ba8f12614e6dd7951768b06191e8ce565e2cb8a3079e909746430
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.8 MB (346838944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37b73fd3e5edd53c004af43c4d39d2390487b0a3c80b9cd115f87de91a0a7c53`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 23:34:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 23:34:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:34:26 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:34:26 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 09 Nov 2026 23:34:26 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Mon, 09 Nov 2026 23:34:34 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='d9deaccb8137409f91acdcfaa24e7c4b247163b425b29c33fe536c78f75dc237';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_alpine-linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 09 Nov 2026 23:34:35 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 09 Nov 2026 23:34:35 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:34:35 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 09 Nov 2026 23:34:35 GMT
CMD ["jshell"]
# Mon, 09 Nov 2026 23:48:13 GMT
CMD ["gradle"]
# Mon, 09 Nov 2026 23:48:13 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 09 Nov 2026 23:48:13 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 09 Nov 2026 23:48:13 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 09 Nov 2026 23:48:13 GMT
WORKDIR /home/gradle
# Mon, 09 Nov 2026 23:48:16 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 09 Nov 2026 23:48:16 GMT
ENV GRADLE_VERSION=8.14.6
# Mon, 09 Nov 2026 23:48:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Mon, 09 Nov 2026 23:48:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 09 Nov 2026 23:48:19 GMT
USER gradle
# Mon, 09 Nov 2026 23:48:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 09 Nov 2026 23:48:19 GMT
USER root
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:988e86b75ce5893497df5e950dd7803906a8554637ae638454fb31abc69d40d0`  
		Last Modified: Mon, 09 Nov 2026 23:34:50 GMT  
		Size: 17.0 MB (16970007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0ce866993379e44ba3dc737d023b890c56256deec4066c2bd0fd620e052c8e9`  
		Last Modified: Mon, 09 Nov 2026 23:34:53 GMT  
		Size: 141.1 MB (141112637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aed64a33717401621ed9d51fa5e5025d31e675e4b8d1ccb774c074ed308948e`  
		Last Modified: Mon, 09 Nov 2026 23:34:49 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a461774148294f924e776f23814c5347f5131bb9a6e0bdfb09889ba061bb3fe`  
		Last Modified: Mon, 09 Nov 2026 23:34:50 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baca1aeb482d6d20c598947aacff58712e22115ce7ed7984482c81cc38870e6a`  
		Last Modified: Mon, 09 Nov 2026 23:48:36 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:961ed0c698c505bc01cdd2151fd4f43cb6edda1c29e6c8f397c7b4918f122a01`  
		Last Modified: Mon, 09 Nov 2026 23:48:38 GMT  
		Size: 45.4 MB (45416114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9241d029f4797fb93c6787f2fac6d97d3ce424f07200f1c5fae7c694a9ecbc`  
		Last Modified: Mon, 09 Nov 2026 23:48:39 GMT  
		Size: 139.4 MB (139427968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5e7bcf86bc446e6d7e6474258fd1d4cd5bd3d15c001a58318dbbab4ffdf15d2`  
		Last Modified: Mon, 09 Nov 2026 23:48:36 GMT  
		Size: 54.9 KB (54911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk11-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:d3e5dc3bc7b722ebc8505671b5eae65c622217adfa3af5a28740a118538883eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4676046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c1996240a8b8309a3e79c83e3fa233729d124a8400f1a7f0e5540db7abbc2b1`

```dockerfile
```

-	Layers:
	-	`sha256:447be8923e6e081623a5dc5ec1ca434ea389a79aa069dc5fca08ade4858f7e63`  
		Last Modified: Mon, 09 Nov 2026 23:48:36 GMT  
		Size: 4.7 MB (4653402 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d03e58e320e2f2a50555bfad702bddd5d19b38fc65e6a1eb838585e9f9c5c86`  
		Last Modified: Mon, 09 Nov 2026 23:48:36 GMT  
		Size: 22.6 KB (22644 bytes)  
		MIME: application/vnd.in-toto+json
