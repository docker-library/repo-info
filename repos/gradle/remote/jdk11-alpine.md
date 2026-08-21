## `gradle:jdk11-alpine`

```console
$ docker pull gradle@sha256:c550190a49572a53ece9e028d3973194045c60d05814aaf56e65e0c084d62c65
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `gradle:jdk11-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:461b48efeb4a38cddc66e1cca9c07cea868add7e55a7069d9821a973c03af15f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.3 MB (345290102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dab04a85b2fe1f802cf6892eeb4f3ce0708f952c34369eae58856043853863d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:22:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:22:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:22:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:22:39 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:22:39 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Fri, 21 Aug 2026 18:22:44 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='be9831861b7a4b5fc8ec0d9540d462230f6b9bd6c7ee29585ec1ce52d1435d6c';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_x64_alpine-linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:22:45 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:22:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:22:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:22:45 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 18:45:59 GMT
CMD ["gradle"]
# Fri, 21 Aug 2026 18:45:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 21 Aug 2026 18:45:59 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 21 Aug 2026 18:45:59 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 21 Aug 2026 18:45:59 GMT
WORKDIR /home/gradle
# Fri, 21 Aug 2026 18:46:01 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 21 Aug 2026 18:46:01 GMT
ENV GRADLE_VERSION=8.14.5
# Fri, 21 Aug 2026 18:46:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Fri, 21 Aug 2026 18:46:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 21 Aug 2026 18:46:03 GMT
USER gradle
# Fri, 21 Aug 2026 18:46:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 21 Aug 2026 18:46:04 GMT
USER root
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a34f2b6433f3eb2d387a9883b2363554af259e8036df388dda4043c1c485f42`  
		Last Modified: Fri, 21 Aug 2026 18:22:59 GMT  
		Size: 17.0 MB (16963184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d7fb8dd003c51499715720921b1a4c07102e8b73aaa72df5f0d4b44ac4fb5ac`  
		Last Modified: Fri, 21 Aug 2026 18:23:01 GMT  
		Size: 141.0 MB (141033916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ba2cbcbecc3a3c4e6c5d6e363f45eff017969bfa474e9695e0718adf378e25`  
		Last Modified: Fri, 21 Aug 2026 18:22:58 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c4cc9b2441e46ade665f8d07efd7b28d63f9b2b16012e6d2f580e9b1729f69c`  
		Last Modified: Fri, 21 Aug 2026 18:22:58 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c80cdcd09eaccc97ee49422c9b979c6704b506fa96ed33029ddd67dad62cb7cc`  
		Last Modified: Fri, 21 Aug 2026 18:46:19 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e99436480d7cf480519fe061180a51261ec0f3a3b882144f011bdddbfec480b`  
		Last Modified: Fri, 21 Aug 2026 18:46:21 GMT  
		Size: 45.3 MB (45319792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:974e327cc73eb8fd9a3155bdf72dda56ad7d03484712603e1e97c04a2e9357f8`  
		Last Modified: Fri, 21 Aug 2026 18:46:23 GMT  
		Size: 138.1 MB (138068274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03506c71b79561cbf6b5eab959e70d2822c5c040e940afba734134dfa1d8f259`  
		Last Modified: Fri, 21 Aug 2026 18:46:20 GMT  
		Size: 54.9 KB (54915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:7aa9df40912bfd29c060aa7cae49b5bf775c4639e54e9a77b4bb672b42c4d9ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4674952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:355d260949d5d3f62535850df71ae9294e6dc9d719bc129c089e1abf53929222`

```dockerfile
```

-	Layers:
	-	`sha256:6a253b5d0134c998118f1cbadafcadffdb007088dcdf123c83f881321071c584`  
		Last Modified: Fri, 21 Aug 2026 18:46:20 GMT  
		Size: 4.7 MB (4652312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2e6082755efa1a70db9f4fe044a6317dd1992e0d7890cb7a2900f566e93487a`  
		Last Modified: Fri, 21 Aug 2026 18:46:19 GMT  
		Size: 22.6 KB (22640 bytes)  
		MIME: application/vnd.in-toto+json
