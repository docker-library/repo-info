## `gradle:9-jdk21-alpine`

```console
$ docker pull gradle@sha256:ecd2dc227c1a75522d320599a18aedc5dbf9e8371324059d484d3dca21ea8230
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk21-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:93658933c3a65f51d08dfe2cfbd171a35b9a7dd6edfbc8cdc760eeb34a92d374
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.5 MB (379477276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11a3a74793720e61173735700f0231ecfde94df68826b364025295e713898be6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:37:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:37:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:37:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:37:18 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:37:18 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:37:26 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8242627927adc90ac2561d0812dd39890ebc21ef09b550bc2e8b93640b8af4f8';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='bd8824214e42b33333c7f55a039ea078ad6ea6be20d7c5b011c801fb2bdb44f0';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:37:27 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:37:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:37:27 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:37:27 GMT
CMD ["jshell"]
# Thu, 08 Oct 2026 16:39:06 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 16:39:06 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 16:39:06 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 16:39:06 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 16:39:06 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:39:08 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 08 Oct 2026 16:39:08 GMT
ENV GRADLE_VERSION=9.8.1
# Thu, 08 Oct 2026 16:39:08 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 16:39:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:39:10 GMT
USER gradle
# Thu, 08 Oct 2026 16:39:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:39:11 GMT
USER root
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e0e05dd51e5ffe47d317144d69de9a3946dc8d83750c639d76c40e723b3b608`  
		Last Modified: Fri, 25 Sep 2026 22:37:42 GMT  
		Size: 21.4 MB (21442562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:802e35573aa7ee42b46fd9714582af48caf0f6aebbf2992311da030c8ff5a423`  
		Last Modified: Fri, 25 Sep 2026 22:37:45 GMT  
		Size: 158.3 MB (158329466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aeafda7b1fad5c53a3b22b763dd94158c78503c46b440abd39af469e9184f21`  
		Last Modified: Fri, 25 Sep 2026 22:37:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75bb0de4136d37b665782e892fb7132a0c4d32a3d4bf6989609487696b5e32f`  
		Last Modified: Fri, 25 Sep 2026 22:37:41 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b153c8fb48d059e601fdef8e7a708af0bc3322a5a9c598f6e2bb44413cc6e2e`  
		Last Modified: Thu, 08 Oct 2026 16:39:27 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da58529228330c1e53ab745366a29ae48ec8c9454520dbfa5c6ba8e491a16d6c`  
		Last Modified: Thu, 08 Oct 2026 16:39:29 GMT  
		Size: 44.3 MB (44293012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f0dfd116faf1f2991f5323b8a2d3faa2fdaf0edfb6ec46ce06d53f703e4ea1`  
		Last Modified: Thu, 08 Oct 2026 16:39:31 GMT  
		Size: 151.5 MB (151533248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e16bcde49ab460882f54c1b8d73815b1b381decbc291be7ca54f1dfe96365b99`  
		Last Modified: Thu, 08 Oct 2026 16:39:27 GMT  
		Size: 25.6 KB (25615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:e8dce7626cf9a96c473b94b95070a9da11f529dd9327056fa0109d83dab3e827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4804066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43664ced3a47ba040352306ee6776cb1d1a56951f488b469b002b0f07562d689`

```dockerfile
```

-	Layers:
	-	`sha256:f5c591bfa8c6f9cc88553de0813bd4be174a2315756c1f7f3ab53666a9998e46`  
		Last Modified: Thu, 08 Oct 2026 16:39:27 GMT  
		Size: 4.8 MB (4781425 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38d7df6947df677ce4450befa992bca25280860aec108d6c906f21e792c153f3`  
		Last Modified: Thu, 08 Oct 2026 16:39:27 GMT  
		Size: 22.6 KB (22641 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-alpine` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:44a409b536b4d6ef854fb7c35138aec3fff5dfe214579241b783fbd6ef362a11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.3 MB (377283912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49abe6dc313f6fb4172a662140a4b9886d34807759496b2f2d379ed4888a32bd`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:36:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:36:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:36:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:36:29 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:36:29 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:36:37 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8242627927adc90ac2561d0812dd39890ebc21ef09b550bc2e8b93640b8af4f8';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='bd8824214e42b33333c7f55a039ea078ad6ea6be20d7c5b011c801fb2bdb44f0';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:36:38 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:38 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:38 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:36:38 GMT
CMD ["jshell"]
# Thu, 08 Oct 2026 16:39:00 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 16:39:00 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 16:39:00 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 16:39:00 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 16:39:00 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:39:02 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 08 Oct 2026 16:39:02 GMT
ENV GRADLE_VERSION=9.8.1
# Thu, 08 Oct 2026 16:39:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 16:39:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:39:05 GMT
USER gradle
# Thu, 08 Oct 2026 16:39:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:39:06 GMT
USER root
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c807d060ae33e5d5997c7313f9cfce87a3f219dcf1e33b59a3bced411008d43e`  
		Last Modified: Fri, 25 Sep 2026 22:36:55 GMT  
		Size: 21.4 MB (21419753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8438b55bfa39bf94c0be01accbc3ffad4dc8d2d7ad997a468531d1f6acd5c68c`  
		Last Modified: Fri, 25 Sep 2026 22:36:57 GMT  
		Size: 156.3 MB (156335210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:166f645a3063ab63a42a670309a370a7fb7933e3a9d7b68cf3f3ea3becdcdb56`  
		Last Modified: Fri, 25 Sep 2026 22:36:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:794d8b8fb47ba05f395f78c45b91f2e8ead46216c584a8dfcdb22f4f7b2c2558`  
		Last Modified: Fri, 25 Sep 2026 22:36:54 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fc854efbc467ba09e95a998ceeb961f18e957120f8dd980dc9b28f92ae26a64`  
		Last Modified: Thu, 08 Oct 2026 16:39:22 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e36236dda626dc33e9fe01da79955cbd0640f8aeff95f9b73d018676d76b6834`  
		Last Modified: Thu, 08 Oct 2026 16:39:25 GMT  
		Size: 43.8 MB (43774840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f33aac39315c47af49946d587c6af6499e7b6afc958ef5438b1b9923fc3fd40`  
		Last Modified: Thu, 08 Oct 2026 16:39:26 GMT  
		Size: 151.5 MB (151533469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee3b5dfd2d68d6f8a25adf162cc6be2edd0ca21c5f46e9293dd320a0bc25b626`  
		Last Modified: Thu, 08 Oct 2026 16:39:23 GMT  
		Size: 29.3 KB (29348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:045855bf70e2dae7e3cc535f5d1efb72e1a326690c37f11bc9c144a324be1f1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4953690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e502570c368870a89018d9ca158b995f11e4b11a714e8e0fe14845cbe203de8`

```dockerfile
```

-	Layers:
	-	`sha256:b1409d43bb352ac3c735ebdfe159188da74720336ab91acb5589bd44067e36de`  
		Last Modified: Thu, 08 Oct 2026 16:39:23 GMT  
		Size: 4.9 MB (4930899 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4cffe5786cf88bc6df620d5e07170c1d8f8f789f3ce37162e5d51081c4c73b69`  
		Last Modified: Thu, 08 Oct 2026 16:39:22 GMT  
		Size: 22.8 KB (22791 bytes)  
		MIME: application/vnd.in-toto+json
