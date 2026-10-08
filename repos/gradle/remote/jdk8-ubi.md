## `gradle:jdk8-ubi`

```console
$ docker pull gradle@sha256:865ea42e0634fc0828b6368d4edbba5361ec641ec6125d720f54e83ac730149b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `gradle:jdk8-ubi` - linux; amd64

```console
$ docker pull gradle@sha256:d81d7a0c72028fd2d46c9f463e43bb35a601977979c1e83040f15c4a1766e990
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.9 MB (300900211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f604cb6b97ec08130cce335baff0c0630941a594fe743738129fe09990da5b4e`
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
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 06 Oct 2026 21:54:30 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 06 Oct 2026 21:54:30 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:54:30 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:54:30 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 08 Oct 2026 16:44:08 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 16:44:08 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 16:44:08 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 16:44:08 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 16:44:08 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:44:14 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 08 Oct 2026 16:44:14 GMT
ENV GRADLE_VERSION=8.14.6
# Thu, 08 Oct 2026 16:44:14 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Thu, 08 Oct 2026 16:44:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:44:17 GMT
USER gradle
# Thu, 08 Oct 2026 16:44:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:44:17 GMT
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
	-	`sha256:c02403f59bf8e5ecd1f4e3f6637e47e285b736a13e93a8f8e76194160e81c2ee`  
		Last Modified: Tue, 06 Oct 2026 21:54:44 GMT  
		Size: 55.2 MB (55192713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1205338b57e50a399562a0adcfb8f2904ee1234d2b9bfb80ac208ca589d3a997`  
		Last Modified: Tue, 06 Oct 2026 21:54:42 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8340e3a68cecb52768da156bb6f54e1a86b7c0de4d98ce4afbb35fe4456a7f9b`  
		Last Modified: Tue, 06 Oct 2026 21:54:42 GMT  
		Size: 2.5 KB (2489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0bd8e9dd3084530b026c3146537cb88937e6c05766bca76f509d8bba83ff0e2`  
		Last Modified: Thu, 08 Oct 2026 16:44:33 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:631e29dc3be1dda6a0f722af16883f2f339fc2bee55a1de9b3359460828e26b0`  
		Last Modified: Thu, 08 Oct 2026 16:44:34 GMT  
		Size: 37.9 MB (37878209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1597a56c04fb755f389ff7c8eb04973fd610d4ecee2b349c629fc75cbdf5a1a3`  
		Last Modified: Thu, 08 Oct 2026 16:44:36 GMT  
		Size: 139.4 MB (139427349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f742b3e0046c0f21d327f81023852b9b75ba023c0239395e70490da54565310`  
		Last Modified: Thu, 08 Oct 2026 16:44:32 GMT  
		Size: 54.9 KB (54897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk8-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:7b875fe30fa1eb31bdd7bf77decffee5d4037ea5a8250d394c8b03aba77bcb3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5551860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f4b677e4a4c5bad129b6fe185a26160cbec7be37b694d635414e3ff0abab4cd`

```dockerfile
```

-	Layers:
	-	`sha256:e16885063d760d63ad85dcaf8b1e8259aca8d9a938381b399a602b75689f0d7b`  
		Last Modified: Thu, 08 Oct 2026 16:44:33 GMT  
		Size: 5.5 MB (5527445 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:757663ab58da0e2d254288318205599327048a81aeffde246b76b6d938694dde`  
		Last Modified: Thu, 08 Oct 2026 16:44:33 GMT  
		Size: 24.4 KB (24415 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk8-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:457bf51b90d212b047ae8a341141fb08a945297416df896e14d6dba994f8a0f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.8 MB (297793270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51920fdfbdfdfd75d787b2e1d0c76646831f563bb8a8c84c757eef635912c0f2`
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
# Tue, 06 Oct 2026 21:51:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 21:51:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:51:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 21:51:12 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:51:12 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 06 Oct 2026 21:51:17 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 06 Oct 2026 21:51:17 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:51:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:51:17 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 08 Oct 2026 16:43:46 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 16:43:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 16:43:46 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 16:43:46 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 16:43:46 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:43:51 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 08 Oct 2026 16:43:51 GMT
ENV GRADLE_VERSION=8.14.6
# Thu, 08 Oct 2026 16:43:51 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Thu, 08 Oct 2026 16:43:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:43:54 GMT
USER gradle
# Thu, 08 Oct 2026 16:43:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:43:55 GMT
USER root
```

-	Layers:
	-	`sha256:6e3ee034ac700d9806da676936d58b1720e1c6ca90636cbbae190d0a885a71b2`  
		Last Modified: Tue, 06 Oct 2026 10:50:47 GMT  
		Size: 38.8 MB (38805435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1807c362f96d506ebe80a848282cca0aeeefbc38cd935a186188071096801f41`  
		Last Modified: Tue, 06 Oct 2026 21:51:30 GMT  
		Size: 28.1 MB (28073833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:356deb5b1a285e564d788f13d7831286c468eb3021a1549a49f51d618883253a`  
		Last Modified: Tue, 06 Oct 2026 21:51:31 GMT  
		Size: 54.3 MB (54254841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9d61ada914d72af418e3c9cb753e2e99e2dc804a1ebed77588c31190bcf5fbc`  
		Last Modified: Tue, 06 Oct 2026 21:51:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae9793526b3e9707c3589cac7572095a10ba2003e1b37b78e50d0ba2b0876976`  
		Last Modified: Tue, 06 Oct 2026 21:51:30 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb530fe4bebcd372aa0398f4437e0ba77b8e1f6bfaf157c44b30c18e32a1d22a`  
		Last Modified: Thu, 08 Oct 2026 16:44:10 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21bb4d4476be2534cde9564a989f28c7a30f5d6b5628e6c3ca44fc7dd2f7103f`  
		Last Modified: Thu, 08 Oct 2026 16:44:12 GMT  
		Size: 37.2 MB (37167957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c4656306c9b8c1247d20d6cc96a1a60dc81faa149ace64f08a69401a26a151f`  
		Last Modified: Thu, 08 Oct 2026 16:44:14 GMT  
		Size: 139.4 MB (139427349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b71398d47f1c29bca96736e24b567410f423a39e1e2e819f5b6348cd0a97b3`  
		Last Modified: Thu, 08 Oct 2026 16:44:10 GMT  
		Size: 59.5 KB (59527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk8-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:f14a0e3961a2f0f23c1f420c3d9e286f89c0d53997e4f176b1fa63cd1abff338
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5550406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d9ff64ce7393c76a63e21f55bf2bc472a3d4f865d722c459b54372754ec0512`

```dockerfile
```

-	Layers:
	-	`sha256:92d53b091b43c1e9903dc069e383463d2135aa166d6c0dfb730f5397f88cae67`  
		Last Modified: Thu, 08 Oct 2026 16:44:11 GMT  
		Size: 5.5 MB (5525793 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9249d357034079dbc995087689f6a980e4abfcc0d17c7e2a07e20cd0acb00ba`  
		Last Modified: Thu, 08 Oct 2026 16:44:10 GMT  
		Size: 24.6 KB (24613 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk8-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:73f7abb94bc5c230f1c1bf80026b23ea86957b1fd21a1363573a2a098af9b708
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.4 MB (306422718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6edddedce706cf4bce073f5c3af44a209f613fc33b2bf6a37b27c394b68cd77d`
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
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 06 Oct 2026 21:49:37 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 06 Oct 2026 21:49:39 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:49:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:49:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 06 Oct 2026 22:16:52 GMT
CMD ["gradle"]
# Tue, 06 Oct 2026 22:16:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 06 Oct 2026 22:16:52 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 06 Oct 2026 22:16:52 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 06 Oct 2026 22:16:53 GMT
WORKDIR /home/gradle
# Tue, 06 Oct 2026 22:17:12 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 06 Oct 2026 22:17:12 GMT
ENV GRADLE_VERSION=8.14.6
# Tue, 06 Oct 2026 22:17:12 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Thu, 08 Oct 2026 17:02:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 17:02:26 GMT
USER gradle
# Thu, 08 Oct 2026 17:02:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 17:02:29 GMT
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
	-	`sha256:50111d1e5f567daffd7781cf9caf3abf80fa1a8586c2181b935375388347cf42`  
		Last Modified: Tue, 06 Oct 2026 21:50:11 GMT  
		Size: 52.7 MB (52667614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03c6879ef33b68f9f5d5f6eed8bbefb9c32b34f00f0cf4f3b52fbf70e9412176`  
		Last Modified: Tue, 06 Oct 2026 21:50:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1071a8e34d42ccce18d27ca993ec820713a0c5833c3ddac010fdbb56572d5b32`  
		Last Modified: Tue, 06 Oct 2026 21:50:10 GMT  
		Size: 2.5 KB (2489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a799cd3b1011b55f9757e83f038ebd27e44d2b331c021993dec8d65e2c32145`  
		Last Modified: Tue, 06 Oct 2026 22:18:11 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c006fa76cd0e4a60a48ab17e00130c5300e365cf8ddc874b02c6924c253a530`  
		Last Modified: Tue, 06 Oct 2026 22:18:14 GMT  
		Size: 39.1 MB (39138544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726c2cd97e49c25468ffbce2c7052f7bb19412c475ccac2eb95a1650454027bb`  
		Last Modified: Thu, 08 Oct 2026 17:03:30 GMT  
		Size: 139.4 MB (139427352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4422db66aa041965f05a76a28c0e2ddab15d4b27a12701e750e313e90a9c7e3b`  
		Last Modified: Thu, 08 Oct 2026 17:03:27 GMT  
		Size: 35.0 KB (35011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk8-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:4e16bf9c2c7b5c8ae4d84feff8010f0e27883efb3095931213a52deaf33ca77d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5548162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:907d29c9cf93d0daa69c6b7fd5418471816af02a6f992abb44aa1f6db2df288c`

```dockerfile
```

-	Layers:
	-	`sha256:7b77eacb0d7d9220de1838064f49e743756e3b5af3e22616f47eb17e201414e8`  
		Last Modified: Thu, 08 Oct 2026 17:03:28 GMT  
		Size: 5.5 MB (5523635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b2601b07478155304abe0ec769122150dec83c05ab9ab6800016ee7c0f011a2`  
		Last Modified: Thu, 08 Oct 2026 17:03:27 GMT  
		Size: 24.5 KB (24527 bytes)  
		MIME: application/vnd.in-toto+json
