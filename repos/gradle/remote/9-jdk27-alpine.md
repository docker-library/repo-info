## `gradle:9-jdk27-alpine`

```console
$ docker pull gradle@sha256:bb1fe49b88ed1d4c6da6de3a8b95388414f610b820f2ce520d78e8fe47c9c02a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk27-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:2533f8b604e1de7aa39fba04eeed7af4d6329ba2d9c3e5962efb63ea3bdb0bdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.1 MB (309090371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31f338c678744d595d4cf0fea201bf5467b3cf6c2aac4980ec9c718e6ae832c7`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:19:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:19:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:19:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:19:12 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:19:12 GMT
ENV JAVA_VERSION=jdk-27+35
# Thu, 05 Nov 2026 19:19:21 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='440353d641e7726396dff5d9a9d0d17c05a070dc25664c20f9d7efafc2f16cf7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='45aef7cd5ae667c6f5dd100c96a99e5a00e61c512664bb13326cf149b7d37e0f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 05 Nov 2026 19:19:23 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:19:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:19:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 19:19:23 GMT
CMD ["jshell"]
# Thu, 05 Nov 2026 20:19:12 GMT
CMD ["gradle"]
# Thu, 05 Nov 2026 20:19:12 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 05 Nov 2026 20:19:12 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 05 Nov 2026 20:19:12 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 05 Nov 2026 20:19:12 GMT
WORKDIR /home/gradle
# Thu, 05 Nov 2026 20:19:14 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 05 Nov 2026 20:19:14 GMT
ENV GRADLE_VERSION=9.8.2
# Thu, 05 Nov 2026 20:19:14 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Thu, 05 Nov 2026 20:19:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 05 Nov 2026 20:19:17 GMT
USER gradle
# Thu, 05 Nov 2026 20:19:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 05 Nov 2026 20:19:17 GMT
USER root
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3082458f008ca28bd68707854b95556dbed015e482a78fa8ac778eebc06f341e`  
		Last Modified: Thu, 05 Nov 2026 19:19:38 GMT  
		Size: 14.4 MB (14374227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8943366f03fcc5d06d787e5f8aaa6a676c381bb5ca2732bc4ff1bffa5669cd0`  
		Last Modified: Thu, 05 Nov 2026 19:19:39 GMT  
		Size: 92.9 MB (92906066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfcefcdbcd2edef56703e2b712bef5d25cb42f9d4dc1fe60e17c1eb00501785b`  
		Last Modified: Thu, 05 Nov 2026 19:19:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7263295670e0bec5ec834b545dfe10a1bb361bcbdbd5325f4a2bb356f475c640`  
		Last Modified: Thu, 05 Nov 2026 19:19:29 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:befee7f8ef333d954d5350dd30c94500cbe462f470c4203b8b81721057f70143`  
		Last Modified: Thu, 05 Nov 2026 20:19:33 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661b6005557e852dede6dd3687791db36feda6d0e5da9925677ce7a0578d4c92`  
		Last Modified: Thu, 05 Nov 2026 20:19:35 GMT  
		Size: 46.4 MB (46393909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72f3dc7194ded0247c2d648b0b4914c23d5b079249e98b3e09236bb8ac2dde9d`  
		Last Modified: Thu, 05 Nov 2026 20:19:38 GMT  
		Size: 151.5 MB (151533250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5f5e05be06e34f031e4330a2648f2af5a653d2f4386ba80ca1a23190d2cb841`  
		Last Modified: Thu, 05 Nov 2026 20:19:33 GMT  
		Size: 25.6 KB (25615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk27-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:ce39fe09e113758661c11e30ed600922122e76dc206227cb25473bc0dbd2629c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4710073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f8bb5004a5332e9f644adfdf0d37bc181e8589284bc9a21dee4dedb317db24`

```dockerfile
```

-	Layers:
	-	`sha256:822f15aac7e40dae5299b4b2eff9134b7bc092d7e0a3c675f6a0c9b63dc05b00`  
		Last Modified: Thu, 05 Nov 2026 20:19:33 GMT  
		Size: 4.7 MB (4687462 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a500094c609abf6d5f01173c4403317ba1564dbd585d8e36395b1431fd41c43`  
		Last Modified: Thu, 05 Nov 2026 20:19:33 GMT  
		Size: 22.6 KB (22611 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk27-alpine` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:77d0486c96b7e8210bc413f3da182a4c55dae17473281dd153f8d39c501f542b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.8 MB (307827196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0d5faeb427da3da72d73b2ec64d75ce90c24f645921f49464d21d7643b266fa`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 23:20:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:20:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 23:20:24 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 23:20:24 GMT
ENV JAVA_VERSION=jdk-27+35
# Wed, 21 Oct 2026 23:20:34 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='440353d641e7726396dff5d9a9d0d17c05a070dc25664c20f9d7efafc2f16cf7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='45aef7cd5ae667c6f5dd100c96a99e5a00e61c512664bb13326cf149b7d37e0f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Wed, 21 Oct 2026 23:20:36 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 23:20:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 23:20:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:36 GMT
CMD ["jshell"]
# Thu, 22 Oct 2026 00:21:35 GMT
CMD ["gradle"]
# Thu, 22 Oct 2026 00:21:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 22 Oct 2026 00:21:35 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 22 Oct 2026 00:21:35 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 22 Oct 2026 00:21:35 GMT
WORKDIR /home/gradle
# Thu, 22 Oct 2026 00:21:37 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 22 Oct 2026 00:21:37 GMT
ENV GRADLE_VERSION=9.8.2
# Thu, 22 Oct 2026 00:21:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Thu, 22 Oct 2026 00:21:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 22 Oct 2026 00:21:41 GMT
USER gradle
# Thu, 22 Oct 2026 00:21:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 22 Oct 2026 00:21:41 GMT
USER root
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:875cf4f2569cd9113cda9691a62238a5e032242f0626f8f2f665d0554e629a4a`  
		Last Modified: Wed, 21 Oct 2026 23:20:51 GMT  
		Size: 14.4 MB (14426583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4084ebb14a32dd6d83e4a097559b82a3bdb8164175e1914986d04f4a965635c`  
		Last Modified: Wed, 21 Oct 2026 23:20:53 GMT  
		Size: 91.8 MB (91790925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a4e834e9ec8b7b6546cba25985b5be4dbf99e601322920cda5b1e2fcd9d70dc`  
		Last Modified: Wed, 21 Oct 2026 23:20:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7951dbb32453398c235abe8cb73740408f41c7f98896fc50b7a186a574a7eb9`  
		Last Modified: Wed, 21 Oct 2026 23:20:43 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fcb48ed3718b785b05c621cfc38cf4e9b2dddafad23a009e2900226ee32d1b`  
		Last Modified: Thu, 22 Oct 2026 00:21:58 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a49633b86eb270205d4bec0d2e95d2c17f58aafc194294b5572a2e94f2a14db`  
		Last Modified: Thu, 22 Oct 2026 00:22:00 GMT  
		Size: 45.9 MB (45853082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79d963aab28715b79e0f81f32e7fecb69c303238294ee896bcb5a2e015bab525`  
		Last Modified: Thu, 22 Oct 2026 00:22:02 GMT  
		Size: 151.5 MB (151533140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b49b1fad11f33d182f2a0c10de337ee64a372d009a5acf5d4e85958ef25dfdd1`  
		Last Modified: Thu, 22 Oct 2026 00:21:58 GMT  
		Size: 29.3 KB (29344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk27-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:62723ff6daf33587ba8eab15214ba9197747268a63c31abd2662f21854e9b989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4856807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feb96344156cbdac446026bb3568fc30ded9647b28887ae71922af8f97880a09`

```dockerfile
```

-	Layers:
	-	`sha256:cddfae9930893672848afc69a5baa2a843c3f7d410c5acab6e2cc04cc532fbbc`  
		Last Modified: Thu, 22 Oct 2026 00:21:58 GMT  
		Size: 4.8 MB (4834046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52a0e846f25519e694f13cb95975e022cf3f007eab72adb0b6fe1776fe22aad8`  
		Last Modified: Thu, 22 Oct 2026 00:21:58 GMT  
		Size: 22.8 KB (22761 bytes)  
		MIME: application/vnd.in-toto+json
