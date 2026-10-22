## `gradle:9-alpine`

```console
$ docker pull gradle@sha256:f656ebd3a0ba40ccba2c952c13e75f59dcbb4d40217f381f879dee79c1f8f915
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:3987c7f7690ae6ed6afac30d09b51aed13fe1348bc697bb5725a3e316239fc7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.8 MB (307775653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3f390ef27a8e026c5aeb6eff1fc186d9fd07540ca43bbf2d226aec8372f26eb`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:57:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 22:57:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:57:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 22:57:30 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 22:57:30 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Wed, 21 Oct 2026 22:57:38 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8d19373d427017d86ac87cf6a47ba49746be864832f60b52b7e3b1531c6b2cb8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='f18648ee5ce45261f50dc9493fdae7ddebaa2a7a857cafda3e2a448a79c03dee';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Wed, 21 Oct 2026 22:57:39 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 22:57:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:57:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 22:57:39 GMT
CMD ["jshell"]
# Wed, 21 Oct 2026 23:29:54 GMT
CMD ["gradle"]
# Wed, 21 Oct 2026 23:29:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 21 Oct 2026 23:29:54 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 21 Oct 2026 23:29:54 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 21 Oct 2026 23:29:55 GMT
WORKDIR /home/gradle
# Wed, 21 Oct 2026 23:29:57 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 21 Oct 2026 23:29:57 GMT
ENV GRADLE_VERSION=9.8.2
# Wed, 21 Oct 2026 23:29:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Wed, 21 Oct 2026 23:30:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 21 Oct 2026 23:30:00 GMT
USER gradle
# Wed, 21 Oct 2026 23:30:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 21 Oct 2026 23:30:00 GMT
USER root
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1001cd8970ca37d8d45405494ebb2c82a0b9720bb2afe468d79f1ac050c8e8`  
		Last Modified: Wed, 21 Oct 2026 22:57:53 GMT  
		Size: 14.4 MB (14372068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25da90bb644bb4f9557cca22620a6ae081516fee8df945f724099696e73632b7`  
		Last Modified: Wed, 21 Oct 2026 22:57:55 GMT  
		Size: 91.6 MB (91636759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48f93a261c74f38722efdedd40a3f8025dc001b45a3550f87038f2abd19f1fb1`  
		Last Modified: Wed, 21 Oct 2026 22:57:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27176d601dceac645c62cdace06af5c486f872eb70ce7c5b37f12619a4165647`  
		Last Modified: Wed, 21 Oct 2026 22:57:53 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85862df11c32f492cc56a30ac8b684d1278b06f97917e0141a4d59bbbacce232`  
		Last Modified: Wed, 21 Oct 2026 23:30:15 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c293047195ab1f5cf72bf9d7c46805e079d1a52edb0d889951849461818c0fce`  
		Last Modified: Wed, 21 Oct 2026 23:30:17 GMT  
		Size: 46.4 MB (46351262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:843477d506f36be6ab6ffd122a530eba1e0da37c08b043e9d255885486b255c5`  
		Last Modified: Wed, 21 Oct 2026 23:30:19 GMT  
		Size: 151.5 MB (151533206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f4d8096b08b3ee56480e1c8a7c35e112b608a5fcb53b5c7d7dfc24fcd4fa51`  
		Last Modified: Wed, 21 Oct 2026 23:30:15 GMT  
		Size: 25.6 KB (25614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:48fac2dd560baa8923a7f2c1f461271c755f403563b7306ae4b03d5de01db8cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4715907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:619827e500e4739c9f0fc2d981a3fa554f257c276639d51439fd643336af242f`

```dockerfile
```

-	Layers:
	-	`sha256:8f4e00028bfbd5c15bc6a220881c03bdb77839a27f5409bf430ae314c4d5281b`  
		Last Modified: Wed, 21 Oct 2026 23:30:16 GMT  
		Size: 4.7 MB (4690811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6863c6337d93f35330cbc4d618896d4112b5561c26cbb40cebdc2a8eb305e417`  
		Last Modified: Wed, 21 Oct 2026 23:30:15 GMT  
		Size: 25.1 KB (25096 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-alpine` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:ee1ec6bf762ab26c24774bd39f74708c919bc395f38f258a63e4646ceed1732f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.6 MB (306589864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f39dbf4699189ec3f431c149d1d64c7938a4f13486f46b3815553ea32c667a25`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:37:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:37:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:37:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:37:28 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:37:28 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 25 Sep 2026 22:37:35 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8d19373d427017d86ac87cf6a47ba49746be864832f60b52b7e3b1531c6b2cb8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='f18648ee5ce45261f50dc9493fdae7ddebaa2a7a857cafda3e2a448a79c03dee';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 25 Sep 2026 22:37:37 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:37:37 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:37:37 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:37:37 GMT
CMD ["jshell"]
# Tue, 20 Oct 2026 17:50:44 GMT
CMD ["gradle"]
# Tue, 20 Oct 2026 17:50:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 20 Oct 2026 17:50:44 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 20 Oct 2026 17:50:44 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 20 Oct 2026 17:50:44 GMT
WORKDIR /home/gradle
# Tue, 20 Oct 2026 17:50:47 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 20 Oct 2026 17:50:47 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 20 Oct 2026 17:50:47 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:50:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:50:51 GMT
USER gradle
# Tue, 20 Oct 2026 17:50:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:50:51 GMT
USER root
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb8f12186c0561cc0fe432858f4cf1177ced63a9206036ccbb0f9076c3e5a276`  
		Last Modified: Fri, 25 Sep 2026 22:37:52 GMT  
		Size: 14.4 MB (14425179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:911ffa641554782af272d284bcabe813029c157feb18efdf44f1a4c751b31a4d`  
		Last Modified: Fri, 25 Sep 2026 22:37:54 GMT  
		Size: 90.6 MB (90558327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d0dc7822bbace837bf3b4d996d884e6014dbf5ae2f78072a1237e693d9d89e9`  
		Last Modified: Fri, 25 Sep 2026 22:37:51 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7882f383b5c88594305173118c2556f689ee6c4ce05ec6bd7901352766117604`  
		Last Modified: Fri, 25 Sep 2026 22:37:50 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53afd0c4f425a6ee1bddea69875d97b2f85960726b68005c92109117e8e71ed8`  
		Last Modified: Tue, 20 Oct 2026 17:51:08 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c25911cc2b15eeae91ee814d24694d0f2c3ab68f0e864e34a786a601673cb798`  
		Last Modified: Tue, 20 Oct 2026 17:51:10 GMT  
		Size: 45.9 MB (45852665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8e4d6b9ff04c5150201947226123c42fca7cad8b9a0737bc0e80bf42921413b`  
		Last Modified: Tue, 20 Oct 2026 17:51:13 GMT  
		Size: 151.5 MB (151533057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68da491213e61b53216435014f97437ac4302c6fc62e3023214e768b6878dddb`  
		Last Modified: Tue, 20 Oct 2026 17:51:08 GMT  
		Size: 29.3 KB (29343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:2263a709aa1d2531cfbb1bdbda18d41cf3e0fad1c9e62f7fd3b8f22d6d2486cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4867656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6424811d3ce14a36e0b6d3f6581b9231b759f1c4c1264fb44638054520915add`

```dockerfile
```

-	Layers:
	-	`sha256:2113c0acceae1e31e6cd8a628862c5c93ada6d68f8cdd0ac22724ebd50fe7a39`  
		Last Modified: Tue, 20 Oct 2026 17:51:08 GMT  
		Size: 4.8 MB (4842315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c189e6eb604a4164cbe19c60cfaa6826131f67d89e04ea38912ea373de989aae`  
		Last Modified: Tue, 20 Oct 2026 17:51:08 GMT  
		Size: 25.3 KB (25341 bytes)  
		MIME: application/vnd.in-toto+json
