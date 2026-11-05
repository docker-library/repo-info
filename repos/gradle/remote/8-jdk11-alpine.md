## `gradle:8-jdk11-alpine`

```console
$ docker pull gradle@sha256:1343bbd7034950d84a6feb1c9b9a3d4017ae2fc78bf737bad12594453d08164f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `gradle:8-jdk11-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:1136d22d80ce9e1f90fa567dfe888799e95730194ee302da968b8ec1ef6f2acf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.8 MB (346758902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65beef484ee420c49d8e066d0f75564fb7ccbff2077ed62dbf256585657dad3`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:17:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:17:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:17:44 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:17:44 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:17:44 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Thu, 05 Nov 2026 19:17:52 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='1dc1d3259fa4ca7a2db43c539a60bfa7fc0ea595f445a71ef36d28120f3094aa';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_alpine-linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 05 Nov 2026 19:17:53 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:17:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:17:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 19:17:53 GMT
CMD ["jshell"]
# Thu, 05 Nov 2026 20:20:20 GMT
CMD ["gradle"]
# Thu, 05 Nov 2026 20:20:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 05 Nov 2026 20:20:20 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 05 Nov 2026 20:20:20 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 05 Nov 2026 20:20:20 GMT
WORKDIR /home/gradle
# Thu, 05 Nov 2026 20:20:22 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 05 Nov 2026 20:20:22 GMT
ENV GRADLE_VERSION=8.14.6
# Thu, 05 Nov 2026 20:20:22 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Thu, 05 Nov 2026 20:20:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 05 Nov 2026 20:20:25 GMT
USER gradle
# Thu, 05 Nov 2026 20:20:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 05 Nov 2026 20:20:26 GMT
USER root
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:907d235a3cf5bf7604f0742a28844c3d8c479fcbb75a842bcbef1eab3b3759d8`  
		Last Modified: Thu, 05 Nov 2026 19:18:08 GMT  
		Size: 17.0 MB (16969992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3426ee9676de915cc3556c069eea840a70157befbb2da8961b7ef570b4a916a`  
		Last Modified: Thu, 05 Nov 2026 19:18:11 GMT  
		Size: 141.0 MB (141032679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc31cfbe73a9343c686433b1fb4688c3737580eb2349b38d7db7d901462ec0f`  
		Last Modified: Thu, 05 Nov 2026 19:18:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:103ac98ef45292c5a0865b06335cef260c6f45b6f68be56e48f209d88e908da1`  
		Last Modified: Thu, 05 Nov 2026 19:18:07 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58cf746a5c2d523f20be6607c13d6d1a353a61148b956fa00cf9d64cdeb0b638`  
		Last Modified: Thu, 05 Nov 2026 20:20:43 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:574c7a0eb0b415e8700d01f7c950d40ab5969796f8f6730353ed1dd1d4e1c420`  
		Last Modified: Thu, 05 Nov 2026 20:20:45 GMT  
		Size: 45.4 MB (45416321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6db839d7fdb78ddb5bc8ebde0c0e2871d9b6ec14be62a18bb82cb6e0a421341`  
		Last Modified: Thu, 05 Nov 2026 20:20:47 GMT  
		Size: 139.4 MB (139427690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d00e6e9c1c11a52d5dee694857f5b943f7ee104e7b884bc3abcf93ab6d9a717`  
		Last Modified: Thu, 05 Nov 2026 20:20:43 GMT  
		Size: 54.9 KB (54916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk11-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:458dbd0b5b6eed8191344620ddf91e347a929f5600abf27fe5c0084453087430
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4676056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dfea722a098352bc538a3dc59ab4e28eb6d3b251c480ef9377fe7917a37ce04`

```dockerfile
```

-	Layers:
	-	`sha256:7e5da6fe1cff74bf1f6d6df058187ce87cd5e95d605359715852323ffbba6880`  
		Last Modified: Thu, 05 Nov 2026 20:20:43 GMT  
		Size: 4.7 MB (4653408 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d3e716e76abea889e30615d9d67e5a629259b491b3fab3a4e665123ad7788ed`  
		Last Modified: Thu, 05 Nov 2026 20:20:43 GMT  
		Size: 22.6 KB (22648 bytes)  
		MIME: application/vnd.in-toto+json
