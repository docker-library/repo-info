## `gradle:7-jdk8-ubi`

```console
$ docker pull gradle@sha256:f97f6d24043e4e97d6b94235586df0246e2fd026382c2cced400d3280b501db2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `gradle:7-jdk8-ubi` - linux; amd64

```console
$ docker pull gradle@sha256:f82ae240003975439a45bf8adf04e7e7a17ca75d9223a0c05fd3528689a0c4f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.9 MB (289942189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a719e738be22e4edcac5d83b19983d5ed0a12d4d4fc9c08734879d40c61bbd67`
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
# Tue, 06 Oct 2026 22:09:13 GMT
CMD ["gradle"]
# Tue, 06 Oct 2026 22:09:13 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 06 Oct 2026 22:09:13 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 06 Oct 2026 22:09:13 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 06 Oct 2026 22:09:13 GMT
WORKDIR /home/gradle
# Tue, 06 Oct 2026 22:09:17 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 06 Oct 2026 22:09:17 GMT
ENV GRADLE_VERSION=7.6.6
# Tue, 06 Oct 2026 22:09:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Tue, 06 Oct 2026 22:09:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 06 Oct 2026 22:09:20 GMT
USER gradle
# Tue, 06 Oct 2026 22:09:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 06 Oct 2026 22:09:20 GMT
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
	-	`sha256:b62c0c8e5b83d7854549b12a6904565e2f0b65aa04e97a0f21d9010cc2df1d19`  
		Last Modified: Tue, 06 Oct 2026 22:09:34 GMT  
		Size: 1.7 KB (1677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f9f62c10e4777364825f91f5bee98852e9cb9741c395914bb8caaf36b979bbd`  
		Last Modified: Tue, 06 Oct 2026 22:09:35 GMT  
		Size: 37.9 MB (37878121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c43ef37aa09b0c398524bb785efefcb231f8f23bad6bfcd602694435e8a490ee`  
		Last Modified: Tue, 06 Oct 2026 22:09:37 GMT  
		Size: 128.5 MB (128469418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e19514f6b0b351bd81db42697bc43737afbc706edcb93eed9e14767a326602ed`  
		Last Modified: Tue, 06 Oct 2026 22:09:34 GMT  
		Size: 54.9 KB (54898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk8-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:6d3804579d0faee56537a13a2ef16978fbee4fd16314a793987cb48cb6daf816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5462205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cde3797dc4ec7ae1310286bc8cf05c6f9bf4e9b2d59e23d032068b7e977b5b92`

```dockerfile
```

-	Layers:
	-	`sha256:50ce0e406e21f23966085c42d8a09ca825d3a9807eb40018e71f8de5d4a0e154`  
		Last Modified: Tue, 06 Oct 2026 22:09:34 GMT  
		Size: 5.4 MB (5438651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:527653c27925551407c0c8ac2efe64b0fe3165389743ef8eda30ee81e644fa14`  
		Last Modified: Tue, 06 Oct 2026 22:09:34 GMT  
		Size: 23.6 KB (23554 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk8-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:a9be44dd9d045589253be675676052311a4dd970ecf0cf775f0a80562b616050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.8 MB (286835216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd8a7115d69e9df2124009ab887d5e2c580a63f55f7474bcdaac0c9af32f13c7`
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
# Tue, 06 Oct 2026 22:15:55 GMT
CMD ["gradle"]
# Tue, 06 Oct 2026 22:15:55 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 06 Oct 2026 22:15:55 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 06 Oct 2026 22:15:55 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 06 Oct 2026 22:15:55 GMT
WORKDIR /home/gradle
# Tue, 06 Oct 2026 22:16:01 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 06 Oct 2026 22:16:01 GMT
ENV GRADLE_VERSION=7.6.6
# Tue, 06 Oct 2026 22:16:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Tue, 06 Oct 2026 22:16:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 06 Oct 2026 22:16:03 GMT
USER gradle
# Tue, 06 Oct 2026 22:16:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 06 Oct 2026 22:16:04 GMT
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
	-	`sha256:485e70b66404430d85da519fb9cca105e96d38ce727d53bfc2c2d49a06f53b4b`  
		Last Modified: Tue, 06 Oct 2026 22:16:19 GMT  
		Size: 1.7 KB (1675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a02bff72de6ffdddd79d034775654111a02b97b7625c3a8d4535a02e75ce15b2`  
		Last Modified: Tue, 06 Oct 2026 22:16:21 GMT  
		Size: 37.2 MB (37167846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12e259417bab1eec16fcef00159eafcc4ad5cc636a8e019abad6dc227ee7c03b`  
		Last Modified: Tue, 06 Oct 2026 22:16:22 GMT  
		Size: 128.5 MB (128469417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71a7a603fbf5423c5fcda38f0452ed56980a023eab3e6c16d9a4b971baa4d2a2`  
		Last Modified: Tue, 06 Oct 2026 22:16:19 GMT  
		Size: 59.5 KB (59519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk8-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:06d12c2f560e0ef936f8a0a8a68ede8dad3e4597a399f4f5cf6e047380925144
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5460662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c41e54be7e392952b1d1794d181e768c123eb9415be141b2f660444042b6ff26`

```dockerfile
```

-	Layers:
	-	`sha256:ff67b4a5000c6b41605a81fd0bb9c1f30e88377313b3ba3bbf3ea517ce03da85`  
		Last Modified: Tue, 06 Oct 2026 22:16:19 GMT  
		Size: 5.4 MB (5436971 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3270c618bf086db9b753564820acd7bb462a62fffbacd100aeb2fdcc45742f0f`  
		Last Modified: Tue, 06 Oct 2026 22:16:19 GMT  
		Size: 23.7 KB (23691 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk8-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:1680feaff6858d9bddd4d8be5622e22ac3e92c3986e3f4932e6d4f46128f5114
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295464509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8376cfd1f1f3837ba67b461c171a60606f8db1b1c7701623fb586513aaef896`
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
# Tue, 06 Oct 2026 22:19:57 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 06 Oct 2026 22:19:57 GMT
ENV GRADLE_VERSION=7.6.6
# Tue, 06 Oct 2026 22:19:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Tue, 06 Oct 2026 22:20:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 06 Oct 2026 22:20:01 GMT
USER gradle
# Tue, 06 Oct 2026 22:20:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 06 Oct 2026 22:20:03 GMT
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
	-	`sha256:18ca6fa3d2deab1bbc9f8d497e7e1e3309de24b53b440e4f6f1f9471f1a42f9f`  
		Last Modified: Tue, 06 Oct 2026 22:20:41 GMT  
		Size: 39.1 MB (39138263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b79ebd2f564db1cd8671404ddbef01ed6cfd023da73f2e6e95e4168ea56f804`  
		Last Modified: Tue, 06 Oct 2026 22:20:43 GMT  
		Size: 128.5 MB (128469425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db657db91933e9e2dcb63a339d28c07a4792fe2d10fa6849aae6875434f15aa5`  
		Last Modified: Tue, 06 Oct 2026 22:20:40 GMT  
		Size: 35.0 KB (35010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk8-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:41d36c8f90aa4fc9e7e4e35fab61a694abf1cb1df83ce6b379c15d2c21f18678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5458441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74b9dabb457527c16151a10f10ece4c8aacd65b7c85179292e0959ab669432ea`

```dockerfile
```

-	Layers:
	-	`sha256:9656ffd7f82b604db2bd7aae6091c0a13b52916bf00eae549e74574bd2fa1feb`  
		Last Modified: Tue, 06 Oct 2026 22:20:40 GMT  
		Size: 5.4 MB (5434825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4732642b2b83ef81ca9265dd67218f2198735198a7cf0a4d0b9315d2b3852e4d`  
		Last Modified: Tue, 06 Oct 2026 22:20:39 GMT  
		Size: 23.6 KB (23616 bytes)  
		MIME: application/vnd.in-toto+json
