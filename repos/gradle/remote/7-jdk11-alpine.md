## `gradle:7-jdk11-alpine`

```console
$ docker pull gradle@sha256:74499a7f52bec12d1b99f77115b513e7d60a5c5bc2ce93c25189af773c42b26f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `gradle:7-jdk11-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:c279db8cb1e025d651689358eb3f28706a14ec3dbf06ce818056205ad0d439e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.3 MB (335317259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd557f17345332418df9c9f81399476f56523c1887fbcc329379a9ee7e096f5f`
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
# Wed, 21 Oct 2026 23:30:43 GMT
CMD ["gradle"]
# Wed, 21 Oct 2026 23:30:43 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 21 Oct 2026 23:30:43 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && addgroup --system --gid 1000 gradle     && adduser --system --ingroup gradle --uid 1000 --shell /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle     && chmod -R o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 21 Oct 2026 23:30:43 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 21 Oct 2026 23:30:43 GMT
WORKDIR /home/gradle
# Wed, 21 Oct 2026 23:30:45 GMT
RUN set -o errexit -o nounset     && apk add --no-cache       curl       make             breezy       py3-tzlocal       git       git-lfs       mercurial       subversion         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 21 Oct 2026 23:30:45 GMT
ENV GRADLE_VERSION=7.6.6
# Wed, 21 Oct 2026 23:30:45 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Wed, 21 Oct 2026 23:30:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 21 Oct 2026 23:30:48 GMT
USER gradle
# Wed, 21 Oct 2026 23:30:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 21 Oct 2026 23:30:48 GMT
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
	-	`sha256:3bcf3782676e8d6092c307c633fd4e783c8d82e9d30cdd6bf424c56d2290b4e0`  
		Last Modified: Wed, 21 Oct 2026 23:31:03 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5e2af2ac4a1c52b981c8bf63b294083053cd2d7effcdde256a9274926ad82f5`  
		Last Modified: Wed, 21 Oct 2026 23:31:06 GMT  
		Size: 44.9 MB (44935709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:614c0dc98e1e115546d15ff4a96c53266d0d25f7824b2c5c244071478476bff5`  
		Last Modified: Wed, 21 Oct 2026 23:31:07 GMT  
		Size: 128.5 MB (128469762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:511bfc2ed9d620614af71827e1be9648aeae01e19d901a449c4bdc9abfd1e514`  
		Last Modified: Wed, 21 Oct 2026 23:31:04 GMT  
		Size: 54.9 KB (54907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk11-alpine` - unknown; unknown

```console
$ docker pull gradle@sha256:79c7a471ff1628557e859ba160f21ebc8891ef51592cbd8f8be7ab6706511af2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4579773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57ad3544f7611027989d2500dff689675925a37dc27104841801d039c1ebe6f2`

```dockerfile
```

-	Layers:
	-	`sha256:450081b317cde1883908352c499760bdec643f0f2cfe39ae0668d3950283855e`  
		Last Modified: Wed, 21 Oct 2026 23:31:04 GMT  
		Size: 4.6 MB (4557625 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:545a1dfbace4bae3c257bedaf5e4f3c5ca86cc268e78c5b480dadb7867d0f867`  
		Last Modified: Wed, 21 Oct 2026 23:31:03 GMT  
		Size: 22.1 KB (22148 bytes)  
		MIME: application/vnd.in-toto+json
