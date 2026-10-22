## `gradle:7-alpine`

```console
$ docker pull gradle@sha256:67a80fc262c533267c984501abf4f59297c8e35bdf550f8d3de89ffc6587cd8f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:7-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:87b8b6e5ea81f20323e6a148d3697fb16f6014485f79d392974da43629f0cbaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.7 MB (342661719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0bdbe7c0de2ee148f3dc1c8085b4969ce7b9f8f476a9f180837d9ece062bfbf`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:57:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 22:57:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:57:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 22:57:16 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 22:57:16 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Wed, 21 Oct 2026 22:57:24 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='0c4fcdefa2737ccd66e049245fdb9dc431f91796182141204cd5f8192cb288e6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 21 Oct 2026 22:57:25 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 22:57:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:57:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 22:57:25 GMT
CMD ["jshell"]
# Wed, 21 Oct 2026 23:30:39 GMT
CMD ["gradle"]
# Wed, 21 Oct 2026 23:30:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 21 Oct 2026 23:30:39 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 21 Oct 2026 23:30:39 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 21 Oct 2026 23:30:39 GMT
WORKDIR /home/gradle
# Wed, 21 Oct 2026 23:30:41 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       curl       make             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 21 Oct 2026 23:30:41 GMT
ENV GRADLE_VERSION=7.6.6
# Wed, 21 Oct 2026 23:30:41 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Wed, 21 Oct 2026 23:30:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 21 Oct 2026 23:30:44 GMT
USER gradle
# Wed, 21 Oct 2026 23:30:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 21 Oct 2026 23:30:44 GMT
USER root
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffc6765343fdcee431b76cb64c471441210a1abba659628a35c76b8d2a7a5ec1`  
		Last Modified: Wed, 21 Oct 2026 22:57:40 GMT  
		Size: 21.4 MB (21438689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53fbe728b86101a9c0aab8ec96ffc1991c96e93a4a720f8eaf4e97b4953381fb`  
		Last Modified: Wed, 21 Oct 2026 22:57:43 GMT  
		Size: 145.0 MB (144972891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef741fd2dc923f60a005dfa96317864253907647f0900abdd4d6ccecd2251adb`  
		Last Modified: Wed, 21 Oct 2026 22:57:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deabbe2bf1fcd89f013f5be9c030b95c50f28856c6e217621f6c0d6539e49943`  
		Last Modified: Wed, 21 Oct 2026 22:57:39 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a3db52f2a2e300993ead1cca7b675aed29f958fa2d7e389a43ae1e6b5de4ef2`  
		Last Modified: Wed, 21 Oct 2026 23:30:59 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3333f741a782abe3af0b772cf8895a1c0ed178972c1547c8f1be850409cd6c8`  
		Last Modified: Wed, 21 Oct 2026 23:31:02 GMT  
		Size: 43.9 MB (43868864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68e2ef4873cac462aa389996b0b4641e652b280f92085dd35251f6617fc94722`  
		Last Modified: Wed, 21 Oct 2026 23:31:04 GMT  
		Size: 128.5 MB (128469630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9d66e5eb33049a774413a8a6d9f2bea7a9278aa8123d2a2055b1a08d54a02a6`  
		Last Modified: Wed, 21 Oct 2026 23:31:01 GMT  
		Size: 54.9 KB (54902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:ab908bb52939f8c888516780a4c726db0be1036ce32e2ef1a9f704e3666cd210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4677828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:977f6b55d5a4d0631355eacf598ad547e25c8ccd109190f10c8bd6bfe47d94fe`

```dockerfile
```

-	Layers:
	-	`sha256:dd5aa515ae17ea2aa090ffb678a2b6763d56a385c932f72e0a7b88724006bc0a`  
		Last Modified: Wed, 21 Oct 2026 23:31:01 GMT  
		Size: 4.7 MB (4653818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aceac35da0f8d83263f0d0d3e7908c0162bb673f13b32435234d8b7bd1c7fe2c`  
		Last Modified: Wed, 21 Oct 2026 23:31:00 GMT  
		Size: 24.0 KB (24010 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-alpine` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:8a797f3f11139fd224cc297a63ef93a257085264542a548ec96dcd9f5ad648bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.8 MB (335810621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d778c7d948303096db79f2f602c6985e17c8efd3a75ae947ea961bdd1c3630cf`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 30 Jan 2025 14:32:57 GMT
ADD alpine-minirootfs-3.21.3-aarch64.tar.gz / # buildkit
# Thu, 30 Jan 2025 14:32:57 GMT
CMD ["/bin/sh"]
# Thu, 30 Jan 2025 14:32:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 30 Jan 2025 14:32:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Jan 2025 14:32:57 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 30 Jan 2025 14:32:57 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 30 Jan 2025 14:32:57 GMT
ENV JAVA_VERSION=jdk-21.0.6+7
# Thu, 30 Jan 2025 14:32:57 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='2798990401d9c47eaeddb7d5148f577770e4c1013b9223290a43765463204ae4';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.6%2B7/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.6_7.tar.gz';          ;;        x86_64)          ESUM='6c66470a9143ad562570a34c1583d9fa50bf904f6f9ced642e9d800ce043a0f3';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.6%2B7/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.6_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 30 Jan 2025 14:32:57 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 30 Jan 2025 14:32:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 30 Jan 2025 14:32:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 30 Jan 2025 14:32:57 GMT
CMD ["jshell"]
# Tue, 18 Feb 2025 21:10:40 GMT
CMD ["gradle"]
# Tue, 18 Feb 2025 21:10:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Feb 2025 21:10:40 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 18 Feb 2025 21:10:40 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Feb 2025 21:10:40 GMT
WORKDIR /home/gradle
# Tue, 18 Feb 2025 21:10:40 GMT
RUN set -o errexit -o nounset     && echo "Installing VCSes"     && apk add --no-cache       git       git-lfs       mercurial       subversion         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 18 Feb 2025 21:10:40 GMT
ENV GRADLE_VERSION=7.6.4
# Tue, 18 Feb 2025 21:10:40 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed1da33cca0f557ab13691c77f38bb67388119e4794d113e051039b80af9bb1
# Tue, 18 Feb 2025 21:10:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed1da33cca0f557ab13691c77f38bb67388119e4794d113e051039b80af9bb1
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 18 Feb 2025 21:10:40 GMT
USER gradle
# Tue, 18 Feb 2025 21:10:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed1da33cca0f557ab13691c77f38bb67388119e4794d113e051039b80af9bb1
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 18 Feb 2025 21:10:40 GMT
USER root
```

-	Layers:
	-	`sha256:6e771e15690e2fabf2332d3a3b744495411d6e0b00b2aea64419b58b0066cf81`  
		Last Modified: Fri, 14 Feb 2025 12:05:33 GMT  
		Size: 4.0 MB (3993029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22460361c4e9e1ac6bf5bc45209d88abdf89352662d6ea415fdaae2281c39acd`  
		Last Modified: Fri, 14 Feb 2025 22:43:26 GMT  
		Size: 21.0 MB (21005533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38d006405dd14f86430a341fc9e96608553ddc4de8ca7c21843b389282b46a2`  
		Last Modified: Fri, 14 Feb 2025 22:43:29 GMT  
		Size: 155.8 MB (155787997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3703c2f380b3b4e3eeae969e60074a2cce6d72889dc412466f29ef5ebfc440f7`  
		Last Modified: Fri, 14 Feb 2025 22:43:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060a7bd90d15285d6041f307b0a65f5415677f1d9d59e445a6c3b5b27f5f9cc0`  
		Last Modified: Fri, 14 Feb 2025 22:43:25 GMT  
		Size: 2.3 KB (2281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28f635ddcf5c1da2711827c852dd159da4d688924964974509339aeb7f2206af`  
		Last Modified: Sat, 15 Feb 2025 07:21:53 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44bf6a3fce77407e87dbe6e768d69d7c2cc7e07bf254040905418c96c567e87`  
		Last Modified: Sat, 15 Feb 2025 07:21:54 GMT  
		Size: 32.2 MB (32230467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7d5a11e006f48d593e5e3c1c757decd65ff9c3f191b4a6fb08106a1b4590fee`  
		Last Modified: Wed, 19 Feb 2025 21:39:00 GMT  
		Size: 122.7 MB (122730593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c1172352699382767723223e4d8acae70ecaa510f7a52a9abcc49fd3b6fd09`  
		Last Modified: Wed, 19 Feb 2025 21:38:57 GMT  
		Size: 59.5 KB (59549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:13262ac2b0d1d28fc30671714403d107b20a79160a6f217c8f6c846d69580189
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3436113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:786a9a154182fe5ccd23cd964ffc305303017e143157d39412baf82440b02452`

```dockerfile
```

-	Layers:
	-	`sha256:8a545a3959efe75977899678271d2110b24d011184d5355b05a098fc71699d3a`  
		Last Modified: Wed, 19 Feb 2025 21:38:57 GMT  
		Size: 3.4 MB (3413448 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbdc15987c789089738994a30e6f4432a20c3af0001d437fedb611b5c79a5eb4`  
		Last Modified: Wed, 19 Feb 2025 21:38:56 GMT  
		Size: 22.7 KB (22665 bytes)  
		MIME: application/vnd.in-toto+json
