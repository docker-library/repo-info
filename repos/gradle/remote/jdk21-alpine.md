## `gradle:jdk21-alpine`

```console
$ docker pull gradle@sha256:0d0f3f4b22be94fbe1a78186c81ebb01436ffe4a0b9715889509076590f8dd46
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk21-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:305518e42729cd9e0c3011818a1d4982bf12ab6a19c8c1ad687bd0e832905c2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.1 MB (363119318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f47f789f2490181d72fe0b4e574d06cc47886e23a55585cff6ee40aff794d0`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:18:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:18:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:18:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:18:24 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:18:24 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 05 Nov 2026 19:18:33 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a41f2d7b886ed318db51543cd045d94dd35179f66df302e6c3fd48a41a6dd9f5';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='dc453842ee3f24710258f42a95bdfe5c2bfc0ca9d70c12f950ead82aee0c8361';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 05 Nov 2026 19:18:34 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:18:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:18:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 19:18:34 GMT
CMD ["jshell"]
# Wed, 11 Nov 2026 20:11:12 GMT
CMD ["gradle"]
# Wed, 11 Nov 2026 20:11:12 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 11 Nov 2026 20:11:12 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 11 Nov 2026 20:11:12 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 11 Nov 2026 20:11:12 GMT
WORKDIR /home/gradle
# Wed, 11 Nov 2026 20:11:14 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 11 Nov 2026 20:11:14 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 11 Nov 2026 20:11:14 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 11 Nov 2026 20:11:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 11 Nov 2026 20:11:17 GMT
USER gradle
# Wed, 11 Nov 2026 20:11:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 11 Nov 2026 20:11:18 GMT
USER root
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51708f96cbd718f1f575c791b74dcc853920cce80b5df73a45d493d942e3c1e1`  
		Last Modified: Thu, 05 Nov 2026 19:18:51 GMT  
		Size: 21.4 MB (21439698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c544b56550d0dd78ef07c133f66808efcee816fc25e79733d1f3c903d04618d`  
		Last Modified: Thu, 05 Nov 2026 19:18:54 GMT  
		Size: 158.6 MB (158623661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c36cbce71b14bcd4166587886630abcc540e354e67a19519ae83a2606006916`  
		Last Modified: Thu, 05 Nov 2026 19:18:50 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba8dd297de437cbe53be6f3a5f7672a27d395ede86af7228a2c2dae0d4b3a97`  
		Last Modified: Thu, 05 Nov 2026 19:18:36 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b633e88286ba218635d716ec9b9d76e30782b060328c3344e572466ad9988b3b`  
		Last Modified: Wed, 11 Nov 2026 20:11:35 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ede506cabf311fac8e372a59ccf6fce7c77ec3c42cbe99d9282078ca3787f1`  
		Last Modified: Wed, 11 Nov 2026 20:11:37 GMT  
		Size: 44.4 MB (44351948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33098b85c81e009db0a0a372d9c5d38d423907ad558c0d9c394d79427722bea`  
		Last Modified: Wed, 11 Nov 2026 20:11:39 GMT  
		Size: 134.8 MB (134821088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbcea51ee4710168c47ebe8718763f5081c71c385ae8d394e1fc497d7770fdfb`  
		Last Modified: Wed, 11 Nov 2026 20:11:35 GMT  
		Size: 25.6 KB (25618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:9f00e9923af9f66081d3d23e83327c76e7c9fcd3112801eac209bd9909f5fb4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4807612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8429260e5dd51781a8762ceb23b8ec37b295ae312ba6a4f2b9d7475451140b0c`

```dockerfile
```

-	Layers:
	-	`sha256:8b2d0a691145a73f573225d57084ef4640a3d89dc6cb6061fc0c1675934a297e`  
		Last Modified: Wed, 11 Nov 2026 20:11:35 GMT  
		Size: 4.8 MB (4784978 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63ce3afb2652a3c7f2709b064490c636ded7469b31fc5613a551c2f274d5e59a`  
		Last Modified: Wed, 11 Nov 2026 20:11:35 GMT  
		Size: 22.6 KB (22634 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-alpine` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:9649b479acbca991897406ca5f9854d914c3c7356196d9df9cdec8be3cc73c88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.9 MB (360941922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f2ca41e49e7ffc360c93a0d412b0aa32c3dae4176dcfadc019f704f964e77c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:13:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:13:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:13:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:13:13 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:13:13 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 05 Nov 2026 19:13:22 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a41f2d7b886ed318db51543cd045d94dd35179f66df302e6c3fd48a41a6dd9f5';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='dc453842ee3f24710258f42a95bdfe5c2bfc0ca9d70c12f950ead82aee0c8361';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 05 Nov 2026 19:13:23 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:13:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:13:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 19:13:23 GMT
CMD ["jshell"]
# Wed, 11 Nov 2026 19:51:18 GMT
CMD ["gradle"]
# Wed, 11 Nov 2026 19:51:18 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 11 Nov 2026 19:51:18 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 11 Nov 2026 19:51:18 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 11 Nov 2026 19:51:18 GMT
WORKDIR /home/gradle
# Wed, 11 Nov 2026 19:51:20 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 11 Nov 2026 19:51:20 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 11 Nov 2026 19:51:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 11 Nov 2026 19:51:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 11 Nov 2026 19:51:23 GMT
USER gradle
# Wed, 11 Nov 2026 19:51:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 11 Nov 2026 19:51:23 GMT
USER root
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4faea4c3333359972f9df28d73844fd41ff7e46e1b3cd5a7bb6890e65ccd0058`  
		Last Modified: Thu, 05 Nov 2026 19:13:40 GMT  
		Size: 21.4 MB (21418607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:802f66e7af10c71f4a66c68c97bd27661c24d7db3664bd69a8a30ff6ccafebde`  
		Last Modified: Thu, 05 Nov 2026 19:13:43 GMT  
		Size: 156.6 MB (156641882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:142a09de52318c861b2445cfb04014de63eab3940d96aa4c5309f2b38499b481`  
		Last Modified: Thu, 05 Nov 2026 19:13:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c53d5bb198be0f1eb32b9280605a7fe7290c6fe4e2ac332145be7f1d95b8861b`  
		Last Modified: Thu, 05 Nov 2026 19:13:39 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c43a411c123de23b1132020e5d83662f8e9f8eef11449354e856b49d6c3be3b5`  
		Last Modified: Wed, 11 Nov 2026 19:51:39 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de1a0c0aced2d9cf653533872d55295eb4ffc8bf16b453dda2c448d5c917110`  
		Last Modified: Wed, 11 Nov 2026 19:51:41 GMT  
		Size: 43.8 MB (43836855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cfc84302beb14613c64ee13b07102a2905c51776170c2018d44704758c90849`  
		Last Modified: Wed, 11 Nov 2026 19:51:43 GMT  
		Size: 134.8 MB (134821007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f121cb22982f37677340d61711aec30ec54e728238def66cf5723053b94f1ae5`  
		Last Modified: Wed, 11 Nov 2026 19:51:39 GMT  
		Size: 29.3 KB (29341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:240e86f76b032ac923db0091878e665eeb1c57b1dccf26465ab8bef573eeacde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4957235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dabc34aa633dfc2618bbdd48aa9dd05d9688c5fff3a11b25ad7dfb0e31ee1ba`

```dockerfile
```

-	Layers:
	-	`sha256:543313905ced8c032f12f0f9f05d38f685a3a27347d8e6e3255c9a70a1936bd8`  
		Last Modified: Wed, 11 Nov 2026 19:51:40 GMT  
		Size: 4.9 MB (4934452 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86a943c0133de9650693267aa429db8160468f2227b6822d281e64ca5c03c131`  
		Last Modified: Wed, 11 Nov 2026 19:51:39 GMT  
		Size: 22.8 KB (22783 bytes)  
		MIME: application/vnd.in-toto+json
