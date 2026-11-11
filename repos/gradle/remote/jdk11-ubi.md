## `gradle:jdk11-ubi`

```console
$ docker pull gradle@sha256:72db62c5a61a15c619ae14814cd9a7878fe65bfeba0277074cd58a8cc8083e8e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `gradle:jdk11-ubi` - linux; amd64

```console
$ docker pull gradle@sha256:fc3312e481b613b875ac8593ae49a1b3d55575165ed49e30bcf98270d332c569
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.2 MB (388170032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffec99260d181419dadbef45656528f8b40ac6c9a810a0b2c1378ffc51a1a6e4`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:08:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 09 Nov 2026 01:08:05 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 01:08:05 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 09 Nov 2026 01:08:05 GMT
ENV container oci
# Mon, 09 Nov 2026 01:08:06 GMT
COPY dir:9eb7fe1483abb86fafcd0fbf84cfecbc7c9615d954a2774b27c93dfb190ebd65 in /      
# Mon, 09 Nov 2026 01:08:06 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 01:08:06 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 01:08:07 GMT
COPY dir:113d0492bea3970cfccd46af4e646444dcba2306c37393f7867d936019c7530b in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 01:08:07 GMT
COPY dir:113d0492bea3970cfccd46af4e646444dcba2306c37393f7867d936019c7530b in /root/buildinfo/      
# Mon, 09 Nov 2026 01:08:07 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T01:06:50Z" "org.opencontainers.image.revision"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "build-date"="2026-11-09T01:06:50Z" "architecture"="x86_64" "vcs-ref"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "vcs-type"="git" "release"="1794186349"org.opencontainers.image.created=2026-11-09T01:06:50Z,org.opencontainers.image.revision=a318bccac4792b0ffc2c8d2a7b700e69ba665079
# Tue, 10 Nov 2026 21:47:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 21:47:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:47:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 10 Nov 2026 21:47:49 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:47:49 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Tue, 10 Nov 2026 21:47:56 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64le)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        x86_64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 10 Nov 2026 21:47:57 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 10 Nov 2026 21:47:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 10 Nov 2026 21:47:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 10 Nov 2026 21:47:58 GMT
CMD ["jshell"]
# Tue, 10 Nov 2026 22:11:34 GMT
CMD ["gradle"]
# Tue, 10 Nov 2026 22:11:34 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Nov 2026 22:11:34 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 10 Nov 2026 22:11:34 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Nov 2026 22:11:34 GMT
WORKDIR /home/gradle
# Tue, 10 Nov 2026 22:11:39 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 10 Nov 2026 22:11:39 GMT
ENV GRADLE_VERSION=8.14.6
# Tue, 10 Nov 2026 22:11:39 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Tue, 10 Nov 2026 22:11:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 10 Nov 2026 22:11:42 GMT
USER gradle
# Tue, 10 Nov 2026 22:11:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 10 Nov 2026 22:11:43 GMT
USER root
```

-	Layers:
	-	`sha256:2789facb1a5b2775fea7adde25fbe9982aa5639bcda32a3a035159eb54c6ad35`  
		Last Modified: Mon, 09 Nov 2026 03:11:14 GMT  
		Size: 40.7 MB (40682185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b792acd12e167a284782f8faddf82a56c6215981ce291ccf1986ec32eac2485b`  
		Last Modified: Tue, 10 Nov 2026 21:48:14 GMT  
		Size: 27.6 MB (27636485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea8d391bc4609fa6a82cda6374e4fcfbeba2c3aeb3e04ef8da661afc3417bf0d`  
		Last Modified: Tue, 10 Nov 2026 21:48:17 GMT  
		Size: 142.4 MB (142377914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d37f4af2e896b6bdf4ae2ff894e3de412dca2488d0da937c91d88d6abbbd596a`  
		Last Modified: Tue, 10 Nov 2026 21:48:13 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c663d1642447922694954e0130d6e9f46742f807094d2195b6a6b4300be450e`  
		Last Modified: Tue, 10 Nov 2026 21:48:05 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7a81130464790a218f47d4763616d2d5cafcc38cb0776a928ac9ef273b67d6`  
		Last Modified: Tue, 10 Nov 2026 22:12:00 GMT  
		Size: 1.7 KB (1675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3335d1f8c3b58d27619465d2a9cb312b413d75450bc78a8573a659819609213`  
		Last Modified: Tue, 10 Nov 2026 22:12:01 GMT  
		Size: 38.0 MB (37986879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9c4d12e58445a6c75712072ccc4eca4fc80b24b1569ff75fda12f270f98df0`  
		Last Modified: Tue, 10 Nov 2026 22:12:03 GMT  
		Size: 139.4 MB (139427353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7295c9541e87e37c332f52627764d5e7d67c64ab3e167ab70e9291d741c95318`  
		Last Modified: Tue, 10 Nov 2026 22:12:00 GMT  
		Size: 54.9 KB (54909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:c3b73245ea7a7c1ebdf6e60ecb493858da171365fdb64fb884ea2c2f6c36f1d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5436716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f1681ea4e6b7ad47b0d65464f0fa37469017bff353790f322233f696c25e1c3`

```dockerfile
```

-	Layers:
	-	`sha256:05cdb28bfba7d6be217ff84f284c57a616f3dc1f95455e189940979bd6443713`  
		Last Modified: Tue, 10 Nov 2026 22:12:00 GMT  
		Size: 5.4 MB (5412262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2f2e83054a296ffe607072b5b008fa03da401e815be96e350721128c0ea5066`  
		Last Modified: Tue, 10 Nov 2026 22:11:59 GMT  
		Size: 24.5 KB (24454 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk11-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:1ca5042b4c94c30eaba4d785893e533edaa35bcf784f4a0a0648f9e887117456
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.6 MB (382629976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aafd23d14d5431dc976351fec43f807af5b9604531f024b7f09544d3326632b6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 09 Nov 2026 01:09:23 GMT
ENV container oci
# Mon, 09 Nov 2026 01:09:24 GMT
COPY dir:c64a3fab6fbd9c83c22b7c3160855229a2f77503d8810a44260c85bbadecd08b in /      
# Mon, 09 Nov 2026 01:09:25 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 01:09:25 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 01:09:25 GMT
COPY dir:a7b9fc1ec276b470b91ac7f5d0116cd6e7f22c97d5e274215635ac5d5a214745 in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 01:09:26 GMT
COPY dir:a7b9fc1ec276b470b91ac7f5d0116cd6e7f22c97d5e274215635ac5d5a214745 in /root/buildinfo/      
# Mon, 09 Nov 2026 01:09:26 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T01:08:53Z" "org.opencontainers.image.revision"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "build-date"="2026-11-09T01:08:53Z" "architecture"="aarch64" "vcs-ref"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "vcs-type"="git" "release"="1794186349"org.opencontainers.image.created=2026-11-09T01:08:53Z,org.opencontainers.image.revision=a318bccac4792b0ffc2c8d2a7b700e69ba665079
# Tue, 10 Nov 2026 21:51:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 21:51:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:51:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 10 Nov 2026 21:51:00 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:51:00 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Tue, 10 Nov 2026 21:51:07 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64le)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        x86_64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 10 Nov 2026 21:51:08 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 10 Nov 2026 21:51:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 10 Nov 2026 21:51:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 10 Nov 2026 21:51:08 GMT
CMD ["jshell"]
# Tue, 10 Nov 2026 22:13:50 GMT
CMD ["gradle"]
# Tue, 10 Nov 2026 22:13:50 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Nov 2026 22:13:50 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 10 Nov 2026 22:13:50 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Nov 2026 22:13:50 GMT
WORKDIR /home/gradle
# Tue, 10 Nov 2026 22:13:55 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 10 Nov 2026 22:13:55 GMT
ENV GRADLE_VERSION=8.14.6
# Tue, 10 Nov 2026 22:13:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Tue, 10 Nov 2026 22:14:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 10 Nov 2026 22:14:05 GMT
USER gradle
# Tue, 10 Nov 2026 22:14:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 10 Nov 2026 22:14:06 GMT
USER root
```

-	Layers:
	-	`sha256:f800754b2b30fbd746290877c9ebb909e5c3e306e231c43a66c23980b19aedc2`  
		Last Modified: Mon, 09 Nov 2026 06:13:13 GMT  
		Size: 38.7 MB (38728868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe5f7b308fbe029df4f2370e22864e0b4bea10b8ccc2580736eaa1065e21db2`  
		Last Modified: Tue, 10 Nov 2026 21:51:25 GMT  
		Size: 28.1 MB (28068393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dcd9bc114a671ef5b4c4af3248ca3807e9879d9535113a3128ec49c04d741bd`  
		Last Modified: Tue, 10 Nov 2026 21:51:27 GMT  
		Size: 139.1 MB (139080744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc389aca25aad8641fd8e0ec190ca4288287e4904e4d276838633073988067ec`  
		Last Modified: Tue, 10 Nov 2026 21:51:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f7cc3e99c8a92106cd13b068ff262aea9017631acba584f318536abac3913a1`  
		Last Modified: Tue, 10 Nov 2026 21:51:23 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1371f2a89a25c997f486cdeb1d17a0212bcc1f7f4b2128d7f598d0e1a0bb888e`  
		Last Modified: Tue, 10 Nov 2026 22:14:22 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0be787586a5a955265ddc3022bbd48d03a1506ef04b0b8d69dc19f19889a3c6`  
		Last Modified: Tue, 10 Nov 2026 22:14:24 GMT  
		Size: 37.3 MB (37260767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76f5e42358a6838cf825df2fe6cda576cfad5d0192417e182315397aea41eee`  
		Last Modified: Tue, 10 Nov 2026 22:14:26 GMT  
		Size: 139.4 MB (139427344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e52b1e7408b43cba52267d826601f37ed8c9cd68f916486178bf5a9d450f6494`  
		Last Modified: Tue, 10 Nov 2026 22:14:22 GMT  
		Size: 59.6 KB (59551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:74080abf498092becd68dda6ecb5a8d12840f12e1c8f094b9b0db39887102a2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5435179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31942486df2c014b5f7fafa88b3fc507b46c2a6a6f8a25dfdb1e0f18065ac224`

```dockerfile
```

-	Layers:
	-	`sha256:17e75d92f130b3cda89e9c4a9117f8171c1f3452d2715cbe979f814373a77ed0`  
		Last Modified: Tue, 10 Nov 2026 22:14:22 GMT  
		Size: 5.4 MB (5410528 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd349bd0b0d79ae05eb159958dcd41ce3a50945f546a7a10218cb3522ede88b5`  
		Last Modified: Tue, 10 Nov 2026 22:14:22 GMT  
		Size: 24.7 KB (24651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk11-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:516829d7fc2bded78a10dfc532770f322e23edb92449ef758ab66d8ec93bc18e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.6 MB (382554103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a728c1e18f608c24a1f98da9f44d51b671b5b5abd58a45ec842f8fe6c6c4655c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Nov 2026 01:08:40 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 01:08:40 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 01:08:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 01:08:41 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 09 Nov 2026 01:08:41 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 01:08:41 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 09 Nov 2026 01:08:41 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:08:41 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:08:41 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 09 Nov 2026 01:08:41 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 01:08:41 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 09 Nov 2026 01:08:41 GMT
ENV container oci
# Mon, 09 Nov 2026 01:08:42 GMT
COPY dir:ae933929e423fdc96e35a47a9102721b0c39f8055e05b214b559d52ceb06cfa1 in /      
# Mon, 09 Nov 2026 01:08:42 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 01:08:42 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 01:08:42 GMT
COPY dir:450db05b77204e5448b53b7fab125a177b2d34720183cfd97ef6e5309e56d1c3 in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 01:08:42 GMT
COPY dir:450db05b77204e5448b53b7fab125a177b2d34720183cfd97ef6e5309e56d1c3 in /root/buildinfo/      
# Mon, 09 Nov 2026 01:08:43 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T01:08:19Z" "org.opencontainers.image.revision"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "build-date"="2026-11-09T01:08:19Z" "architecture"="ppc64le" "vcs-ref"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "vcs-type"="git" "release"="1794186349"org.opencontainers.image.created=2026-11-09T01:08:19Z,org.opencontainers.image.revision=a318bccac4792b0ffc2c8d2a7b700e69ba665079
# Tue, 10 Nov 2026 23:53:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 23:53:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 23:53:15 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 10 Nov 2026 23:53:15 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 10 Nov 2026 23:53:15 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Tue, 10 Nov 2026 23:56:13 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64le)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        x86_64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 10 Nov 2026 23:56:17 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 10 Nov 2026 23:56:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 10 Nov 2026 23:56:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 10 Nov 2026 23:56:18 GMT
CMD ["jshell"]
# Wed, 11 Nov 2026 00:23:47 GMT
CMD ["gradle"]
# Wed, 11 Nov 2026 00:23:47 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 11 Nov 2026 00:23:47 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 11 Nov 2026 00:23:47 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 11 Nov 2026 00:23:53 GMT
WORKDIR /home/gradle
# Wed, 11 Nov 2026 00:24:21 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 11 Nov 2026 00:24:21 GMT
ENV GRADLE_VERSION=8.14.6
# Wed, 11 Nov 2026 00:24:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Wed, 11 Nov 2026 00:24:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 11 Nov 2026 00:24:44 GMT
USER gradle
# Wed, 11 Nov 2026 00:24:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 11 Nov 2026 00:24:46 GMT
USER root
```

-	Layers:
	-	`sha256:dd9d34dc080ec17d2c6dc06a436bf23e89831b2d08e2f855bd8a7bd52c0adc54`  
		Last Modified: Mon, 09 Nov 2026 06:13:26 GMT  
		Size: 45.0 MB (45004833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1a83c89023ce7d1ea493029ab89f5d86cecc36f3f41ceaf2b6333c7a75e416a`  
		Last Modified: Tue, 10 Nov 2026 23:54:20 GMT  
		Size: 30.1 MB (30055026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d0bc627f1266c7cf26525bb143425baf160ab1d65fa20227ff0306734d2e32e`  
		Last Modified: Tue, 10 Nov 2026 23:57:06 GMT  
		Size: 128.8 MB (128773833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68fdbbddf3e0c214ccd8863620ac34ffb7cedde7b9a8da8d8d42973853f6a50f`  
		Last Modified: Tue, 10 Nov 2026 23:57:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b8661b4d60dde82dec6092232222c4d6080b009ce0c1423dfaefc250a6be807`  
		Last Modified: Tue, 10 Nov 2026 23:57:03 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:560bdfe782136366a3f90fabf68af26c9e1526dcc4c0ef838f5c697d1c397c14`  
		Last Modified: Wed, 11 Nov 2026 00:25:44 GMT  
		Size: 1.7 KB (1686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75c75396c197e422256addafedc4617c90a63b92a7a63163e065f89d6a149930`  
		Last Modified: Wed, 11 Nov 2026 00:25:47 GMT  
		Size: 39.3 MB (39253725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba5a7717254e20ab43162b3b300d629830227a0faac61ebc8c1677b8a6f46d40`  
		Last Modified: Wed, 11 Nov 2026 00:25:49 GMT  
		Size: 139.4 MB (139427351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba35a44cb2815b2216ae4708ef96380364c8e6c313551ae6d6e853da750ce76`  
		Last Modified: Wed, 11 Nov 2026 00:25:44 GMT  
		Size: 35.0 KB (35015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:4f2b9dd5eb76e2328b2c17334dd9526019a45a5bb6e2ffcec8e32ae34b792994
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5430556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b414dd32b61cfee95f1681157d93373bc69cac7498a475a7067e2c22ef44c8eb`

```dockerfile
```

-	Layers:
	-	`sha256:94e6f4cd4131f050806ebadcab41075b81c464792b93b9271319f22647195cf2`  
		Last Modified: Wed, 11 Nov 2026 00:25:45 GMT  
		Size: 5.4 MB (5405992 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fe5f23d2e688e15e8e8d5aaa16ade65d54329ef56f5e18ae9a07b938a67235e`  
		Last Modified: Wed, 11 Nov 2026 00:25:44 GMT  
		Size: 24.6 KB (24564 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk11-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:e3dfaa0994695c7918099b01d5dba05680ec3d6a5575b9eee29ed36eaede0677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.8 MB (365840240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90a59a536ae86bcf209e2bf04b50adcddbb437acd3ada5680690b3e6325d6073`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Nov 2026 01:14:48 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 01:14:48 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 01:14:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 01:14:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 09 Nov 2026 01:14:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 01:14:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 09 Nov 2026 01:14:48 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:14:48 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:14:48 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 09 Nov 2026 01:14:48 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 01:14:48 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 09 Nov 2026 01:14:48 GMT
ENV container oci
# Mon, 09 Nov 2026 01:14:49 GMT
COPY dir:320e83e83d77e941a7511823fd9e2b238efaab30770a87fcf8c2c828620ece6d in /      
# Mon, 09 Nov 2026 01:14:49 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 01:14:49 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 01:14:50 GMT
COPY dir:51add0d0f79b38581fcd93d48bae03a2f6684f5defdbd1d55101e6920839917a in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 01:14:50 GMT
COPY dir:51add0d0f79b38581fcd93d48bae03a2f6684f5defdbd1d55101e6920839917a in /root/buildinfo/      
# Mon, 09 Nov 2026 01:14:50 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T01:13:58Z" "org.opencontainers.image.revision"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "build-date"="2026-11-09T01:13:58Z" "architecture"="s390x" "vcs-ref"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "vcs-type"="git" "release"="1794186349"org.opencontainers.image.created=2026-11-09T01:13:58Z,org.opencontainers.image.revision=a318bccac4792b0ffc2c8d2a7b700e69ba665079
# Tue, 10 Nov 2026 22:53:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 22:53:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 22:53:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 10 Nov 2026 22:53:01 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 10 Nov 2026 22:53:01 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Tue, 10 Nov 2026 22:53:19 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64le)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        x86_64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 10 Nov 2026 22:53:25 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 10 Nov 2026 22:53:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 10 Nov 2026 22:53:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 10 Nov 2026 22:53:26 GMT
CMD ["jshell"]
# Tue, 10 Nov 2026 23:16:17 GMT
CMD ["gradle"]
# Tue, 10 Nov 2026 23:16:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Nov 2026 23:16:17 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 10 Nov 2026 23:16:17 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Nov 2026 23:16:19 GMT
WORKDIR /home/gradle
# Tue, 10 Nov 2026 23:16:55 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 10 Nov 2026 23:16:55 GMT
ENV GRADLE_VERSION=8.14.6
# Tue, 10 Nov 2026 23:16:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Tue, 10 Nov 2026 23:17:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 10 Nov 2026 23:17:07 GMT
USER gradle
# Tue, 10 Nov 2026 23:17:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 10 Nov 2026 23:17:20 GMT
USER root
```

-	Layers:
	-	`sha256:7cffab3152ca736b966d1762b7e8a3d76fe2b104ec531a34cf50ec37a03f085e`  
		Last Modified: Mon, 09 Nov 2026 06:13:22 GMT  
		Size: 38.7 MB (38666747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aeacd155185445b128cc7d817e637f6a2e99ff20e6fe7a1878078a97d244fa4`  
		Last Modified: Tue, 10 Nov 2026 22:54:32 GMT  
		Size: 27.7 MB (27668505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19cb3ef9fdac800ac51788e0f60eb19035c5c0382bc5172bf9cad2f1e0814006`  
		Last Modified: Tue, 10 Nov 2026 22:54:35 GMT  
		Size: 122.4 MB (122432473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:449280ce85e3f8ae9bffbacf8d55430760f5c3795adf40b7668471332aa9340e`  
		Last Modified: Tue, 10 Nov 2026 22:54:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8c3d47dad2878dc6236d07e6ace77ab86dc458d8893246467f5866ca79efc1`  
		Last Modified: Tue, 10 Nov 2026 22:54:10 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36777b4fb1a4f08867d1b92a0629c8aa32ab6fbbdd15932a8f23378af89da93e`  
		Last Modified: Tue, 10 Nov 2026 23:18:34 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70457bb68d399b274f403f1f5398b9184efd0b02e71dae6c7fdf3fd285e57ef9`  
		Last Modified: Tue, 10 Nov 2026 23:18:37 GMT  
		Size: 37.6 MB (37605835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a96dbbed1a53afe8742d6f718d09d18eda7cbc9ed97e6a593e04646914c028a`  
		Last Modified: Tue, 10 Nov 2026 23:18:40 GMT  
		Size: 139.4 MB (139427348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5b0d760ac820377a24dc94b3f7b2a07fb57da51b9274cb4a8e969ada6000e22`  
		Last Modified: Tue, 10 Nov 2026 23:18:34 GMT  
		Size: 35.0 KB (35016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:9c0a5ef5ef999db4864f29bf23f9aee3019c03633db8a48b55d1e2265734bf93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5420332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a644ff664f4370afb5ba36667827d676e37ae2918b9bee4c4e27d91a56c2143`

```dockerfile
```

-	Layers:
	-	`sha256:ee7fcfc7d5f58a156dd7755d70cf4021325dbd7527767dd9272acddc70e23e75`  
		Last Modified: Tue, 10 Nov 2026 23:18:34 GMT  
		Size: 5.4 MB (5395843 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97f3d2c0c361b11b597891ea6b251f585df40ef649c37a0de6e72982b3e56b89`  
		Last Modified: Tue, 10 Nov 2026 23:18:33 GMT  
		Size: 24.5 KB (24489 bytes)  
		MIME: application/vnd.in-toto+json
