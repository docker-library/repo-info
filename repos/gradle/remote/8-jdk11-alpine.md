## `gradle:8-jdk11-alpine`

```console
$ docker pull gradle@sha256:db79f855d5143ccdbd1c4f3e0559faa79b27470ed86a92486cb69e0eea3c970e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `gradle:8-jdk11-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:a02e0bae5aa12e92f56e4f4206d47a8678eb57391b3487353e27e7a51777d620
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.7 MB (346717441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f63009eb4545fdfc745ce6a65a141fcb0a50e2f63c05b9bcba6153301d96b326`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:57:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 22:57:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:57:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 22:57:07 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 22:57:07 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Wed, 21 Oct 2026 22:57:14 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='1dc1d3259fa4ca7a2db43c539a60bfa7fc0ea595f445a71ef36d28120f3094aa';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_alpine-linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 21 Oct 2026 22:57:16 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 22:57:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:57:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 22:57:16 GMT
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
RUN set -o errexit -o nounset     && apk add --no-cache       make       curl       wget       tar             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 21 Oct 2026 23:30:41 GMT
ENV GRADLE_VERSION=8.14.6
# Wed, 21 Oct 2026 23:30:41 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Wed, 21 Oct 2026 23:30:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 21 Oct 2026 23:30:43 GMT
USER gradle
# Wed, 21 Oct 2026 23:30:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 21 Oct 2026 23:30:44 GMT
USER root
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9632d9503c0299d335f1dd24d30125f5713e5b6bd6f985d9079a11189419a234`  
		Last Modified: Wed, 21 Oct 2026 22:57:30 GMT  
		Size: 17.0 MB (16967540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a46ed936960b26456e7bdeb10f62faf8e07cea28a1f248daa3159ff52768461`  
		Last Modified: Wed, 21 Oct 2026 22:57:31 GMT  
		Size: 141.0 MB (141032602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb72588998789ae7ce3c134f1ce2c8ef9cf614605e07c390039c9d73a5e68c21`  
		Last Modified: Wed, 21 Oct 2026 22:57:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fef9201ddaff5b429069f6191c3fd5307a3c763b97064ab55f38f9a71d78bed1`  
		Last Modified: Wed, 21 Oct 2026 22:57:28 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a3db52f2a2e300993ead1cca7b675aed29f958fa2d7e389a43ae1e6b5de4ef2`  
		Last Modified: Wed, 21 Oct 2026 23:30:59 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f53b3458032624b0161c4d8c88811804623fa961d716aae758745ed130fe740`  
		Last Modified: Wed, 21 Oct 2026 23:31:01 GMT  
		Size: 45.4 MB (45377725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3680e0ad5990fae6aa3d5d21a86a042c94673b635b54792fd00b19c4fc3a5069`  
		Last Modified: Wed, 21 Oct 2026 23:31:02 GMT  
		Size: 139.4 MB (139427926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4380f913bb7b0a2d646dbfe4f4ddaf8b0649692dfda9104391eef0a780c64ecf`  
		Last Modified: Wed, 21 Oct 2026 23:30:59 GMT  
		Size: 54.9 KB (54909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk11-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:34765d3849526dbab237ab64b2dc1170d11a9028dea621dfa90cef235f47c7df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4673169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec7979da85f437a8d444561d8edb2025166c1a7f5175f6c5d96cf1579d78c84`

```dockerfile
```

-	Layers:
	-	`sha256:184b67de6a2cd14d6a9d24a8341f981d59e940f4becd9ac1f4b7ded1f1eb42b6`  
		Last Modified: Wed, 21 Oct 2026 23:30:59 GMT  
		Size: 4.7 MB (4650521 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81d06595f8eb37506457a8925b81de946a906f0da40adfd49219abb423d7a7db`  
		Last Modified: Wed, 21 Oct 2026 23:30:59 GMT  
		Size: 22.6 KB (22648 bytes)  
		MIME: application/vnd.in-toto+json
