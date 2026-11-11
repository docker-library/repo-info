## `gradle:8-jdk17-alpine`

```console
$ docker pull gradle@sha256:cbad9fe860c63d6157b95647178389a686cb3c8f8312bebdfee6eada81557fef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `gradle:8-jdk17-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:e5e5597995877f5d2cc095060b4277279c7fd51c34df4dced71d401c108ff665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.4 MB (354374592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3effb6696d29029322b614bb596e535257a9304fe4ff1431ec40bbc0e5518e4c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:18:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:18:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:18:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:18:17 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:18:17 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Thu, 05 Nov 2026 19:18:23 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='db018054d52c1c109ad128c1412ead2d84ae91052ce60ca370df17b6a89831f5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 05 Nov 2026 19:18:24 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:18:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:18:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 19:18:24 GMT
CMD ["jshell"]
# Wed, 11 Nov 2026 20:14:53 GMT
CMD ["gradle"]
# Wed, 11 Nov 2026 20:14:53 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 11 Nov 2026 20:14:53 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 11 Nov 2026 20:14:53 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 11 Nov 2026 20:14:53 GMT
WORKDIR /home/gradle
# Wed, 11 Nov 2026 20:14:55 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 11 Nov 2026 20:14:55 GMT
ENV GRADLE_VERSION=8.14.7
# Wed, 11 Nov 2026 20:14:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Wed, 11 Nov 2026 20:14:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 11 Nov 2026 20:14:58 GMT
USER gradle
# Wed, 11 Nov 2026 20:14:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 11 Nov 2026 20:14:59 GMT
USER root
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6f74b4293c839a352056f1f29cfabc0c67bcf5688a81c59c1d76529a5d867b0`  
		Last Modified: Thu, 05 Nov 2026 19:18:40 GMT  
		Size: 21.4 MB (21439921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c5df918e206c65c3377faa14d0aec834b4f0fff170a650766b870817d85ad8a`  
		Last Modified: Thu, 05 Nov 2026 19:18:42 GMT  
		Size: 145.2 MB (145238291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b50b73f6f014552669738e82a69884918837048f08d9d2e28523e4d9b20d0d8e`  
		Last Modified: Thu, 05 Nov 2026 19:18:39 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2657b2ba1ff929a0ef1335ab6ddbd6d54a1733df49bd565dc6003ded46fa9626`  
		Last Modified: Thu, 05 Nov 2026 19:18:39 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9848f6bb6d4aee630e12facb1d74d090dde8c7a8c6534499ff9e2259229d6397`  
		Last Modified: Wed, 11 Nov 2026 20:15:15 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d4013ce558dc9fb7450d3b725bd398997e64ea09af73a945bd3af4de194963`  
		Last Modified: Wed, 11 Nov 2026 20:15:17 GMT  
		Size: 44.4 MB (44352050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eb61982a2391c4ddca4d8342999985fc24b98e76dee488274a86f6543244eee`  
		Last Modified: Wed, 11 Nov 2026 20:15:19 GMT  
		Size: 139.4 MB (139432111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc1f549a047f1453b526251be35a9319818d67badd730b2d08719c54c816ccd`  
		Last Modified: Wed, 11 Nov 2026 20:15:15 GMT  
		Size: 54.9 KB (54915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:07a597772989236023e40929808a1066337729aec7a4b4fae0f26e8d623d65f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4769749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51779bd6398e96972cb17fbc46442b9f1cb48fa56389effa99c4a317454bd7d0`

```dockerfile
```

-	Layers:
	-	`sha256:bfb590442b090edb390fd9c8ee76afa14432971b02a585c833d5ce4c52896d22`  
		Last Modified: Wed, 11 Nov 2026 20:15:15 GMT  
		Size: 4.7 MB (4747419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39e8bd65e467d57c8a60c6b44bc49e9f74dcc9d6f4b261577a1510c570d98ed3`  
		Last Modified: Wed, 11 Nov 2026 20:15:15 GMT  
		Size: 22.3 KB (22330 bytes)  
		MIME: application/vnd.in-toto+json
