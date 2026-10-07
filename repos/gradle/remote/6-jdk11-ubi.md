## `gradle:6-jdk11-ubi`

```console
$ docker pull gradle@sha256:8101a1497f7c3cd5a7d78ffb6a37909809e98f4b6f6d5351756a6734cea9546f
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

### `gradle:6-jdk11-ubi` - linux; amd64

```console
$ docker pull gradle@sha256:c13fdc6618fbd53a74d7e63e82a1ea31a603d37b8510ae4b0e8a9d8651bb4769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.7 MB (356677252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfda9e7eb7bc717dc7a221aedf9ba4123672a970b058cfdd1b76eeca01563d2a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 06 Oct 2026 09:41:08 GMT
ENV container oci
# Tue, 06 Oct 2026 09:41:08 GMT
COPY dir:f50158eee9e07cbf4aceebaec88e4c8773d7166ca83ee42f91072d081a60608e in /      
# Tue, 06 Oct 2026 09:41:08 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 09:41:08 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 09:41:08 GMT
COPY dir:5310e3bbec09dd41addbb6f81f36a5a94f773036935363707f1d4e803fd1f750 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 09:41:08 GMT
COPY dir:5310e3bbec09dd41addbb6f81f36a5a94f773036935363707f1d4e803fd1f750 in /root/buildinfo/      
# Tue, 06 Oct 2026 09:41:09 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T09:40:51Z" "org.opencontainers.image.revision"="84687598811e20f52a46b476c889a722893da6fd" "build-date"="2026-10-06T09:40:51Z" "architecture"="x86_64" "vcs-ref"="84687598811e20f52a46b476c889a722893da6fd" "vcs-type"="git" "release"="1791279563"org.opencontainers.image.created=2026-10-06T09:40:51Z,org.opencontainers.image.revision=84687598811e20f52a46b476c889a722893da6fd
# Tue, 06 Oct 2026 21:54:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 21:54:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:54:26 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 21:54:26 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:54:26 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Tue, 06 Oct 2026 21:54:56 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 06 Oct 2026 21:54:58 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:54:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:54:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 06 Oct 2026 21:54:58 GMT
CMD ["jshell"]
# Tue, 06 Oct 2026 22:09:17 GMT
CMD ["gradle"]
# Tue, 06 Oct 2026 22:09:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 06 Oct 2026 22:09:17 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 06 Oct 2026 22:09:17 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 06 Oct 2026 22:09:17 GMT
WORKDIR /home/gradle
# Tue, 06 Oct 2026 22:09:22 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 06 Oct 2026 22:09:22 GMT
ENV GRADLE_VERSION=6.9.4
# Tue, 06 Oct 2026 22:09:22 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Tue, 06 Oct 2026 22:09:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 06 Oct 2026 22:09:24 GMT
USER gradle
# Tue, 06 Oct 2026 22:09:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 06 Oct 2026 22:09:24 GMT
USER root
```

-	Layers:
	-	`sha256:5f6aa419d45f217f7bbb8965a7f5de28a0c0124032a4ff1b28141d8f44c4fea7`  
		Last Modified: Tue, 06 Oct 2026 10:25:27 GMT  
		Size: 40.7 MB (40701553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb2bfff7b008e53bca1298af2b6f92c0b900fd22f87e95143785c0db977a130`  
		Last Modified: Tue, 06 Oct 2026 21:54:43 GMT  
		Size: 27.6 MB (27641160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f7eed116d44245c9bd96c0d94d089dfbe2d0373e695c17d7a89ec895ee001a`  
		Last Modified: Tue, 06 Oct 2026 21:55:16 GMT  
		Size: 142.3 MB (142324275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3afad994d62faabb134399f3f4671e16ae5802fedf60e2896c037e04e0e25fa`  
		Last Modified: Tue, 06 Oct 2026 21:55:12 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff8b067f1efdf206a6f5f062fe6cb94e12dc869e66655eb0f72111aadc40191`  
		Last Modified: Tue, 06 Oct 2026 21:55:12 GMT  
		Size: 2.5 KB (2469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57229e4acbb0e27eeedacafe3f1d0af4c1f3ab5d8a4963038fdf394d781a593a`  
		Last Modified: Tue, 06 Oct 2026 22:09:40 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b43d8271c9d0316892c3c474dc518c128a9197626532320dda6abc3e45c5c89d`  
		Last Modified: Tue, 06 Oct 2026 22:09:42 GMT  
		Size: 37.9 MB (37878020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:664b503727f74ca23a0823bbbd171ba7a9763a659c8ce5de13d2bbeb3a2316e8`  
		Last Modified: Tue, 06 Oct 2026 22:09:43 GMT  
		Size: 107.7 MB (107696666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6800957c6a1b5d670c4236ec54e55f621af0ea965ccc943b790dc6b3d306206`  
		Last Modified: Tue, 06 Oct 2026 22:09:40 GMT  
		Size: 431.3 KB (431270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:c4c9af2c68a64d4ef0280a4996ef02546944f2ba23ac8d3d7f3b9e1d180c30df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5342881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5aae85f6ecdfb47a203f8f0f640e6995b62c912cc2dfa5f3c24090aff26ec98`

```dockerfile
```

-	Layers:
	-	`sha256:34cb3e0392e5c5167d3ba2c97a86d2c1055973ee624496ab064a6da984b1f264`  
		Last Modified: Tue, 06 Oct 2026 22:09:40 GMT  
		Size: 5.3 MB (5319294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed12129d291d827c33c80002d85ecbd92b28ad49bf235a896fc000c841369293`  
		Last Modified: Tue, 06 Oct 2026 22:09:40 GMT  
		Size: 23.6 KB (23587 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk11-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:12dfcff014ee18b1b0a16b183029d2555ea7c260eba17d06cd8281075faa4d0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.2 MB (351208575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:747ca5dd954db869b959b15e99680be0f7c8e3d530f25033645d0c84ceeb91e7`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 06 Oct 2026 09:42:21 GMT
ENV container oci
# Tue, 06 Oct 2026 09:42:22 GMT
COPY dir:1d4511abff0d0cabc191309fe39f03480b6374c9bc8873ac0c048d111c3a696b in /      
# Tue, 06 Oct 2026 09:42:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 09:42:22 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 09:42:22 GMT
COPY dir:ed9162b19cefc1e3d222d4f003eb91be76332500a704865cd7734be6ad4d448e in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 09:42:22 GMT
COPY dir:ed9162b19cefc1e3d222d4f003eb91be76332500a704865cd7734be6ad4d448e in /root/buildinfo/      
# Tue, 06 Oct 2026 09:42:22 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T09:42:00Z" "org.opencontainers.image.revision"="84687598811e20f52a46b476c889a722893da6fd" "build-date"="2026-10-06T09:42:00Z" "architecture"="aarch64" "vcs-ref"="84687598811e20f52a46b476c889a722893da6fd" "vcs-type"="git" "release"="1791279563"org.opencontainers.image.created=2026-10-06T09:42:00Z,org.opencontainers.image.revision=84687598811e20f52a46b476c889a722893da6fd
# Tue, 06 Oct 2026 21:51:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 21:51:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:51:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 21:51:23 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:51:23 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Tue, 06 Oct 2026 21:51:30 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 06 Oct 2026 21:51:31 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:51:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:51:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 06 Oct 2026 21:51:31 GMT
CMD ["jshell"]
# Tue, 06 Oct 2026 22:15:57 GMT
CMD ["gradle"]
# Tue, 06 Oct 2026 22:15:57 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 06 Oct 2026 22:15:57 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 06 Oct 2026 22:15:57 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 06 Oct 2026 22:15:57 GMT
WORKDIR /home/gradle
# Tue, 06 Oct 2026 22:16:03 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 06 Oct 2026 22:16:03 GMT
ENV GRADLE_VERSION=6.9.4
# Tue, 06 Oct 2026 22:16:03 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Tue, 06 Oct 2026 22:16:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 06 Oct 2026 22:16:05 GMT
USER gradle
# Tue, 06 Oct 2026 22:16:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 06 Oct 2026 22:16:06 GMT
USER root
```

-	Layers:
	-	`sha256:6e3ee034ac700d9806da676936d58b1720e1c6ca90636cbbae190d0a885a71b2`  
		Last Modified: Tue, 06 Oct 2026 10:50:47 GMT  
		Size: 38.8 MB (38805435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:050b57f45b33127926ea225f2c24014c406c53e76832133039b0260ef79e18ff`  
		Last Modified: Tue, 06 Oct 2026 21:51:48 GMT  
		Size: 28.1 MB (28074012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae0cbea2deacf5b20e48e818504d0d6ec0f73cedf2c4f4fb7b667d3d21cc02a8`  
		Last Modified: Tue, 06 Oct 2026 21:51:50 GMT  
		Size: 139.0 MB (139035326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4c2e92e727da0f5ffdbf9ec8d5962b487ea611957a6137c977d6a7b88cd2075`  
		Last Modified: Tue, 06 Oct 2026 21:51:47 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b935632c2ba86a4963ca65404867a8801c31de97c83decb765bd0cbf28774c6`  
		Last Modified: Tue, 06 Oct 2026 21:51:47 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c01960feb0add3a2bb81ceae877b36aad5feff722612fab476fdd7c8ee26be99`  
		Last Modified: Tue, 06 Oct 2026 22:16:21 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db930ab937a69f91f53c301c070336da36de9df9b37a6db7ff621d9ab293eee`  
		Last Modified: Tue, 06 Oct 2026 22:16:23 GMT  
		Size: 37.2 MB (37167794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba607242bde83ebdeb124bb4347a63e412fb4366a68ec23d7dbdbbd41cc08081`  
		Last Modified: Tue, 06 Oct 2026 22:16:24 GMT  
		Size: 107.7 MB (107696668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07c461ca67b2ca04abbd09a1f8169091d551a5bf3e4b9ca4c564c2160c2d6d08`  
		Last Modified: Tue, 06 Oct 2026 22:16:22 GMT  
		Size: 425.0 KB (425028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:c0a7dfeb194586395f4a68ceba7feda16a894712f52a816a66960a766caf980a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5341261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41ee4d95094ab97598cf8c42ce883b3a8dbd7651430b2c130f800434f0237822`

```dockerfile
```

-	Layers:
	-	`sha256:490e6afc2c27b7f459ae3f55c8799639e91b9261f0b3f6d54a961fc71bb4b9a6`  
		Last Modified: Tue, 06 Oct 2026 22:16:21 GMT  
		Size: 5.3 MB (5317536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecc53afb004f14ddd906f1d6271db60a5798baea2c4b1c932a3c61fa89193cbc`  
		Last Modified: Tue, 06 Oct 2026 22:16:21 GMT  
		Size: 23.7 KB (23725 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk11-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:034b911c89e35855660bc1d34312402b7ff94d5c59b44943e28b7d0b13b95620
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.6 MB (351621131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa521ab67f1ed03d154287196636e1474a08f2746223fff90beba3b1ce2f10a0`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 06 Oct 2026 09:42:44 GMT
ENV container oci
# Tue, 06 Oct 2026 09:42:45 GMT
COPY dir:d07f2b7b7fc0328aad01cfdaed182c175acb09c22d3d7ce49cc19c491698d5b0 in /      
# Tue, 06 Oct 2026 09:42:45 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 09:42:45 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 09:42:45 GMT
COPY dir:774b92356406bfee1307af385a5d45b5beda7faea39e85ca4f3d6fbc56d40b00 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 09:42:45 GMT
COPY dir:774b92356406bfee1307af385a5d45b5beda7faea39e85ca4f3d6fbc56d40b00 in /root/buildinfo/      
# Tue, 06 Oct 2026 09:42:45 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T09:42:23Z" "org.opencontainers.image.revision"="84687598811e20f52a46b476c889a722893da6fd" "build-date"="2026-10-06T09:42:23Z" "architecture"="ppc64le" "vcs-ref"="84687598811e20f52a46b476c889a722893da6fd" "vcs-type"="git" "release"="1791279563"org.opencontainers.image.created=2026-10-06T09:42:23Z,org.opencontainers.image.revision=84687598811e20f52a46b476c889a722893da6fd
# Tue, 06 Oct 2026 21:49:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 21:49:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:49:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 21:49:24 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:49:24 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Tue, 06 Oct 2026 21:51:26 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 06 Oct 2026 21:51:31 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:51:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:51:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 06 Oct 2026 21:51:33 GMT
CMD ["jshell"]
# Tue, 06 Oct 2026 22:16:37 GMT
CMD ["gradle"]
# Tue, 06 Oct 2026 22:16:37 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 06 Oct 2026 22:16:37 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 06 Oct 2026 22:16:37 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 06 Oct 2026 22:16:38 GMT
WORKDIR /home/gradle
# Tue, 06 Oct 2026 22:18:53 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 06 Oct 2026 22:18:53 GMT
ENV GRADLE_VERSION=6.9.4
# Tue, 06 Oct 2026 22:18:53 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Tue, 06 Oct 2026 22:20:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 06 Oct 2026 22:20:03 GMT
USER gradle
# Tue, 06 Oct 2026 22:20:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 06 Oct 2026 22:20:05 GMT
USER root
```

-	Layers:
	-	`sha256:9244f500f9cceb07e7669ad9bfa7c24a2ed1eed26cb416a3d032180e1d0448b2`  
		Last Modified: Tue, 06 Oct 2026 12:14:20 GMT  
		Size: 45.1 MB (45090018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19b15df0f393569d2b35ab6197ae367a01bab491b217c2f51043e833e5b92ae`  
		Last Modified: Tue, 06 Oct 2026 21:50:11 GMT  
		Size: 30.1 MB (30059845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d2616375700e0636f6c3829ef31ca100c574dadaa8924f86635be3aad2fd19`  
		Last Modified: Tue, 06 Oct 2026 21:52:09 GMT  
		Size: 129.6 MB (129596356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b201f46a5a6f2bf5dcf24dda11bc91ffb06a3bdd27af3194b98273f1feb82e61`  
		Last Modified: Tue, 06 Oct 2026 21:52:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf689148814beb4e206bc0f4260b193cd3aaff17ecdc66a01e5f072f3dd1768d`  
		Last Modified: Tue, 06 Oct 2026 21:52:06 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67693a0e9809bc031ca1130f9f9fd2bbfd0a4acd3e0ff0b87ead5ccf12057d2d`  
		Last Modified: Tue, 06 Oct 2026 22:17:58 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65b0cb107748ab17e8211c601efb1649b481abb65bd1f688f4e1984bb3971c01`  
		Last Modified: Tue, 06 Oct 2026 22:19:43 GMT  
		Size: 39.1 MB (39138940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8867c1f12077f2aacb25daae6ea62874b58be2a2ad072db4df5dc1cf5dc74a67`  
		Last Modified: Tue, 06 Oct 2026 22:20:42 GMT  
		Size: 107.7 MB (107696674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b633624f50a3576fa5d2449c10ed3c2eaba4de5a685d9fe9f45a2f981d35e961`  
		Last Modified: Tue, 06 Oct 2026 22:20:40 GMT  
		Size: 35.0 KB (34982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:d8043f9381ff22c2874e394f7955fb7e0f58e5c8512565ac70ce2aecfa6476f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5337911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:697f7d9a4f3aa58bbebdcafb1c60e2ae6bd94372ad12c390c1fc3bb8405f62f5`

```dockerfile
```

-	Layers:
	-	`sha256:d69f746bec194ec1fe3db5562bf82c97d646c419855b92d5272d66bed4194e4a`  
		Last Modified: Tue, 06 Oct 2026 22:20:40 GMT  
		Size: 5.3 MB (5314262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d1e6d0d3b40ef58d393ecc7cdcb9913ef4ec7d7738b3e52407fcf2cdd610d0b`  
		Last Modified: Tue, 06 Oct 2026 22:20:39 GMT  
		Size: 23.6 KB (23649 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk11-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:d874ebda9bb293d271650e9571ee771eb70c8a45efe649072774a08ac02a5453
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.7 MB (334703947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecc5b811d7d575cf43a9832ff8085d47d81421ff80620364cb0fcc51e2a21ee3`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 06 Oct 2026 09:51:04 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 09:51:05 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 09:51:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 09:51:05 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 06 Oct 2026 09:51:05 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 09:51:05 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 06 Oct 2026 09:51:05 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:51:05 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:51:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 06 Oct 2026 09:51:05 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 09:51:05 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 06 Oct 2026 09:51:05 GMT
ENV container oci
# Tue, 06 Oct 2026 09:51:05 GMT
COPY dir:c58a4b8bf0196c807188ee6dea2fad088ed1bceedcd144c3af13a3b1c934b3cd in /      
# Tue, 06 Oct 2026 09:51:05 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 09:51:05 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 09:51:05 GMT
COPY dir:9d66497e256b1d273edc77a18f5fdc558aff480773821c3d11b7cd1cd7af99e7 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 09:51:05 GMT
COPY dir:9d66497e256b1d273edc77a18f5fdc558aff480773821c3d11b7cd1cd7af99e7 in /root/buildinfo/      
# Tue, 06 Oct 2026 09:51:05 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T09:50:16Z" "org.opencontainers.image.revision"="84687598811e20f52a46b476c889a722893da6fd" "build-date"="2026-10-06T09:50:16Z" "architecture"="s390x" "vcs-ref"="84687598811e20f52a46b476c889a722893da6fd" "vcs-type"="git" "release"="1791279563"org.opencontainers.image.created=2026-10-06T09:50:16Z,org.opencontainers.image.revision=84687598811e20f52a46b476c889a722893da6fd
# Tue, 06 Oct 2026 21:49:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 21:49:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:49:54 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 21:49:54 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:49:54 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Tue, 06 Oct 2026 21:50:01 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 06 Oct 2026 21:50:02 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:50:02 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:50:02 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 06 Oct 2026 21:50:02 GMT
CMD ["jshell"]
# Tue, 06 Oct 2026 22:10:22 GMT
CMD ["gradle"]
# Tue, 06 Oct 2026 22:10:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 06 Oct 2026 22:10:22 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 06 Oct 2026 22:10:22 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 06 Oct 2026 22:10:22 GMT
WORKDIR /home/gradle
# Tue, 06 Oct 2026 22:10:35 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 06 Oct 2026 22:10:35 GMT
ENV GRADLE_VERSION=6.9.4
# Tue, 06 Oct 2026 22:10:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Tue, 06 Oct 2026 22:10:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 06 Oct 2026 22:10:40 GMT
USER gradle
# Tue, 06 Oct 2026 22:10:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 06 Oct 2026 22:10:40 GMT
USER root
```

-	Layers:
	-	`sha256:6777def25a899459b707cc96f2d5877f5351bd987ce1bcc32688d02bd60b3dfb`  
		Last Modified: Tue, 06 Oct 2026 11:01:36 GMT  
		Size: 38.8 MB (38771997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70856caa6b0063cb8c44bd7fbfdf81f85d8b81a1661f933b901a7285b0c12c89`  
		Last Modified: Tue, 06 Oct 2026 21:50:24 GMT  
		Size: 27.7 MB (27672829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70880372c3b3dca9dd5fff3fe43ebbc86bd590a86dca12d2b26a766812d0d00`  
		Last Modified: Tue, 06 Oct 2026 21:50:26 GMT  
		Size: 123.0 MB (123048186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b455bba95f1a0b17dfb964d8bfbc0d05936a461eefc806511d5e19d5ea297f18`  
		Last Modified: Tue, 06 Oct 2026 21:50:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74805fff22cf43eef73af353d28236e506883a9c3159e4dd662190314ba21009`  
		Last Modified: Tue, 06 Oct 2026 21:50:17 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:889466c5d797c8de0736853620283e56f731ad6e413c4ec2635ee086432987ec`  
		Last Modified: Tue, 06 Oct 2026 22:10:52 GMT  
		Size: 1.7 KB (1675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd5655860c2966120f3aa279c0f5448799576add7cb5b34fc4bed9c04ba75a5f`  
		Last Modified: Tue, 06 Oct 2026 22:11:03 GMT  
		Size: 37.5 MB (37474986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37221a0b06299f21788a6b2032032d102641f11443182f14b907430f1cb4b8a8`  
		Last Modified: Tue, 06 Oct 2026 22:11:04 GMT  
		Size: 107.7 MB (107696665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb4ad28d893366ce9a06c1754d584a9bfeb73c86716283e04a42641e3289babd`  
		Last Modified: Tue, 06 Oct 2026 22:11:01 GMT  
		Size: 35.0 KB (34976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:2b9ea60053088afd43db82d197c4e2ebba506a087155a84583e8d1ea92afe32c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5327712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb50c7e5cc9bb4e729a808a69ce60da2c18ae1dac30b7d3c237ce6b9f71c45a`

```dockerfile
```

-	Layers:
	-	`sha256:7c22303c31f2da792c9b1cf6d6901b5b37ee8769dece3504f8b5a6645d5ebbac`  
		Last Modified: Tue, 06 Oct 2026 22:11:01 GMT  
		Size: 5.3 MB (5304125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a918f0f6312d64ed3c3449d10ce86d5a89f8aed627bca8007716c40ee4a6397b`  
		Last Modified: Tue, 06 Oct 2026 22:11:01 GMT  
		Size: 23.6 KB (23587 bytes)  
		MIME: application/vnd.in-toto+json
