## `gradle:9-jdk17-ubi9`

```console
$ docker pull gradle@sha256:722c5b50a4d9919c2c10faad2c30a9f273e307c8749fe119cc3caa8850e7b243
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

### `gradle:9-jdk17-ubi9` - linux; amd64

```console
$ docker pull gradle@sha256:e6184c529f0a8ab6aa12cb1e88357e3fd0eef54e2ba2abed67efa6908f7b0bca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.7 MB (403671914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdfd052c90bf6f7f79101ff3d3aaaa65cb41726e831ad1fed2778b53f325de4d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 02 Nov 2026 00:24:06 GMT
ENV container oci
# Mon, 02 Nov 2026 00:24:06 GMT
COPY dir:cf1fefd4be4ce5fd82fa07ab19c9ebc91b7a3b97c257e48429ad961fafad7a2a in /      
# Mon, 02 Nov 2026 00:24:07 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 00:24:07 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 00:24:07 GMT
COPY dir:b80413ac409186f827c6d9af3ec402d8af6bb4a454f39ae79bbc5c2a9f19635c in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 00:24:07 GMT
COPY dir:b80413ac409186f827c6d9af3ec402d8af6bb4a454f39ae79bbc5c2a9f19635c in /root/buildinfo/      
# Mon, 02 Nov 2026 00:24:07 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T00:23:43Z" "org.opencontainers.image.revision"="dc4aefa4aecb10996718adb6435f6491abaff715" "build-date"="2026-11-02T00:23:43Z" "architecture"="x86_64" "vcs-ref"="dc4aefa4aecb10996718adb6435f6491abaff715" "vcs-type"="git" "release"="1793578971"org.opencontainers.image.created=2026-11-02T00:23:43Z,org.opencontainers.image.revision=dc4aefa4aecb10996718adb6435f6491abaff715
# Tue, 03 Nov 2026 00:55:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 00:55:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:55:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 03 Nov 2026 00:55:00 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:55:00 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 03 Nov 2026 00:55:08 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 03 Nov 2026 00:55:09 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 00:55:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 00:55:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 03 Nov 2026 00:55:09 GMT
CMD ["jshell"]
# Tue, 03 Nov 2026 01:09:25 GMT
CMD ["gradle"]
# Tue, 03 Nov 2026 01:09:25 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 03 Nov 2026 01:09:25 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 03 Nov 2026 01:09:25 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 03 Nov 2026 01:09:25 GMT
WORKDIR /home/gradle
# Tue, 03 Nov 2026 01:09:30 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 03 Nov 2026 01:09:30 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 03 Nov 2026 01:09:30 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 03 Nov 2026 01:09:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 03 Nov 2026 01:09:34 GMT
USER gradle
# Tue, 03 Nov 2026 01:09:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 03 Nov 2026 01:09:34 GMT
USER root
```

-	Layers:
	-	`sha256:0811bc98b695d75fb388d477ae3bfd11d656060625574fd2cff4fde9fbb28941`  
		Last Modified: Mon, 02 Nov 2026 01:16:09 GMT  
		Size: 40.7 MB (40656388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dabce0fbf650ded1adb7df5f0a47863648d4a5fd36141e93dae1d313d914c90b`  
		Last Modified: Tue, 03 Nov 2026 00:55:26 GMT  
		Size: 27.6 MB (27633972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35819ce296595dfac6623aae93e224e8ba6d5c0da0b7e41b9e5c93ca5ff7d6cb`  
		Last Modified: Tue, 03 Nov 2026 00:55:28 GMT  
		Size: 145.8 MB (145832721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:812af367c50965b47a9a34748d6e845ad975fe614271d652d111f40d82bae325`  
		Last Modified: Tue, 03 Nov 2026 00:55:25 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11947985b7e5c5f0cc65cfa4b069f5c9cd98dffc4a39c04fbc46384c7f230bec`  
		Last Modified: Tue, 03 Nov 2026 00:55:25 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4758aaf0d3582735e4f1e6e8d2f44fde8cdbec1cdaec0f44448787d049fa35c`  
		Last Modified: Tue, 03 Nov 2026 01:09:51 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859a71e6397ecacafa28491c76036daba59e2cce4c10db7efe556ef8f7e4b0e4`  
		Last Modified: Tue, 03 Nov 2026 01:09:53 GMT  
		Size: 38.0 MB (37985295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c1af4d2d7bdf5ab1d3ad601a5481525107e77a7d48b98fd47f9cabf41946ab8`  
		Last Modified: Tue, 03 Nov 2026 01:09:56 GMT  
		Size: 151.5 MB (151533619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0586a6ec1814620d135867feb4212587a4ade1b6b882ee5550871a6ef53ec4d`  
		Last Modified: Tue, 03 Nov 2026 01:09:51 GMT  
		Size: 25.6 KB (25609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:9e0daa3c671ceaed3823f029054186079f5b7015159913fc8ede998d8928bc87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5448143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9010a841cf434b0196deb9449405154c165b1fd1f377014b745438e278df194`

```dockerfile
```

-	Layers:
	-	`sha256:1d4393b8d9549b2e9da70343047fd5115f8e48877f0f87f807d673444b284d48`  
		Last Modified: Tue, 03 Nov 2026 01:09:52 GMT  
		Size: 5.4 MB (5424903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:399fa1e57f5c5797b07b88b43c6ff714de95fe84b9905631a6120e65ecc6d765`  
		Last Modified: Tue, 03 Nov 2026 01:09:51 GMT  
		Size: 23.2 KB (23240 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-ubi9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:296119d8d6308a93e93044eeed1c160839e58f9018cfb6ed15139217d5b606d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.6 MB (400635758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10d92b6281d30c93da6ee1caeeaa511b91602aaa1b4ae61aa6c44e1617c4780a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 02 Nov 2026 00:25:54 GMT
ENV container oci
# Mon, 02 Nov 2026 00:25:55 GMT
COPY dir:beed1d3a16575ec118f191761da739f3c3ef4d43b6f2d9506bd7c069a5485c34 in /      
# Mon, 02 Nov 2026 00:25:55 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 00:25:55 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 00:25:56 GMT
COPY dir:d04491bd234c5ba6fb79223a8b3de7ac6f96d8f78b91768d0baaaf3dfdcf46d8 in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 00:25:56 GMT
COPY dir:d04491bd234c5ba6fb79223a8b3de7ac6f96d8f78b91768d0baaaf3dfdcf46d8 in /root/buildinfo/      
# Mon, 02 Nov 2026 00:25:57 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T00:25:24Z" "org.opencontainers.image.revision"="dc4aefa4aecb10996718adb6435f6491abaff715" "build-date"="2026-11-02T00:25:24Z" "architecture"="aarch64" "vcs-ref"="dc4aefa4aecb10996718adb6435f6491abaff715" "vcs-type"="git" "release"="1793578971"org.opencontainers.image.created=2026-11-02T00:25:24Z,org.opencontainers.image.revision=dc4aefa4aecb10996718adb6435f6491abaff715
# Tue, 03 Nov 2026 21:56:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 21:56:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 21:56:57 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 03 Nov 2026 21:56:57 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 03 Nov 2026 21:56:57 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 03 Nov 2026 21:57:04 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 03 Nov 2026 21:57:05 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 21:57:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 21:57:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 03 Nov 2026 21:57:05 GMT
CMD ["jshell"]
# Tue, 03 Nov 2026 22:12:03 GMT
CMD ["gradle"]
# Tue, 03 Nov 2026 22:12:03 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 03 Nov 2026 22:12:03 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 03 Nov 2026 22:12:03 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 03 Nov 2026 22:12:03 GMT
WORKDIR /home/gradle
# Tue, 03 Nov 2026 22:12:10 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 03 Nov 2026 22:12:10 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 03 Nov 2026 22:12:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 03 Nov 2026 22:12:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 03 Nov 2026 22:12:13 GMT
USER gradle
# Tue, 03 Nov 2026 22:12:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 03 Nov 2026 22:12:14 GMT
USER root
```

-	Layers:
	-	`sha256:523fc0b16ef3fb709fb87d6929dec51b632bf658c79e38ac795e0e360eb9a90c`  
		Last Modified: Mon, 02 Nov 2026 01:16:09 GMT  
		Size: 38.8 MB (38764189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efaba453525abcdbad8c9dd03cfc98e89d6721c7c7671496e5f08aa5c7639c21`  
		Last Modified: Tue, 03 Nov 2026 21:57:23 GMT  
		Size: 28.1 MB (28069073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4728e412b107a5340dcdf4c64104162c972bdc846e559939f7c904bd61a5279e`  
		Last Modified: Tue, 03 Nov 2026 21:57:26 GMT  
		Size: 145.0 MB (144966404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df7025ea220c2ccad5ec28ef6ade6ef229f67ce0b68ce7e178e6015d47eeb7b1`  
		Last Modified: Tue, 03 Nov 2026 21:57:22 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99ff524f5517dc9b139cab144e0e5b2d6b4cf4a9686f53c8d40358c910c264a8`  
		Last Modified: Tue, 03 Nov 2026 21:57:22 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d843d8836312ea14673666e7c9f4b653f001a24e88ac7be50639535b8748b7d0`  
		Last Modified: Tue, 03 Nov 2026 22:12:32 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815e80d3bf790ae3ddcf36d338a419f9cb73b55722139ed0c04fa60eeeda9be7`  
		Last Modified: Tue, 03 Nov 2026 22:12:34 GMT  
		Size: 37.3 MB (37268826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5430ee279428fcaf00b8d1fde43bd5700d1fba49d895914a8b346c449a0a5612`  
		Last Modified: Tue, 03 Nov 2026 22:12:37 GMT  
		Size: 151.5 MB (151533617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1002d34510c3e2916c2a64643284fbfca0e81816da05bbe377773fe74164428b`  
		Last Modified: Tue, 03 Nov 2026 22:12:32 GMT  
		Size: 29.3 KB (29344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:95ad510e4f5e73fd96b5404bbd5367af1307c273500abd6ae2f4e8d6aeac9a55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5445840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bb57f401fd92fc84e54d6b55fb3b5306b67532c3c20d867a9dbe11dbce7098b`

```dockerfile
```

-	Layers:
	-	`sha256:49efead8ac9f1c0d00b378fb4321f42182c3a019a605a96dbddf5e99cca5d635`  
		Last Modified: Tue, 03 Nov 2026 22:12:32 GMT  
		Size: 5.4 MB (5422495 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dde8499d357c1947069ab85cc4fc3af3c3d1e1f3d4c5de1f1c7b659df8a26632`  
		Last Modified: Tue, 03 Nov 2026 22:12:32 GMT  
		Size: 23.3 KB (23345 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-ubi9` - linux; ppc64le

```console
$ docker pull gradle@sha256:5f971c67add45f8350010672ce8af4aa0eaa5638fa7e9dd01c7bdff8d42457c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.6 MB (411598064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:276c11030d01593e0538591afd6205bd278fb3b4f9d459a93dfc144b43cdd531`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 02 Nov 2026 00:25:28 GMT
ENV container oci
# Mon, 02 Nov 2026 00:25:29 GMT
COPY dir:71d38a1ba2a232bf2a1539156a589171b69c7e13bdcef7890d1e066b1fc4a7ca in /      
# Mon, 02 Nov 2026 00:25:29 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 00:25:29 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 00:25:29 GMT
COPY dir:0f37da6522cb4da37ab5bb24702dcfbe681f0adba3328e248ab52a9853b76016 in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 00:25:30 GMT
COPY dir:0f37da6522cb4da37ab5bb24702dcfbe681f0adba3328e248ab52a9853b76016 in /root/buildinfo/      
# Mon, 02 Nov 2026 00:25:30 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T00:25:00Z" "org.opencontainers.image.revision"="dc4aefa4aecb10996718adb6435f6491abaff715" "build-date"="2026-11-02T00:25:00Z" "architecture"="ppc64le" "vcs-ref"="dc4aefa4aecb10996718adb6435f6491abaff715" "vcs-type"="git" "release"="1793578971"org.opencontainers.image.created=2026-11-02T00:25:00Z,org.opencontainers.image.revision=dc4aefa4aecb10996718adb6435f6491abaff715
# Tue, 03 Nov 2026 01:21:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 01:21:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 01:21:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 03 Nov 2026 01:21:36 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 03 Nov 2026 01:21:36 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 03 Nov 2026 01:23:33 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 03 Nov 2026 01:23:36 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 01:23:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 01:23:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 03 Nov 2026 01:23:36 GMT
CMD ["jshell"]
# Tue, 03 Nov 2026 02:07:12 GMT
CMD ["gradle"]
# Tue, 03 Nov 2026 02:07:12 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 03 Nov 2026 02:07:12 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 03 Nov 2026 02:07:12 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 03 Nov 2026 02:07:12 GMT
WORKDIR /home/gradle
# Tue, 03 Nov 2026 02:07:34 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 03 Nov 2026 02:07:34 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 03 Nov 2026 02:07:34 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 03 Nov 2026 02:07:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 03 Nov 2026 02:07:39 GMT
USER gradle
# Tue, 03 Nov 2026 02:07:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 03 Nov 2026 02:07:40 GMT
USER root
```

-	Layers:
	-	`sha256:aa3f596ae7698c21f199c443b9309fb1eafc211ad3ad4ff1a6c5c3ff4b3250fd`  
		Last Modified: Mon, 02 Nov 2026 06:14:43 GMT  
		Size: 45.1 MB (45065542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef25287ca90e37eaf01f14803d76ba77c63e423cab3bf67817cc9f7d5f9f28d`  
		Last Modified: Tue, 03 Nov 2026 01:22:14 GMT  
		Size: 30.1 MB (30056005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a7f716e9e00b7b8f4314d32f6eed38192cf83f42f29abd3683f41136ba6f66`  
		Last Modified: Tue, 03 Nov 2026 01:24:13 GMT  
		Size: 145.7 MB (145687521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:824f9f3777c6fb7b90e9de7f2002995d9c2bf6e13609c1a799d128e5666ce378`  
		Last Modified: Tue, 03 Nov 2026 01:24:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c03727b8b05fce2d0c9c1bde0280161de42ebfdee2748a9eb0388f3015589cf`  
		Last Modified: Tue, 03 Nov 2026 01:24:09 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6b2964e61f9eca963ed4e65a8ebe052cf67bb35ec93e151f55cd2d5d143c97b`  
		Last Modified: Tue, 03 Nov 2026 02:08:17 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b5ce7a09cd295ccc44a174f5cd476fa6677744ce6a48f6c7ea96819c526f464`  
		Last Modified: Tue, 03 Nov 2026 02:08:19 GMT  
		Size: 39.3 MB (39250686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:765a570a5d409cbf9b89e8ccb38f60320d2ad7e6c916630a047177a22ce007d3`  
		Last Modified: Tue, 03 Nov 2026 02:08:22 GMT  
		Size: 151.5 MB (151533618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53153bc376983e96db9533301184fd5d6447a77f228cf7fd881ce1c9f782352e`  
		Last Modified: Tue, 03 Nov 2026 02:08:17 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:9b03280b25523d3d901ccebe2cd51ea86326571aa741e807062bd7587ecb11e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5443758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b34c99ca2e4ecdbaf99fb27c238d3add7a920f3e3b7e76feb4dbe8921853b4fc`

```dockerfile
```

-	Layers:
	-	`sha256:d1c58ae50f7554c76ebef7a32c00db72ff3437edf20a0b5ded6d929d5cbd3e90`  
		Last Modified: Tue, 03 Nov 2026 02:08:18 GMT  
		Size: 5.4 MB (5420470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:805cd5809754c43f9e914df4a71010790751f0de9b935d22dd5d73e554d58c42`  
		Last Modified: Tue, 03 Nov 2026 02:08:17 GMT  
		Size: 23.3 KB (23288 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-ubi9` - linux; s390x

```console
$ docker pull gradle@sha256:e41e7b8a14b80bfd208bcea10b51b4830106acd3046116d0cfd54b3b33740836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.9 MB (390925144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5e9c7532c11a1e7882217ee70533b499a7fb1a068d7cf6a949c4843c5d5cd58`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 02 Nov 2026 00:30:43 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 00:30:43 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 00:30:43 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 00:30:43 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 02 Nov 2026 00:30:43 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 00:30:43 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 02 Nov 2026 00:30:43 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:30:43 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:30:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 02 Nov 2026 00:30:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 00:30:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 02 Nov 2026 00:30:44 GMT
ENV container oci
# Mon, 02 Nov 2026 00:30:44 GMT
COPY dir:3354298e26aff6759834f6c721ee20e5801c62e2d596eccc7a3850ff1107cf84 in /      
# Mon, 02 Nov 2026 00:30:45 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 00:30:45 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 00:30:45 GMT
COPY dir:126236b2a17503d969078765b28a2ff98fce8c606859003e14181ed8b8fbbd42 in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 00:30:45 GMT
COPY dir:126236b2a17503d969078765b28a2ff98fce8c606859003e14181ed8b8fbbd42 in /root/buildinfo/      
# Mon, 02 Nov 2026 00:30:46 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T00:29:55Z" "org.opencontainers.image.revision"="dc4aefa4aecb10996718adb6435f6491abaff715" "build-date"="2026-11-02T00:29:55Z" "architecture"="s390x" "vcs-ref"="dc4aefa4aecb10996718adb6435f6491abaff715" "vcs-type"="git" "release"="1793578971"org.opencontainers.image.created=2026-11-02T00:29:55Z,org.opencontainers.image.revision=dc4aefa4aecb10996718adb6435f6491abaff715
# Tue, 03 Nov 2026 01:01:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 01:01:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 01:01:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 03 Nov 2026 01:01:02 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 03 Nov 2026 01:01:02 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 03 Nov 2026 21:55:23 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 03 Nov 2026 21:55:24 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 21:55:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 21:55:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 03 Nov 2026 21:55:24 GMT
CMD ["jshell"]
# Tue, 03 Nov 2026 22:11:21 GMT
CMD ["gradle"]
# Tue, 03 Nov 2026 22:11:21 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 03 Nov 2026 22:11:21 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 03 Nov 2026 22:11:21 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 03 Nov 2026 22:11:21 GMT
WORKDIR /home/gradle
# Tue, 03 Nov 2026 22:11:24 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 03 Nov 2026 22:11:24 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 03 Nov 2026 22:11:24 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 03 Nov 2026 22:11:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 03 Nov 2026 22:11:28 GMT
USER gradle
# Tue, 03 Nov 2026 22:11:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 03 Nov 2026 22:11:29 GMT
USER root
```

-	Layers:
	-	`sha256:71ed50c648e5ec14fc803904806e41d775fb87612cbc7d6f1a0c3b33bed64ce3`  
		Last Modified: Mon, 02 Nov 2026 06:14:38 GMT  
		Size: 38.7 MB (38724978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa4f6fd9f61e3018ce6bb3d88fa5f5942dcf69cc34bca6781ec67b5f321bad6c`  
		Last Modified: Tue, 03 Nov 2026 01:01:23 GMT  
		Size: 27.7 MB (27665815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc73923455cd282e506e2f9402317d73405bf1e38d9827c2f15e989517b9fcec`  
		Last Modified: Tue, 03 Nov 2026 21:55:48 GMT  
		Size: 135.4 MB (135390819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:536aea5254978bba715ef3808d7c2e410af12ae0fbcc6ae5b8982f1d343a2aa1`  
		Last Modified: Tue, 03 Nov 2026 21:55:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600b4b1ee577a9af76a3f816913c82c768348740a435e2e2a2ae43b55585b998`  
		Last Modified: Tue, 03 Nov 2026 21:55:46 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15ad2c885df138bf494e10a177bf95f5a41fd32a62fb99af1e462951820976f`  
		Last Modified: Tue, 03 Nov 2026 22:11:52 GMT  
		Size: 1.7 KB (1676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c27edbbc72d305c08062502514fd8ba78ad01cb596e2dd09c5e7ada990cec2d2`  
		Last Modified: Tue, 03 Nov 2026 22:11:53 GMT  
		Size: 37.6 MB (37605231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ff332c64f8d52974c8fec2ee6027f02e0c96cfab33833af4413c015a85ba21`  
		Last Modified: Tue, 03 Nov 2026 22:11:55 GMT  
		Size: 151.5 MB (151533617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ee9e70fe141c7991fae58af2bdc0a26f1181eb09314379089be4bfe44982efc`  
		Last Modified: Tue, 03 Nov 2026 22:11:52 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:12bcf793be58f63f2c2ed0efd066b79e34b899f942b92109ec0c977b5f9b00a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5431701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:038f510cb306f6e3b358e855608ee6e9cb9f77f764b825f22c9aa20d4ce87368`

```dockerfile
```

-	Layers:
	-	`sha256:af02ed78b3e1bf2a0502bf453cd3e9ee70d6f7ac670cbb787b0f2485f58e3160`  
		Last Modified: Tue, 03 Nov 2026 22:11:52 GMT  
		Size: 5.4 MB (5408472 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e3cb8d4b5806dc144d87757d93e0ea5006945cc2db3a34d5e0c0d8eff01c70b`  
		Last Modified: Tue, 03 Nov 2026 22:11:52 GMT  
		Size: 23.2 KB (23229 bytes)  
		MIME: application/vnd.in-toto+json
