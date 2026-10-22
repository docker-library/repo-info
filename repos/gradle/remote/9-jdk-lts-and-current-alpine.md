## `gradle:9-jdk-lts-and-current-alpine`

```console
$ docker pull gradle@sha256:9f288d08937d00cf5805578e22dce7cdb55a4189398d7bcdb9dface88bda5cce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk-lts-and-current-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:7b408be108b1daf8a87dc975dd8ae80eabd0c38247f1cd327a51aec0db43573c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.6 MB (400647223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:081787ed48608c48565d8ccb12d21f3a6fb743457604c231cd56154a27b677cb`
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
# Wed, 21 Oct 2026 23:30:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk27 # buildkit
# Wed, 21 Oct 2026 23:30:12 GMT
RUN set -o errexit -o nounset     && ln -s /opt/java/openjdk /opt/java/openjdk25 # buildkit
# Wed, 21 Oct 2026 23:30:12 GMT
ENV JAVA_LTS_HOME=/opt/java/openjdk25
# Wed, 21 Oct 2026 23:30:12 GMT
ENV JAVA_CURRENT_HOME=/opt/java/openjdk27
# Wed, 21 Oct 2026 23:30:12 GMT
CMD ["gradle"]
# Wed, 21 Oct 2026 23:30:12 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 21 Oct 2026 23:30:12 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle       && echo "Ensuring Gradle detects installed JDKs"    && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties    && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties    && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Wed, 21 Oct 2026 23:30:12 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 21 Oct 2026 23:30:12 GMT
WORKDIR /home/gradle
# Wed, 21 Oct 2026 23:30:14 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 21 Oct 2026 23:30:14 GMT
ENV GRADLE_VERSION=9.8.2
# Wed, 21 Oct 2026 23:30:14 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Wed, 21 Oct 2026 23:30:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 21 Oct 2026 23:30:17 GMT
USER gradle
# Wed, 21 Oct 2026 23:30:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 21 Oct 2026 23:30:18 GMT
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
	-	`sha256:9822a6247dea9659a3b14eabaa951262e3d28e7f0982bcf15815596357f552ca`  
		Last Modified: Wed, 21 Oct 2026 23:30:43 GMT  
		Size: 92.9 MB (92871069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b63dc721b2ac6eaffb39c7bdd11aee594e48845f607164553a6a2c0d0cd179a`  
		Last Modified: Wed, 21 Oct 2026 23:30:38 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2973e697bae7ff35249083d29f80b40301b97fe10cf1d27e684bea5f49b3643`  
		Last Modified: Wed, 21 Oct 2026 23:30:38 GMT  
		Size: 1.1 KB (1137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cd2f3c87787b914a7ea6dfa1be21ac4ae53f5a1378ea19b3bfb4cdd19888eec`  
		Last Modified: Wed, 21 Oct 2026 23:30:41 GMT  
		Size: 46.4 MB (46351331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:229527e4a9ce83f9182f34a47519b00ec12e87b5084dc27cbe48826b97bb34c4`  
		Last Modified: Wed, 21 Oct 2026 23:30:45 GMT  
		Size: 151.5 MB (151533371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0579f398938d14d41373beba15d6b5e99c98fc8f087b73c8c1bb5fc84c5178e`  
		Last Modified: Wed, 21 Oct 2026 23:30:40 GMT  
		Size: 25.6 KB (25604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-lts-and-current-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:8cabf0f85736916256e4ca39ae36a1cc39db03ea1e48727a24219df11af46800
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4839506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9357c05c59430721103eaabe7e9c117d3fd9fb01968ef8b56171c833c0226b28`

```dockerfile
```

-	Layers:
	-	`sha256:45456efcb45e4df7713846f1241d5855a3d4f9c2117df3f6c0eb856a8bc5bb51`  
		Last Modified: Wed, 21 Oct 2026 23:30:39 GMT  
		Size: 4.8 MB (4807103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80dc6b098fda3c1e9ab760af1206e30ac50b819da72dabf99f4103f1122741cb`  
		Last Modified: Wed, 21 Oct 2026 23:30:38 GMT  
		Size: 32.4 KB (32403 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk-lts-and-current-alpine` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:655d892f9f07c47fb1b6719fb72332d8431c63ccfa8d9fc42f54c20356bad4b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.3 MB (398327636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe740fc96f56af3c12d2764471a1c1b124c6f1bb486af336b7f879bb092df937`
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
# Tue, 20 Oct 2026 17:56:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk27 # buildkit
# Tue, 20 Oct 2026 17:56:12 GMT
RUN set -o errexit -o nounset     && ln -s /opt/java/openjdk /opt/java/openjdk25 # buildkit
# Tue, 20 Oct 2026 17:56:12 GMT
ENV JAVA_LTS_HOME=/opt/java/openjdk25
# Tue, 20 Oct 2026 17:56:12 GMT
ENV JAVA_CURRENT_HOME=/opt/java/openjdk27
# Tue, 20 Oct 2026 17:56:12 GMT
CMD ["gradle"]
# Tue, 20 Oct 2026 17:56:12 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 20 Oct 2026 17:56:12 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle       && echo "Ensuring Gradle detects installed JDKs"    && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties    && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties    && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Tue, 20 Oct 2026 17:56:12 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 20 Oct 2026 17:56:12 GMT
WORKDIR /home/gradle
# Tue, 20 Oct 2026 17:56:14 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 20 Oct 2026 17:56:14 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 20 Oct 2026 17:56:14 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:56:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:56:17 GMT
USER gradle
# Tue, 20 Oct 2026 17:56:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:56:18 GMT
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
	-	`sha256:33edec0068479c4eb7783c4af4aae9fb81baea990819e814a43f2c046567e6bf`  
		Last Modified: Tue, 20 Oct 2026 17:56:42 GMT  
		Size: 91.7 MB (91737140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd3053a35d52e8ad7b440a233f4b7aa1ff81fa58b822d08b690a3932e0e90814`  
		Last Modified: Tue, 20 Oct 2026 17:56:38 GMT  
		Size: 151.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9292fe0db912dc6774be1a2bc233ce7d5b3435977a10a53c6d4307bef8f8dcc`  
		Last Modified: Tue, 20 Oct 2026 17:56:38 GMT  
		Size: 1.1 KB (1139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd195e406b907fd8e707a749e37e76de53aac30473bf4f65f2b4e0f6511f8c57`  
		Last Modified: Tue, 20 Oct 2026 17:56:41 GMT  
		Size: 45.9 MB (45852666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aa7dfbb0f2db2da620666d7177a2b84348bb682b43f0aecbdfc23af618db906`  
		Last Modified: Tue, 20 Oct 2026 17:56:44 GMT  
		Size: 151.5 MB (151533409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf94238069306f3106f8412f6be15dd43e226650619cf4324c59740c051ee8a`  
		Last Modified: Tue, 20 Oct 2026 17:56:40 GMT  
		Size: 29.3 KB (29343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-lts-and-current-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:5960d14b2e28e7442c5346a9cf12060e7ef2747347ca6fa1459a6d68b48e1638
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4990577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87affb0091b7f280aec2a86dfbb12bdae8d1d7a87c5d6a73a24edd1d10ab5775`

```dockerfile
```

-	Layers:
	-	`sha256:fe7c0c13a7574ca32449265e3e9a18a1b54781603cd834af1edbb9e5c8764e9d`  
		Last Modified: Tue, 20 Oct 2026 17:56:38 GMT  
		Size: 5.0 MB (4957936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db3d113522b13bf572d44c10366309ca8865da67f6492066679e301748a12206`  
		Last Modified: Tue, 20 Oct 2026 17:56:39 GMT  
		Size: 32.6 KB (32641 bytes)  
		MIME: application/vnd.in-toto+json
